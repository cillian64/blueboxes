/*
    ChibiOS - Copyright (C) 2006..2016 Giovanni Di Sirio

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

#include "ch.h"
#include "hal.h"
#include "ch_test.h"
#include "oled.h"

// Blink thread.
static THD_WORKING_AREA(waThread1, 128);
static THD_FUNCTION(Thread1, arg) {
    (void)arg;
    chRegSetThreadName("blinker");
    while (true);
}

int main(void) {
    halInit();
    chSysInit();

    oled_init();
    oled_erase();
    oled_text_small(0, 0, "badger badger badger*");
    oled_text_small(1, 0, "more badgers");
    oled_text_small(2, 0, "mushroom??");
    oled_text_small(3, 0, "snaaaaaake!");
    oled_draw();

    while (true) {
        oled_draw();
        chThdSleepMilliseconds(1000);
    }
}
