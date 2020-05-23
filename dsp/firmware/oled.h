/*
    bluxboxes dsp - Copyright (c) 2016-2020 David Turner
    Uses ChibiOS RT/HAL - Copyright (C) 2006..2016 Giovanni Di Sirio
    Based on OLED driver from Supervide - (C) 2015 Adam Greig

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

#ifndef OLED_H
#define OLED_H

#include <stdint.h>

extern uint8_t oled_buffer[4][128];

void oled_init(void);
void oled_draw(void);
void oled_logo(void);
void oled_icon(const uint8_t* icon);
void oled_erase(void);

void oled_text_small(uint8_t line, uint8_t x, const char* str);
void oled_text_big(uint8_t line, uint8_t x, const char* str);

#endif /* OLED_H */
