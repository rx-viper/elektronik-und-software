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
Sheet 8 12
Title ""
Date ""
Rev "10"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LTC2984 U801
U 1 1 58FFF50C
P 7300 3100
F 0 "U801" H 7300 3000 60  0000 C CNN
F 1 "LTC2984" H 7300 3200 60  0000 C CNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 7300 2350 60  0001 C CNN
F 3 "" H 7300 2350 60  0001 C CNN
	1    7300 3100
	1    0    0    -1  
$EndComp
$Comp
L R R802
U 1 1 58FFF50F
P 4450 2200
F 0 "R802" V 4350 2200 50  0000 C CNN
F 1 "2k00" V 4450 2200 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM7mm" V 4380 2200 50  0001 C CNN
F 3 "" H 4450 2200 50  0000 C CNN
	1    4450 2200
	0    1    1    0   
$EndComp
$Comp
L C C819
U 1 1 58FFF515
P 6350 1950
F 0 "C819" H 6375 2050 50  0000 L CNN
F 1 "10n" V 6400 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6388 1800 50  0001 C CNN
F 3 "" H 6350 1950 50  0000 C CNN
	1    6350 1950
	1    0    0    -1  
$EndComp
$Comp
L C C817
U 1 1 587B094B
P 6150 1950
F 0 "C817" H 6175 2050 50  0000 L CNN
F 1 "10n" V 6200 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6188 1800 50  0001 C CNN
F 3 "" H 6150 1950 50  0000 C CNN
	1    6150 1950
	1    0    0    -1  
$EndComp
$Comp
L C C815
U 1 1 58FFF522
P 5950 1950
F 0 "C815" H 5975 2050 50  0000 L CNN
F 1 "10n" V 6000 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5988 1800 50  0001 C CNN
F 3 "" H 5950 1950 50  0000 C CNN
	1    5950 1950
	1    0    0    -1  
$EndComp
$Comp
L C C813
U 1 1 58FFF525
P 5750 1950
F 0 "C813" H 5775 2050 50  0000 L CNN
F 1 "10n" V 5800 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5788 1800 50  0001 C CNN
F 3 "" H 5750 1950 50  0000 C CNN
	1    5750 1950
	1    0    0    -1  
$EndComp
$Comp
L C C811
U 1 1 58FFF52C
P 5550 1950
F 0 "C811" H 5575 2050 50  0000 L CNN
F 1 "10n" V 5600 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5588 1800 50  0001 C CNN
F 3 "" H 5550 1950 50  0000 C CNN
	1    5550 1950
	1    0    0    -1  
$EndComp
$Comp
L C C809
U 1 1 587B0A7D
P 5350 1950
F 0 "C809" H 5375 2050 50  0000 L CNN
F 1 "10n" V 5400 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5388 1800 50  0001 C CNN
F 3 "" H 5350 1950 50  0000 C CNN
	1    5350 1950
	1    0    0    -1  
$EndComp
$Comp
L C C807
U 1 1 587B0ABB
P 5150 1950
F 0 "C807" H 5175 2050 50  0000 L CNN
F 1 "10n" V 5200 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5188 1800 50  0001 C CNN
F 3 "" H 5150 1950 50  0000 C CNN
	1    5150 1950
	1    0    0    -1  
$EndComp
$Comp
L C C805
U 1 1 58FFF539
P 4950 1950
F 0 "C805" H 4975 2050 50  0000 L CNN
F 1 "10n" V 5000 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4988 1800 50  0001 C CNN
F 3 "" H 4950 1950 50  0000 C CNN
	1    4950 1950
	1    0    0    -1  
$EndComp
$Comp
L C C803
U 1 1 58FFF53D
P 4750 1950
F 0 "C803" H 4775 2050 50  0000 L CNN
F 1 "10n" V 4800 1750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4788 1800 50  0001 C CNN
F 3 "" H 4750 1950 50  0000 C CNN
	1    4750 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR801
U 1 1 58FFF544
P 5650 1600
F 0 "#PWR801" H 5650 1350 50  0001 C CNN
F 1 "GND" H 5650 1450 50  0000 C CNN
F 2 "" H 5650 1600 50  0000 C CNN
F 3 "" H 5650 1600 50  0000 C CNN
	1    5650 1600
	-1   0    0    1   
$EndComp
$Comp
L C C820
U 1 1 587B1278
P 6350 4500
F 0 "C820" H 6375 4600 50  0000 L CNN
F 1 "10n" V 6400 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6388 4350 50  0001 C CNN
F 3 "" H 6350 4500 50  0000 C CNN
	1    6350 4500
	1    0    0    -1  
$EndComp
$Comp
L C C818
U 1 1 587B19CC
P 6150 4500
F 0 "C818" H 6175 4600 50  0000 L CNN
F 1 "10n" V 6200 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6188 4350 50  0001 C CNN
F 3 "" H 6150 4500 50  0000 C CNN
	1    6150 4500
	1    0    0    -1  
$EndComp
$Comp
L C C816
U 1 1 58FFF552
P 5950 4500
F 0 "C816" H 5975 4600 50  0000 L CNN
F 1 "10n" V 6000 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5988 4350 50  0001 C CNN
F 3 "" H 5950 4500 50  0000 C CNN
	1    5950 4500
	1    0    0    -1  
$EndComp
$Comp
L C C814
U 1 1 58FFF559
P 5750 4500
F 0 "C814" H 5775 4600 50  0000 L CNN
F 1 "10n" V 5800 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5788 4350 50  0001 C CNN
F 3 "" H 5750 4500 50  0000 C CNN
	1    5750 4500
	1    0    0    -1  
$EndComp
$Comp
L C C812
U 1 1 58FFF55D
P 5550 4500
F 0 "C812" H 5575 4600 50  0000 L CNN
F 1 "10n" V 5600 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5588 4350 50  0001 C CNN
F 3 "" H 5550 4500 50  0000 C CNN
	1    5550 4500
	1    0    0    -1  
$EndComp
$Comp
L C C810
U 1 1 58FFF55F
P 5350 4500
F 0 "C810" H 5375 4600 50  0000 L CNN
F 1 "10n" V 5400 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5388 4350 50  0001 C CNN
F 3 "" H 5350 4500 50  0000 C CNN
	1    5350 4500
	1    0    0    -1  
$EndComp
$Comp
L C C808
U 1 1 58FFF567
P 5150 4500
F 0 "C808" H 5175 4600 50  0000 L CNN
F 1 "10n" V 5200 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5188 4350 50  0001 C CNN
F 3 "" H 5150 4500 50  0000 C CNN
	1    5150 4500
	1    0    0    -1  
$EndComp
$Comp
L C C806
U 1 1 58FFF56C
P 4950 4500
F 0 "C806" H 4975 4600 50  0000 L CNN
F 1 "10n" V 5000 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4988 4350 50  0001 C CNN
F 3 "" H 4950 4500 50  0000 C CNN
	1    4950 4500
	1    0    0    -1  
$EndComp
$Comp
L C C804
U 1 1 58FFF570
P 4750 4500
F 0 "C804" H 4775 4600 50  0000 L CNN
F 1 "10n" V 4800 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4788 4350 50  0001 C CNN
F 3 "" H 4750 4500 50  0000 C CNN
	1    4750 4500
	1    0    0    -1  
$EndComp
$Comp
L C C802
U 1 1 58FFF573
P 4550 4500
F 0 "C802" H 4575 4600 50  0000 L CNN
F 1 "10n" V 4600 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4588 4350 50  0001 C CNN
F 3 "" H 4550 4500 50  0000 C CNN
	1    4550 4500
	1    0    0    -1  
$EndComp
$Comp
L C C801
U 1 1 587B1CFD
P 4350 4500
F 0 "C801" H 4375 4600 50  0000 L CNN
F 1 "10n" V 4400 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4388 4350 50  0001 C CNN
F 3 "" H 4350 4500 50  0000 C CNN
	1    4350 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR802
U 1 1 58FFF57F
P 5650 4850
F 0 "#PWR802" H 5650 4600 50  0001 C CNN
F 1 "GND" H 5650 4700 50  0000 C CNN
F 2 "" H 5650 4850 50  0000 C CNN
F 3 "" H 5650 4850 50  0000 C CNN
	1    5650 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR811
U 1 1 58FFF585
P 8200 1750
F 0 "#PWR811" H 8200 1500 50  0001 C CNN
F 1 "GND" H 8200 1600 50  0000 C CNN
F 2 "" H 8200 1750 50  0000 C CNN
F 3 "" H 8200 1750 50  0000 C CNN
	1    8200 1750
	1    0    0    -1  
$EndComp
$Comp
L CP C827
U 1 1 58FFF58A
P 7950 1650
F 0 "C827" H 7975 1750 50  0000 L CNN
F 1 "10µ" H 7975 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7988 1500 50  0001 C CNN
F 3 "" H 7950 1650 50  0000 C CNN
	1    7950 1650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR804
U 1 1 58FFF58F
P 7000 1150
F 0 "#PWR804" H 7000 900 50  0001 C CNN
F 1 "GND" H 7000 1000 50  0000 C CNN
F 2 "" H 7000 1150 50  0000 C CNN
F 3 "" H 7000 1150 50  0000 C CNN
	1    7000 1150
	-1   0    0    1   
$EndComp
$Comp
L C C822
U 1 1 58FFF591
P 7000 1500
F 0 "C822" H 7025 1600 50  0000 L CNN
F 1 "10µ X5R" V 6950 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7038 1350 50  0001 C CNN
F 3 "" H 7000 1500 50  0000 C CNN
	1    7000 1500
	1    0    0    -1  
$EndComp
$Comp
L C C821
U 1 1 587B53D0
P 6700 1400
F 0 "C821" H 6750 1300 50  0000 L CNN
F 1 "10µ X7R" V 6650 1000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6738 1250 50  0001 C CNN
F 3 "" H 6700 1400 50  0000 C CNN
	1    6700 1400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR805
U 1 1 58FFF59C
P 7100 5050
F 0 "#PWR805" H 7100 4800 50  0001 C CNN
F 1 "GND" H 7100 4900 50  0000 C CNN
F 2 "" H 7100 5050 50  0000 C CNN
F 3 "" H 7100 5050 50  0000 C CNN
	1    7100 5050
	1    0    0    -1  
$EndComp
$Comp
L C C823
U 1 1 58FFF5A2
P 7000 5800
F 0 "C823" H 7025 5900 50  0000 L CNN
F 1 "100n" H 7025 5700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7038 5650 50  0001 C CNN
F 3 "" H 7000 5800 50  0000 C CNN
	1    7000 5800
	1    0    0    -1  
$EndComp
$Comp
L C C825
U 1 1 58FFF5A6
P 7600 5800
F 0 "C825" H 7625 5900 50  0000 L CNN
F 1 "100n" H 7625 5700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7638 5650 50  0001 C CNN
F 3 "" H 7600 5800 50  0000 C CNN
	1    7600 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR808
U 1 1 58FFF5AB
P 7300 6150
F 0 "#PWR808" H 7300 5900 50  0001 C CNN
F 1 "GND" H 7300 6000 50  0000 C CNN
F 2 "" H 7300 6150 50  0000 C CNN
F 3 "" H 7300 6150 50  0000 C CNN
	1    7300 6150
	1    0    0    -1  
$EndComp
$Comp
L C C824
U 1 1 58FFF5AF
P 7250 1500
F 0 "C824" H 7275 1600 50  0000 L CNN
F 1 "100n" V 7200 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7288 1350 50  0001 C CNN
F 3 "" H 7250 1500 50  0000 C CNN
	1    7250 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR806
U 1 1 58FFF5B5
P 7250 1250
F 0 "#PWR806" H 7250 1000 50  0001 C CNN
F 1 "GND" H 7250 1100 50  0000 C CNN
F 2 "" H 7250 1250 50  0000 C CNN
F 3 "" H 7250 1250 50  0000 C CNN
	1    7250 1250
	-1   0    0    1   
$EndComp
$Comp
L CP C826
U 1 1 58FFF5BC
P 7650 1300
F 0 "C826" H 7675 1400 50  0000 L CNN
F 1 "1µ" H 7675 1200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7688 1150 50  0001 C CNN
F 3 "" H 7650 1300 50  0000 C CNN
	1    7650 1300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR810
U 1 1 58FFF5BE
P 7650 1050
F 0 "#PWR810" H 7650 800 50  0001 C CNN
F 1 "GND" H 7650 900 50  0000 C CNN
F 2 "" H 7650 1050 50  0000 C CNN
F 3 "" H 7650 1050 50  0000 C CNN
	1    7650 1050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR803
U 1 1 587BF8CA
P 6550 4600
F 0 "#PWR803" H 6550 4350 50  0001 C CNN
F 1 "GND" H 6550 4450 50  0000 C CNN
F 2 "" H 6550 4600 50  0000 C CNN
F 3 "" H 6550 4600 50  0000 C CNN
	1    6550 4600
	1    0    0    -1  
$EndComp
Text Label 8300 2900 0    60   ~ 0
INT
Text Label 8300 3000 0    60   ~ 0
SCK
Text Label 8300 3100 0    60   ~ 0
SDO
Text Label 8300 3200 0    60   ~ 0
SDI
Text Label 8300 3300 0    60   ~ 0
~CS
Text Label 8300 3400 0    60   ~ 0
~RESET
Text Label 3850 3100 0    60   ~ 0
CH10
Text Label 3850 3200 0    60   ~ 0
CH11
Text Label 3850 3300 0    60   ~ 0
CH12
Text Label 3850 3400 0    60   ~ 0
CH13
Text Label 3850 3500 0    60   ~ 0
CH14
Text Label 3850 3600 0    60   ~ 0
CH15
Text Label 3850 3700 0    60   ~ 0
CH16
Text Label 3850 3800 0    60   ~ 0
CH17
Text Label 3850 3900 0    60   ~ 0
CH18
Text Label 3850 4000 0    60   ~ 0
CH19
Text Label 3850 4100 0    60   ~ 0
CH20
Text Label 4650 2200 0    60   ~ 0
CH1
Text Label 4350 2400 0    60   ~ 0
CH3
Text Label 4350 2500 0    60   ~ 0
CH4
Text Label 4350 2600 0    60   ~ 0
CH5
Text Label 4350 2700 0    60   ~ 0
CH6
Text Label 4350 2800 0    60   ~ 0
CH7
Text Label 4350 2900 0    60   ~ 0
CH8
Text Label 4350 3000 0    60   ~ 0
CH9
Text Label 4650 2300 0    60   ~ 0
CH2
Text Label 6600 1750 0    60   ~ 0
Q1
Text Label 6850 1600 1    60   ~ 0
Q2
Text Label 7000 1750 0    60   ~ 0
Q3
Text Label 7450 1550 0    60   ~ 0
VREF
Text Label 7700 1650 0    60   ~ 0
LDO
Text Label 7250 1750 1    20   ~ 0
VREF_BYP
$Comp
L +3V3 #PWR809
U 1 1 58FFF5C8
P 7500 5050
F 0 "#PWR809" H 7500 4900 50  0001 C CNN
F 1 "+3V3" H 7500 5190 50  0000 C CNN
F 2 "" H 7500 5050 50  0000 C CNN
F 3 "" H 7500 5050 50  0000 C CNN
	1    7500 5050
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR807
U 1 1 58FFF5CF
P 7300 5450
F 0 "#PWR807" H 7300 5300 50  0001 C CNN
F 1 "+3V3" H 7300 5590 50  0000 C CNN
F 2 "" H 7300 5450 50  0000 C CNN
F 3 "" H 7300 5450 50  0000 C CNN
	1    7300 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2200 6400 2200
Wire Wire Line
	3550 2300 6400 2300
Wire Wire Line
	4250 2000 4250 2300
Connection ~ 4250 2300
Wire Wire Line
	4200 2400 6400 2400
Wire Wire Line
	6400 2500 4200 2500
Wire Wire Line
	4200 2600 6400 2600
Wire Wire Line
	3800 2700 6400 2700
Wire Wire Line
	6400 2800 3800 2800
Wire Wire Line
	3800 2900 6400 2900
Wire Wire Line
	6400 3000 3400 3000
Wire Wire Line
	3400 3100 6400 3100
Wire Wire Line
	6400 3200 3400 3200
Wire Wire Line
	3000 3300 6400 3300
Wire Wire Line
	6400 3400 3000 3400
Wire Wire Line
	3000 3500 6400 3500
Wire Wire Line
	6400 3600 2600 3600
Wire Wire Line
	2600 3700 6400 3700
Wire Wire Line
	6400 3800 2600 3800
Wire Wire Line
	6400 3900 2200 3900
Wire Wire Line
	2200 4000 6400 4000
Wire Wire Line
	6400 4100 2200 4100
Connection ~ 4250 2200
Wire Wire Line
	5650 1600 5650 1700
Wire Wire Line
	4750 1700 6350 1700
Wire Wire Line
	4750 1700 4750 1800
Wire Wire Line
	6350 1700 6350 1800
Connection ~ 5650 1700
Wire Wire Line
	6150 1800 6150 1700
Connection ~ 6150 1700
Wire Wire Line
	5950 1700 5950 1800
Connection ~ 5950 1700
Wire Wire Line
	5750 1800 5750 1700
Connection ~ 5750 1700
Wire Wire Line
	5550 1800 5550 1700
Connection ~ 5550 1700
Wire Wire Line
	5350 1800 5350 1700
Connection ~ 5350 1700
Wire Wire Line
	5150 1800 5150 1700
Connection ~ 5150 1700
Wire Wire Line
	4950 1800 4950 1700
Connection ~ 4950 1700
Wire Wire Line
	6350 2100 6350 2200
Connection ~ 6350 2200
Wire Wire Line
	6150 2100 6150 2300
Connection ~ 6150 2300
Wire Wire Line
	5950 2100 5950 2400
Connection ~ 5950 2400
Wire Wire Line
	5750 2100 5750 2500
Connection ~ 5750 2500
Wire Wire Line
	5550 2600 5550 2100
Connection ~ 5550 2600
Wire Wire Line
	5350 2100 5350 2700
Connection ~ 5350 2700
Wire Wire Line
	5150 2800 5150 2100
Connection ~ 5150 2800
Wire Wire Line
	4950 2100 4950 2900
Connection ~ 4950 2900
Wire Wire Line
	4750 2100 4750 3000
Connection ~ 4750 3000
Wire Wire Line
	6350 3100 6350 4350
Connection ~ 6350 3100
Wire Wire Line
	6150 3200 6150 4350
Connection ~ 6150 3200
Wire Wire Line
	5950 4350 5950 3300
Connection ~ 5950 3300
Wire Wire Line
	5750 3400 5750 4350
Connection ~ 5750 3400
Wire Wire Line
	5550 4350 5550 3500
Connection ~ 5550 3500
Wire Wire Line
	5350 3600 5350 4350
Connection ~ 5350 3600
Wire Wire Line
	5150 4350 5150 3700
Connection ~ 5150 3700
Wire Wire Line
	4950 3800 4950 4350
Connection ~ 4950 3800
Wire Wire Line
	4750 4350 4750 3900
Connection ~ 4750 3900
Wire Wire Line
	4550 4000 4550 4350
Connection ~ 4550 4000
Wire Wire Line
	4350 4350 4350 4100
Connection ~ 4350 4100
Wire Wire Line
	4350 4650 4350 4750
Wire Wire Line
	4350 4750 6350 4750
Wire Wire Line
	6350 4750 6350 4650
Wire Wire Line
	4550 4650 4550 4750
Connection ~ 4550 4750
Wire Wire Line
	4750 4750 4750 4650
Connection ~ 4750 4750
Wire Wire Line
	4950 4650 4950 4750
Connection ~ 4950 4750
Wire Wire Line
	5150 4750 5150 4650
Connection ~ 5150 4750
Wire Wire Line
	5350 4650 5350 4750
Connection ~ 5350 4750
Wire Wire Line
	5550 4750 5550 4650
Connection ~ 5550 4750
Wire Wire Line
	5750 4650 5750 4750
Connection ~ 5750 4750
Wire Wire Line
	5950 4750 5950 4650
Connection ~ 5950 4750
Wire Wire Line
	6150 4650 6150 4750
Connection ~ 6150 4750
Wire Wire Line
	5650 4850 5650 4750
Connection ~ 5650 4750
Wire Wire Line
	7700 1750 7700 1650
Wire Wire Line
	7700 1650 7800 1650
Wire Wire Line
	8100 1650 8200 1650
Wire Wire Line
	8200 1650 8200 1750
Wire Wire Line
	6850 1400 6850 1600
Wire Wire Line
	6850 1600 6900 1600
Wire Wire Line
	6900 1600 6900 1750
Wire Wire Line
	6800 1750 6550 1750
Wire Wire Line
	6550 1750 6550 1400
Wire Wire Line
	7000 1750 7000 1650
Wire Wire Line
	6700 4650 6700 4800
Wire Wire Line
	6700 4800 7900 4800
Wire Wire Line
	7100 4650 7100 5050
Wire Wire Line
	6900 4650 6900 4800
Connection ~ 6900 4800
Connection ~ 7100 4800
Wire Wire Line
	7300 4800 7300 4650
Wire Wire Line
	7500 4800 7500 4650
Connection ~ 7300 4800
Wire Wire Line
	7700 4800 7700 4650
Connection ~ 7500 4800
Wire Wire Line
	7600 4800 7600 4650
Connection ~ 7600 4800
Wire Wire Line
	7900 4800 7900 4650
Connection ~ 7700 4800
Wire Wire Line
	6800 4650 6800 4950
Wire Wire Line
	6800 4950 7800 4950
Wire Wire Line
	7500 4950 7500 5050
Wire Wire Line
	7800 4950 7800 4650
Connection ~ 7500 4950
Wire Wire Line
	7400 4650 7400 4950
Connection ~ 7400 4950
Wire Wire Line
	7200 4650 7200 4950
Connection ~ 7200 4950
Wire Wire Line
	7000 4650 7000 4950
Connection ~ 7000 4950
Wire Wire Line
	7000 5550 7600 5550
Wire Wire Line
	7000 5550 7000 5650
Connection ~ 7300 5550
Wire Wire Line
	7600 5550 7600 5650
Wire Wire Line
	7000 6050 7600 6050
Wire Wire Line
	7000 6050 7000 5950
Connection ~ 7300 6050
Wire Wire Line
	7600 6050 7600 5950
Wire Wire Line
	7250 1350 7250 1250
Wire Wire Line
	7250 1750 7250 1650
Wire Wire Line
	7000 1350 7000 1150
Wire Wire Line
	7350 1750 7350 1700
Wire Wire Line
	7350 1700 7450 1700
Wire Wire Line
	7450 1550 7450 1750
Wire Wire Line
	7650 1050 7650 1150
Wire Wire Line
	7650 1450 7650 1550
Wire Wire Line
	7650 1550 7450 1550
Connection ~ 7450 1700
Wire Wire Line
	8900 2900 8200 2900
Wire Wire Line
	8200 3000 8900 3000
Wire Wire Line
	8900 3100 8200 3100
Wire Wire Line
	8200 3200 8900 3200
Wire Wire Line
	8900 3300 8200 3300
Wire Wire Line
	6550 4600 6550 4300
Wire Wire Line
	6550 4300 6400 4300
Wire Wire Line
	6400 4300 6400 4200
$Comp
L R R801
U 1 1 58FFF5D4
P 4450 2000
F 0 "R801" V 4350 2000 50  0000 C CNN
F 1 "2k00" V 4450 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 4380 2000 50  0001 C CNN
F 3 "" H 4450 2000 50  0000 C CNN
	1    4450 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 2000 4600 2200
Connection ~ 4600 2200
Wire Wire Line
	4300 2000 4250 2000
$Comp
L +3V3 #PWR813
U 1 1 58FFF5D7
P 9050 3400
F 0 "#PWR813" H 9050 3250 50  0001 C CNN
F 1 "+3V3" H 9050 3540 50  0000 C CNN
F 2 "" H 9050 3400 50  0000 C CNN
F 3 "" H 9050 3400 50  0000 C CNN
	1    9050 3400
	0    1    1    0   
$EndComp
$Comp
L R R804
U 1 1 58FFF5DF
P 8800 3400
F 0 "R804" V 8880 3400 50  0000 C CNN
F 1 "10k" V 8800 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8730 3400 50  0001 C CNN
F 3 "" H 8800 3400 50  0000 C CNN
	1    8800 3400
	0    1    1    0   
$EndComp
$Comp
L LED D801
U 1 1 58FFF5E2
P 8550 2600
F 0 "D801" H 8550 2700 50  0000 C CNN
F 1 "BUSY" H 8550 2500 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8550 2600 50  0001 C CNN
F 3 "" H 8550 2600 50  0000 C CNN
	1    8550 2600
	0    -1   -1   0   
$EndComp
$Comp
L R R803
U 1 1 58FFF5E7
P 8550 2150
F 0 "R803" V 8630 2150 50  0000 C CNN
F 1 "2k" V 8550 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8480 2150 50  0001 C CNN
F 3 "" H 8550 2150 50  0000 C CNN
	1    8550 2150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR812
U 1 1 58FFF5EC
P 8550 1900
F 0 "#PWR812" H 8550 1750 50  0001 C CNN
F 1 "+3V3" H 8550 2040 50  0000 C CNN
F 2 "" H 8550 1900 50  0000 C CNN
F 3 "" H 8550 1900 50  0000 C CNN
	1    8550 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1900 8550 2000
Wire Wire Line
	8550 2300 8550 2450
Wire Wire Line
	8550 2750 8550 2900
Connection ~ 8550 2900
Text HLabel 8900 2900 2    60   Output ~ 0
INT
Text HLabel 8900 3000 2    60   Input ~ 0
SCK
Text HLabel 8900 3100 2    60   Output ~ 0
MISO
Text HLabel 8900 3200 2    60   Input ~ 0
MOSI
Text HLabel 8900 3300 2    60   Input ~ 0
~CS
Wire Wire Line
	8200 3400 8650 3400
Wire Wire Line
	9050 3400 8950 3400
Wire Wire Line
	4250 2200 4300 2200
Text HLabel 4200 2400 0    60   Input ~ 0
RTD1_B
Text HLabel 4200 2500 0    60   Input ~ 0
RTD1_C
Text HLabel 4200 2600 0    60   Input ~ 0
RTD1_D
Text HLabel 3800 2700 0    60   Input ~ 0
RTD2_B
Text HLabel 3800 2800 0    60   Input ~ 0
RTD2_C
Text HLabel 3800 2900 0    60   Input ~ 0
RTD2_D
Text HLabel 3400 3000 0    60   Input ~ 0
RTD3_B
Text HLabel 3400 3100 0    60   Input ~ 0
RTD3_C
Text HLabel 3400 3200 0    60   Input ~ 0
RTD3_D
Text HLabel 3000 3300 0    60   Input ~ 0
RTD4_B
Text HLabel 3000 3400 0    60   Input ~ 0
RTD4_C
Text HLabel 3000 3500 0    60   Input ~ 0
RTD4_D
Text HLabel 2600 3600 0    60   Input ~ 0
RTD5_B
Text HLabel 2600 3700 0    60   Input ~ 0
RTD5_C
Text HLabel 2600 3800 0    60   Input ~ 0
RTD5_D
Text HLabel 2200 3900 0    60   Input ~ 0
RTD6_B
Text HLabel 2200 4000 0    60   Input ~ 0
RTD6_C
Text HLabel 2200 4100 0    60   Input ~ 0
RTD6_D
Text HLabel 3550 2300 0    60   Input ~ 0
RTD__A
Wire Wire Line
	7300 5450 7300 5550
Wire Wire Line
	7300 6050 7300 6150
$EndSCHEMATC
