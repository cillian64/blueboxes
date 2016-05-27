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
LIBS:di-cache
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
L CONN_01X02 P?
U 1 1 5743807E
P 850 1250
F 0 "P?" H 769 968 50  0000 C CNN
F 1 "CONN_01X02" H 769 1060 50  0000 C CNN
F 2 "" H 850 1250 50  0000 C CNN
F 3 "" H 850 1250 50  0000 C CNN
	1    850  1250
	-1   0    0    1   
$EndComp
$Comp
L SPST SW?
U 1 1 574380F4
P 1550 1200
F 0 "SW?" H 1550 1466 50  0000 C CNN
F 1 "SPST" H 1550 1374 50  0000 C CNN
F 2 "" H 1550 1200 50  0000 C CNN
F 3 "" H 1550 1200 50  0000 C CNN
	1    1550 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 574383F7
P 1250 2200
F 0 "P?" H 1169 1918 50  0000 C CNN
F 1 "INST_IN" H 1169 2010 50  0000 C CNN
F 2 "" H 1250 2200 50  0000 C CNN
F 3 "" H 1250 2200 50  0000 C CNN
	1    1250 2200
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P?
U 1 1 5743844D
P 1250 2750
F 0 "P?" H 1169 2468 50  0000 C CNN
F 1 "INST_THRU" H 1169 2560 50  0000 C CNN
F 2 "" H 1250 2750 50  0000 C CNN
F 3 "" H 1250 2750 50  0000 C CNN
	1    1250 2750
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 57438501
P 1450 2250
F 0 "#PWR?" H 1450 2000 50  0001 C CNN
F 1 "GND" H 1458 2076 50  0000 C CNN
F 2 "" H 1450 2250 50  0000 C CNN
F 3 "" H 1450 2250 50  0000 C CNN
	1    1450 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57438568
P 1450 2800
F 0 "#PWR?" H 1450 2550 50  0001 C CNN
F 1 "GND" H 1458 2626 50  0000 C CNN
F 2 "" H 1450 2800 50  0000 C CNN
F 3 "" H 1450 2800 50  0000 C CNN
	1    1450 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 57438588
P 1250 3400
F 0 "P?" H 1169 3068 50  0000 C CNN
F 1 "ST_IN" H 1169 3160 50  0000 C CNN
F 2 "" H 1250 3400 50  0000 C CNN
F 3 "" H 1250 3400 50  0000 C CNN
	1    1250 3400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 57438605
P 1450 3500
F 0 "#PWR?" H 1450 3250 50  0001 C CNN
F 1 "GND" H 1458 3326 50  0000 C CNN
F 2 "" H 1450 3500 50  0000 C CNN
F 3 "" H 1450 3500 50  0000 C CNN
	1    1450 3500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P?
U 1 1 57438740
P 10400 3050
F 0 "P?" H 10318 2718 50  0000 C CNN
F 1 "CONN_01X03" H 10318 2810 50  0000 C CNN
F 2 "" H 10400 3050 50  0000 C CNN
F 3 "" H 10400 3050 50  0000 C CNN
	1    10400 3050
	1    0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 57438804
P 10200 3150
F 0 "#PWR?" H 10200 2900 50  0001 C CNN
F 1 "GND" H 10208 2976 50  0000 C CNN
F 2 "" H 10200 3150 50  0000 C CNN
F 3 "" H 10200 3150 50  0000 C CNN
	1    10200 3150
	1    0    0    -1  
$EndComp
Text Label 9650 3050 2    60   ~ 0
ST_OUT_R
Text Label 9650 2950 2    60   ~ 0
ST_OUT_L
Text Label 4650 1750 2    60   ~ 0
INST_IN
$Comp
L R R?
U 1 1 57438B63
P 4800 1750
F 0 "R?" V 4592 1750 50  0000 C CNN
F 1 "1M" V 4684 1750 50  0000 C CNN
F 2 "" V 4730 1750 50  0000 C CNN
F 3 "" H 4800 1750 50  0000 C CNN
	1    4800 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 2150 1900 2150
Wire Wire Line
	1700 2150 1700 2700
Wire Wire Line
	1700 2700 1450 2700
Wire Wire Line
	5750 1650 5750 2250
Connection ~ 5750 1650
Text Label 6900 1500 0    60   ~ 0
INST_LINE
Text Label 4750 3550 2    60   ~ 0
ST_IN_L
Text Label 5050 3850 2    60   ~ 0
INST_LINE
$Comp
L R R?
U 1 1 57439492
P 4900 3550
F 0 "R?" V 4692 3550 50  0000 C CNN
F 1 "10k" V 4784 3550 50  0000 C CNN
F 2 "" V 4830 3550 50  0000 C CNN
F 3 "" H 4900 3550 50  0000 C CNN
	1    4900 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 3850 5500 3850
Connection ~ 5450 3850
Wire Wire Line
	6100 3750 6500 3750
Text Label 6500 3750 0    60   ~ 0
ST_OUT_L
Wire Wire Line
	6100 4050 6100 3750
Connection ~ 6100 3750
Wire Wire Line
	6100 4200 5450 4200
Wire Wire Line
	5450 4200 5450 3850
$Comp
L DUAL_POT RV?
U 1 1 5743A2BA
P 5650 6600
F 0 "RV?" H 5725 7116 50  0000 C CNN
F 1 "100k A" H 5725 7024 50  0000 C CNN
F 2 "" H 5650 6600 50  0000 C CNN
F 3 "" H 5650 6600 50  0000 C CNN
	1    5650 6600
	1    0    0    -1  
$EndComp
NoConn ~ 5500 6300
NoConn ~ 5500 6700
Text Label 5500 6500 2    60   ~ 0
POT_L_L
Text Label 5500 6900 2    60   ~ 0
POT_R_L
Text Label 5950 6400 0    60   ~ 0
POT_L_W
Text Label 5950 6800 0    60   ~ 0
POT_R_W
Text Label 6100 4050 0    60   ~ 0
POT_L_W
Text Label 6100 4200 0    60   ~ 0
POT_L_L
Wire Notes Line
	600  700  600  4200
Wire Notes Line
	600  700  3450 700 
Wire Notes Line
	4250 4300 7050 4300
Wire Notes Line
	4250 3100 7050 3100
Wire Notes Line
	4250 5700 7050 5700
Wire Notes Line
	7050 5700 7050 4500
Wire Notes Line
	7050 4500 4250 4500
Wire Notes Line
	5100 6000 5100 7000
Wire Notes Line
	5100 7000 6350 7000
Wire Notes Line
	6350 7000 6350 6000
Wire Notes Line
	6350 6000 5100 6000
$Comp
L R R?
U 1 1 5743B6C8
P 8150 3400
F 0 "R?" H 8220 3446 50  0000 L CNN
F 1 "470R" H 8220 3354 50  0000 L CNN
F 2 "" V 8080 3400 50  0000 C CNN
F 3 "" H 8150 3400 50  0000 C CNN
	1    8150 3400
	1    0    0    -1  
$EndComp
$Comp
L LED D?
U 1 1 5743B781
P 8150 3750
F 0 "D?" V 8196 3642 50  0000 R CNN
F 1 "LED" V 8104 3642 50  0000 R CNN
F 2 "" H 8150 3750 50  0000 C CNN
F 3 "" H 8150 3750 50  0000 C CNN
	1    8150 3750
	0    -1   -1   0   
$EndComp
Text Notes 650  4200 0    60   ~ 0
Inputs and bias
Text Notes 4500 4300 0    60   ~ 0
Left-channel summing amplifier
Text Notes 4550 5700 0    60   ~ 0
Right-channel summing amplifier
Text Notes 5950 7000 0    60   ~ 0
Volume
Text Notes 10050 3500 0    60   ~ 0
Outputs
Text Notes 4850 2900 0    60   ~ 0
Instrument Preamp, 10x gain
Wire Notes Line
	4250 1000 7400 1000
Wire Notes Line
	4250 2900 7400 2900
Connection ~ 1700 2150
Text Label 1900 2150 0    60   ~ 0
INST_IN
Wire Notes Line
	600  4200 3450 4200
Text Label 1450 3300 0    60   ~ 0
ST_IN_L
Text Label 1450 3400 0    60   ~ 0
ST_IN_R
Wire Notes Line
	3450 4200 3450 700 
Wire Wire Line
	9650 2950 10200 2950
Wire Wire Line
	9650 3050 10200 3050
Wire Wire Line
	5050 2250 5050 1750
Wire Wire Line
	4950 1750 5150 1750
Connection ~ 5050 1750
Wire Notes Line
	4250 1000 4250 2900
Wire Wire Line
	5050 3550 5200 3550
Wire Wire Line
	5200 3550 5200 3850
Connection ~ 5200 3850
Wire Notes Line
	7050 3100 7050 4300
Wire Notes Line
	4250 3100 4250 4300
Text Label 4750 4950 2    60   ~ 0
ST_IN_R
Text Label 5050 5250 2    60   ~ 0
INST_LINE
$Comp
L R R?
U 1 1 5744364A
P 4900 4950
F 0 "R?" V 4692 4950 50  0000 C CNN
F 1 "10k" V 4784 4950 50  0000 C CNN
F 2 "" V 4830 4950 50  0000 C CNN
F 3 "" H 4900 4950 50  0000 C CNN
	1    4900 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 5250 5500 5250
Connection ~ 5450 5250
Wire Wire Line
	6100 5150 6500 5150
Text Label 6500 5150 0    60   ~ 0
ST_OUT_R
Wire Wire Line
	6100 5450 6100 5150
Connection ~ 6100 5150
Wire Wire Line
	6100 5600 5450 5600
Wire Wire Line
	5450 5600 5450 5250
Text Label 6100 5450 0    60   ~ 0
POT_R_W
Text Label 6100 5600 0    60   ~ 0
POT_R_L
Wire Wire Line
	5050 4950 5200 4950
Wire Wire Line
	5200 4950 5200 5250
Connection ~ 5200 5250
Wire Notes Line
	4250 4500 4250 5700
$Comp
L R R?
U 1 1 57443EF2
P 1350 5250
F 0 "R?" H 1420 5296 50  0000 L CNN
F 1 "100k" H 1420 5204 50  0000 L CNN
F 2 "" V 1280 5250 50  0000 C CNN
F 3 "" H 1350 5250 50  0000 C CNN
	1    1350 5250
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 57443F6F
P 1350 5650
F 0 "R?" H 1420 5696 50  0000 L CNN
F 1 "100k" H 1420 5604 50  0000 L CNN
F 2 "" V 1280 5650 50  0000 C CNN
F 3 "" H 1350 5650 50  0000 C CNN
	1    1350 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 5400 1350 5500
Wire Wire Line
	1350 5450 2100 5450
Connection ~ 1350 5450
Wire Wire Line
	1750 5500 1750 5450
Connection ~ 1750 5450
Wire Notes Line
	1200 4850 1200 6150
Wire Notes Line
	1200 6150 3300 6150
Wire Notes Line
	1200 4850 3300 4850
Text Notes 1250 6150 0    60   ~ 0
Bias voltage reference and buffer
Wire Wire Line
	2100 5650 2100 6050
Wire Wire Line
	2750 5550 2750 6050
Wire Wire Line
	2700 5550 3150 5550
Connection ~ 2750 5550
Wire Notes Line
	3300 4850 3300 6150
Text Notes 650  4500 0    60   ~ 0
10kR input impedance\nand 10uF coupling for\n1.5Hz -3dB point
$Comp
L NE5532 U?
U 1 1 5744E158
P 5800 3750
F 0 "U?" H 6141 3796 50  0000 L CNN
F 1 "NE5532" H 6141 3704 50  0000 L CNN
F 2 "" H 5800 3750 50  0000 C CNN
F 3 "" H 5800 3750 50  0000 C CNN
	1    5800 3750
	1    0    0    -1  
$EndComp
$Comp
L NE5532 U?
U 2 1 5744E1E9
P 5800 5150
F 0 "U?" H 6141 5196 50  0000 L CNN
F 1 "NE5532" H 6141 5104 50  0000 L CNN
F 2 "" H 5800 5150 50  0000 C CNN
F 3 "" H 5800 5150 50  0000 C CNN
	2    5800 5150
	1    0    0    -1  
$EndComp
$Comp
L NE5532 U?
U 1 1 5744E272
P 5450 1650
F 0 "U?" H 5791 1696 50  0000 L CNN
F 1 "NE5532" H 5791 1604 50  0000 L CNN
F 2 "" H 5450 1650 50  0000 C CNN
F 3 "" H 5450 1650 50  0000 C CNN
	1    5450 1650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5744FB00
P 5600 2250
F 0 "R?" V 5392 2250 50  0000 C CNN
F 1 "10M" V 5484 2250 50  0000 C CNN
F 2 "" V 5530 2250 50  0000 C CNN
F 3 "" H 5600 2250 50  0000 C CNN
	1    5600 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2250 5450 2250
$Comp
L POT RV?
U 1 1 574503CD
P 6450 1650
F 0 "RV?" V 6404 1568 50  0000 R CNN
F 1 "100k A" V 6496 1568 50  0000 R CNN
F 2 "" H 6450 1650 50  0000 C CNN
F 3 "" H 6450 1650 50  0000 C CNN
	1    6450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1650 6300 1650
NoConn ~ 6600 1650
$Comp
L R R?
U 1 1 57451E59
P 6750 1500
F 0 "R?" V 6542 1500 50  0000 C CNN
F 1 "1k" V 6634 1500 50  0000 C CNN
F 2 "" V 6680 1500 50  0000 C CNN
F 3 "" H 6750 1500 50  0000 C CNN
	1    6750 1500
	0    1    1    0   
$EndComp
$Comp
L NE5532 U?
U 2 1 5745448D
P 2400 5550
F 0 "U?" H 2741 5596 50  0000 L CNN
F 1 "NE5532" H 2741 5504 50  0000 L CNN
F 2 "" H 2400 5550 50  0000 C CNN
F 3 "" H 2400 5550 50  0000 C CNN
	2    2400 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6650 2300 6650
$Comp
L C C?
U 1 1 57455280
P 1900 6850
F 0 "C?" H 2015 6896 50  0000 L CNN
F 1 "100n" H 2015 6804 50  0000 L CNN
F 2 "" H 1938 6700 50  0000 C CNN
F 3 "" H 1900 6850 50  0000 C CNN
	1    1900 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6650 1900 6700
Connection ~ 1900 6650
$Comp
L C C?
U 1 1 574553A5
P 2300 6850
F 0 "C?" H 2415 6896 50  0000 L CNN
F 1 "100n" H 2415 6804 50  0000 L CNN
F 2 "" H 2338 6700 50  0000 C CNN
F 3 "" H 2300 6850 50  0000 C CNN
	1    2300 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6650 2300 6700
Text Notes 1550 7400 0    60   ~ 0
Decouplers near each\nopamp power rails
$Comp
L C C?
U 1 1 5745756D
P 1750 5650
F 0 "C?" H 1865 5696 50  0000 L CNN
F 1 "100n" H 1865 5604 50  0000 L CNN
F 2 "" H 1788 5500 50  0000 C CNN
F 3 "" H 1750 5650 50  0000 C CNN
	1    1750 5650
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR?
U 1 1 57489677
P 1050 1300
F 0 "#PWR?" H 1050 1150 50  0001 C CNN
F 1 "VSS" H 1050 1450 50  0000 C CNN
F 2 "" H 1050 1300 50  0000 C CNN
F 3 "" H 1050 1300 50  0000 C CNN
	1    1050 1300
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR?
U 1 1 574896E2
P 2050 1200
F 0 "#PWR?" H 2050 1050 50  0001 C CNN
F 1 "VDD" H 2050 1350 50  0000 C CNN
F 2 "" H 2050 1200 50  0000 C CNN
F 3 "" H 2050 1200 50  0000 C CNN
	1    2050 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57489DA1
P 1650 6650
F 0 "#PWR?" H 1650 6400 50  0001 C CNN
F 1 "GND" H 1650 6500 50  0000 C CNN
F 2 "" H 1650 6650 50  0000 C CNN
F 3 "" H 1650 6650 50  0000 C CNN
	1    1650 6650
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR?
U 1 1 57489E6B
P 1900 7000
F 0 "#PWR?" H 1900 6850 50  0001 C CNN
F 1 "VSS" H 1900 7150 50  0000 C CNN
F 2 "" H 1900 7000 50  0000 C CNN
F 3 "" H 1900 7000 50  0000 C CNN
	1    1900 7000
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR?
U 1 1 57489EB7
P 2300 7000
F 0 "#PWR?" H 2300 6850 50  0001 C CNN
F 1 "VSS" H 2300 7150 50  0000 C CNN
F 2 "" H 2300 7000 50  0000 C CNN
F 3 "" H 2300 7000 50  0000 C CNN
	1    2300 7000
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR?
U 1 1 5748A31E
P 1350 5100
F 0 "#PWR?" H 1350 4950 50  0001 C CNN
F 1 "VDD" H 1350 5250 50  0000 C CNN
F 2 "" H 1350 5100 50  0000 C CNN
F 3 "" H 1350 5100 50  0000 C CNN
	1    1350 5100
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR?
U 1 1 5748A3C8
P 1350 5800
F 0 "#PWR?" H 1350 5650 50  0001 C CNN
F 1 "VSS" H 1350 5950 50  0000 C CNN
F 2 "" H 1350 5800 50  0000 C CNN
F 3 "" H 1350 5800 50  0000 C CNN
	1    1350 5800
	-1   0    0    1   
$EndComp
$Comp
L VSS #PWR?
U 1 1 5748A853
P 1750 5800
F 0 "#PWR?" H 1750 5650 50  0001 C CNN
F 1 "VSS" H 1750 5950 50  0000 C CNN
F 2 "" H 1750 5800 50  0000 C CNN
F 3 "" H 1750 5800 50  0000 C CNN
	1    1750 5800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5748A89F
P 3150 5550
F 0 "#PWR?" H 3150 5300 50  0001 C CNN
F 1 "GND" H 3150 5400 50  0000 C CNN
F 2 "" H 3150 5550 50  0000 C CNN
F 3 "" H 3150 5550 50  0000 C CNN
	1    3150 5550
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 5748ADC8
P 2300 5250
F 0 "#PWR?" H 2300 5100 50  0001 C CNN
F 1 "VDD" H 2300 5400 50  0000 C CNN
F 2 "" H 2300 5250 50  0000 C CNN
F 3 "" H 2300 5250 50  0000 C CNN
	1    2300 5250
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR?
U 1 1 5748AE14
P 2300 5850
F 0 "#PWR?" H 2300 5700 50  0001 C CNN
F 1 "VSS" H 2300 6000 50  0000 C CNN
F 2 "" H 2300 5850 50  0000 C CNN
F 3 "" H 2300 5850 50  0000 C CNN
	1    2300 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 6050 2100 6050
Wire Wire Line
	6450 1500 6600 1500
Wire Notes Line
	7400 2900 7400 1000
$Comp
L VDD #PWR?
U 1 1 5748E160
P 5350 1350
F 0 "#PWR?" H 5350 1200 50  0001 C CNN
F 1 "VDD" H 5350 1500 50  0000 C CNN
F 2 "" H 5350 1350 50  0000 C CNN
F 3 "" H 5350 1350 50  0000 C CNN
	1    5350 1350
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR?
U 1 1 5748E1AC
P 5350 1950
F 0 "#PWR?" H 5350 1800 50  0001 C CNN
F 1 "VSS" H 5350 2100 50  0000 C CNN
F 2 "" H 5350 1950 50  0000 C CNN
F 3 "" H 5350 1950 50  0000 C CNN
	1    5350 1950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5748F6A7
P 5150 1550
F 0 "#PWR?" H 5150 1300 50  0001 C CNN
F 1 "GND" H 5150 1400 50  0001 C CNN
F 2 "" H 5150 1550 50  0000 C CNN
F 3 "" H 5150 1550 50  0000 C CNN
	1    5150 1550
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 5748FFF8
P 5700 3450
F 0 "#PWR?" H 5700 3300 50  0001 C CNN
F 1 "VDD" H 5700 3600 50  0000 C CNN
F 2 "" H 5700 3450 50  0000 C CNN
F 3 "" H 5700 3450 50  0000 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR?
U 1 1 57490044
P 5700 4050
F 0 "#PWR?" H 5700 3900 50  0001 C CNN
F 1 "VSS" H 5700 4200 50  0000 C CNN
F 2 "" H 5700 4050 50  0000 C CNN
F 3 "" H 5700 4050 50  0000 C CNN
	1    5700 4050
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR?
U 1 1 57490BDC
P 5700 4850
F 0 "#PWR?" H 5700 4700 50  0001 C CNN
F 1 "VDD" H 5700 5000 50  0000 C CNN
F 2 "" H 5700 4850 50  0000 C CNN
F 3 "" H 5700 4850 50  0000 C CNN
	1    5700 4850
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR?
U 1 1 57490C28
P 5700 5450
F 0 "#PWR?" H 5700 5300 50  0001 C CNN
F 1 "VSS" H 5700 5600 50  0000 C CNN
F 2 "" H 5700 5450 50  0000 C CNN
F 3 "" H 5700 5450 50  0000 C CNN
	1    5700 5450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 57490C74
P 5500 5050
F 0 "#PWR?" H 5500 4800 50  0001 C CNN
F 1 "GND" H 5500 4900 50  0001 C CNN
F 2 "" H 5500 5050 50  0000 C CNN
F 3 "" H 5500 5050 50  0000 C CNN
	1    5500 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57491040
P 5500 3650
F 0 "#PWR?" H 5500 3400 50  0001 C CNN
F 1 "GND" H 5500 3500 50  0001 C CNN
F 2 "" H 5500 3650 50  0000 C CNN
F 3 "" H 5500 3650 50  0000 C CNN
	1    5500 3650
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 5749308C
P 8150 3250
F 0 "#PWR?" H 8150 3100 50  0001 C CNN
F 1 "VDD" H 8150 3400 50  0000 C CNN
F 2 "" H 8150 3250 50  0000 C CNN
F 3 "" H 8150 3250 50  0000 C CNN
	1    8150 3250
	1    0    0    -1  
$EndComp
$Comp
L VSS #PWR?
U 1 1 574930D8
P 8150 3950
F 0 "#PWR?" H 8150 3800 50  0001 C CNN
F 1 "VSS" H 8150 4100 50  0000 C CNN
F 2 "" H 8150 3950 50  0000 C CNN
F 3 "" H 8150 3950 50  0000 C CNN
	1    8150 3950
	-1   0    0    1   
$EndComp
Wire Notes Line
	9150 2650 10600 2650
Wire Notes Line
	10600 2650 10600 3500
Wire Notes Line
	10600 3500 9150 3500
Wire Notes Line
	9150 3500 9150 2650
$EndSCHEMATC
