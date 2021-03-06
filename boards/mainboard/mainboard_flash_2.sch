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
LIBS:stm32
LIBS:xo53
LIBS:sst26vf064b
LIBS:pc3h7
LIBS:maxim
LIBS:common_mode_choke
LIBS:esd_diode_dual
LIBS:max6126
LIBS:ltc2984
LIBS:DB
LIBS:ds26lv32at
LIBS:mainboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 12
Title "Mainboard Flash 2"
Date "2017-04-20"
Rev "20"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SST26VF064B U1001
U 1 1 58FCEDD9
P 5750 4150
F 0 "U1001" H 5750 3850 60  0000 C CNN
F 1 "SST26VF064B" H 5750 4450 60  0000 C CNN
F 2 "Housings_SOIC:SOIJ-8_5.3x5.3mm_Pitch1.27mm" H 5750 4150 60  0001 C CNN
F 3 "" H 5750 4150 60  0001 C CNN
	1    5750 4150
	1    0    0    -1  
$EndComp
$Comp
L C C1001
U 1 1 58FCEDE0
P 4650 4200
F 0 "C1001" H 4675 4300 50  0000 L CNN
F 1 "100n" H 4675 4100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4688 4050 50  0001 C CNN
F 3 "" H 4650 4200 50  0000 C CNN
	1    4650 4200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0108
U 1 1 58FCEDE7
P 6400 3900
F 0 "#PWR0108" H 6400 3750 50  0001 C CNN
F 1 "+3V3" H 6400 4040 50  0000 C CNN
F 2 "" H 6400 3900 50  0000 C CNN
F 3 "" H 6400 3900 50  0000 C CNN
	1    6400 3900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0109
U 1 1 58FFF5F3
P 4650 3950
F 0 "#PWR0109" H 4650 3800 50  0001 C CNN
F 1 "+3V3" H 4650 4090 50  0000 C CNN
F 2 "" H 4650 3950 50  0000 C CNN
F 3 "" H 4650 3950 50  0000 C CNN
	1    4650 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0110
U 1 1 58FFF5F4
P 5100 4400
F 0 "#PWR0110" H 5100 4150 50  0001 C CNN
F 1 "GND" H 5100 4250 50  0000 C CNN
F 2 "" H 5100 4400 50  0000 C CNN
F 3 "" H 5100 4400 50  0000 C CNN
	1    5100 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0111
U 1 1 58FFF5F5
P 4650 4450
F 0 "#PWR0111" H 4650 4200 50  0001 C CNN
F 1 "GND" H 4650 4300 50  0000 C CNN
F 2 "" H 4650 4450 50  0000 C CNN
F 3 "" H 4650 4450 50  0000 C CNN
	1    4650 4450
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0112
U 1 1 58FFF5F6
P 5100 4200
F 0 "#PWR0112" H 5100 4050 50  0001 C CNN
F 1 "+3V3" H 5100 4340 50  0000 C CNN
F 2 "" H 5100 4200 50  0000 C CNN
F 3 "" H 5100 4200 50  0000 C CNN
	1    5100 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 4000 6300 4000
Wire Wire Line
	4650 4450 4650 4350
Wire Wire Line
	4650 4050 4650 3950
Wire Wire Line
	5100 4400 5100 4300
Wire Wire Line
	5100 4300 5200 4300
Wire Wire Line
	6600 3700 5100 3700
Wire Wire Line
	5100 3700 5100 4100
Wire Wire Line
	6300 4200 6500 4200
Wire Wire Line
	6600 4200 6600 3700
Wire Wire Line
	6400 4100 6300 4100
Connection ~ 6400 4000
Wire Wire Line
	5000 3600 6700 3600
Wire Wire Line
	6700 3600 6700 4000
Wire Wire Line
	5000 3600 5000 4000
Wire Wire Line
	5000 4000 5200 4000
Wire Wire Line
	5100 4200 5200 4200
Wire Wire Line
	6400 3900 6400 4100
Wire Wire Line
	6500 4200 6500 4100
Wire Wire Line
	5100 4100 5200 4100
Wire Wire Line
	6600 4200 8000 4200
Wire Wire Line
	6500 4100 8000 4100
Wire Wire Line
	6700 4000 8000 4000
Wire Wire Line
	6300 4300 8000 4300
Text HLabel 8000 4000 2    60   Input ~ 0
CS
Text HLabel 8000 4100 2    60   Input ~ 0
SCK
Text HLabel 8000 4300 2    60   Input ~ 0
MOSI
Text HLabel 8000 4200 2    60   Output ~ 0
MISO
$Comp
L TEST_1P J1001
U 1 1 5917578E
P 6900 3900
F 0 "J1001" V 6800 4050 50  0000 C CNN
F 1 "FL2_CS" V 6900 4250 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 7100 3900 50  0001 C CNN
F 3 "" H 7100 3900 50  0001 C CNN
	1    6900 3900
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J1002
U 1 1 59175795
P 7100 3900
F 0 "J1002" V 7000 4050 50  0000 C CNN
F 1 "FL2_SCK" V 7100 4250 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 7300 3900 50  0001 C CNN
F 3 "" H 7300 3900 50  0001 C CNN
	1    7100 3900
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J1003
U 1 1 5917579C
P 7300 3900
F 0 "J1003" V 7200 4050 50  0000 C CNN
F 1 "FL2_MISO" V 7300 4250 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 7500 3900 50  0001 C CNN
F 3 "" H 7500 3900 50  0001 C CNN
	1    7300 3900
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J1004
U 1 1 591757A3
P 7500 3900
F 0 "J1004" V 7400 4050 50  0000 C CNN
F 1 "FL2_MOSI" V 7500 4250 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 7700 3900 50  0001 C CNN
F 3 "" H 7700 3900 50  0001 C CNN
	1    7500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3900 6900 4000
Connection ~ 6900 4000
Wire Wire Line
	7100 3900 7100 4100
Connection ~ 7100 4100
Wire Wire Line
	7300 3900 7300 4200
Connection ~ 7300 4200
Wire Wire Line
	7500 3900 7500 4300
Connection ~ 7500 4300
$EndSCHEMATC
