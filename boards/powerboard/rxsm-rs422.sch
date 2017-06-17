EESchema Schematic File Version 2
LIBS:powerboard-rescue
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
LIBS:TI-LMZ1xxxx
LIBS:DRV8816
LIBS:ACS711
LIBS:lt1370
LIBS:lt3757
LIBS:common_mode_choke
LIBS:ltc4010
LIBS:pc3h7
LIBS:esd_diode_dual
LIBS:ad7928
LIBS:references
LIBS:lt3592
LIBS:ds26lv32at
LIBS:drv8312
LIBS:drv8332
LIBS:powerboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 10
Title "Mainboard: RXSM RS422 connection"
Date "2017-04-14"
Rev "10"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4450 3100 0    60   Input ~ 0
TX
Text HLabel 4450 2600 0    60   Output ~ 0
RX
$Comp
L MAX13432EESD U701
U 1 1 58FF7E88
P 5400 2900
F 0 "U701" H 5050 3550 50  0000 L CNN
F 1 "MAX13432EESD" H 5750 3550 50  0000 R CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 5400 1900 50  0001 C CIN
F 3 "" H 5400 3700 50  0001 C CNN
	1    5400 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR059
U 1 1 58FF7E8F
P 5550 3700
F 0 "#PWR059" H 5550 3450 50  0001 C CNN
F 1 "GND" H 5550 3550 50  0000 C CNN
F 2 "" H 5550 3700 50  0000 C CNN
F 3 "" H 5550 3700 50  0000 C CNN
	1    5550 3700
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR060
U 1 1 58FF7E95
P 4600 2100
F 0 "#PWR060" H 4600 1950 50  0001 C CNN
F 1 "+3V3" H 4600 2240 50  0000 C CNN
F 2 "" H 4600 2100 50  0000 C CNN
F 3 "" H 4600 2100 50  0000 C CNN
	1    4600 2100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR061
U 1 1 58FF7E9B
P 6150 2300
F 0 "#PWR061" H 6150 2150 50  0001 C CNN
F 1 "+5V" H 6150 2440 50  0000 C CNN
F 2 "" H 6150 2300 50  0000 C CNN
F 3 "" H 6150 2300 50  0000 C CNN
	1    6150 2300
	1    0    0    -1  
$EndComp
$Comp
L C C702
U 1 1 58FF7EA1
P 6000 2150
F 0 "C702" H 6025 2250 50  0000 L CNN
F 1 "100n" H 6025 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6038 2000 50  0001 C CNN
F 3 "" H 6000 2150 50  0000 C CNN
	1    6000 2150
	-1   0    0    1   
$EndComp
$Comp
L CMC FL701
U 1 1 58FF7EB1
P 6100 2600
F 0 "FL701" H 6100 2755 60  0000 C CNB
F 1 "CMC" H 6100 2440 45  0000 C CNN
F 2 "WE-SLx:WE-SL2" H 6100 2375 40  0001 C CNN
F 3 "" H 6100 2750 60  0000 C CNN
F 4 "-" H 6100 2835 45  0001 C CNN "PART"
F 5 "Passive" H 6330 2890 50  0001 C CNN "Family"
	1    6100 2600
	1    0    0    -1  
$EndComp
$Comp
L CMC FL702
U 1 1 58FF7EBA
P 6100 3100
F 0 "FL702" H 6100 3255 60  0000 C CNB
F 1 "CMC" H 6100 2940 45  0000 C CNN
F 2 "WE-SLx:WE-SL2" H 6100 2875 40  0001 C CNN
F 3 "" H 6100 3250 60  0000 C CNN
F 4 "-" H 6100 3335 45  0001 C CNN "PART"
F 5 "Passive" H 6330 3390 50  0001 C CNN "Family"
	1    6100 3100
	1    0    0    -1  
$EndComp
Text Notes 5800 2850 0    39   ~ 0
2x Farnell #1735590
$Comp
L GND #PWR062
U 1 1 58FF7EC2
P 6550 1900
F 0 "#PWR062" H 6550 1650 50  0001 C CNN
F 1 "GND" H 6550 1750 50  0000 C CNN
F 2 "" H 6550 1900 50  0000 C CNN
F 3 "" H 6550 1900 50  0000 C CNN
	1    6550 1900
	-1   0    0    1   
$EndComp
$Comp
L ESD_diode_dual D701
U 1 1 58FF7EC8
P 6400 2150
F 0 "D701" H 6400 2250 39  0000 C CNN
F 1 "ESD" H 6400 2050 39  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6400 2150 39  0001 C CNN
F 3 "" H 6400 2150 39  0001 C CNN
	1    6400 2150
	0    1    -1   0   
$EndComp
$Comp
L ESD_diode_dual D702
U 1 1 58FF7ECF
P 6700 2150
F 0 "D702" H 6700 2250 39  0000 C CNN
F 1 "ESD" H 6700 2050 39  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6700 2150 39  0001 C CNN
F 3 "" H 6700 2150 39  0001 C CNN
	1    6700 2150
	0    1    -1   0   
$EndComp
$Comp
L C C701
U 1 1 58FF7ED6
P 4850 2150
F 0 "C701" H 4875 2250 50  0000 L CNN
F 1 "100n" H 4650 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4888 2000 50  0001 C CNN
F 3 "" H 4850 2150 50  0000 C CNN
	1    4850 2150
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR063
U 1 1 58FF7EDD
P 5400 2000
F 0 "#PWR063" H 5400 1750 50  0001 C CNN
F 1 "GND" H 5400 1850 50  0000 C CNN
F 2 "" H 5400 2000 50  0000 C CNN
F 3 "" H 5400 2000 50  0000 C CNN
	1    5400 2000
	1    0    0    -1  
$EndComp
Text Notes 6950 2400 1    39   ~ 0
2x NXP PESD1CAN
$Comp
L R R701
U 1 1 58FF7EE4
P 4600 2400
F 0 "R701" V 4680 2400 50  0000 C CNN
F 1 "10k" V 4600 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4530 2400 50  0001 C CNN
F 3 "" H 4600 2400 50  0001 C CNN
	1    4600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2300 6000 2400
Wire Wire Line
	5900 2400 6150 2400
Wire Wire Line
	6150 2400 6150 2300
Connection ~ 6000 2400
Wire Wire Line
	4850 2400 4850 2300
Connection ~ 4850 2400
Wire Wire Line
	5550 3700 5550 3650
Wire Wire Line
	5500 3650 5600 3650
Wire Wire Line
	5500 3650 5500 3600
Wire Wire Line
	5600 3650 5600 3600
Connection ~ 5550 3650
Wire Wire Line
	4900 2600 4450 2600
Wire Wire Line
	4450 3100 4900 3100
Wire Wire Line
	4850 2000 4850 1950
Wire Wire Line
	4850 1950 6000 1950
Wire Wire Line
	5400 1950 5400 2000
Wire Wire Line
	6000 1950 6000 2000
Connection ~ 5400 1950
Wire Wire Line
	5900 2500 6000 2500
Wire Wire Line
	6000 2700 5900 2700
Wire Wire Line
	5900 3000 6000 3000
Wire Wire Line
	6000 3200 5900 3200
Wire Wire Line
	6400 2000 6400 1950
Wire Wire Line
	6400 1950 6700 1950
Wire Wire Line
	6550 1950 6550 1900
Wire Wire Line
	6700 1950 6700 2000
Connection ~ 6550 1950
Wire Wire Line
	6200 3200 7250 3200
Wire Wire Line
	6200 3000 7250 3000
Wire Wire Line
	6200 2700 7250 2700
Wire Wire Line
	6200 2500 7250 2500
Wire Wire Line
	6750 2350 6750 2500
Connection ~ 6750 2500
Wire Wire Line
	6650 2350 6650 2700
Connection ~ 6650 2700
Wire Wire Line
	6450 2350 6450 3000
Connection ~ 6450 3000
Wire Wire Line
	6350 2350 6350 3200
Connection ~ 6350 3200
Wire Wire Line
	4600 2100 4600 2250
Wire Wire Line
	4600 2200 4750 2200
Wire Wire Line
	4750 2200 4750 2400
Wire Wire Line
	4750 2400 4900 2400
Connection ~ 4600 2200
Wire Wire Line
	4600 2550 4600 3300
Wire Wire Line
	4600 2800 4900 2800
Wire Wire Line
	4600 3300 4900 3300
Connection ~ 4600 2800
Text HLabel 7250 2500 2    60   BiDi ~ 0
A
Text HLabel 7250 2700 2    60   BiDi ~ 0
~B
Text HLabel 7250 3000 2    60   BiDi ~ 0
Y
Text HLabel 7250 3200 2    60   BiDi ~ 0
~Z
$Comp
L R R608
U 1 1 5944BD36
P 7000 2600
F 0 "R608" V 7080 2600 50  0000 C CNN
F 1 "1k" V 7000 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6930 2600 50  0001 C CNN
F 3 "" H 7000 2600 50  0001 C CNN
	1    7000 2600
	0    1    1    0   
$EndComp
$Comp
L R R607
U 1 1 5944BEA9
P 6950 3100
F 0 "R607" V 7030 3100 50  0000 C CNN
F 1 "1k" V 6950 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6880 3100 50  0001 C CNN
F 3 "" H 6950 3100 50  0001 C CNN
	1    6950 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 3100 7150 3100
Wire Wire Line
	7150 3100 7150 3000
Connection ~ 7150 3000
Wire Wire Line
	6800 3100 6750 3100
Wire Wire Line
	6750 3100 6750 3200
Connection ~ 6750 3200
Wire Wire Line
	6850 2600 6800 2600
Wire Wire Line
	6800 2600 6800 2700
Connection ~ 6800 2700
Wire Wire Line
	7150 2600 7200 2600
Wire Wire Line
	7200 2600 7200 2500
Connection ~ 7200 2500
Text Notes 6650 2950 0    60   ~ 0
RS-422\ntermination resistors
$EndSCHEMATC
