EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:breadbox-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X02 P3
U 1 1 574B339A
P 1800 1750
F 0 "P3" H 1719 1468 50  0000 C CNN
F 1 "PP3" H 1719 1560 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 1800 1750 50  0001 C CNN
F 3 "" H 1800 1750 50  0000 C CNN
	1    1800 1750
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR01
U 1 1 574B33DE
P 2000 1800
F 0 "#PWR01" H 2000 1650 50  0001 C CNN
F 1 "VSS" H 2021 1974 50  0000 C CNN
F 2 "" H 2000 1800 50  0000 C CNN
F 3 "" H 2000 1800 50  0000 C CNN
	1    2000 1800
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR02
U 1 1 574B3403
P 2000 1700
F 0 "#PWR02" H 2000 1550 50  0001 C CNN
F 1 "VDD" H 2020 1874 50  0000 C CNN
F 2 "" H 2000 1700 50  0000 C CNN
F 3 "" H 2000 1700 50  0000 C CNN
	1    2000 1700
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 574B341B
P 2500 1550
F 0 "R2" H 2570 1596 50  0000 L CNN
F 1 "100k" H 2570 1504 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 2430 1550 50  0001 C CNN
F 3 "" H 2500 1550 50  0000 C CNN
	1    2500 1550
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 574B3448
P 2500 1950
F 0 "R3" H 2570 1996 50  0000 L CNN
F 1 "100k" H 2570 1904 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" V 2430 1950 50  0001 C CNN
F 3 "" H 2500 1950 50  0000 C CNN
	1    2500 1950
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR03
U 1 1 574B348D
P 2500 1400
F 0 "#PWR03" H 2500 1250 50  0001 C CNN
F 1 "VDD" H 2520 1574 50  0000 C CNN
F 2 "" H 2500 1400 50  0000 C CNN
F 3 "" H 2500 1400 50  0000 C CNN
	1    2500 1400
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR04
U 1 1 574B34AA
P 2500 2100
F 0 "#PWR04" H 2500 1950 50  0001 C CNN
F 1 "VSS" H 2521 2274 50  0000 C CNN
F 2 "" H 2500 2100 50  0000 C CNN
F 3 "" H 2500 2100 50  0000 C CNN
	1    2500 2100
	-1   0    0    1   
$EndComp
$Comp
L LM358N U2
U 1 1 574B34CD
P 3500 1850
F 0 "U2" H 3841 1896 50  0000 L CNN
F 1 "LM358N" H 3841 1804 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 3500 1850 50  0001 C CNN
F 3 "" H 3500 1850 50  0000 C CNN
	1    3500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1700 2500 1800
Wire Wire Line
	2500 1750 3200 1750
Connection ~ 2500 1750
$Comp
L VDD #PWR05
U 1 1 574B3528
P 3400 1550
F 0 "#PWR05" H 3400 1400 50  0001 C CNN
F 1 "VDD" H 3420 1724 50  0000 C CNN
F 2 "" H 3400 1550 50  0000 C CNN
F 3 "" H 3400 1550 50  0000 C CNN
	1    3400 1550
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR06
U 1 1 574B3548
P 3400 2150
F 0 "#PWR06" H 3400 2000 50  0001 C CNN
F 1 "VSS" H 3421 2324 50  0000 C CNN
F 2 "" H 3400 2150 50  0000 C CNN
F 3 "" H 3400 2150 50  0000 C CNN
	1    3400 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 1850 3800 2400
Wire Wire Line
	3800 2400 3200 2400
Wire Wire Line
	3200 2400 3200 1950
Connection ~ 3800 1850
Wire Wire Line
	3800 1850 4250 1850
$Comp
L GND #PWR07
U 1 1 574B35C2
P 4250 1850
F 0 "#PWR07" H 4250 1600 50  0001 C CNN
F 1 "GND" H 4258 1676 50  0000 C CNN
F 2 "" H 4250 1850 50  0000 C CNN
F 3 "" H 4250 1850 50  0000 C CNN
	1    4250 1850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 574B3673
P 1650 3650
F 0 "P1" H 1569 3368 50  0000 C CNN
F 1 "IN" H 1569 3460 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 1650 3650 50  0001 C CNN
F 3 "" H 1650 3650 50  0000 C CNN
	1    1650 3650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 574B372A
P 1850 3700
F 0 "#PWR08" H 1850 3450 50  0001 C CNN
F 1 "GND" H 1858 3526 50  0000 C CNN
F 2 "" H 1850 3700 50  0000 C CNN
F 3 "" H 1850 3700 50  0000 C CNN
	1    1850 3700
	1    0    0    -1  
$EndComp
$Comp
L LM358N U1
U 2 1 574B3772
P 2750 3500
F 0 "U1" H 3091 3546 50  0000 L CNN
F 1 "LM358N" H 3091 3454 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2750 3500 50  0001 C CNN
F 3 "" H 2750 3500 50  0000 C CNN
	2    2750 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 574B37E1
P 2450 3400
F 0 "#PWR09" H 2450 3150 50  0001 C CNN
F 1 "GND" H 2458 3226 50  0001 C CNN
F 2 "" H 2450 3400 50  0000 C CNN
F 3 "" H 2450 3400 50  0000 C CNN
	1    2450 3400
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 574B38CC
P 2200 3600
F 0 "R1" V 2408 3600 50  0000 C CNN
F 1 "1M" V 2316 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2130 3600 50  0001 C CNN
F 3 "" H 2200 3600 50  0000 C CNN
	1    2200 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 3600 2050 3600
Wire Wire Line
	2350 3600 2450 3600
$Comp
L VSS #PWR010
U 1 1 574B394F
P 2650 3800
F 0 "#PWR010" H 2650 3650 50  0001 C CNN
F 1 "VSS" H 2671 3974 50  0000 C CNN
F 2 "" H 2650 3800 50  0000 C CNN
F 3 "" H 2650 3800 50  0000 C CNN
	1    2650 3800
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR011
U 1 1 574B3986
P 2650 3200
F 0 "#PWR011" H 2650 3050 50  0001 C CNN
F 1 "VDD" H 2670 3374 50  0000 C CNN
F 2 "" H 2650 3200 50  0000 C CNN
F 3 "" H 2650 3200 50  0000 C CNN
	1    2650 3200
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 574B39DA
P 2900 4050
F 0 "R4" V 2692 4050 50  0000 C CNN
F 1 "1M" V 2784 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2830 4050 50  0001 C CNN
F 3 "" H 2900 4050 50  0000 C CNN
	1    2900 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 3600 2400 4050
Wire Wire Line
	2400 4050 2750 4050
Connection ~ 2400 3600
Wire Wire Line
	3050 4050 3050 3500
Connection ~ 3050 3500
Wire Wire Line
	3050 3500 3500 3500
$Comp
L CONN_01X02 P5
U 1 1 574B3C13
P 3850 5400
F 0 "P5" H 3768 5118 50  0000 C CNN
F 1 "OUT" H 3768 5210 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" H 3850 5400 50  0001 C CNN
F 3 "" H 3850 5400 50  0000 C CNN
	1    3850 5400
	1    0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 574B3CCC
P 3650 5450
F 0 "#PWR012" H 3650 5200 50  0001 C CNN
F 1 "GND" H 3658 5276 50  0000 C CNN
F 2 "" H 3650 5450 50  0000 C CNN
F 3 "" H 3650 5450 50  0000 C CNN
	1    3650 5450
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR013
U 1 1 574B3D47
P 2400 5050
F 0 "#PWR013" H 2400 4900 50  0001 C CNN
F 1 "VDD" H 2420 5224 50  0000 C CNN
F 2 "" H 2400 5050 50  0000 C CNN
F 3 "" H 2400 5050 50  0000 C CNN
	1    2400 5050
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR014
U 1 1 574B3D79
P 2400 5650
F 0 "#PWR014" H 2400 5500 50  0001 C CNN
F 1 "VSS" H 2421 5824 50  0000 C CNN
F 2 "" H 2400 5650 50  0000 C CNN
F 3 "" H 2400 5650 50  0000 C CNN
	1    2400 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 5450 2200 5900
Wire Wire Line
	2200 5900 2800 5900
Wire Wire Line
	2800 5900 2800 5350
Connection ~ 2800 5350
Wire Wire Line
	2800 5350 3650 5350
$Comp
L CONN_01X03 P4
U 1 1 574B42C8
P 3700 3500
F 0 "P4" H 3777 3538 50  0000 L CNN
F 1 "IN" H 3777 3446 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 3700 3500 50  0001 C CNN
F 3 "" H 3700 3500 50  0000 C CNN
	1    3700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3400 3500 3600
Connection ~ 3500 3500
Wire Wire Line
	1950 5150 1950 5350
Connection ~ 1950 5250
Wire Wire Line
	2200 5250 1950 5250
Wire Wire Line
	5350 1400 5350 1600
Wire Wire Line
	5350 1600 5550 1600
Connection ~ 5350 1500
Connection ~ 5350 1600
Connection ~ 5350 1800
Connection ~ 5350 1900
Wire Wire Line
	5350 1800 5350 2000
Wire Wire Line
	5350 1800 5550 1800
$Comp
L VDD #PWR015
U 1 1 574B52B3
P 5750 1400
F 0 "#PWR015" H 5750 1250 50  0001 C CNN
F 1 "VDD" H 5770 1574 50  0000 C CNN
F 2 "" H 5750 1400 50  0000 C CNN
F 3 "" H 5750 1400 50  0000 C CNN
	1    5750 1400
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR016
U 1 1 574B52F4
P 5750 2000
F 0 "#PWR016" H 5750 1850 50  0001 C CNN
F 1 "VSS" H 5771 2174 50  0000 C CNN
F 2 "" H 5750 2000 50  0000 C CNN
F 3 "" H 5750 2000 50  0000 C CNN
	1    5750 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 1700 6550 1700
Connection ~ 6550 1700
Wire Wire Line
	6550 1600 6550 1800
$Comp
L VDD #PWR017
U 1 1 574B55CA
P 5750 2550
F 0 "#PWR017" H 5750 2400 50  0001 C CNN
F 1 "VDD" H 5770 2724 50  0000 C CNN
F 2 "" H 5750 2550 50  0000 C CNN
F 3 "" H 5750 2550 50  0000 C CNN
	1    5750 2550
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR018
U 1 1 574B5611
P 5750 3150
F 0 "#PWR018" H 5750 3000 50  0001 C CNN
F 1 "VSS" H 5771 3324 50  0000 C CNN
F 2 "" H 5750 3150 50  0000 C CNN
F 3 "" H 5750 3150 50  0000 C CNN
	1    5750 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 2550 5350 2750
Wire Wire Line
	5350 2750 5550 2750
Connection ~ 5350 2750
Connection ~ 5350 2650
Wire Wire Line
	5550 2950 5350 2950
Wire Wire Line
	5350 2950 5350 3150
Connection ~ 5350 3050
Connection ~ 5350 2950
Wire Wire Line
	6550 2850 6150 2850
Connection ~ 6550 2850
Wire Wire Line
	6550 2750 6550 2950
Wire Wire Line
	5350 3750 5350 3950
Wire Wire Line
	5350 3950 5550 3950
Connection ~ 5350 3850
Connection ~ 5350 3950
Connection ~ 5350 4150
Connection ~ 5350 4250
Wire Wire Line
	5350 4150 5350 4350
Wire Wire Line
	5350 4150 5550 4150
$Comp
L VDD #PWR019
U 1 1 574B5FAA
P 5750 3750
F 0 "#PWR019" H 5750 3600 50  0001 C CNN
F 1 "VDD" H 5770 3924 50  0000 C CNN
F 2 "" H 5750 3750 50  0000 C CNN
F 3 "" H 5750 3750 50  0000 C CNN
	1    5750 3750
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR020
U 1 1 574B5FB0
P 5750 4350
F 0 "#PWR020" H 5750 4200 50  0001 C CNN
F 1 "VSS" H 5771 4524 50  0000 C CNN
F 2 "" H 5750 4350 50  0000 C CNN
F 3 "" H 5750 4350 50  0000 C CNN
	1    5750 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 4050 6550 4050
Connection ~ 6550 4050
Wire Wire Line
	6550 3950 6550 4150
$Comp
L VDD #PWR021
U 1 1 574B6F19
P 9450 1650
F 0 "#PWR021" H 9450 1500 50  0001 C CNN
F 1 "VDD" H 9470 1824 50  0000 C CNN
F 2 "" H 9450 1650 50  0000 C CNN
F 3 "" H 9450 1650 50  0000 C CNN
	1    9450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1650 9450 2850
Connection ~ 9450 2750
Connection ~ 9450 2650
Connection ~ 9450 2550
Connection ~ 9450 2450
Connection ~ 9450 2350
Connection ~ 9450 2250
Connection ~ 9450 2150
Connection ~ 9450 2050
Connection ~ 9450 1850
Connection ~ 9450 1950
Connection ~ 9450 1750
$Comp
L GND #PWR022
U 1 1 574B70C8
P 9950 2950
F 0 "#PWR022" H 9950 2700 50  0001 C CNN
F 1 "GND" H 9958 2776 50  0000 C CNN
F 2 "" H 9950 2950 50  0000 C CNN
F 3 "" H 9950 2950 50  0000 C CNN
	1    9950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1750 9950 2950
Connection ~ 9950 1850
Connection ~ 9950 1950
Connection ~ 9950 2050
Connection ~ 9950 2150
Connection ~ 9950 2250
Connection ~ 9950 2350
Connection ~ 9950 2450
Connection ~ 9950 2550
Connection ~ 9950 2650
Connection ~ 9950 2750
Connection ~ 9950 2850
Wire Wire Line
	10450 1750 10450 2950
$Comp
L VSS #PWR023
U 1 1 574B7218
P 10450 2950
F 0 "#PWR023" H 10450 2800 50  0001 C CNN
F 1 "VSS" H 10471 3124 50  0000 C CNN
F 2 "" H 10450 2950 50  0000 C CNN
F 3 "" H 10450 2950 50  0000 C CNN
	1    10450 2950
	-1   0    0    1   
$EndComp
Connection ~ 10450 1850
Connection ~ 10450 1950
Connection ~ 10450 2050
Connection ~ 10450 2150
Connection ~ 10450 2250
Connection ~ 10450 2350
Connection ~ 10450 2450
Connection ~ 10450 2550
Connection ~ 10450 2650
Connection ~ 10450 2750
Connection ~ 10450 2850
Text Notes 2400 2600 0    60   ~ 0
Split rail buffer
Text Notes 2300 4250 0    60   ~ 0
Hi-Z input buffer
Text Notes 2250 6100 0    60   ~ 0
Output buffer
$Comp
L LM358N U1
U 1 1 574B469E
P 2500 5350
F 0 "U1" H 2841 5396 50  0000 L CNN
F 1 "LM358N" H 2841 5304 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2500 5350 50  0001 C CNN
F 3 "" H 2500 5350 50  0000 C CNN
	1    2500 5350
	1    0    0    -1  
$EndComp
$Comp
L LM358N U3
U 1 1 574B4AA7
P 5850 2850
F 0 "U3" H 6191 2896 50  0000 L CNN
F 1 "LM358N" H 6191 2804 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5850 2850 50  0001 C CNN
F 3 "" H 5850 2850 50  0000 C CNN
	1    5850 2850
	1    0    0    -1  
$EndComp
$Comp
L LM358N U2
U 2 1 574B4C0C
P 5850 1700
F 0 "U2" H 6191 1746 50  0000 L CNN
F 1 "LM358N" H 6191 1654 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5850 1700 50  0001 C CNN
F 3 "" H 5850 1700 50  0000 C CNN
	2    5850 1700
	1    0    0    -1  
$EndComp
$Comp
L LM358N U3
U 2 1 574B4C9E
P 5850 4050
F 0 "U3" H 6191 4096 50  0000 L CNN
F 1 "LM358N" H 6191 4004 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5850 4050 50  0001 C CNN
F 3 "" H 5850 4050 50  0000 C CNN
	2    5850 4050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P2
U 1 1 574B5A4E
P 1750 5250
F 0 "P2" H 1827 5288 50  0000 L CNN
F 1 "OUT" H 1827 5196 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 1750 5250 50  0001 C CNN
F 3 "" H 1750 5250 50  0000 C CNN
	1    1750 5250
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P6
U 1 1 574B5AF8
P 5150 1500
F 0 "P6" H 5227 1538 50  0000 L CNN
F 1 "1+" H 5227 1446 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5150 1500 50  0001 C CNN
F 3 "" H 5150 1500 50  0000 C CNN
	1    5150 1500
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P7
U 1 1 574B5BB1
P 5150 1900
F 0 "P7" H 5227 1938 50  0000 L CNN
F 1 "1-" H 5227 1846 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5150 1900 50  0001 C CNN
F 3 "" H 5150 1900 50  0000 C CNN
	1    5150 1900
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P8
U 1 1 574B5C90
P 5150 2650
F 0 "P8" H 5227 2688 50  0000 L CNN
F 1 "2+" H 5227 2596 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5150 2650 50  0001 C CNN
F 3 "" H 5150 2650 50  0000 C CNN
	1    5150 2650
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P9
U 1 1 574B5D02
P 5150 3050
F 0 "P9" H 5227 3088 50  0000 L CNN
F 1 "2-" H 5227 2996 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5150 3050 50  0001 C CNN
F 3 "" H 5150 3050 50  0000 C CNN
	1    5150 3050
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P10
U 1 1 574B5D72
P 5150 3850
F 0 "P10" H 5227 3888 50  0000 L CNN
F 1 "3+" H 5227 3796 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5150 3850 50  0001 C CNN
F 3 "" H 5150 3850 50  0000 C CNN
	1    5150 3850
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P11
U 1 1 574B5DEC
P 5150 4250
F 0 "P11" H 5227 4288 50  0000 L CNN
F 1 "3-" H 5227 4196 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5150 4250 50  0001 C CNN
F 3 "" H 5150 4250 50  0000 C CNN
	1    5150 4250
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P12
U 1 1 574B5E62
P 6750 1700
F 0 "P12" H 6827 1738 50  0000 L CNN
F 1 "1OUT" H 6827 1646 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6750 1700 50  0001 C CNN
F 3 "" H 6750 1700 50  0000 C CNN
	1    6750 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P13
U 1 1 574B6025
P 6750 2850
F 0 "P13" H 6827 2888 50  0000 L CNN
F 1 "2OUT" H 6827 2796 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6750 2850 50  0001 C CNN
F 3 "" H 6750 2850 50  0000 C CNN
	1    6750 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P14
U 1 1 574B60AB
P 6750 4050
F 0 "P14" H 6827 4088 50  0000 L CNN
F 1 "3OUT" H 6827 3996 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6750 4050 50  0001 C CNN
F 3 "" H 6750 4050 50  0000 C CNN
	1    6750 4050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 P21
U 1 1 574B6695
P 9650 2300
F 0 "P21" H 9728 2338 50  0000 L CNN
F 1 "VDD" H 9728 2246 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 9650 2300 50  0001 C CNN
F 3 "" H 9650 2300 50  0000 C CNN
	1    9650 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 P23
U 1 1 574B6884
P 10150 2300
F 0 "P23" H 10227 2338 50  0000 L CNN
F 1 "GND" H 10227 2246 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 10150 2300 50  0001 C CNN
F 3 "" H 10150 2300 50  0000 C CNN
	1    10150 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 P25
U 1 1 574B68E8
P 10650 2300
F 0 "P25" H 10728 2338 50  0000 L CNN
F 1 "VSS" H 10728 2246 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 10650 2300 50  0001 C CNN
F 3 "" H 10650 2300 50  0000 C CNN
	1    10650 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 P15
U 1 1 574B7AA4
P 8100 3900
F 0 "P15" H 8178 3892 50  0000 L CNN
F 1 "CONN" H 8178 3846 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 8100 3900 50  0001 C CNN
F 3 "" H 8100 3900 50  0000 C CNN
	1    8100 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 P16
U 1 1 574B7E24
P 8400 3900
F 0 "P16" H 8478 3892 50  0000 L CNN
F 1 "CONN" H 8478 3846 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 8400 3900 50  0001 C CNN
F 3 "" H 8400 3900 50  0000 C CNN
	1    8400 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 P17
U 1 1 574B7E8F
P 8700 3900
F 0 "P17" H 8778 3892 50  0000 L CNN
F 1 "CONN" H 8778 3846 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 8700 3900 50  0001 C CNN
F 3 "" H 8700 3900 50  0000 C CNN
	1    8700 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 P18
U 1 1 574B7EFB
P 9000 3900
F 0 "P18" H 9078 3892 50  0000 L CNN
F 1 "CONN" H 9078 3846 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 9000 3900 50  0001 C CNN
F 3 "" H 9000 3900 50  0000 C CNN
	1    9000 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 P19
U 1 1 574B7F6B
P 9300 3900
F 0 "P19" H 9378 3892 50  0000 L CNN
F 1 "CONN" H 9378 3846 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 9300 3900 50  0001 C CNN
F 3 "" H 9300 3900 50  0000 C CNN
	1    9300 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 P20
U 1 1 574B7FDD
P 9600 3900
F 0 "P20" H 9678 3892 50  0000 L CNN
F 1 "CONN" H 9678 3846 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 9600 3900 50  0001 C CNN
F 3 "" H 9600 3900 50  0000 C CNN
	1    9600 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 P22
U 1 1 574B8052
P 9900 3900
F 0 "P22" H 9978 3892 50  0000 L CNN
F 1 "CONN" H 9978 3846 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 9900 3900 50  0001 C CNN
F 3 "" H 9900 3900 50  0000 C CNN
	1    9900 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X12 P24
U 1 1 574B80CA
P 10200 3900
F 0 "P24" H 10278 3892 50  0000 L CNN
F 1 "CONN" H 10278 3846 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12" H 10200 3900 50  0001 C CNN
F 3 "" H 10200 3900 50  0000 C CNN
	1    10200 3900
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR024
U 1 1 574BAC0A
P 5550 5000
F 0 "#PWR024" H 5550 4850 50  0001 C CNN
F 1 "VDD" H 5570 5174 50  0000 C CNN
F 2 "" H 5550 5000 50  0000 C CNN
F 3 "" H 5550 5000 50  0000 C CNN
	1    5550 5000
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR025
U 1 1 574BAC10
P 5550 5600
F 0 "#PWR025" H 5550 5450 50  0001 C CNN
F 1 "VSS" H 5571 5774 50  0000 C CNN
F 2 "" H 5550 5600 50  0000 C CNN
F 3 "" H 5550 5600 50  0000 C CNN
	1    5550 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 5000 5150 5200
Wire Wire Line
	5150 5200 5350 5200
Connection ~ 5150 5200
Connection ~ 5150 5100
Wire Wire Line
	5350 5400 5150 5400
Wire Wire Line
	5150 5400 5150 5600
Connection ~ 5150 5500
Connection ~ 5150 5400
Wire Wire Line
	6350 5300 5950 5300
Connection ~ 6350 5300
Wire Wire Line
	6350 5200 6350 5400
Wire Wire Line
	5150 6200 5150 6400
Wire Wire Line
	5150 6400 5350 6400
Connection ~ 5150 6300
Connection ~ 5150 6400
Connection ~ 5150 6600
Connection ~ 5150 6700
Wire Wire Line
	5150 6600 5150 6800
Wire Wire Line
	5150 6600 5350 6600
$Comp
L VDD #PWR026
U 1 1 574BAC29
P 5550 6200
F 0 "#PWR026" H 5550 6050 50  0001 C CNN
F 1 "VDD" H 5570 6374 50  0000 C CNN
F 2 "" H 5550 6200 50  0000 C CNN
F 3 "" H 5550 6200 50  0000 C CNN
	1    5550 6200
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR027
U 1 1 574BAC2F
P 5550 6800
F 0 "#PWR027" H 5550 6650 50  0001 C CNN
F 1 "VSS" H 5571 6974 50  0000 C CNN
F 2 "" H 5550 6800 50  0000 C CNN
F 3 "" H 5550 6800 50  0000 C CNN
	1    5550 6800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 6500 6350 6500
Connection ~ 6350 6500
Wire Wire Line
	6350 6400 6350 6600
$Comp
L LM358N U4
U 1 1 574BAC38
P 5650 5300
F 0 "U4" H 5991 5346 50  0000 L CNN
F 1 "LM358N" H 5991 5254 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5650 5300 50  0001 C CNN
F 3 "" H 5650 5300 50  0000 C CNN
	1    5650 5300
	1    0    0    -1  
$EndComp
$Comp
L LM358N U4
U 2 1 574BAC3E
P 5650 6500
F 0 "U4" H 5991 6546 50  0000 L CNN
F 1 "LM358N" H 5991 6454 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5650 6500 50  0001 C CNN
F 3 "" H 5650 6500 50  0000 C CNN
	2    5650 6500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P26
U 1 1 574BAC44
P 4950 5100
F 0 "P26" H 5027 5138 50  0000 L CNN
F 1 "4+" H 5027 5046 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4950 5100 50  0001 C CNN
F 3 "" H 4950 5100 50  0000 C CNN
	1    4950 5100
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P27
U 1 1 574BAC4A
P 4950 5500
F 0 "P27" H 5027 5538 50  0000 L CNN
F 1 "4-" H 5027 5446 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4950 5500 50  0001 C CNN
F 3 "" H 4950 5500 50  0000 C CNN
	1    4950 5500
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P28
U 1 1 574BAC50
P 4950 6300
F 0 "P28" H 5027 6338 50  0000 L CNN
F 1 "5-" H 5027 6246 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4950 6300 50  0001 C CNN
F 3 "" H 4950 6300 50  0000 C CNN
	1    4950 6300
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P29
U 1 1 574BAC56
P 4950 6700
F 0 "P29" H 5027 6738 50  0000 L CNN
F 1 "5+" H 5027 6646 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4950 6700 50  0001 C CNN
F 3 "" H 4950 6700 50  0000 C CNN
	1    4950 6700
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X03 P30
U 1 1 574BAC5C
P 6550 5300
F 0 "P30" H 6627 5338 50  0000 L CNN
F 1 "4OUT" H 6627 5246 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6550 5300 50  0001 C CNN
F 3 "" H 6550 5300 50  0000 C CNN
	1    6550 5300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P31
U 1 1 574BAC62
P 6550 6500
F 0 "P31" H 6627 6538 50  0000 L CNN
F 1 "5OUT" H 6627 6446 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6550 6500 50  0001 C CNN
F 3 "" H 6550 6500 50  0000 C CNN
	1    6550 6500
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 574BB85D
P 3600 1000
F 0 "C1" H 3715 1046 50  0000 L CNN
F 1 "100n" H 3650 900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3638 850 50  0001 C CNN
F 3 "" H 3600 1000 50  0000 C CNN
	1    3600 1000
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR028
U 1 1 574BC4E6
P 3600 850
F 0 "#PWR028" H 3600 700 50  0001 C CNN
F 1 "VDD" H 3620 1024 50  0000 C CNN
F 2 "" H 3600 850 50  0000 C CNN
F 3 "" H 3600 850 50  0000 C CNN
	1    3600 850 
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR029
U 1 1 574BC587
P 3900 850
F 0 "#PWR029" H 3900 700 50  0001 C CNN
F 1 "VDD" H 3920 1024 50  0000 C CNN
F 2 "" H 3900 850 50  0000 C CNN
F 3 "" H 3900 850 50  0000 C CNN
	1    3900 850 
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR030
U 1 1 574BC628
P 4200 850
F 0 "#PWR030" H 4200 700 50  0001 C CNN
F 1 "VDD" H 4220 1024 50  0000 C CNN
F 2 "" H 4200 850 50  0000 C CNN
F 3 "" H 4200 850 50  0000 C CNN
	1    4200 850 
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR031
U 1 1 574BC6C9
P 4500 850
F 0 "#PWR031" H 4500 700 50  0001 C CNN
F 1 "VDD" H 4520 1024 50  0000 C CNN
F 2 "" H 4500 850 50  0000 C CNN
F 3 "" H 4500 850 50  0000 C CNN
	1    4500 850 
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR032
U 1 1 574BC76A
P 3600 1150
F 0 "#PWR032" H 3600 1000 50  0001 C CNN
F 1 "VSS" H 3621 1324 50  0000 C CNN
F 2 "" H 3600 1150 50  0000 C CNN
F 3 "" H 3600 1150 50  0000 C CNN
	1    3600 1150
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR033
U 1 1 574BC869
P 3900 1150
F 0 "#PWR033" H 3900 1000 50  0001 C CNN
F 1 "VSS" H 3921 1324 50  0000 C CNN
F 2 "" H 3900 1150 50  0000 C CNN
F 3 "" H 3900 1150 50  0000 C CNN
	1    3900 1150
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR034
U 1 1 574BC968
P 4200 1150
F 0 "#PWR034" H 4200 1000 50  0001 C CNN
F 1 "VSS" H 4221 1324 50  0000 C CNN
F 2 "" H 4200 1150 50  0000 C CNN
F 3 "" H 4200 1150 50  0000 C CNN
	1    4200 1150
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR035
U 1 1 574BCA67
P 4500 1150
F 0 "#PWR035" H 4500 1000 50  0001 C CNN
F 1 "VSS" H 4521 1324 50  0000 C CNN
F 2 "" H 4500 1150 50  0000 C CNN
F 3 "" H 4500 1150 50  0000 C CNN
	1    4500 1150
	-1   0    0    1   
$EndComp
$Comp
L C C2
U 1 1 574BDD97
P 3900 1000
F 0 "C2" H 4015 1046 50  0000 L CNN
F 1 "100n" H 3950 900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3938 850 50  0001 C CNN
F 3 "" H 3900 1000 50  0000 C CNN
	1    3900 1000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 574BDE30
P 4200 1000
F 0 "C3" H 4315 1046 50  0000 L CNN
F 1 "100n" H 4250 900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4238 850 50  0001 C CNN
F 3 "" H 4200 1000 50  0000 C CNN
	1    4200 1000
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 574BDECC
P 4500 1000
F 0 "C4" H 4615 1046 50  0000 L CNN
F 1 "100n" H 4550 900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4538 850 50  0001 C CNN
F 3 "" H 4500 1000 50  0000 C CNN
	1    4500 1000
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 574BAA15
P 2850 1950
F 0 "C5" H 2965 1996 50  0000 L CNN
F 1 "100n" H 2965 1904 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2888 1800 50  0001 C CNN
F 3 "" H 2850 1950 50  0000 C CNN
	1    2850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1800 2850 1750
Connection ~ 2850 1750
$Comp
L VSS #PWR036
U 1 1 574BACA1
P 2850 2100
F 0 "#PWR036" H 2850 1950 50  0001 C CNN
F 1 "VSS" H 2871 2274 50  0000 C CNN
F 2 "" H 2850 2100 50  0000 C CNN
F 3 "" H 2850 2100 50  0000 C CNN
	1    2850 2100
	-1   0    0    1   
$EndComp
$EndSCHEMATC
