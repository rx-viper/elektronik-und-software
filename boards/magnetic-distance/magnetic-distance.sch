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
LIBS:as5304
LIBS:optical-distance
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
L AS5304 U2
U 1 1 5936DC41
P 4150 2050
F 0 "U2" H 4150 2650 60  0000 C CNN
F 1 "AS5304" H 4150 1450 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-20_4.4x6.5mm_Pitch0.65mm" H 4150 2050 60  0001 C CNN
F 3 "" H 4150 2050 60  0000 C CNN
	1    4150 2050
	1    0    0    -1  
$EndComp
$Comp
L DS9638 U1
U 1 1 5936DE0E
P 4150 3150
F 0 "U1" H 4150 3450 60  0000 C CNN
F 1 "DS9638" H 4150 2850 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4050 3150 60  0001 C CNN
F 3 "" H 4050 3150 60  0001 C CNN
	1    4150 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1600 5050 1600
Wire Wire Line
	5050 1600 5050 3700
Wire Wire Line
	5050 3700 3350 3700
Wire Wire Line
	3350 3700 3350 1600
Wire Wire Line
	3350 3300 3650 3300
Wire Wire Line
	4650 2100 5050 2100
Connection ~ 5050 2100
Wire Wire Line
	3350 1600 3650 1600
Connection ~ 3350 3300
Wire Wire Line
	3650 3000 3250 3000
Wire Wire Line
	3250 1800 3250 4150
Wire Wire Line
	3250 1800 3650 1800
Wire Wire Line
	3650 2200 3250 2200
Connection ~ 3250 2200
Wire Wire Line
	5150 1600 5150 4150
Wire Wire Line
	5150 2000 4650 2000
Connection ~ 3250 3000
Wire Wire Line
	3650 1900 3150 1900
Wire Wire Line
	3150 1900 3150 3100
Wire Wire Line
	3150 3100 3650 3100
Wire Wire Line
	3650 1700 3050 1700
Wire Wire Line
	3050 1700 3050 3200
Wire Wire Line
	3050 3200 3650 3200
$Comp
L C C1
U 1 1 5936E9DA
P 4150 3900
F 0 "C1" H 4175 4000 50  0000 L CNN
F 1 "100nF" H 4175 3800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4188 3750 50  0001 C CNN
F 3 "" H 4150 3900 50  0001 C CNN
	1    4150 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4150 3250 4150
Wire Wire Line
	4150 4150 4150 4050
Connection ~ 4150 4150
Wire Wire Line
	4150 3700 4150 3750
Connection ~ 4150 3700
$Comp
L CONN_02X03 J1
U 1 1 5936EBAA
P 5550 2350
F 0 "J1" H 5550 2550 50  0000 C CNN
F 1 "CONN_02X03" H 5550 2150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_2x03_Pitch2.54mm" H 5550 1150 50  0001 C CNN
F 3 "" H 5550 1150 50  0001 C CNN
	1    5550 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 3000 5650 3000
Wire Wire Line
	5650 3000 5650 2600
Wire Wire Line
	5550 2600 5550 3100
Wire Wire Line
	5550 3100 4700 3100
Wire Wire Line
	5450 2600 5450 3200
Wire Wire Line
	5450 3200 4700 3200
Wire Wire Line
	4700 3300 5250 3300
Wire Wire Line
	5250 3300 5250 2000
Wire Wire Line
	5250 2000 5450 2000
Wire Wire Line
	5450 2000 5450 2100
Wire Wire Line
	5650 2100 5650 1600
Wire Wire Line
	5650 1600 5150 1600
Connection ~ 5150 2000
Wire Wire Line
	5550 2100 5550 1900
Wire Wire Line
	5550 1900 5050 1900
Connection ~ 5050 1900
Text Label 5650 1900 0    60   ~ 0
VCC
Text Label 5250 1900 0    60   ~ 0
GND
Text Label 5300 2000 0    60   ~ 0
B*
Text Label 5300 3000 0    60   ~ 0
A
Text Label 5300 3100 0    60   ~ 0
A*
Text Label 5300 3200 0    60   ~ 0
B
$Comp
L TEST TP1
U 1 1 59370701
P 2900 2100
F 0 "TP1" H 2900 2400 50  0000 C BNN
F 1 "AO" H 2900 2350 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2900 2100 50  0001 C CNN
F 3 "" H 2900 2100 50  0001 C CNN
	1    2900 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 2100 2900 2100
Text Label 2900 2100 0    60   ~ 0
AO
Text Label 3450 1700 0    60   ~ 0
A_c
Text Label 3450 1900 0    60   ~ 0
B_c
$EndSCHEMATC
