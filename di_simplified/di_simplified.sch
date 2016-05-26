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
LIBS:di_simplified-cache
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
L JACK_2P J?
U 1 1 5744CF3C
P 3150 3350
F 0 "J?" H 3156 3732 50  0000 C CNN
F 1 "JACK_2P" H 3156 3640 50  0000 C CNN
F 2 "" H 3150 3350 50  0000 C CNN
F 3 "" H 3150 3350 50  0000 C CNN
	1    3150 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 5744CF6D
P 7150 3150
F 0 "P?" H 7068 2868 50  0000 C CNN
F 1 "CONN_01X02" H 7068 2960 50  0000 C CNN
F 2 "" H 7150 3150 50  0000 C CNN
F 3 "" H 7150 3150 50  0000 C CNN
	1    7150 3150
	1    0    0    1   
$EndComp
$Comp
L +9V #PWR?
U 1 1 5744D12B
P 3200 1600
F 0 "#PWR?" H 3200 1450 50  0001 C CNN
F 1 "+9V" H 3218 1774 50  0000 C CNN
F 2 "" H 3200 1600 50  0000 C CNN
F 3 "" H 3200 1600 50  0000 C CNN
	1    3200 1600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5744D148
P 3200 1750
F 0 "R?" H 3270 1796 50  0000 L CNN
F 1 "100k" H 3270 1704 50  0000 L CNN
F 2 "" V 3130 1750 50  0000 C CNN
F 3 "" H 3200 1750 50  0000 C CNN
	1    3200 1750
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5744D1B2
P 3200 2150
F 0 "R?" H 3270 2196 50  0000 L CNN
F 1 "100k" H 3270 2104 50  0000 L CNN
F 2 "" V 3130 2150 50  0000 C CNN
F 3 "" H 3200 2150 50  0000 C CNN
	1    3200 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5744D1E6
P 3200 2300
F 0 "#PWR?" H 3200 2050 50  0001 C CNN
F 1 "GND" H 3208 2126 50  0000 C CNN
F 2 "" H 3200 2300 50  0000 C CNN
F 3 "" H 3200 2300 50  0000 C CNN
	1    3200 2300
	1    0    0    -1  
$EndComp
Text Label 3650 1950 0    60   ~ 0
VREF
$Comp
L GND #PWR?
U 1 1 5744D4EF
P 3600 3450
F 0 "#PWR?" H 3600 3200 50  0001 C CNN
F 1 "GND" H 3608 3276 50  0000 C CNN
F 2 "" H 3600 3450 50  0000 C CNN
F 3 "" H 3600 3450 50  0000 C CNN
	1    3600 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5744D515
P 6950 3200
F 0 "#PWR?" H 6950 2950 50  0001 C CNN
F 1 "GND" H 6958 3026 50  0000 C CNN
F 2 "" H 6950 3200 50  0000 C CNN
F 3 "" H 6950 3200 50  0000 C CNN
	1    6950 3200
	1    0    0    -1  
$EndComp
NoConn ~ 3600 3350
$Comp
L R R?
U 1 1 5744D73D
P 4800 3200
F 0 "R?" V 4592 3200 50  0000 C CNN
F 1 "1M" V 4684 3200 50  0000 C CNN
F 2 "" V 4730 3200 50  0000 C CNN
F 3 "" H 4800 3200 50  0000 C CNN
	1    4800 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5744D7F7
P 5350 3400
F 0 "#PWR?" H 5350 3150 50  0001 C CNN
F 1 "GND" H 5358 3226 50  0000 C CNN
F 2 "" H 5350 3400 50  0000 C CNN
F 3 "" H 5350 3400 50  0000 C CNN
	1    5350 3400
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR?
U 1 1 5744D823
P 5350 2800
F 0 "#PWR?" H 5350 2650 50  0001 C CNN
F 1 "+9V" H 5368 2974 50  0000 C CNN
F 2 "" H 5350 2800 50  0000 C CNN
F 3 "" H 5350 2800 50  0000 C CNN
	1    5350 2800
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5744DCBA
P 5600 3650
F 0 "R?" V 5392 3650 50  0000 C CNN
F 1 "1M" V 5484 3650 50  0000 C CNN
F 2 "" V 5530 3650 50  0000 C CNN
F 3 "" H 5600 3650 50  0000 C CNN
	1    5600 3650
	0    1    1    0   
$EndComp
$Comp
L CP C?
U 1 1 5744E1F2
P 3850 3200
F 0 "C?" V 3594 3200 50  0000 C CNN
F 1 "10u" V 3686 3200 50  0000 C CNN
F 2 "" H 3888 3050 50  0000 C CNN
F 3 "" H 3850 3200 50  0000 C CNN
	1    3850 3200
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5744E4D1
P 4150 3050
F 0 "R?" H 4220 3096 50  0000 L CNN
F 1 "10M" H 4220 3004 50  0000 L CNN
F 2 "" V 4080 3050 50  0000 C CNN
F 3 "" H 4150 3050 50  0000 C CNN
	1    4150 3050
	1    0    0    -1  
$EndComp
Text Notes 3500 3850 0    60   ~ 0
Coupling and bias
Text Notes 4950 3850 0    60   ~ 0
Preamp buffer
$Comp
L CP C?
U 1 1 5744EC93
P 6400 3100
F 0 "C?" V 6656 3100 50  0000 C CNN
F 1 "1000u" V 6564 3100 50  0000 C CNN
F 2 "" H 6438 2950 50  0000 C CNN
F 3 "" H 6400 3100 50  0000 C CNN
	1    6400 3100
	0    -1   -1   0   
$EndComp
Text Notes 6300 3850 0    60   ~ 0
Output coupling
Text Notes 3150 2700 0    60   ~ 0
Bias reference
Wire Wire Line
	3200 1900 3200 1950
Wire Wire Line
	3200 1950 3200 2000
Wire Wire Line
	3200 1950 3550 1950
Wire Wire Line
	3550 1950 4150 1950
Connection ~ 3200 1950
Wire Wire Line
	4950 3200 5050 3200
Wire Wire Line
	5050 3200 5150 3200
Wire Wire Line
	5050 3200 5050 3650
Connection ~ 5050 3200
Wire Wire Line
	5750 3100 5750 3650
Connection ~ 5750 3100
Wire Wire Line
	5050 3650 5450 3650
Wire Wire Line
	3600 3200 3700 3200
Wire Wire Line
	4000 3200 4150 3200
Wire Wire Line
	4150 3200 4650 3200
Connection ~ 4150 3200
Wire Wire Line
	6550 3100 6950 3100
Wire Wire Line
	5750 3100 6250 3100
$Comp
L NE5532 U?
U 1 1 57450094
P 5450 3100
F 0 "U?" H 5791 3146 50  0000 L CNN
F 1 "NE5532" H 5791 3054 50  0000 L CNN
F 2 "" H 5450 3100 50  0000 C CNN
F 3 "" H 5450 3100 50  0000 C CNN
	1    5450 3100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57450564
P 3550 2150
F 0 "C?" H 3665 2196 50  0000 L CNN
F 1 "100n" H 3665 2104 50  0000 L CNN
F 2 "" H 3588 2000 50  0000 C CNN
F 3 "" H 3550 2150 50  0000 C CNN
	1    3550 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1950 3550 2000
Connection ~ 3550 1950
$Comp
L GND #PWR?
U 1 1 57450604
P 3550 2300
F 0 "#PWR?" H 3550 2050 50  0001 C CNN
F 1 "GND" H 3558 2126 50  0000 C CNN
F 2 "" H 3550 2300 50  0000 C CNN
F 3 "" H 3550 2300 50  0000 C CNN
	1    3550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1950 4150 2550
Wire Wire Line
	4150 2550 4150 2900
Wire Wire Line
	5150 3000 5000 3000
Wire Wire Line
	5000 3000 5000 2550
Wire Wire Line
	5000 2550 4150 2550
Connection ~ 4150 2550
$Comp
L NE5532 U?
U 2 1 5746D07A
P 6150 2000
F 0 "U?" H 6491 2046 50  0000 L CNN
F 1 "NE5532" H 6491 1954 50  0000 L CNN
F 2 "" H 6150 2000 50  0000 C CNN
F 3 "" H 6150 2000 50  0000 C CNN
	2    6150 2000
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR?
U 1 1 5746D0C7
P 6050 1700
F 0 "#PWR?" H 6050 1550 50  0001 C CNN
F 1 "+9V" H 6068 1874 50  0000 C CNN
F 2 "" H 6050 1700 50  0000 C CNN
F 3 "" H 6050 1700 50  0000 C CNN
	1    6050 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5746D0FF
P 6050 2300
F 0 "#PWR?" H 6050 2050 50  0001 C CNN
F 1 "GND" H 6058 2126 50  0000 C CNN
F 2 "" H 6050 2300 50  0000 C CNN
F 3 "" H 6050 2300 50  0000 C CNN
	1    6050 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5746D137
P 5750 2200
F 0 "#PWR?" H 5750 1950 50  0001 C CNN
F 1 "GND" H 5758 2026 50  0000 C CNN
F 2 "" H 5750 2200 50  0000 C CNN
F 3 "" H 5750 2200 50  0000 C CNN
	1    5750 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1900 5750 2100
Wire Wire Line
	5750 2100 5750 2200
Wire Wire Line
	5750 2100 5850 2100
Wire Wire Line
	5750 1900 5850 1900
Connection ~ 5750 2100
$Comp
L R R?
U 1 1 5746DC8A
P 6600 3250
F 0 "R?" H 6670 3296 50  0000 L CNN
F 1 "10M" H 6670 3204 50  0000 L CNN
F 2 "" V 6530 3250 50  0000 C CNN
F 3 "" H 6600 3250 50  0000 C CNN
	1    6600 3250
	1    0    0    -1  
$EndComp
Connection ~ 6600 3100
$Comp
L GND #PWR?
U 1 1 5746DCDB
P 6600 3400
F 0 "#PWR?" H 6600 3150 50  0001 C CNN
F 1 "GND" H 6608 3226 50  0000 C CNN
F 2 "" H 6600 3400 50  0000 C CNN
F 3 "" H 6600 3400 50  0000 C CNN
	1    6600 3400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
