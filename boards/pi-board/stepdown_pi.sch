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
LIBS:pam2306
LIBS:switches
LIBS:pi-board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Stepdown Pi"
Date "2017-06-05"
Rev "2"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3150 2550 0    60   Input ~ 0
+5V
$Comp
L C C8
U 1 1 59079533
P 4550 3700
F 0 "C8" H 4575 3800 50  0000 L CNN
F 1 "10u" H 4575 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4588 3550 50  0001 C CNN
F 3 "" H 4550 3700 50  0001 C CNN
	1    4550 3700
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 590795DF
P 4000 3700
F 0 "C7" H 4025 3800 50  0000 L CNN
F 1 "10u" H 4025 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4038 3550 50  0001 C CNN
F 3 "" H 4000 3700 50  0001 C CNN
	1    4000 3700
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 59079622
P 3400 3700
F 0 "C6" H 3425 3800 50  0000 L CNN
F 1 "10u" H 3425 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3438 3550 50  0001 C CNN
F 3 "" H 3400 3700 50  0001 C CNN
	1    3400 3700
	1    0    0    -1  
$EndComp
$Comp
L PAM2306 U1
U 1 1 59078D7C
P 6050 3500
F 0 "U1" H 6050 3150 60  0000 C CNN
F 1 "PAM2306" H 6050 3850 60  0000 C CNN
F 2 "rx-viper:pam2306" H 6050 3500 60  0001 C CNN
F 3 "" H 6050 3500 60  0001 C CNN
	1    6050 3500
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 59079818
P 3400 2800
F 0 "R5" V 3480 2800 50  0000 C CNN
F 1 "100k" V 3400 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3330 2800 50  0001 C CNN
F 3 "" H 3400 2800 50  0001 C CNN
	1    3400 2800
	1    0    0    -1  
$EndComp
NoConn ~ 5650 3650
NoConn ~ 6450 3350
$Comp
L L L2
U 1 1 5907A101
P 7000 3650
F 0 "L2" V 6950 3650 50  0000 C CNN
F 1 "4.7u 2A" V 7075 3650 50  0000 C CNN
F 2 "Inductors:Inductor_Taiyo-Yuden_NR-50xx_HandSoldering" H 7000 3650 50  0001 C CNN
F 3 "" H 7000 3650 50  0001 C CNN
	1    7000 3650
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 5907A33E
P 7300 3900
F 0 "R7" V 7380 3900 50  0000 C CNN
F 1 "0R" V 7300 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7230 3900 50  0001 C CNN
F 3 "" H 7300 3900 50  0001 C CNN
	1    7300 3900
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 5907A3A0
P 7650 3900
F 0 "C10" H 7675 4000 50  0000 L CNN
F 1 "NF" H 7675 3800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7688 3750 50  0001 C CNN
F 3 "" H 7650 3900 50  0001 C CNN
	1    7650 3900
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5907A5C3
P 7650 4300
F 0 "R8" V 7730 4300 50  0000 C CNN
F 1 "NF" V 7650 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7580 4300 50  0001 C CNN
F 3 "" H 7650 4300 50  0001 C CNN
	1    7650 4300
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5907A7B7
P 8050 3900
F 0 "C11" H 8075 4000 50  0000 L CNN
F 1 "10u" H 8075 3800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8088 3750 50  0001 C CNN
F 3 "" H 8050 3900 50  0001 C CNN
	1    8050 3900
	1    0    0    -1  
$EndComp
$Comp
L L L1
U 1 1 5907AE5A
P 7000 2550
F 0 "L1" V 6950 2550 50  0000 C CNN
F 1 "4.7u 2A" V 7075 2550 50  0000 C CNN
F 2 "Inductors:Inductor_Taiyo-Yuden_NR-50xx_HandSoldering" H 7000 2550 50  0001 C CNN
F 3 "" H 7000 2550 50  0001 C CNN
	1    7000 2550
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 5907B186
P 7300 3050
F 0 "R6" V 7380 3050 50  0000 C CNN
F 1 "0R" V 7300 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 7230 3050 50  0001 C CNN
F 3 "" H 7300 3050 50  0001 C CNN
	1    7300 3050
	1    0    0    -1  
$EndComp
Text HLabel 9300 3650 2    60   Input ~ 0
+3.3V
$Comp
L C C9
U 1 1 5907B3B6
P 7650 3050
F 0 "C9" H 7675 3150 50  0000 L CNN
F 1 "NF" H 7675 2950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7688 2900 50  0001 C CNN
F 3 "" H 7650 3050 50  0001 C CNN
	1    7650 3050
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5907B5B0
P 8450 4300
F 0 "R9" V 8530 4300 50  0000 C CNN
F 1 "NF" V 8450 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8380 4300 50  0001 C CNN
F 3 "" H 8450 4300 50  0001 C CNN
	1    8450 4300
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 5907B6C4
P 8950 3900
F 0 "C12" H 8975 4000 50  0000 L CNN
F 1 "10u" H 8975 3800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8988 3750 50  0001 C CNN
F 3 "" H 8950 3900 50  0001 C CNN
	1    8950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3550 6600 3550
Wire Wire Line
	6600 3550 6600 4500
Connection ~ 6600 4500
Wire Wire Line
	4750 3450 5650 3450
Wire Wire Line
	4750 4500 4750 3450
Connection ~ 4750 4500
Wire Wire Line
	4550 3250 5650 3250
Wire Wire Line
	4550 2550 4550 3550
Connection ~ 4550 2550
Connection ~ 4550 3250
Wire Wire Line
	4550 4500 4550 3850
Connection ~ 4550 4500
Wire Wire Line
	4000 4500 4000 3850
Connection ~ 4000 4500
Wire Wire Line
	3400 3850 3400 4500
Connection ~ 3400 4500
Wire Wire Line
	4000 2550 4000 3550
Connection ~ 4000 2550
Wire Wire Line
	6450 4000 6450 3750
Wire Wire Line
	4900 2550 4900 4000
Wire Wire Line
	4900 3750 5650 3750
Connection ~ 4900 3750
Wire Wire Line
	4900 4000 6450 4000
Wire Wire Line
	3400 2400 3400 2650
Connection ~ 3400 2550
Wire Wire Line
	3400 2950 3400 3550
Wire Wire Line
	6450 3250 6600 3250
Wire Wire Line
	6600 3250 6600 3000
Wire Wire Line
	6600 3000 3400 3000
Connection ~ 3400 3000
Wire Wire Line
	6450 3650 6850 3650
Wire Wire Line
	5650 3550 5450 3550
Wire Wire Line
	7300 3650 7300 3750
Connection ~ 7300 3650
Wire Wire Line
	5450 3550 5450 4100
Wire Wire Line
	5450 4100 7650 4100
Wire Wire Line
	7650 4050 7650 4150
Wire Wire Line
	7300 4050 7300 4100
Connection ~ 7300 4100
Connection ~ 7650 4100
Wire Wire Line
	7650 4500 7650 4450
Connection ~ 7650 4500
Connection ~ 7650 3650
Wire Wire Line
	8050 4500 8050 4050
Connection ~ 8050 4500
Wire Wire Line
	3150 2550 4900 2550
Wire Wire Line
	5450 3350 5650 3350
Wire Wire Line
	5450 2550 5450 3350
Wire Wire Line
	5450 2550 6850 2550
Wire Wire Line
	7150 2550 9300 2550
Wire Wire Line
	7300 2550 7300 2900
Wire Wire Line
	7300 3200 7300 3450
Connection ~ 7300 3450
Wire Wire Line
	7650 3650 7650 3750
Wire Wire Line
	8050 3650 8050 3750
Connection ~ 8050 3650
Connection ~ 7300 2550
Wire Wire Line
	7650 2550 7650 2900
Wire Wire Line
	7650 3450 7650 3200
Connection ~ 7650 3450
Wire Wire Line
	8450 4500 8450 4450
Connection ~ 8450 4500
Wire Wire Line
	8450 3450 8450 4150
Wire Wire Line
	8950 4500 8950 4050
Wire Wire Line
	8950 2550 8950 3750
Connection ~ 7650 2550
Connection ~ 8950 2550
Wire Wire Line
	6450 3450 8450 3450
Wire Wire Line
	7150 3650 9300 3650
Text HLabel 9300 2550 2    60   Input ~ 0
+1.8V
Wire Wire Line
	3150 4500 8950 4500
$Comp
L GND #PWR011
U 1 1 590BD5E5
P 3150 4700
F 0 "#PWR011" H 3150 4450 50  0001 C CNN
F 1 "GND" H 3150 4550 50  0000 C CNN
F 2 "" H 3150 4700 50  0001 C CNN
F 3 "" H 3150 4700 50  0001 C CNN
	1    3150 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4700 3150 4500
$Comp
L TEST TP3
U 1 1 590BEEA7
P 9150 2450
F 0 "TP3" H 9150 2750 50  0000 C BNN
F 1 "TEST" H 9150 2700 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 9150 2450 50  0001 C CNN
F 3 "" H 9150 2450 50  0001 C CNN
	1    9150 2450
	1    0    0    -1  
$EndComp
$Comp
L TEST TP4
U 1 1 590BEEFA
P 9150 3550
F 0 "TP4" H 9150 3850 50  0000 C BNN
F 1 "TEST" H 9150 3800 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 9150 3550 50  0001 C CNN
F 3 "" H 9150 3550 50  0001 C CNN
	1    9150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3550 9150 3650
Connection ~ 9150 3650
Wire Wire Line
	9150 2450 9150 2550
Connection ~ 9150 2550
$Comp
L TEST TP2
U 1 1 590BF6C0
P 3400 2400
F 0 "TP2" H 3400 2700 50  0000 C BNN
F 1 "TEST" H 3400 2650 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3400 2400 50  0001 C CNN
F 3 "" H 3400 2400 50  0001 C CNN
	1    3400 2400
	1    0    0    -1  
$EndComp
Text Notes 3600 1750 0    60   ~ 0
similar to CMIO schematics, see https://www.raspberrypi.org/app/uploads/2014/04/RPI-CMIO-V1_2-SCHEMATIC.pdf
$EndSCHEMATC
