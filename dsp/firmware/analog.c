/*
    bluxboxes dsp - Copyright (c) 2016-2020 David Turner
    Uses ChibiOS RT/HAL - Copyright (C) 2006..2016 Giovanni Di Sirio
    Based on M2FC analogue driver, (c) 2015 Eivind Roson Eide, CUSF

    blueboxes dsp is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 3 of the License, or
    (at your option) any later version.

    blueboxes dsp is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <ch.h>
#include <chbsem.h>
#include <hal.h>

#include "analog.h"

#define INST_BUF_DEPTH 1024
#define FX_BUF_DEPTH 3

#define INST_IN_CHN ADC_CHANNEL_IN10
#define FX_1_CHN    ADC_CHANNEL_IN2
#define FX_2_CHN    ADC_CHANNEL_IN5
#define FX_3_CHN    ADC_CHANNEL_IN3
/****************** Callback Declarations ******************************/
static void adc_inst_callback(ADCDriver*, adcsample_t*, size_t n);
static void adc_fx_callback(ADCDriver*, adcsample_t*, size_t n);
static void adc_error_callback(ADCDriver*, adcerror_t);
static void dac_end_callback(DACDriver*, const dacsample_t*, size_t);
static void dac_error_callback(DACDriver*, dacerror_t);

/****************** Sample Buffers *************************************/
static volatile uint16_t buffer1[INST_BUF_DEPTH];
static volatile uint16_t buffer2[INST_BUF_DEPTH];
static volatile uint16_t buffer3[INST_BUF_DEPTH];
static volatile adcsample_t fx_samples[FX_BUF_DEPTH];

/****************** Semaphores and shared state*************************/
/* (Used to indicate conversion completion) */
static binary_semaphore_t bsAnalogInst;
static binary_semaphore_t bsAnalogFX;

static volatile uint8_t state;

/****************** Configuration Structures ***************************/
/* Timer used to trigger inst ADC captures */
static const GPTConfig gpt_inst_config =
{
     44000,             // clock: 44kHz
     NULL,              // callback function (not used)
     0,                 // CR2
     0                  // DIER
};

/* Timer used to trigger FX ADC captures */
static const GPTConfig gpt_fx_config =
{
     1000,              // clock: 1kHz
     NULL,              // callback function (not used)
     0,                 // CR2
     0                  // DIER
};

/* Instrument conversion group */
static const ADCConversionGroup adc_con_group_1 = {
    TRUE, /* circular mode */
    1, /* number of channels in this con_group */
    adc_inst_callback,
    adc_error_callback,
    0, /* ADC_CR1 */
    /* cr2: Clock the ADC to timer 8 TRGO event*/
    ADC_CR2_EXTSEL_SRC(14) | ADC_CR2_EXTEN_0,
    /* smpr1+2: set all channels to 40 cycles per conversion (28+12) */
    ADC_SMPR1_SMP_AN11(2)| ADC_SMPR1_SMP_AN12(2)| ADC_SMPR1_SMP_AN13(2),
    ADC_SMPR2_SMP_AN0(2) | ADC_SMPR2_SMP_AN1(2) | ADC_SMPR2_SMP_AN2(2),
    ADC_SQR1_NUM_CH(1), /* sqr1: set 1 channel in the group */
    0, /* sqr2: no higher channels being sampled */
    /* sqr3: set the two channels to sample */
    ADC_SQR3_SQ1_N(INST_IN_CHN)
};

/* FX inputs conversion group */
static const ADCConversionGroup adc_con_group_2 = {
    TRUE, /* circular mode */
    3, /* number of channels in this con group */
    adc_fx_callback,
    adc_error_callback,
    0, /* cr1 */
    /* cr2: Clock the ADC to timer 3 TRGO event*/
    ADC_CR2_EXTSEL_SRC(8) | ADC_CR2_EXTEN_0,
    /* smpr1+2: set all channels to 40 cycles per conversion (28+12) */
    ADC_SMPR1_SMP_AN11(2)| ADC_SMPR1_SMP_AN12(2)| ADC_SMPR1_SMP_AN13(2),
    ADC_SMPR2_SMP_AN0(2) | ADC_SMPR2_SMP_AN1(2) | ADC_SMPR2_SMP_AN2(2),
    ADC_SQR1_NUM_CH(3), /* sqr1: set 3 channels in the group */
    0, /* sqr2: no higher channels being sampled */
    /* sqr3: set the channels to sample */
    ADC_SQR3_SQ1_N(FX_1_CHN) | ADC_SQR3_SQ2_N(FX_2_CHN) | 
        ADC_SQR3_SQ3_N(FX_3_CHN)
};

/* DAC config for DAC1 */
static const DACConfig dac_cfg = {
    .init     = 0,
    .datamode = DAC_DHRM_12BIT_RIGHT,
};

/* DAC output conversion group */
static const DACConversionGroup dac_conv_grp = {
    .num_channels = 1U,
    .end_cb       = dac_end_callback,
    .error_cb     = dac_error_callback,
    .trigger      = DAC_TRG(1), // Trigger off TIM8 TRGO
};

/****************** Callback Definitions *******************************/
/* Called upon inst ADC DMA buffer filling up. */
static void adc_inst_callback(ADCDriver *adc_driver_ptr, adcsample_t *buffer, size_t n) {
    (void)adc_driver_ptr;
    (void)buffer;
    (void)n;
    chSysLockFromISR();
    chBSemSignalI(&bsAnalogInst);
    chSysUnlockFromISR();
}

/* Called upon FX ADC DMA buffer filling up. */
static void adc_fx_callback(ADCDriver *adc_driver_ptr, adcsample_t *buffer, size_t n) {
    (void)adc_driver_ptr;
    (void)buffer;
    (void)n;
    chSysLockFromISR();
    chBSemSignalI(&bsAnalogFX);
    chSysUnlockFromISR();
}

/* Called at end of DAC buffer conversion */
static void dac_end_callback(DACDriver *dacp, const dacsample_t *buf, size_t n)
{
    /* I dunno, something? TODO */
    (void)dacp;
    (void)buf;
    (void)n;
}

/* adc_error_callback is called if there is an error during conversion */
static void adc_error_callback(ADCDriver *adc_driver_ptr, adcerror_t err) {
    (void)adc_driver_ptr;
    (void)err;
    chSysHalt("Panic: ADC Error.");
    while(1);
}

/* Called upon DAC error */
static void dac_error_callback(DACDriver* dacp, dacerror_t err)
{
    (void)dacp;
    (void)err;
    chSysHalt("Panic: DAC Error.");
    while(1);
}


/****************** Other functions ************************************/

// Used on double-buffered DMA streams.  Set the buffer address which is
// not currently in use
void dmaSetOtherMemory(const stm32_dma_stream_t *dmastp,
                       volatile uint16_t *addr)
{
    if(dmastp->stream->CR | DMA_SxCR_CT)
    {
        // Memory address 1 active, so set address 0
        dmaStreamSetMemory0(dmastp, addr);
    }
    else
    {
        // Memory address 0 active, so set address 1
        dmaStreamSetMemory1(dmastp, addr);
    }

}

void dsp_stuff(volatile uint16_t *buffer)
{
    (void)buffer;
}

/****************** Thread main loop ***********************************/
msg_t analog_thread(void *args)
{
    (void)args;

    chRegSetThreadName("Analog");
    chBSemObjectInit(&bsAnalogInst, true);
    chBSemObjectInit(&bsAnalogFX, true);

    adcInit();
    adcStart(&ADCD1, NULL);
    adcStart(&ADCD2, NULL);
    adcStartConversion(&ADCD1, &adc_con_group_1, (adcsample_t*)buffer1,
                       INST_BUF_DEPTH);
    adcStartConversion(&ADCD2, &adc_con_group_2, (adcsample_t*)fx_samples,
                       FX_BUF_DEPTH);

    dacInit();
    dacStart(&DACD1, &dac_cfg);
    dacStartConversion(&DACD1, &dac_conv_grp, (dacsample_t*)buffer3,
                       INST_BUF_DEPTH);
    // Enable DAC output buffer:
    DACD1.params->dac->CR |= DAC_CR_BOFF1;

    /* Start the GPT timers. They reload at after reaching 1 such that
     * TRGO frequency equals timer frequency. */
    gptStart(&GPTD3, &gpt_inst_config);
    GPTD3.tim->CR2 |= STM32_TIM_CR2_MMS(2);
    gptStartContinuous(&GPTD3, 2);
    GPTD3.tim->DIER &= ~STM32_TIM_DIER_UIE;

    gptStart(&GPTD8, &gpt_fx_config);
    GPTD8.tim->CR2 |= STM32_TIM_CR2_MMS(2);
    gptStartContinuous(&GPTD8, 2);
    GPTD8.tim->DIER &= ~STM32_TIM_DIER_UIE;

    state = 1;

    // States:
    // 1 - ADC:buf1, DSP:buf2, DAC:buf3
    // 2 - DSP:buf1, DAC:buf2, ADC:buf3
    // 3 - DAC:buf1, ADC:buf2, DSP:buf3

    /* Wait until the ADC callback boops the semaphore. */
    volatile uint16_t *dsp_buf;
    while(true) {
        chSysLock();
        chBSemWaitS(&bsAnalogInst);
        chSysUnlock();

        state += 1;

        switch(state)
        {
            case 1:
                dmaSetOtherMemory(ADCD1.dmastp, buffer1);
                dsp_buf = buffer2;
                dmaSetOtherMemory(DACD1.params->dma, buffer3);
                break;
            case 2:
                dmaSetOtherMemory(ADCD1.dmastp, buffer3);
                dsp_buf = buffer1;
                dmaSetOtherMemory(DACD1.params->dma, buffer2);
                break;
            case 3:
                dmaSetOtherMemory(ADCD1.dmastp, buffer2);
                dsp_buf = buffer3;
                dmaSetOtherMemory(DACD1.params->dma, buffer1);
                break;
            default:
                state = 1;
                dmaSetOtherMemory(ADCD1.dmastp, buffer1);
                dsp_buf = buffer2;
                dmaSetOtherMemory(DACD1.params->dma, buffer3);
        }
        dsp_stuff(dsp_buf);
    }
}
