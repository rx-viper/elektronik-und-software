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
Sheet 12 12
Title "Heat probe encoder interface"
Date "2017-05-05"
Rev "20"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR0118
U 1 1 591E0FA6
P 1650 4900
F 0 "#PWR0118" H 1650 4650 50  0001 C CNN
F 1 "GND" H 1650 4750 50  0000 C CNN
F 2 "" H 1650 4900 50  0001 C CNN
F 3 "" H 1650 4900 50  0001 C CNN
	1    1650 4900
	1    0    0    -1  
$EndComp
Text HLabel 9850 2400 2    60   Output ~ 0
ENC1_A
Text HLabel 9850 2600 2    60   Output ~ 0
ENC1_B
Text HLabel 9850 2800 2    60   Output ~ 0
ENC2_A
Text HLabel 9850 3000 2    60   Output ~ 0
ENC2_B
Text HLabel 9850 3200 2    60   Output ~ 0
ENC3_A
Text HLabel 9850 3400 2    60   Output ~ 0
ENC3_B
$Comp
L R R1213
U 1 1 591E1936
P 8000 2400
F 0 "R1213" V 8080 2400 50  0000 C CNN
F 1 "100" V 8000 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7930 2400 50  0001 C CNN
F 3 "" H 8000 2400 50  0001 C CNN
	1    8000 2400
	0    1    1    0   
$EndComp
$Comp
L R R1214
U 1 1 591E19DB
P 8000 2600
F 0 "R1214" V 8080 2600 50  0000 C CNN
F 1 "100" V 8000 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7930 2600 50  0001 C CNN
F 3 "" H 8000 2600 50  0001 C CNN
	1    8000 2600
	0    1    1    0   
$EndComp
$Comp
L R R1215
U 1 1 591E1A1C
P 8000 2800
F 0 "R1215" V 8080 2800 50  0000 C CNN
F 1 "100" V 8000 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7930 2800 50  0001 C CNN
F 3 "" H 8000 2800 50  0001 C CNN
	1    8000 2800
	0    1    1    0   
$EndComp
$Comp
L R R1216
U 1 1 591E1A3C
P 8000 3000
F 0 "R1216" V 8080 3000 50  0000 C CNN
F 1 "100" V 8000 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7930 3000 50  0001 C CNN
F 3 "" H 8000 3000 50  0001 C CNN
	1    8000 3000
	0    1    1    0   
$EndComp
$Comp
L R R1217
U 1 1 591E1A5F
P 8000 3200
F 0 "R1217" V 8080 3200 50  0000 C CNN
F 1 "100" V 8000 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7930 3200 50  0001 C CNN
F 3 "" H 8000 3200 50  0001 C CNN
	1    8000 3200
	0    1    1    0   
$EndComp
$Comp
L R R1218
U 1 1 591E1A85
P 8000 3400
F 0 "R1218" V 8080 3400 50  0000 C CNN
F 1 "100" V 8000 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7930 3400 50  0001 C CNN
F 3 "" H 8000 3400 50  0001 C CNN
	1    8000 3400
	0    1    1    0   
$EndComp
$Comp
L C C1201
U 1 1 591E1AF2
P 8300 3700
F 0 "C1201" H 8325 3800 50  0000 L CNN
F 1 "2n7" H 8325 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8338 3550 50  0001 C CNN
F 3 "" H 8300 3700 50  0001 C CNN
	1    8300 3700
	1    0    0    -1  
$EndComp
$Comp
L C C1202
U 1 1 591E1B86
P 8550 3700
F 0 "C1202" H 8575 3800 50  0000 L CNN
F 1 "2n7" H 8575 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8588 3550 50  0001 C CNN
F 3 "" H 8550 3700 50  0001 C CNN
	1    8550 3700
	1    0    0    -1  
$EndComp
$Comp
L C C1203
U 1 1 591E1BB9
P 8800 3700
F 0 "C1203" H 8825 3800 50  0000 L CNN
F 1 "2n7" H 8825 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8838 3550 50  0001 C CNN
F 3 "" H 8800 3700 50  0001 C CNN
	1    8800 3700
	1    0    0    -1  
$EndComp
$Comp
L C C1204
U 1 1 591E1BED
P 9050 3700
F 0 "C1204" H 9075 3800 50  0000 L CNN
F 1 "2n7" H 9075 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9088 3550 50  0001 C CNN
F 3 "" H 9050 3700 50  0001 C CNN
	1    9050 3700
	1    0    0    -1  
$EndComp
$Comp
L C C1205
U 1 1 591E1C24
P 9300 3700
F 0 "C1205" H 9325 3800 50  0000 L CNN
F 1 "2n7" H 9325 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9338 3550 50  0001 C CNN
F 3 "" H 9300 3700 50  0001 C CNN
	1    9300 3700
	1    0    0    -1  
$EndComp
$Comp
L C C1206
U 1 1 591E1C5E
P 9550 3700
F 0 "C1206" H 9575 3800 50  0000 L CNN
F 1 "2n7" H 9575 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9588 3550 50  0001 C CNN
F 3 "" H 9550 3700 50  0001 C CNN
	1    9550 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0119
U 1 1 591E1E04
P 8300 4050
F 0 "#PWR0119" H 8300 3800 50  0001 C CNN
F 1 "GND" H 8300 3900 50  0000 C CNN
F 2 "" H 8300 4050 50  0001 C CNN
F 3 "" H 8300 4050 50  0001 C CNN
	1    8300 4050
	1    0    0    -1  
$EndComp
$Comp
L R R1212
U 1 1 591E2365
P 7400 2050
F 0 "R1212" V 7480 2050 50  0000 C CNN
F 1 "2k7" V 7400 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7330 2050 50  0001 C CNN
F 3 "" H 7400 2050 50  0001 C CNN
	1    7400 2050
	1    0    0    -1  
$EndComp
$Comp
L R R1211
U 1 1 591E24AC
P 7200 2050
F 0 "R1211" V 7280 2050 50  0000 C CNN
F 1 "2k7" V 7200 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7130 2050 50  0001 C CNN
F 3 "" H 7200 2050 50  0001 C CNN
	1    7200 2050
	1    0    0    -1  
$EndComp
$Comp
L R R1210
U 1 1 591E24F1
P 7000 2050
F 0 "R1210" V 7080 2050 50  0000 C CNN
F 1 "2k7" V 7000 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6930 2050 50  0001 C CNN
F 3 "" H 7000 2050 50  0001 C CNN
	1    7000 2050
	1    0    0    -1  
$EndComp
$Comp
L R R1209
U 1 1 591E2535
P 6800 2050
F 0 "R1209" V 6880 2050 50  0000 C CNN
F 1 "2k7" V 6800 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6730 2050 50  0001 C CNN
F 3 "" H 6800 2050 50  0001 C CNN
	1    6800 2050
	1    0    0    -1  
$EndComp
$Comp
L R R1208
U 1 1 591E257C
P 6600 2050
F 0 "R1208" V 6680 2050 50  0000 C CNN
F 1 "2k7" V 6600 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6530 2050 50  0001 C CNN
F 3 "" H 6600 2050 50  0001 C CNN
	1    6600 2050
	1    0    0    -1  
$EndComp
$Comp
L R R1207
U 1 1 591E25C6
P 6400 2050
F 0 "R1207" V 6480 2050 50  0000 C CNN
F 1 "2k7" V 6400 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 6330 2050 50  0001 C CNN
F 3 "" H 6400 2050 50  0001 C CNN
	1    6400 2050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0120
U 1 1 591E2628
P 6900 1700
F 0 "#PWR0120" H 6900 1550 50  0001 C CNN
F 1 "+3V3" H 6900 1840 50  0000 C CNN
F 2 "" H 6900 1700 50  0001 C CNN
F 3 "" H 6900 1700 50  0001 C CNN
	1    6900 1700
	1    0    0    -1  
$EndComp
Text Notes 6350 1450 0    60   ~ 0
Optional pull-ups for\nopen-drain encoder outputs
Text Notes 7800 4500 0    60   ~ 0
Optional RC-filter to remove noise\nfrom encoder cables
$Comp
L DS26LV32AT U1202
U 1 1 591E3C4C
P 5450 4100
F 0 "U1202" H 5450 3550 60  0000 C CNN
F 1 "DS26LV32AT" H 5450 4650 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 5550 3900 60  0001 C CNN
F 3 "" H 5550 3900 60  0001 C CNN
	1    5450 4100
	1    0    0    -1  
$EndComp
$Comp
L DB_26 U1201
U 1 1 591E557A
P 1050 3300
F 0 "U1201" H 1050 1950 60  0000 C CNN
F 1 "Heat probe encoder" H 1050 4750 60  0000 C CNN
F 2 "D-Sub-HD:D-Sub_HD_26_F" H 2250 3300 60  0001 C CNN
F 3 "" H 2250 3300 60  0001 C CNN
	1    1050 3300
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR0121
U 1 1 591E0FAC
P 1550 1900
F 0 "#PWR0121" H 1550 1750 50  0001 C CNN
F 1 "+5V" H 1550 2040 50  0000 C CNN
F 2 "" H 1550 1900 50  0000 C CNN
F 3 "" H 1550 1900 50  0000 C CNN
	1    1550 1900
	1    0    0    -1  
$EndComp
$Comp
L R R1201
U 1 1 591EEC8A
P 4600 2400
F 0 "R1201" V 4680 2400 50  0000 C CNN
F 1 "0" V 4600 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4530 2400 50  0001 C CNN
F 3 "" H 4600 2400 50  0001 C CNN
	1    4600 2400
	0    1    1    0   
$EndComp
$Comp
L R R1202
U 1 1 591EEF2A
P 4600 2600
F 0 "R1202" V 4680 2600 50  0000 C CNN
F 1 "0" V 4600 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4530 2600 50  0001 C CNN
F 3 "" H 4600 2600 50  0001 C CNN
	1    4600 2600
	0    1    1    0   
$EndComp
$Comp
L R R1203
U 1 1 591EEF87
P 4600 2800
F 0 "R1203" V 4680 2800 50  0000 C CNN
F 1 "0" V 4600 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4530 2800 50  0001 C CNN
F 3 "" H 4600 2800 50  0001 C CNN
	1    4600 2800
	0    1    1    0   
$EndComp
$Comp
L R R1204
U 1 1 591EEFE3
P 4600 3000
F 0 "R1204" V 4680 3000 50  0000 C CNN
F 1 "0" V 4600 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4530 3000 50  0001 C CNN
F 3 "" H 4600 3000 50  0001 C CNN
	1    4600 3000
	0    1    1    0   
$EndComp
$Comp
L R R1205
U 1 1 591EF556
P 4600 3200
F 0 "R1205" V 4680 3200 50  0000 C CNN
F 1 "0" V 4600 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4530 3200 50  0001 C CNN
F 3 "" H 4600 3200 50  0001 C CNN
	1    4600 3200
	0    1    1    0   
$EndComp
$Comp
L R R1206
U 1 1 591EF5B8
P 4600 3400
F 0 "R1206" V 4680 3400 50  0000 C CNN
F 1 "0" V 4600 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4530 3400 50  0001 C CNN
F 3 "" H 4600 3400 50  0001 C CNN
	1    4600 3400
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR0122
U 1 1 591F1091
P 6050 4450
F 0 "#PWR0122" H 6050 4300 50  0001 C CNN
F 1 "+3V3" H 6050 4590 50  0000 C CNN
F 2 "" H 6050 4450 50  0001 C CNN
F 3 "" H 6050 4450 50  0001 C CNN
	1    6050 4450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0123
U 1 1 591F1111
P 6050 4650
F 0 "#PWR0123" H 6050 4400 50  0001 C CNN
F 1 "GND" H 6050 4500 50  0000 C CNN
F 2 "" H 6050 4650 50  0001 C CNN
F 3 "" H 6050 4650 50  0001 C CNN
	1    6050 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0124
U 1 1 591F1174
P 4850 4650
F 0 "#PWR0124" H 4850 4400 50  0001 C CNN
F 1 "GND" H 4850 4500 50  0000 C CNN
F 2 "" H 4850 4650 50  0001 C CNN
F 3 "" H 4850 4650 50  0001 C CNN
	1    4850 4650
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0125
U 1 1 591F11D0
P 4850 4450
F 0 "#PWR0125" H 4850 4300 50  0001 C CNN
F 1 "+3V3" H 4850 4590 50  0000 C CNN
F 2 "" H 4850 4450 50  0001 C CNN
F 3 "" H 4850 4450 50  0001 C CNN
	1    4850 4450
	0    -1   -1   0   
$EndComp
$Comp
L DS26LV32AT U1203
U 1 1 591F330D
P 5450 5550
F 0 "U1203" H 5450 5000 60  0000 C CNN
F 1 "DS26LV32AT" H 5450 6100 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 5550 5350 60  0001 C CNN
F 3 "" H 5550 5350 60  0001 C CNN
	1    5450 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3000 9850 3000
Wire Wire Line
	8150 3200 9850 3200
Wire Wire Line
	8150 3400 9850 3400
Wire Wire Line
	8150 2800 9850 2800
Wire Wire Line
	8150 2600 9850 2600
Wire Wire Line
	8150 2400 9850 2400
Wire Wire Line
	8300 2300 8300 3550
Connection ~ 8300 2400
Wire Wire Line
	8550 2300 8550 3550
Connection ~ 8550 2600
Wire Wire Line
	8800 2300 8800 3550
Connection ~ 8800 2800
Wire Wire Line
	9050 2300 9050 3550
Connection ~ 9050 3000
Wire Wire Line
	9300 2300 9300 3550
Connection ~ 9300 3200
Wire Wire Line
	9550 2300 9550 3550
Connection ~ 9550 3400
Wire Wire Line
	8300 3850 8300 4050
Wire Wire Line
	8300 3950 9550 3950
Wire Wire Line
	9550 3950 9550 3850
Connection ~ 8300 3950
Wire Wire Line
	9300 3850 9300 3950
Connection ~ 9300 3950
Wire Wire Line
	9050 3950 9050 3850
Connection ~ 9050 3950
Wire Wire Line
	8800 3850 8800 3950
Connection ~ 8800 3950
Wire Wire Line
	8550 3950 8550 3850
Connection ~ 8550 3950
Wire Wire Line
	6900 1700 6900 1800
Wire Wire Line
	6400 1800 7400 1800
Wire Wire Line
	6400 1800 6400 1900
Wire Wire Line
	7400 1800 7400 1900
Connection ~ 6900 1800
Wire Wire Line
	7200 1900 7200 1800
Connection ~ 7200 1800
Wire Wire Line
	7000 1800 7000 1900
Connection ~ 7000 1800
Wire Wire Line
	6800 1900 6800 1800
Connection ~ 6800 1800
Wire Wire Line
	6600 1800 6600 1900
Connection ~ 6600 1800
Wire Wire Line
	6400 2400 6400 2200
Wire Wire Line
	6600 2600 6600 2200
Wire Wire Line
	6800 2200 6800 2800
Wire Wire Line
	7000 2200 7000 3000
Wire Wire Line
	7200 3200 7200 2200
Wire Wire Line
	7400 2200 7400 3400
Connection ~ 6400 2400
Connection ~ 6600 2600
Wire Wire Line
	1550 1900 1550 3600
Wire Wire Line
	1550 2300 1450 2300
Wire Wire Line
	1850 2800 1850 3100
Connection ~ 6800 2800
Wire Wire Line
	2050 3000 2050 3300
Connection ~ 7000 3000
Wire Wire Line
	1450 2800 1650 2800
Wire Wire Line
	1650 2000 1650 4900
Wire Wire Line
	1550 2900 1450 2900
Connection ~ 1550 2300
Wire Wire Line
	1450 3000 1650 3000
Connection ~ 1650 3000
Wire Wire Line
	1850 3100 1450 3100
Wire Wire Line
	2050 3300 1450 3300
Wire Wire Line
	1450 3500 1650 3500
Connection ~ 1650 3500
Wire Wire Line
	1550 3600 1450 3600
Connection ~ 1550 2900
Wire Wire Line
	1450 3700 1650 3700
Connection ~ 1650 3700
Wire Wire Line
	1450 3800 2250 3800
Wire Wire Line
	2250 3800 2250 3200
Connection ~ 7200 3200
Wire Wire Line
	2450 3400 2450 4000
Wire Wire Line
	2450 4000 1450 4000
Connection ~ 7400 3400
Wire Wire Line
	1450 4200 1650 4200
Connection ~ 1650 4200
Wire Wire Line
	1450 4300 1650 4300
Connection ~ 1650 4300
Wire Wire Line
	1450 4400 1650 4400
Connection ~ 1650 4400
Wire Wire Line
	1650 4500 1450 4500
Connection ~ 1650 4500
Wire Wire Line
	1450 2000 1650 2000
Connection ~ 1650 2800
Wire Wire Line
	1450 2100 1650 2100
Connection ~ 1650 2100
Wire Wire Line
	1650 2200 1450 2200
Connection ~ 1650 2200
Wire Wire Line
	2450 3400 4450 3400
Wire Wire Line
	2250 3200 4450 3200
Wire Wire Line
	2050 3000 4450 3000
Wire Wire Line
	1850 2800 4450 2800
Wire Wire Line
	1450 2600 4450 2600
Wire Wire Line
	1450 2400 4450 2400
Wire Wire Line
	4750 2400 7850 2400
Wire Wire Line
	4750 2600 7850 2600
Wire Wire Line
	4750 2800 7850 2800
Wire Wire Line
	4750 3000 7850 3000
Wire Wire Line
	4750 3200 7850 3200
Wire Wire Line
	4750 3400 7850 3400
Wire Wire Line
	5950 3700 6050 3700
Wire Wire Line
	6050 3700 6050 2400
Connection ~ 6050 2400
Wire Wire Line
	5950 3900 6150 3900
Wire Wire Line
	6150 3900 6150 2600
Connection ~ 6150 2600
Wire Wire Line
	5950 4100 6250 4100
Wire Wire Line
	6250 4100 6250 2800
Connection ~ 6250 2800
Wire Wire Line
	5950 4300 6350 4300
Wire Wire Line
	6350 4300 6350 3000
Connection ~ 6350 3000
Wire Wire Line
	4850 4450 4950 4450
Wire Wire Line
	4950 4550 4850 4550
Wire Wire Line
	4850 4550 4850 4650
Wire Wire Line
	5950 4550 6050 4550
Wire Wire Line
	6050 4550 6050 4650
Wire Wire Line
	5950 4450 6050 4450
Wire Wire Line
	4100 2400 4100 3750
Wire Wire Line
	4100 3750 4950 3750
Connection ~ 4100 2400
Wire Wire Line
	1450 2500 4200 2500
Wire Wire Line
	4200 2500 4200 3650
Wire Wire Line
	4200 3650 4950 3650
Wire Wire Line
	4950 3850 4000 3850
Wire Wire Line
	4000 3850 4000 2700
Wire Wire Line
	4000 2700 1450 2700
Wire Wire Line
	3900 2600 3900 3950
Wire Wire Line
	3900 3950 4950 3950
Connection ~ 3900 2600
Wire Wire Line
	4950 4050 3800 4050
Wire Wire Line
	3800 4050 3800 2900
Wire Wire Line
	3800 2900 1950 2900
Wire Wire Line
	1950 2900 1950 3200
Wire Wire Line
	1950 3200 1450 3200
Wire Wire Line
	3700 2800 3700 4150
Wire Wire Line
	3700 4150 4950 4150
Connection ~ 3700 2800
Wire Wire Line
	4950 4250 3600 4250
Wire Wire Line
	3600 4250 3600 3100
Wire Wire Line
	3600 3100 2150 3100
Wire Wire Line
	2150 3100 2150 3400
Wire Wire Line
	2150 3400 1450 3400
Wire Wire Line
	3500 3000 3500 4350
Wire Wire Line
	3500 4350 4950 4350
Connection ~ 3500 3000
Wire Wire Line
	6550 3200 6550 5150
Wire Wire Line
	6550 5150 5950 5150
Connection ~ 6550 3200
Wire Wire Line
	6650 3400 6650 5350
Wire Wire Line
	6650 5350 5950 5350
Connection ~ 6650 3400
Wire Wire Line
	4950 5100 3400 5100
Wire Wire Line
	3400 5100 3400 3300
Wire Wire Line
	3400 3300 2350 3300
Wire Wire Line
	2350 3300 2350 3900
Wire Wire Line
	2350 3900 1450 3900
Wire Wire Line
	3300 3200 3300 5200
Wire Wire Line
	3300 5200 4950 5200
Connection ~ 3300 3200
Wire Wire Line
	4950 5300 3200 5300
Wire Wire Line
	3200 5300 3200 4100
Wire Wire Line
	3200 4100 1450 4100
Wire Wire Line
	3100 3400 3100 5400
Wire Wire Line
	3100 5400 4950 5400
Connection ~ 3100 3400
$Comp
L GND #PWR0126
U 1 1 591F578A
P 4850 6100
F 0 "#PWR0126" H 4850 5850 50  0001 C CNN
F 1 "GND" H 4850 5950 50  0000 C CNN
F 2 "" H 4850 6100 50  0001 C CNN
F 3 "" H 4850 6100 50  0001 C CNN
	1    4850 6100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0127
U 1 1 591F5790
P 4850 5900
F 0 "#PWR0127" H 4850 5750 50  0001 C CNN
F 1 "+3V3" H 4850 6040 50  0000 C CNN
F 2 "" H 4850 5900 50  0001 C CNN
F 3 "" H 4850 5900 50  0001 C CNN
	1    4850 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 5900 4950 5900
Wire Wire Line
	4950 6000 4850 6000
Wire Wire Line
	4850 6000 4850 6100
$Comp
L +3V3 #PWR0128
U 1 1 591F5B8B
P 6050 5900
F 0 "#PWR0128" H 6050 5750 50  0001 C CNN
F 1 "+3V3" H 6050 6040 50  0000 C CNN
F 2 "" H 6050 5900 50  0001 C CNN
F 3 "" H 6050 5900 50  0001 C CNN
	1    6050 5900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0129
U 1 1 591F5B91
P 6050 6100
F 0 "#PWR0129" H 6050 5850 50  0001 C CNN
F 1 "GND" H 6050 5950 50  0000 C CNN
F 2 "" H 6050 6100 50  0001 C CNN
F 3 "" H 6050 6100 50  0001 C CNN
	1    6050 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6000 6050 6000
Wire Wire Line
	6050 6000 6050 6100
Wire Wire Line
	5950 5900 6050 5900
Text Notes 4000 2200 0    60   ~ 0
Two assembly options:\n* Zero-R resistors\nOR\n* DS26LV32AT differential receivers
Text Label 2600 2400 0    60   ~ 0
ENC1_A_+
Text Label 2600 2500 0    60   ~ 0
ENC1_A_-
Text Label 2600 2600 0    60   ~ 0
ENC1_B_+
Text Label 2600 2700 0    60   ~ 0
ENC1_B_-
Text Label 2600 2800 0    60   ~ 0
ENC2_A_+
Text Label 2600 2900 0    60   ~ 0
ENC2_A_-
Text Label 2600 3000 0    60   ~ 0
ENC2_B_+
Text Label 2600 3100 0    60   ~ 0
ENC2_B_-
Text Label 2600 3200 0    60   ~ 0
ENC3_A_+
Text Label 2600 3300 0    60   ~ 0
ENC3_A_-
Text Label 2600 3400 0    60   ~ 0
ENC3_B_+
Text Label 2600 4100 0    60   ~ 0
ENC3_B_-
Text Label 5250 2400 0    60   ~ 0
ENC1_A_filter
Text Label 5250 2600 0    60   ~ 0
ENC1_B_filter
Text Label 5250 2800 0    60   ~ 0
ENC2_A_filter
Text Label 5250 3000 0    60   ~ 0
ENC2_B_filter
Text Label 5250 3200 0    60   ~ 0
ENC3_A_filter
Text Label 5250 3400 0    60   ~ 0
ENC3_B_filter
$Comp
L TEST_1P J1201
U 1 1 591724E9
P 8300 2300
F 0 "J1201" V 8200 2450 50  0000 C CNN
F 1 "ENC1_A" V 8300 2650 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 8500 2300 50  0001 C CNN
F 3 "" H 8500 2300 50  0001 C CNN
	1    8300 2300
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J1202
U 1 1 59172B15
P 8550 2300
F 0 "J1202" V 8450 2450 50  0000 C CNN
F 1 "ENC1_B" V 8550 2650 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 8750 2300 50  0001 C CNN
F 3 "" H 8750 2300 50  0001 C CNN
	1    8550 2300
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J1203
U 1 1 59172B82
P 8800 2300
F 0 "J1203" V 8700 2450 50  0000 C CNN
F 1 "ENC2_A" V 8800 2650 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 9000 2300 50  0001 C CNN
F 3 "" H 9000 2300 50  0001 C CNN
	1    8800 2300
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J1204
U 1 1 59172BF0
P 9050 2300
F 0 "J1204" V 8950 2450 50  0000 C CNN
F 1 "ENC2_B" V 9050 2650 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 9250 2300 50  0001 C CNN
F 3 "" H 9250 2300 50  0001 C CNN
	1    9050 2300
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J1205
U 1 1 59173060
P 9300 2300
F 0 "J1205" V 9200 2450 50  0000 C CNN
F 1 "ENC3_A" V 9300 2650 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 9500 2300 50  0001 C CNN
F 3 "" H 9500 2300 50  0001 C CNN
	1    9300 2300
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J1206
U 1 1 591730D4
P 9550 2300
F 0 "J1206" V 9450 2450 50  0000 C CNN
F 1 "ENC3_B" V 9550 2650 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 9750 2300 50  0001 C CNN
F 3 "" H 9750 2300 50  0001 C CNN
	1    9550 2300
	1    0    0    -1  
$EndComp
$Comp
L C C1207
U 1 1 591CB88F
P 6450 5950
F 0 "C1207" H 6475 6050 50  0000 L CNN
F 1 "100n" H 6475 5850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6488 5800 50  0001 C CNN
F 3 "" H 6450 5950 50  0001 C CNN
	1    6450 5950
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0130
U 1 1 591CB9CB
P 6450 5700
F 0 "#PWR0130" H 6450 5550 50  0001 C CNN
F 1 "+3V3" H 6450 5840 50  0000 C CNN
F 2 "" H 6450 5700 50  0001 C CNN
F 3 "" H 6450 5700 50  0001 C CNN
	1    6450 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0131
U 1 1 591CBA3C
P 6450 6200
F 0 "#PWR0131" H 6450 5950 50  0001 C CNN
F 1 "GND" H 6450 6050 50  0000 C CNN
F 2 "" H 6450 6200 50  0001 C CNN
F 3 "" H 6450 6200 50  0001 C CNN
	1    6450 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 6200 6450 6100
Wire Wire Line
	6450 5800 6450 5700
$Comp
L C C1208
U 1 1 591CC192
P 6850 4500
F 0 "C1208" H 6875 4600 50  0000 L CNN
F 1 "100n" H 6875 4400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6888 4350 50  0001 C CNN
F 3 "" H 6850 4500 50  0001 C CNN
	1    6850 4500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR0132
U 1 1 591CC198
P 6850 4250
F 0 "#PWR0132" H 6850 4100 50  0001 C CNN
F 1 "+3V3" H 6850 4390 50  0000 C CNN
F 2 "" H 6850 4250 50  0001 C CNN
F 3 "" H 6850 4250 50  0001 C CNN
	1    6850 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0133
U 1 1 591CC19E
P 6850 4750
F 0 "#PWR0133" H 6850 4500 50  0001 C CNN
F 1 "GND" H 6850 4600 50  0000 C CNN
F 2 "" H 6850 4750 50  0001 C CNN
F 3 "" H 6850 4750 50  0001 C CNN
	1    6850 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4750 6850 4650
Wire Wire Line
	6850 4350 6850 4250
$EndSCHEMATC