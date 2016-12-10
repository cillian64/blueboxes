/*
 * BlueBoxes DSP ADC driver. (c) 2016 David Turner blueboxes@dwt27.co.uk
 * Based on M2FC analogue driver, (c) 2015 Eivind Roson Eide, CUSF
 */

#ifndef ANALOGUE_H
#define ANALOGUE_H

#include "ch.h"

msg_t analogue_thread(void *args);

#endif // #ifndef ANALOGUE_H
