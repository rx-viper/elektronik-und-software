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
LIBS:mainboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 11
Title "Mainboard overview"
Date "2017-03-14"
Rev "10"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X04 P102
U 1 1 5889381A
P 1150 1550
F 0 "P102" H 1150 1800 50  0000 C CNN
F 1 "Pressure" V 1250 1550 50  0000 C CNN
F 2 "" H 1150 1550 50  0000 C CNN
F 3 "" H 1150 1550 50  0000 C CNN
	1    1150 1550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR106
U 1 1 588938DA
P 1450 1800
F 0 "#PWR106" H 1450 1550 50  0001 C CNN
F 1 "GND" H 1450 1650 50  0000 C CNN
F 2 "" H 1450 1800 50  0000 C CNN
F 3 "" H 1450 1800 50  0000 C CNN
	1    1450 1800
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR105
U 1 1 588938ED
P 1450 1300
F 0 "#PWR105" H 1450 1150 50  0001 C CNN
F 1 "+3V3" H 1450 1440 50  0000 C CNN
F 2 "" H 1450 1300 50  0000 C CNN
F 3 "" H 1450 1300 50  0000 C CNN
	1    1450 1300
	1    0    0    -1  
$EndComp
Text Label 4300 4150 0    60   ~ 0
Probe3_EN
Text Label 4300 4050 0    60   ~ 0
Probe2_EN
Text Label 4300 3950 0    60   ~ 0
Probe1_EN
Text Label 4300 4350 0    60   ~ 0
Charge_status
Text Label 4300 4450 0    60   ~ 0
Boost24V_EN
Text Label 4300 4550 0    60   ~ 0
Charge_EN
Text Label 4300 3750 0    60   ~ 0
Cam_Light_EN
$Comp
L LM1117-3.3 U101
U 1 1 588947D5
P 5500 6800
F 0 "U101" H 5600 6550 50  0000 C CNN
F 1 "LM1117-3.3" H 5500 7050 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 5500 6800 50  0001 C CNN
F 3 "" H 5500 6800 50  0000 C CNN
	1    5500 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR113
U 1 1 588947DC
P 5500 7350
F 0 "#PWR113" H 5500 7100 50  0001 C CNN
F 1 "GND" H 5500 7200 50  0000 C CNN
F 2 "" H 5500 7350 50  0000 C CNN
F 3 "" H 5500 7350 50  0000 C CNN
	1    5500 7350
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR114
U 1 1 588947E2
P 6500 6800
F 0 "#PWR114" H 6500 6650 50  0001 C CNN
F 1 "+3V3" H 6500 6940 50  0000 C CNN
F 2 "" H 6500 6800 50  0000 C CNN
F 3 "" H 6500 6800 50  0000 C CNN
	1    6500 6800
	0    1    1    0   
$EndComp
$Comp
L CP C103
U 1 1 588947E8
P 4750 7100
F 0 "C103" H 4775 7200 50  0000 L CNN
F 1 "10µ" H 4775 7000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4788 6950 50  0001 C CNN
F 3 "" H 4750 7100 50  0000 C CNN
	1    4750 7100
	1    0    0    -1  
$EndComp
$Comp
L CP C106
U 1 1 588947EF
P 6250 7100
F 0 "C106" H 6275 7200 50  0000 L CNN
F 1 "10µ" H 6275 7000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6288 6950 50  0001 C CNN
F 3 "" H 6250 7100 50  0000 C CNN
	1    6250 7100
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR_SMALL L101
U 1 1 588947F6
P 3850 6800
F 0 "L101" H 3850 6900 50  0000 C CNN
F 1 "10µH" H 3850 6750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3850 6800 50  0001 C CNN
F 3 "" H 3850 6800 50  0000 C CNN
	1    3850 6800
	1    0    0    -1  
$EndComp
$Comp
L C C102
U 1 1 588947FD
P 4300 7050
F 0 "C102" H 4325 7150 50  0000 L CNN
F 1 "100n" H 4325 6950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4338 6900 50  0001 C CNN
F 3 "" H 4300 7050 50  0000 C CNN
	1    4300 7050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR110
U 1 1 5889504A
P 3250 6800
F 0 "#PWR110" H 3250 6650 50  0001 C CNN
F 1 "+5V" H 3250 6940 50  0000 C CNN
F 2 "" H 3250 6800 50  0000 C CNN
F 3 "" H 3250 6800 50  0000 C CNN
	1    3250 6800
	0    -1   -1   0   
$EndComp
Text Label 8500 1600 2    60   ~ 0
RasPi_TX
Text Label 8500 1700 2    60   ~ 0
RasPi_RX
$Comp
L R R106
U 1 1 5889A1AE
P 8150 5450
F 0 "R106" V 8230 5450 50  0000 C CNN
F 1 "1k" V 8150 5450 50  0000 C CNN
F 2 "" V 8080 5450 50  0000 C CNN
F 3 "" H 8150 5450 50  0000 C CNN
	1    8150 5450
	0    1    1    0   
$EndComp
$Comp
L R R105
U 1 1 5889A20A
P 8150 5250
F 0 "R105" V 8050 5250 50  0000 C CNN
F 1 "1k" V 8150 5250 50  0000 C CNN
F 2 "" V 8080 5250 50  0000 C CNN
F 3 "" H 8150 5250 50  0000 C CNN
	1    8150 5250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR116
U 1 1 5889B140
P 8950 5800
F 0 "#PWR116" H 8950 5550 50  0001 C CNN
F 1 "GND" H 8950 5650 50  0000 C CNN
F 2 "" H 8950 5800 50  0000 C CNN
F 3 "" H 8950 5800 50  0000 C CNN
	1    8950 5800
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR102
U 1 1 5889CCC2
P 1350 2450
F 0 "#PWR102" H 1350 2300 50  0001 C CNN
F 1 "+3V3" H 1350 2590 50  0000 C CNN
F 2 "" H 1350 2450 50  0000 C CNN
F 3 "" H 1350 2450 50  0000 C CNN
	1    1350 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR103
U 1 1 5889CF45
P 1350 2950
F 0 "#PWR103" H 1350 2700 50  0001 C CNN
F 1 "GND" H 1350 2800 50  0000 C CNN
F 2 "" H 1350 2950 50  0000 C CNN
F 3 "" H 1350 2950 50  0000 C CNN
	1    1350 2950
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR109
U 1 1 5889DFDA
P 3000 1950
F 0 "#PWR109" H 3000 1800 50  0001 C CNN
F 1 "+3V3" H 3000 2090 50  0000 C CNN
F 2 "" H 3000 1950 50  0000 C CNN
F 3 "" H 3000 1950 50  0000 C CNN
	1    3000 1950
	1    0    0    -1  
$EndComp
Text Notes 7950 1500 0    39   ~ 0
RasPi voltage 3.3V
Text Notes 3550 7200 0    39   ~ 0
power input PI filter
$Comp
L C C105
U 1 1 588A230B
P 5950 7100
F 0 "C105" H 5975 7200 50  0000 L CNN
F 1 "100n" H 5975 7000 50  0000 L CNN
F 2 "" H 5988 6950 50  0000 C CNN
F 3 "" H 5950 7100 50  0000 C CNN
	1    5950 7100
	1    0    0    -1  
$EndComp
$Comp
L C C104
U 1 1 588A2CE0
P 5050 7100
F 0 "C104" H 5075 7200 50  0000 L CNN
F 1 "100n" H 5075 7000 50  0000 L CNN
F 2 "" H 5088 6950 50  0000 C CNN
F 3 "" H 5050 7100 50  0000 C CNN
	1    5050 7100
	1    0    0    -1  
$EndComp
Text Label 2400 1500 2    59   ~ 0
pressure_SCL
Text Label 2400 1600 2    59   ~ 0
pressure_SDA
$Comp
L R R102
U 1 1 58C8FC8C
P 2000 1700
F 0 "R102" V 2080 1700 50  0000 C CNN
F 1 "4k7" V 2000 1700 50  0000 C CNN
F 2 "" V 1930 1700 50  0000 C CNN
F 3 "" H 2000 1700 50  0000 C CNN
	1    2000 1700
	0    1    1    0   
$EndComp
$Comp
L R R104
U 1 1 58C90829
P 2250 1850
F 0 "R104" V 2330 1850 50  0000 C CNN
F 1 "4k7" V 2250 1850 50  0000 C CNN
F 2 "" V 2180 1850 50  0000 C CNN
F 3 "" H 2250 1850 50  0000 C CNN
	1    2250 1850
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR108
U 1 1 58C90F6C
P 2500 1700
F 0 "#PWR108" H 2500 1550 50  0001 C CNN
F 1 "+3V3" H 2500 1840 50  0000 C CNN
F 2 "" H 2500 1700 50  0000 C CNN
F 3 "" H 2500 1700 50  0000 C CNN
	1    2500 1700
	0    1    1    0   
$EndComp
$Comp
L C C101
U 1 1 58C7A49A
P 3350 7050
F 0 "C101" H 3375 7150 50  0000 L CNN
F 1 "1µ" H 3375 6950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3388 6900 50  0001 C CNN
F 3 "" H 3350 7050 50  0000 C CNN
	1    3350 7050
	1    0    0    -1  
$EndComp
Text Notes 950  2000 1    60   ~ 0
AMSYS\n5915-0010-D\n(3.3V)\nor First Sensor HCLA
$Comp
L CONN_01X04 P101
U 1 1 58F4DF3E
P 1050 2700
F 0 "P101" H 1050 2950 50  0000 C CNN
F 1 "Temperature" V 1150 2700 50  0000 C CNN
F 2 "" H 1050 2700 50  0000 C CNN
F 3 "" H 1050 2700 50  0000 C CNN
	1    1050 2700
	-1   0    0    1   
$EndComp
Text Label 2300 2650 2    59   ~ 0
temperature_SCL
Text Label 2300 2750 2    59   ~ 0
temperature_SDA
$Comp
L R R101
U 1 1 58F52855
P 1900 2850
F 0 "R101" V 1980 2850 50  0000 C CNN
F 1 "4k7" V 1900 2850 50  0000 C CNN
F 2 "" V 1830 2850 50  0000 C CNN
F 3 "" H 1900 2850 50  0000 C CNN
	1    1900 2850
	0    1    1    0   
$EndComp
$Comp
L R R103
U 1 1 58F5285B
P 2150 3000
F 0 "R103" V 2230 3000 50  0000 C CNN
F 1 "4k7" V 2150 3000 50  0000 C CNN
F 2 "" V 2080 3000 50  0000 C CNN
F 3 "" H 2150 3000 50  0000 C CNN
	1    2150 3000
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR107
U 1 1 58F52861
P 2400 2850
F 0 "#PWR107" H 2400 2700 50  0001 C CNN
F 1 "+3V3" H 2400 2990 50  0000 C CNN
F 2 "" H 2400 2850 50  0000 C CNN
F 3 "" H 2400 2850 50  0000 C CNN
	1    2400 2850
	0    1    1    0   
$EndComp
$Comp
L SW_PUSH SW101
U 1 1 58F66ED7
P 8550 5800
F 0 "SW101" H 8700 5910 50  0000 C CNN
F 1 "SW_PUSH" H 8550 5720 50  0000 C CNN
F 2 "" H 8550 5800 50  0000 C CNN
F 3 "" H 8550 5800 50  0000 C CNN
	1    8550 5800
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW102
U 1 1 58F672A6
P 9550 5650
F 0 "SW102" H 9700 5760 50  0000 C CNN
F 1 "SW_PUSH" H 9550 5570 50  0000 C CNN
F 2 "" H 9550 5650 50  0000 C CNN
F 3 "" H 9550 5650 50  0000 C CNN
	1    9550 5650
	1    0    0    -1  
$EndComp
$Comp
L R R107
U 1 1 58F6790E
P 8550 5350
F 0 "R107" V 8700 5350 50  0000 C CNN
F 1 "1k" V 8550 5350 50  0000 C CNN
F 2 "" V 8480 5350 50  0000 C CNN
F 3 "" H 8550 5350 50  0000 C CNN
	1    8550 5350
	0    1    1    0   
$EndComp
$Comp
L LED D101
U 1 1 58F67ACE
P 8950 5250
F 0 "D101" H 9100 5300 50  0000 C CNN
F 1 "RED" H 8950 5150 50  0000 C CNN
F 2 "" H 8950 5250 50  0001 C CNN
F 3 "" H 8950 5250 50  0001 C CNN
	1    8950 5250
	-1   0    0    1   
$EndComp
$Comp
L LED D102
U 1 1 58F67CC7
P 8950 5450
F 0 "D102" H 8850 5500 50  0000 C CNN
F 1 "BLUE" H 8950 5550 50  0000 C CNN
F 2 "" H 8950 5450 50  0001 C CNN
F 3 "" H 8950 5450 50  0001 C CNN
	1    8950 5450
	-1   0    0    1   
$EndComp
$Comp
L LED D103
U 1 1 58F67EAA
P 9350 5350
F 0 "D103" H 9250 5400 50  0000 C CNN
F 1 "GREEN" H 9350 5200 50  0000 C CNN
F 2 "" H 9350 5350 50  0001 C CNN
F 3 "" H 9350 5350 50  0001 C CNN
	1    9350 5350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR117
U 1 1 58F680A4
P 9700 5350
F 0 "#PWR117" H 9700 5100 50  0001 C CNN
F 1 "GND" H 9700 5200 50  0000 C CNN
F 2 "" H 9700 5350 50  0000 C CNN
F 3 "" H 9700 5350 50  0000 C CNN
	1    9700 5350
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR118
U 1 1 58F6B2FF
P 9950 5650
F 0 "#PWR118" H 9950 5400 50  0001 C CNN
F 1 "GND" H 9950 5500 50  0000 C CNN
F 2 "" H 9950 5650 50  0000 C CNN
F 3 "" H 9950 5650 50  0000 C CNN
	1    9950 5650
	0    -1   -1   0   
$EndComp
$Comp
L DB9_FEMALE J102
U 1 1 58F94E12
P 4100 1800
F 0 "J102" H 4100 2350 50  0000 C CNN
F 1 "Probe position sensors" V 4300 1800 50  0000 C CNN
F 2 "" H 4100 1800 50  0001 C CNN
F 3 "" H 4100 1800 50  0001 C CNN
	1    4100 1800
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR112
U 1 1 58F97C6C
P 4600 2200
F 0 "#PWR112" H 4600 1950 50  0001 C CNN
F 1 "GND" H 4600 2050 50  0000 C CNN
F 2 "" H 4600 2200 50  0001 C CNN
F 3 "" H 4600 2200 50  0001 C CNN
	1    4600 2200
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR111
U 1 1 58F9B376
P 4600 1300
F 0 "#PWR111" H 4600 1150 50  0001 C CNN
F 1 "+5V" H 4600 1440 50  0000 C CNN
F 2 "" H 4600 1300 50  0000 C CNN
F 3 "" H 4600 1300 50  0000 C CNN
	1    4600 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1300 1450 1400
Wire Wire Line
	1450 1400 1350 1400
Wire Wire Line
	1450 1800 1450 1700
Wire Wire Line
	1450 1700 1350 1700
Wire Wire Line
	5500 7100 5500 7350
Wire Wire Line
	6500 6800 5800 6800
Wire Wire Line
	5950 6950 5950 6800
Connection ~ 5950 6800
Wire Wire Line
	5950 7300 5950 7250
Connection ~ 5500 7300
Wire Wire Line
	5050 7300 5050 7250
Wire Wire Line
	3250 6800 3600 6800
Connection ~ 5050 7300
Wire Wire Line
	4300 7200 4300 7300
Wire Wire Line
	4100 6800 5200 6800
Wire Wire Line
	5050 6950 5050 6800
Connection ~ 5050 6800
Wire Wire Line
	4300 6900 4300 6800
Connection ~ 4300 6800
Wire Wire Line
	3350 7300 6250 7300
Wire Wire Line
	1350 2450 1350 2550
Wire Wire Line
	1350 2550 1250 2550
Wire Wire Line
	1250 2850 1350 2850
Wire Wire Line
	1350 2850 1350 2950
Wire Wire Line
	6250 7300 6250 7250
Connection ~ 5950 7300
Wire Wire Line
	6250 6950 6250 6800
Connection ~ 6250 6800
Wire Wire Line
	4750 7300 4750 7250
Connection ~ 4750 7300
Wire Wire Line
	4750 6950 4750 6800
Connection ~ 4750 6800
Wire Wire Line
	1350 1600 3600 1600
Wire Wire Line
	1350 1500 3700 1500
Wire Wire Line
	5050 2450 3700 2450
Wire Wire Line
	3700 2450 3700 1500
Wire Wire Line
	3600 1600 3600 2550
Wire Wire Line
	3600 2550 5050 2550
Wire Wire Line
	1850 1700 1750 1700
Wire Wire Line
	1750 1700 1750 1600
Connection ~ 1750 1600
Wire Wire Line
	2100 1850 1650 1850
Wire Wire Line
	1650 1850 1650 1500
Connection ~ 1650 1500
Wire Wire Line
	2500 1700 2150 1700
Wire Wire Line
	2400 1850 2450 1850
Wire Wire Line
	2450 1850 2450 1700
Connection ~ 2450 1700
Wire Wire Line
	3350 6900 3350 6800
Connection ~ 3350 6800
Wire Wire Line
	3350 7200 3350 7300
Connection ~ 4300 7300
Wire Wire Line
	7900 1600 8600 1600
Wire Wire Line
	7900 1700 8900 1700
Wire Wire Line
	1750 2850 1650 2850
Wire Wire Line
	1650 2850 1650 2750
Connection ~ 1650 2750
Wire Wire Line
	2000 3000 1550 3000
Wire Wire Line
	1550 3000 1550 2650
Connection ~ 1550 2650
Wire Wire Line
	2400 2850 2050 2850
Wire Wire Line
	2300 3000 2350 3000
Wire Wire Line
	2350 3000 2350 2850
Connection ~ 2350 2850
Wire Wire Line
	1250 2650 5050 2650
Wire Wire Line
	1250 2750 5050 2750
Wire Wire Line
	9700 5350 9500 5350
Wire Wire Line
	9600 5250 9600 5450
Wire Wire Line
	9600 5250 9100 5250
Connection ~ 9600 5350
Wire Wire Line
	9600 5450 9100 5450
Wire Wire Line
	8800 5450 8300 5450
Wire Wire Line
	8000 5450 7900 5450
Wire Wire Line
	7900 5350 8400 5350
Wire Wire Line
	8000 5250 7900 5250
Wire Wire Line
	8800 5250 8300 5250
Wire Wire Line
	8700 5350 9200 5350
Wire Wire Line
	7900 5800 8250 5800
Wire Wire Line
	7900 5650 9250 5650
Wire Wire Line
	9950 5650 9850 5650
Wire Wire Line
	8950 5800 8850 5800
Wire Wire Line
	4400 1500 4950 1500
Wire Wire Line
	4950 1500 4950 1600
Wire Wire Line
	4950 1600 5050 1600
Wire Wire Line
	5050 1700 4850 1700
Wire Wire Line
	4850 1700 4850 1600
Wire Wire Line
	4850 1600 4400 1600
Wire Wire Line
	4400 1700 4750 1700
Wire Wire Line
	4750 1700 4750 1800
Wire Wire Line
	4750 1800 5050 1800
Wire Wire Line
	4400 1900 5050 1900
Wire Wire Line
	4400 2000 5050 2000
Wire Wire Line
	5050 2100 4400 2100
Wire Wire Line
	4400 2200 4600 2200
Wire Wire Line
	4400 1400 4500 1400
Wire Wire Line
	4500 1400 4500 2200
Connection ~ 4500 2200
Wire Wire Line
	4600 1300 4600 1800
Wire Wire Line
	4600 1800 4400 1800
Text Notes 900  3250 1    60   ~ 0
Various I2C temperature\nsensors (DS1731)\nBattery, structure, PCBs,\ncupola, camera, ...
Text Notes 2900 6600 0    60   ~ 0
3.3V power supply (from 5V) for µC and periphery
Text Notes 10000 5500 0    60   ~ 0
status LEDs and switches\nfor testing
Wire Wire Line
	5050 3750 4300 3750
Wire Wire Line
	4300 3850 5050 3850
Wire Wire Line
	5050 3950 4300 3950
Wire Wire Line
	4300 4050 5050 4050
Wire Wire Line
	5050 4150 4300 4150
Wire Wire Line
	4300 4350 5050 4350
Wire Wire Line
	5050 4450 4300 4450
Wire Wire Line
	4300 4550 5050 4550
Text Label 4300 3050 0    60   ~ 0
extADC_SPI_SCK
Wire Wire Line
	4300 3050 5050 3050
Text Label 4300 3150 0    60   ~ 0
extADC_SPI_MISO
Text Label 4300 3250 0    60   ~ 0
extADC_SPI_MOSI
Text Label 4300 3350 0    60   ~ 0
extADC_SPI_CS1
Wire Wire Line
	4300 3150 5050 3150
Wire Wire Line
	5050 3250 4300 3250
Wire Wire Line
	4300 3350 5050 3350
$Comp
L DB9_FEMALE J103
U 1 1 59082736
P 9400 1200
F 0 "J103" H 9400 1750 50  0000 C CNN
F 1 "Camera board" V 9600 1200 50  0000 C CNN
F 2 "" H 9400 1200 50  0001 C CNN
F 3 "" H 9400 1200 50  0001 C CNN
	1    9400 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR115
U 1 1 59083068
P 8750 1000
F 0 "#PWR115" H 8750 750 50  0001 C CNN
F 1 "GND" H 8750 850 50  0000 C CNN
F 2 "" H 8750 1000 50  0001 C CNN
F 3 "" H 8750 1000 50  0001 C CNN
	1    8750 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1600 8600 800 
Wire Wire Line
	8600 800  9100 800 
NoConn ~ 9100 1100
NoConn ~ 9100 1200
NoConn ~ 9100 1300
NoConn ~ 9100 1400
NoConn ~ 9100 1500
NoConn ~ 9100 1600
Wire Wire Line
	8750 1000 8750 900 
Wire Wire Line
	8750 900  9100 900 
Wire Wire Line
	9100 1000 8900 1000
Wire Wire Line
	8900 1000 8900 1700
$Comp
L DB37_MALE J101
U 1 1 5908B98D
P 800 5500
F 0 "J101" H 800 7500 50  0000 C CNN
F 1 "Powerboard <-> Mainboard" V 1000 5500 50  0000 C CNN
F 2 "" H 800 5500 50  0001 C CNN
F 3 "" H 800 5500 50  0001 C CNN
	1    800  5500
	-1   0    0    1   
$EndComp
Text Label 1950 5900 2    60   ~ 0
Lens_Heat_EN
Text Label 1950 5000 2    60   ~ 0
Probe3_EN
Text Label 1950 4900 2    60   ~ 0
Probe2_EN
Text Label 1950 4800 2    60   ~ 0
Probe1_EN
Text Label 1950 5800 2    60   ~ 0
Cam_Light_EN
Text Label 1950 5700 2    60   ~ 0
Charge_status
Text Label 1950 6000 2    60   ~ 0
Boost24V_EN
Text Label 1950 5600 2    60   ~ 0
Charge_EN
Text Label 1950 6500 2    60   ~ 0
Hall_U
Text Label 1950 6600 2    60   ~ 0
Hall_V
Text Label 1950 6700 2    60   ~ 0
Hall_W
Text Label 1950 6200 2    60   ~ 0
Encoder_A+
Text Label 1950 6300 2    60   ~ 0
Encoder_B+
Text Label 1950 6800 2    60   ~ 0
LO
Text Label 1950 6900 2    60   ~ 0
SOE
Text Label 1950 7000 2    60   ~ 0
SODS
Text Label 1950 7100 2    60   ~ 0
TX
Text Label 1950 7200 2    60   ~ 0
RX
$Comp
L GND #PWR101
U 1 1 5913059A
P 1200 7400
F 0 "#PWR101" H 1200 7150 50  0001 C CNN
F 1 "GND" H 1200 7250 50  0000 C CNN
F 2 "" H 1200 7400 50  0001 C CNN
F 3 "" H 1200 7400 50  0001 C CNN
	1    1200 7400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR104
U 1 1 591305A0
P 1400 3600
F 0 "#PWR104" H 1400 3450 50  0001 C CNN
F 1 "+5V" H 1400 3740 50  0000 C CNN
F 2 "" H 1400 3600 50  0000 C CNN
F 3 "" H 1400 3600 50  0000 C CNN
	1    1400 3600
	1    0    0    -1  
$EndComp
Text Label 1950 4000 2    60   ~ 0
Brake_EN
Wire Wire Line
	1200 3700 1200 7400
Wire Wire Line
	1200 7300 1100 7300
Wire Wire Line
	1200 3700 1100 3700
Connection ~ 1200 7300
Wire Wire Line
	1100 6400 1200 6400
Connection ~ 1200 6400
Wire Wire Line
	1100 5500 1200 5500
Connection ~ 1200 5500
Wire Wire Line
	1400 3600 1400 3900
Wire Wire Line
	1400 3800 1100 3800
Wire Wire Line
	1400 3900 1100 3900
Connection ~ 1400 3800
Wire Wire Line
	1950 7200 1100 7200
Wire Wire Line
	1100 7100 1950 7100
Wire Wire Line
	1950 7000 1100 7000
Wire Wire Line
	1100 6900 1950 6900
Wire Wire Line
	1950 6800 1100 6800
Wire Wire Line
	1100 6700 1950 6700
Wire Wire Line
	1950 6600 1100 6600
Wire Wire Line
	1100 6500 1950 6500
Wire Wire Line
	1100 6300 1950 6300
Wire Wire Line
	1950 6200 1100 6200
Wire Wire Line
	1100 5900 1950 5900
Wire Wire Line
	1950 5800 1100 5800
Wire Wire Line
	1100 5700 1950 5700
Wire Wire Line
	1950 5600 1100 5600
Wire Wire Line
	1100 5400 1950 5400
Wire Wire Line
	1950 5300 1100 5300
Wire Wire Line
	1100 5200 1950 5200
Wire Wire Line
	1950 5100 1100 5100
Wire Wire Line
	1100 5000 1950 5000
Wire Wire Line
	1950 4900 1100 4900
Wire Wire Line
	1100 4800 1950 4800
Wire Wire Line
	1100 4500 1950 4500
Wire Wire Line
	1950 4400 1100 4400
Wire Wire Line
	1100 4300 1950 4300
Wire Wire Line
	1100 4000 1950 4000
Wire Wire Line
	1100 6100 1200 6100
Connection ~ 1200 6100
Wire Wire Line
	1100 6000 1950 6000
Wire Wire Line
	1100 4700 1200 4700
Connection ~ 1200 4700
Text Label 8750 2300 2    60   ~ 0
LO
Text Label 8750 2400 2    60   ~ 0
SOE
Text Label 8750 2500 2    60   ~ 0
SODS
Text Label 8750 2100 2    60   ~ 0
TX
Text Label 8750 2000 2    60   ~ 0
RX
Wire Wire Line
	8750 2000 7900 2000
Wire Wire Line
	7900 2100 8750 2100
Wire Wire Line
	8750 2500 7900 2500
Wire Wire Line
	7900 2400 8750 2400
Wire Wire Line
	8750 2300 7900 2300
Text Label 4300 3550 0    60   ~ 0
Brake_EN
Wire Wire Line
	4300 3550 5050 3550
Text Label 1950 5100 2    60   ~ 0
extADC_SPI_SCK
Text Label 1950 5200 2    60   ~ 0
extADC_SPI_MISO
Text Label 1950 5300 2    60   ~ 0
extADC_SPI_MOSI
Text Label 1950 5400 2    60   ~ 0
extADC_SPI_CS1
Text Label 4300 3850 0    60   ~ 0
Lens_Heat_EN
Text Label 4300 5550 0    60   ~ 0
Hall_U
Text Label 4300 5650 0    60   ~ 0
Hall_V
Text Label 4300 5750 0    60   ~ 0
Hall_W
Wire Wire Line
	5050 5550 4300 5550
Wire Wire Line
	4300 5650 5050 5650
Wire Wire Line
	4300 5750 5050 5750
Wire Wire Line
	5050 4750 4300 4750
Wire Wire Line
	4300 4850 5050 4850
Text Label 4300 4750 0    60   ~ 0
Encoder_A+
Text Label 4300 4850 0    60   ~ 0
Encoder_B+
$Sheet
S 8850 2950 1550 1900
U 58F3D7C6
F0 "Mainboard_Temp_Sensors" 60
F1 "mainboard_temp_sensors.sch" 60
F2 "SPI1_SCK" I L 8850 3050 60 
F3 "SPI1_MOSI" I L 8850 3150 60 
F4 "SPI1_MISO" O L 8850 3250 60 
F5 "SPI1_CS1" I L 8850 4250 60 
F6 "SPI1_CS2" I L 8850 4350 60 
F7 "SPI1_CS3" I L 8850 4450 60 
F8 "SPI2_SCK" I L 8850 3350 60 
F9 "SPI2_MOSI" I L 8850 3450 60 
F10 "SPI2_MISO" O L 8850 3550 60 
F11 "SPI2_CS1" I L 8850 4550 60 
F12 "SPI2_CS2" I L 8850 4650 60 
F13 "SPI2_CS3" I L 8850 4750 60 
F14 "INT1" O L 8850 3650 60 
F15 "INT2" O L 8850 3750 60 
F16 "INT3" O L 8850 3850 60 
F17 "INT4" O L 8850 3950 60 
F18 "INT5" O L 8850 4050 60 
F19 "INT6" O L 8850 4150 60 
$EndSheet
Wire Wire Line
	7900 3050 8850 3050
Wire Wire Line
	8850 3150 7900 3150
Wire Wire Line
	7900 3250 8850 3250
Wire Wire Line
	8850 3350 7900 3350
Wire Wire Line
	7900 3450 8850 3450
Wire Wire Line
	8850 3550 7900 3550
Wire Wire Line
	7900 3650 8850 3650
Wire Wire Line
	8850 3750 7900 3750
Wire Wire Line
	7900 3850 8850 3850
Wire Wire Line
	8850 3950 7900 3950
Wire Wire Line
	7900 4050 8850 4050
Wire Wire Line
	8850 4150 7900 4150
Wire Wire Line
	7900 4250 8850 4250
Wire Wire Line
	8850 4350 7900 4350
Wire Wire Line
	7900 4450 8850 4450
Wire Wire Line
	8850 4550 7900 4550
Wire Wire Line
	7900 4650 8850 4650
Wire Wire Line
	8850 4750 7900 4750
$Sheet
S 5050 1500 2850 4400
U 5889F4B8
F0 "Mainboard microcontroller" 60
F1 "mainboard_microcontroller.sch" 60
F2 "RXSM_RX" I R 7900 2000 59 
F3 "RasPi_RX" I R 7900 1700 59 
F4 "temp1_INT" I R 7900 3650 59 
F5 "temp2_INT" I R 7900 3750 59 
F6 "temp3_INT" I R 7900 3850 59 
F7 "temp4_INT" I R 7900 3950 59 
F8 "temp5_INT" I R 7900 4050 59 
F9 "bat_charge_status" I L 5050 4350 60 
F10 "RXSM_LO" I R 7900 2300 60 
F11 "RXSM_SOE" I R 7900 2400 60 
F12 "RXSM_SODS" I R 7900 2500 60 
F13 "lens_heater_EN" O L 5050 3850 60 
F14 "pressure_SCL" O L 5050 2450 60 
F15 "pressure_SDA" B L 5050 2550 60 
F16 "cam_light_EN" O L 5050 3750 60 
F17 "probe1_EN" O L 5050 3950 60 
F18 "probe2_EN" O L 5050 4050 60 
F19 "probe3_EN" O L 5050 4150 60 
F20 "bat_boost_EN" O L 5050 4450 60 
F21 "bat_charge_EN" O L 5050 4550 60 
F22 "temperature_SDA" B L 5050 2750 60 
F23 "temperature_SCL" O L 5050 2650 60 
F24 "LED1" I R 7900 5250 60 
F25 "LED2" I R 7900 5350 60 
F26 "LED3" I R 7900 5450 60 
F27 "SW1" I R 7900 5650 60 
F28 "SW2" I R 7900 5800 60 
F29 "encoder1_A" I L 5050 1600 60 
F30 "encoder1_B" I L 5050 1700 60 
F31 "encoder2_A" I L 5050 1800 60 
F32 "encoder2_B" I L 5050 1900 60 
F33 "encoder3_A" I L 5050 2000 60 
F34 "encoder3_B" I L 5050 2100 60 
F35 "RXSM_TX" O R 7900 2100 60 
F36 "RasPi_TX" O R 7900 1600 60 
F37 "temp1_CS" O R 7900 4250 60 
F38 "temp2_CS" O R 7900 4350 60 
F39 "temp3_CS" O R 7900 4450 60 
F40 "temp4_CS" O R 7900 4550 60 
F41 "temp5_CS" O R 7900 4650 60 
F42 "extADC_SPI_SCK" O L 5050 3050 60 
F43 "extADC_SPI_MISO" I L 5050 3150 60 
F44 "extADC_SPI_MOSI" O L 5050 3250 60 
F45 "extADC_SPI_CS1" O L 5050 3350 60 
F46 "brake_EN" O L 5050 3550 60 
F47 "encoderMotor_A" I L 5050 4750 60 
F48 "encoderMotor_B" I L 5050 4850 60 
F49 "hall_W" I L 5050 5750 60 
F50 "hall_V" I L 5050 5650 60 
F51 "hall_U" I L 5050 5550 60 
F52 "temp_SPI1_SCK" O R 7900 3050 60 
F53 "temp_SPI1_MISO" I R 7900 3250 60 
F54 "temp_SPI1_MOSI" O R 7900 3150 60 
F55 "temp_SPI2_SCK" O R 7900 3350 60 
F56 "temp_SPI2_MISO" I R 7900 3550 60 
F57 "temp_SPI2_MOSI" O R 7900 3450 60 
F58 "temp6_INT" I R 7900 4150 60 
F59 "temp6_CS" O R 7900 4750 60 
F60 "Motor_U_N" O L 5050 5050 60 
F61 "Motor_U_P" O L 5050 4950 60 
F62 "Motor_V_P" O L 5050 5150 60 
F63 "Motor_V_N" O L 5050 5250 60 
F64 "Motor_W_P" O L 5050 5350 60 
F65 "Motor_W_N" O L 5050 5450 60 
$EndSheet
Wire Wire Line
	1100 4600 1950 4600
Wire Wire Line
	1950 4200 1100 4200
Wire Wire Line
	1100 4100 1950 4100
Text Label 1950 4100 2    60   ~ 0
Motor_U_P
Text Label 1950 4200 2    60   ~ 0
Motor_U_N
Text Label 1950 4400 2    60   ~ 0
Motor_V_N
Text Label 1950 4600 2    60   ~ 0
Motor_W_N
Text Label 1950 4300 2    60   ~ 0
Motor_V_P
Text Label 1950 4500 2    60   ~ 0
Motor_W_P
Text Label 4300 4950 0    60   ~ 0
Motor_U_P
Text Label 4300 5050 0    60   ~ 0
Motor_U_N
Text Label 4300 5250 0    60   ~ 0
Motor_V_N
Text Label 4300 5450 0    60   ~ 0
Motor_W_N
Text Label 4300 5150 0    60   ~ 0
Motor_V_P
Text Label 4300 5350 0    60   ~ 0
Motor_W_P
Wire Wire Line
	5050 5450 4300 5450
Wire Wire Line
	4300 5350 5050 5350
Wire Wire Line
	5050 5250 4300 5250
Wire Wire Line
	4300 5150 5050 5150
Wire Wire Line
	5050 5050 4300 5050
Wire Wire Line
	4300 4950 5050 4950
$EndSCHEMATC
