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

#define INST_BUF_DEPTH 256

#define INST_IN_CHN ADC_CHANNEL_IN10

/****************** Callback Declarations ******************************/
static void adc_inst_callback(ADCDriver*, adcsample_t*, size_t n);

static void adc_error_callback(ADCDriver*, adcerror_t);

/****************** Sample Buffers *************************************/
static volatile uint16_t inst_buffer[INST_BUF_DEPTH];

/****************** Configuration Structures ***************************/
/* Timer used to trigger inst ADC captures */
static const GPTConfig gpt_inst_config =
{
     43750,             // clock: 44kHz-ish
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

/****************** Callback Definitions *******************************/
/* Called upon inst ADC DMA buffer filling up. */
static void adc_inst_callback(ADCDriver *adc_driver_ptr, adcsample_t *buffer, size_t n) {
    (void)adc_driver_ptr;
    (void)buffer;
    (void)n;
}

/* adc_error_callback is called if there is an error during conversion */
static void adc_error_callback(ADCDriver *adc_driver_ptr, adcerror_t err) {
    (void)adc_driver_ptr;
    (void)err;
    chSysHalt("Panic: ADC Error.");
    while(1);
}

/****************** Thread main loop ***********************************/
msg_t analog_thread(void *args)
{
    (void)args;

    chRegSetThreadName("Analog");

    adcInit();
    adcStart(&ADCD1, NULL);
    adcStartConversion(&ADCD1, &adc_con_group_1, (adcsample_t*)inst_buffer,
                       INST_BUF_DEPTH);

    /* Start the TIMER3 to clock ADC1. They reload at after reaching 1 such that
     * TRGO frequency equals timer frequency. */
    gptStart(&GPTD3, &gpt_inst_config);
    GPTD3.tim->CR2 |= STM32_TIM_CR2_MMS(2);
    gptStartContinuous(&GPTD3, 2);
    GPTD3.tim->DIER &= ~STM32_TIM_DIER_UIE;

    // In theory we're done now, and inst_buffer should be repeatedly filled up
    // with samples! Yay!
    while(1) {
        chThdSleepMilliseconds(1000);
    }
}
