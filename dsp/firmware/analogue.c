/*
 * BlueBoxes DSP ADC driver. (c) 2016 David Turner blueboxes@dwt27.co.uk
 * Based on M2FC analogue driver, (c) 2015 Eivind Roson Eide, CUSF
 */

#include <ch.h>
#include <chbsem.h>
#include <hal.h>

#include "analogue.h"

#define INST_BUF_DEPTH 1024
#define FX_BUF_DEPTH 3

#define INST_IN_CHN ADC_CHANNEL_IN10
#define FX_1_CHN    ADC_CHANNEL_IN2
#define FX_2_CHN    ADC_CHANNEL_IN5
#define FX_3_CHN    ADC_CHANNEL_IN3

static void adc_inst_callback(ADCDriver*, adcsample_t*, size_t n);
static void adc_fx_callback(ADCDriver*, adcsample_t*, size_t n);
static void adc_error_callback(ADCDriver*, adcerror_t);

/* Allocate arrays with the sample data from ADCs */
/* Arrays for storing captured samples */
static volatile adcsample_t inst_samples[INST_BUF_DEPTH];
static volatile adcsample_t fx_samples[FX_BUF_DEPTH];

/* Semaphores used to indicate conversion completion */
static binary_semaphore_t bsAnalogueInst;
static binary_semaphore_t bsAnalogueFX;

// GPT object = timer configuration
// gpt used to trigger inst input conversions:
static const GPTConfig gpt_inst_config =
{
     44000,             // clock: 44kHz
     NULL,              // callback function (not used)
     0,                 // CR2
     0                  // DIER
};

// gpt used to trigger FX input conversions:
static const GPTConfig gpt_fx_config =
{
     1000,              // clock: 1kHz
     NULL,              // callback function (not used)
     0,                 // CR2
     0                  // DIER
};

/* Instrument conversion group for ADC1. Continuous, INST_BUF_DEPTH
 * Channels: INST_IN_CHN */
static const ADCConversionGroup adc_con_group_1 = {
    TRUE, /* circular mode */
    1, /* number of channels in this con_group */
    adc_inst_callback,
    adc_error_callback,
    0, /* ADC_CR1 */
    /* cr2: Clock the ADC to timer 3 TRGO event*/
    ADC_CR2_EXTSEL_SRC(8) | ADC_CR2_EXTEN_0,
    /* smpr1+2: set all channels to 40 cycles per conversion (28+12) */
    ADC_SMPR1_SMP_AN11(2)| ADC_SMPR1_SMP_AN12(2)| ADC_SMPR1_SMP_AN13(2),
    ADC_SMPR2_SMP_AN0(2) | ADC_SMPR2_SMP_AN1(2) | ADC_SMPR2_SMP_AN2(2),
    ADC_SQR1_NUM_CH(1), /* sqr1: set 1 channel in the group */
    0, /* sqr2: no higher channels being sampled */
    /* sqr3: set the two channels to sample */
    ADC_SQR3_SQ1_N(INST_IN_CHN)
};

/* FX inputs conversion group for ADC2.  Continuous, FX_BUF_DEPTH
 * Channels: FX_1_CHN, FX_2_CHN, FX_3_CHN */
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

/* Called upon inst ADC DMA buffer filling up. */
static void adc_inst_callback(ADCDriver *adc_driver_ptr, adcsample_t *buffer, size_t n) {
    (void)adc_driver_ptr;
    (void)buffer;
    (void)n;
    chSysLockFromISR();
    chBSemSignalI(&bsAnalogueInst);
    chSysUnlockFromISR();
}

/* Called upon FX ADC DMA buffer filling up. */
static void adc_fx_callback(ADCDriver *adc_driver_ptr, adcsample_t *buffer, size_t n) {
    (void)adc_driver_ptr;
    (void)buffer;
    (void)n;
    chSysLockFromISR();
    chBSemSignalI(&bsAnalogueFX);
    chSysUnlockFromISR();
}

/*
 * adc_error_callback is called if there is an error during conversion
 */
static void adc_error_callback(ADCDriver *adc_driver_ptr, adcerror_t err) {
    (void)adc_driver_ptr;
    (void)err;
    while(1);
    /* TODO: Something... */
}

msg_t analogue_thread(void *args)
{
    (void)args;

    chRegSetThreadName("Analogue");
    chBSemObjectInit(&bsAnalogueInst, true);
    chBSemObjectInit(&bsAnalogueFX, true);

    adcInit();
    adcStart(&ADCD1, NULL);
    adcStart(&ADCD2, NULL);
    gptStart(&GPTD3, &gpt_inst_config);
    gptStart(&GPTD8, &gpt_fx_config);

    adcStartConversion(&ADCD1, &adc_con_group_1, (adcsample_t *)inst_samples,
                       INST_BUF_DEPTH);
    adcStartConversion(&ADCD2, &adc_con_group_2, (adcsample_t *)fx_samples,
                       FX_BUF_DEPTH);

    /*
    * Start the GPT timer
    * Timer is clocked at 40kHz and reloaded when it reaches 1.
    * We manually set master mode to UPDATE to generate TRGO on updates.
    * We manually disable the update interrupt as we're not using it.
    */
    GPTD3.tim->CR2 |= STM32_TIM_CR2_MMS(2);
    gptStartContinuous(&GPTD3, 2);
    GPTD3.tim->DIER &= ~STM32_TIM_DIER_UIE;

    /* Wait until the ADC callback boops the semaphore. */
    while(true) {
        chSysLock();
        chBSemWaitS(&bsAnalogueInst);
        chSysUnlock();
        // save_results();
    }
}
