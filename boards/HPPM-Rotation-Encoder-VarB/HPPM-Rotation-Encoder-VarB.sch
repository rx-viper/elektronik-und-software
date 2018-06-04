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
LIBS:ds9638
LIBS:as5045b
LIBS:HPPM-Rotation-Encoder-VarB-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HPPM-Rotation-Encoder-VarB"
Date "2018-06-04"
Rev "rev1"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AS5045B U1
U 1 1 5B107E23
P 5600 3700
F 0 "U1" H 5600 3200 60  0000 C CNN
F 1 "AS5045B" H 5600 4200 60  0000 C CNN
F 2 "Housings_SSOP:SSOP-16_5.3x6.2mm_Pitch0.65mm" H 5600 3700 60  0001 C CNN
F 3 "" H 5600 3700 60  0001 C CNN
	1    5600 3700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 5B107E82
P 4900 3150
F 0 "#PWR01" H 4900 3000 50  0001 C CNN
F 1 "+5V" H 4900 3290 50  0000 C CNN
F 2 "" H 4900 3150 50  0001 C CNN
F 3 "" H 4900 3150 50  0001 C CNN
	1    4900 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B107F7D
P 4900 3550
F 0 "#PWR02" H 4900 3300 50  0001 C CNN
F 1 "GND" H 4900 3400 50  0000 C CNN
F 2 "" H 4900 3550 50  0001 C CNN
F 3 "" H 4900 3550 50  0001 C CNN
	1    4900 3550
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 5B107F98
P 4550 3450
F 0 "C1" V 4600 3250 50  0000 L CNN
F 1 "100n" V 4500 3200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4588 3300 50  0001 C CNN
F 3 "" H 4550 3450 50  0001 C CNN
	1    4550 3450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5B1080A9
P 4150 3450
F 0 "#PWR03" H 4150 3200 50  0001 C CNN
F 1 "GND" H 4150 3300 50  0000 C CNN
F 2 "" H 4150 3450 50  0001 C CNN
F 3 "" H 4150 3450 50  0001 C CNN
	1    4150 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 3550 5000 3550
$Comp
L C C2
U 1 1 5B1080D6
P 4550 3250
F 0 "C2" V 4600 3050 50  0000 L CNN
F 1 "4µ7 6V3" V 4500 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4588 3100 50  0001 C CNN
F 3 "" H 4550 3250 50  0001 C CNN
	1    4550 3250
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5B10817D
P 4150 3250
F 0 "#PWR04" H 4150 3000 50  0001 C CNN
F 1 "GND" H 4150 3100 50  0000 C CNN
F 2 "" H 4150 3250 50  0001 C CNN
F 3 "" H 4150 3250 50  0001 C CNN
	1    4150 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 3250 4400 3250
Wire Wire Line
	4150 3450 4400 3450
$Comp
L C C4
U 1 1 5B1081BE
P 10150 4750
F 0 "C4" H 10175 4850 50  0000 L CNN
F 1 "1µ 10V" H 10175 4650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10188 4600 50  0001 C CNN
F 3 "" H 10150 4750 50  0001 C CNN
	1    10150 4750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 5B1081F5
P 10150 4500
F 0 "#PWR05" H 10150 4350 50  0001 C CNN
F 1 "+5V" H 10150 4640 50  0000 C CNN
F 2 "" H 10150 4500 50  0001 C CNN
F 3 "" H 10150 4500 50  0001 C CNN
	1    10150 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5B108211
P 10150 5000
F 0 "#PWR06" H 10150 4750 50  0001 C CNN
F 1 "GND" H 10150 4850 50  0000 C CNN
F 2 "" H 10150 5000 50  0001 C CNN
F 3 "" H 10150 5000 50  0001 C CNN
	1    10150 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 5000 10150 4900
Wire Wire Line
	10150 4600 10150 4500
$Comp
L LED D2
U 1 1 5B108321
P 4200 4000
F 0 "D2" H 4200 4100 50  0000 C CNN
F 1 "Red" H 4200 3900 50  0000 C CNN
F 2 "LEDs:LED_0603" H 4200 4000 50  0001 C CNN
F 3 "" H 4200 4000 50  0001 C CNN
	1    4200 4000
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 5B1083A6
P 4200 3750
F 0 "D1" H 4200 3850 50  0000 C CNN
F 1 "Yellow" H 4200 3650 50  0000 C CNN
F 2 "LEDs:LED_0603" H 4200 3750 50  0001 C CNN
F 3 "" H 4200 3750 50  0001 C CNN
	1    4200 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 3750 4600 3750
Wire Wire Line
	4600 3750 4600 3650
Wire Wire Line
	4600 3650 5000 3650
Wire Wire Line
	5000 3750 4700 3750
Wire Wire Line
	4700 3750 4700 4000
Wire Wire Line
	4700 4000 4350 4000
$Comp
L R R1
U 1 1 5B108409
P 3800 3750
F 0 "R1" V 3880 3750 50  0000 C CNN
F 1 "2k" V 3800 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3730 3750 50  0001 C CNN
F 3 "" H 3800 3750 50  0001 C CNN
	1    3800 3750
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5B10846A
P 3800 4000
F 0 "R2" V 3880 4000 50  0000 C CNN
F 1 "2k" V 3800 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3730 4000 50  0001 C CNN
F 3 "" H 3800 4000 50  0001 C CNN
	1    3800 4000
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR07
U 1 1 5B1084E3
P 3550 3750
F 0 "#PWR07" H 3550 3600 50  0001 C CNN
F 1 "+5V" H 3550 3890 50  0000 C CNN
F 2 "" H 3550 3750 50  0001 C CNN
F 3 "" H 3550 3750 50  0001 C CNN
	1    3550 3750
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR08
U 1 1 5B108506
P 3550 4000
F 0 "#PWR08" H 3550 3850 50  0001 C CNN
F 1 "+5V" H 3550 4140 50  0000 C CNN
F 2 "" H 3550 4000 50  0001 C CNN
F 3 "" H 3550 4000 50  0001 C CNN
	1    3550 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 4000 3650 4000
Wire Wire Line
	3650 3750 3550 3750
Wire Wire Line
	4050 3750 3950 3750
Wire Wire Line
	3950 4000 4050 4000
Text Notes 3650 4250 0    60   ~ 0
I_LED = 1..2mA
$Comp
L R R4
U 1 1 5B108614
P 9450 4750
F 0 "R4" V 9530 4750 50  0000 C CNN
F 1 "HEAT" V 9450 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9380 4750 50  0001 C CNN
F 3 "" H 9450 4750 50  0001 C CNN
	1    9450 4750
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5B10869A
P 9250 4750
F 0 "R3" V 9330 4750 50  0000 C CNN
F 1 "HEAT" V 9250 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9180 4750 50  0001 C CNN
F 3 "" H 9250 4750 50  0001 C CNN
	1    9250 4750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 5B1086CC
P 9350 4400
F 0 "#PWR09" H 9350 4250 50  0001 C CNN
F 1 "+5V" H 9350 4540 50  0000 C CNN
F 2 "" H 9350 4400 50  0001 C CNN
F 3 "" H 9350 4400 50  0001 C CNN
	1    9350 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5B1086F5
P 9350 5100
F 0 "#PWR010" H 9350 4850 50  0001 C CNN
F 1 "GND" H 9350 4950 50  0000 C CNN
F 2 "" H 9350 5100 50  0001 C CNN
F 3 "" H 9350 5100 50  0001 C CNN
	1    9350 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4900 9250 5000
Wire Wire Line
	9250 5000 9450 5000
Wire Wire Line
	9350 5000 9350 5100
Wire Wire Line
	9450 5000 9450 4900
Connection ~ 9350 5000
Wire Wire Line
	9450 4500 9450 4600
Wire Wire Line
	9250 4500 9450 4500
Wire Wire Line
	9350 4500 9350 4400
Wire Wire Line
	9250 4500 9250 4600
Connection ~ 9350 4500
$Comp
L DS9638 U2
U 1 1 5B108A86
P 8050 3400
F 0 "U2" H 8050 3700 60  0000 C CNN
F 1 "DS9638" H 8050 3100 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7950 3400 60  0001 C CNN
F 3 "" H 7950 3400 60  0001 C CNN
	1    8050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3350 7550 3350
Wire Wire Line
	7550 3450 6200 3450
$Comp
L +5V #PWR011
U 1 1 5B108CD6
P 7450 3150
F 0 "#PWR011" H 7450 3000 50  0001 C CNN
F 1 "+5V" H 7450 3290 50  0000 C CNN
F 2 "" H 7450 3150 50  0001 C CNN
F 3 "" H 7450 3150 50  0001 C CNN
	1    7450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3150 7450 3250
Wire Wire Line
	7450 3250 7550 3250
$Comp
L GND #PWR012
U 1 1 5B108D26
P 7450 3650
F 0 "#PWR012" H 7450 3400 50  0001 C CNN
F 1 "GND" H 7450 3500 50  0000 C CNN
F 2 "" H 7450 3650 50  0001 C CNN
F 3 "" H 7450 3650 50  0001 C CNN
	1    7450 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3650 7450 3550
Wire Wire Line
	7450 3550 7550 3550
Text Label 6400 3350 0    60   ~ 0
_A
Text Label 6400 3450 0    60   ~ 0
_B
Text Label 8800 3250 0    60   ~ 0
A
Text Label 8800 3350 0    60   ~ 0
A*
Text Label 8800 3450 0    60   ~ 0
B
Text Label 8800 3550 0    60   ~ 0
B*
Wire Wire Line
	9350 3250 8600 3250
Wire Wire Line
	8600 3350 9350 3350
Wire Wire Line
	9350 3450 8600 3450
Wire Wire Line
	8600 3550 9350 3550
$Comp
L GND #PWR013
U 1 1 5B1091C7
P 9250 3150
F 0 "#PWR013" H 9250 2900 50  0001 C CNN
F 1 "GND" H 9250 3000 50  0000 C CNN
F 2 "" H 9250 3150 50  0001 C CNN
F 3 "" H 9250 3150 50  0001 C CNN
	1    9250 3150
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR014
U 1 1 5B10922D
P 9250 2950
F 0 "#PWR014" H 9250 2800 50  0001 C CNN
F 1 "+5V" H 9250 3090 50  0000 C CNN
F 2 "" H 9250 2950 50  0001 C CNN
F 3 "" H 9250 2950 50  0001 C CNN
	1    9250 2950
	1    0    0    -1  
$EndComp
NoConn ~ 6200 3950
NoConn ~ 6200 4050
NoConn ~ 6200 3550
NoConn ~ 6200 3750
NoConn ~ 6200 3650
$Comp
L GND #PWR015
U 1 1 5B1096F8
P 6400 3950
F 0 "#PWR015" H 6400 3700 50  0001 C CNN
F 1 "GND" H 6400 3800 50  0000 C CNN
F 2 "" H 6400 3950 50  0001 C CNN
F 3 "" H 6400 3950 50  0001 C CNN
	1    6400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3950 6400 3850
Wire Wire Line
	6400 3850 6200 3850
$Comp
L C C3
U 1 1 5B109BB1
P 7200 3200
F 0 "C3" V 7250 3000 50  0000 L CNN
F 1 "100n" V 7150 2950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7238 3050 50  0001 C CNN
F 3 "" H 7200 3200 50  0001 C CNN
	1    7200 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 5B109C42
P 6950 3200
F 0 "#PWR016" H 6950 2950 50  0001 C CNN
F 1 "GND" H 6950 3050 50  0000 C CNN
F 2 "" H 6950 3200 50  0001 C CNN
F 3 "" H 6950 3200 50  0001 C CNN
	1    6950 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 3200 7050 3200
Wire Wire Line
	7350 3200 7450 3200
Connection ~ 7450 3200
$Comp
L CONN_01X06 J1
U 1 1 5B10A070
P 9550 3300
F 0 "J1" H 9550 3650 50  0000 C CNN
F 1 "CONN" V 9650 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 9550 3300 50  0001 C CNN
F 3 "" H 9550 3300 50  0001 C CNN
	1    9550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3150 9350 3150
Wire Wire Line
	9350 3050 9250 3050
Wire Wire Line
	9250 3050 9250 2950
Wire Wire Line
	4700 3450 5000 3450
Wire Wire Line
	5000 3350 4800 3350
Wire Wire Line
	4800 3350 4800 3250
Wire Wire Line
	4800 3250 4700 3250
Wire Wire Line
	4900 3150 4900 3450
Connection ~ 4900 3450
$EndSCHEMATC
