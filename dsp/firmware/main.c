/*
    bluxboxes dsp - Copyright (c) 2016-2020 David Turner
    Uses ChibiOS RT/HAL - Copyright (C) 2006..2016 Giovanni Di Sirio

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

#include "ch.h"
#include "hal.h"
#include "ch_test.h"
#include "oled.h"

#include "analog.h"

static THD_WORKING_AREA(waAnalog_Thread, 128);

int main(void) {
    halInit();
    chSysInit();

    chThdCreateStatic(waAnalog_Thread, sizeof(waAnalog_Thread), NORMALPRIO,
                      analog_thread, NULL);

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
