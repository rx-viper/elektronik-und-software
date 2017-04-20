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
LIBS:powerboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 11
Title "Powerboard: RXSM Event Lines"
Date "2017-04-14"
Rev "1"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PC3H7 U601
U 1 1 5906A149
P 6050 3500
F 0 "U601" H 5850 3700 50  0000 L CNN
F 1 "PC3H7" H 6050 3700 50  0000 L CNN
F 2 "SOP-4" H 5850 3300 50  0000 L CIN
F 3 "" H 6075 3500 50  0000 L CNN
	1    6050 3500
	-1   0    0    -1  
$EndComp
$Comp
L PC3H7 U602
U 1 1 5906A150
P 6050 3950
F 0 "U602" H 5850 4150 50  0000 L CNN
F 1 "PC3H7" H 6050 4150 50  0000 L CNN
F 2 "SOP-4" H 5850 3750 50  0000 L CIN
F 3 "" H 6075 3950 50  0000 L CNN
	1    6050 3950
	-1   0    0    -1  
$EndComp
$Comp
L PC3H7 U603
U 1 1 5906A157
P 6050 4400
F 0 "U603" H 5850 4600 50  0000 L CNN
F 1 "PC3H7" H 6050 4600 50  0000 L CNN
F 2 "SOP-4" H 5850 4200 50  0000 L CIN
F 3 "" H 6075 4400 50  0000 L CNN
	1    6050 4400
	-1   0    0    -1  
$EndComp
$Comp
L R R605
U 1 1 5906A15E
P 6600 3200
F 0 "R605" V 6680 3200 50  0000 C CNN
F 1 "3k" V 6600 3200 50  0000 C CNN
F 2 "" V 6530 3200 50  0000 C CNN
F 3 "" H 6600 3200 50  0000 C CNN
	1    6600 3200
	1    0    0    -1  
$EndComp
$Comp
L R R604
U 1 1 5906A165
P 6400 3200
F 0 "R604" V 6480 3200 50  0000 C CNN
F 1 "3k" V 6400 3200 50  0000 C CNN
F 2 "" V 6330 3200 50  0000 C CNN
F 3 "" H 6400 3200 50  0000 C CNN
	1    6400 3200
	1    0    0    -1  
$EndComp
$Comp
L R R606
U 1 1 5906A16C
P 6800 3200
F 0 "R606" V 6880 3200 50  0000 C CNN
F 1 "3k" V 6800 3200 50  0000 C CNN
F 2 "" V 6730 3200 50  0000 C CNN
F 3 "" H 6800 3200 50  0000 C CNN
	1    6800 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR604
U 1 1 5906A173
P 5600 4500
F 0 "#PWR604" H 5600 4250 50  0001 C CNN
F 1 "GND" H 5600 4350 50  0000 C CNN
F 2 "" H 5600 4500 50  0000 C CNN
F 3 "" H 5600 4500 50  0000 C CNN
	1    5600 4500
	1    0    0    -1  
$EndComp
$Comp
L R R601
U 1 1 5906A179
P 5300 3250
F 0 "R601" V 5380 3250 50  0000 C CNN
F 1 "1k" V 5300 3250 50  0000 C CNN
F 2 "" V 5230 3250 50  0000 C CNN
F 3 "" H 5300 3250 50  0000 C CNN
	1    5300 3250
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR601
U 1 1 5906A180
P 5050 3250
F 0 "#PWR601" H 5050 3100 50  0001 C CNN
F 1 "+3V3" H 5050 3390 50  0000 C CNN
F 2 "" H 5050 3250 50  0000 C CNN
F 3 "" H 5050 3250 50  0000 C CNN
	1    5050 3250
	0    -1   -1   0   
$EndComp
$Comp
L +3V3 #PWR602
U 1 1 5906A186
P 5050 3700
F 0 "#PWR602" H 5050 3550 50  0001 C CNN
F 1 "+3V3" H 5050 3840 50  0000 C CNN
F 2 "" H 5050 3700 50  0000 C CNN
F 3 "" H 5050 3700 50  0000 C CNN
	1    5050 3700
	0    -1   -1   0   
$EndComp
$Comp
L R R602
U 1 1 5906A18C
P 5300 3700
F 0 "R602" V 5380 3700 50  0000 C CNN
F 1 "1k" V 5300 3700 50  0000 C CNN
F 2 "" V 5230 3700 50  0000 C CNN
F 3 "" H 5300 3700 50  0000 C CNN
	1    5300 3700
	0    1    1    0   
$EndComp
$Comp
L R R603
U 1 1 5906A193
P 5300 4150
F 0 "R603" V 5380 4150 50  0000 C CNN
F 1 "1k" V 5300 4150 50  0000 C CNN
F 2 "" V 5230 4150 50  0000 C CNN
F 3 "" H 5300 4150 50  0000 C CNN
	1    5300 4150
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR603
U 1 1 5906A19A
P 5050 4150
F 0 "#PWR603" H 5050 4000 50  0001 C CNN
F 1 "+3V3" H 5050 4290 50  0000 C CNN
F 2 "" H 5050 4150 50  0000 C CNN
F 3 "" H 5050 4150 50  0000 C CNN
	1    5050 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 4500 5750 4500
Wire Wire Line
	5600 3600 5600 4500
Wire Wire Line
	5600 4050 5750 4050
Wire Wire Line
	5600 3600 5750 3600
Connection ~ 5600 4050
Connection ~ 5600 4500
Wire Wire Line
	5050 4150 5150 4150
Wire Wire Line
	5450 4150 5450 4300
Connection ~ 5450 4300
Wire Wire Line
	5450 3700 5450 3850
Connection ~ 5450 3850
Wire Wire Line
	5050 3700 5150 3700
Wire Wire Line
	6350 4300 6400 4300
Wire Wire Line
	6400 4300 6400 3350
Wire Wire Line
	6600 3350 6600 3850
Wire Wire Line
	6600 3850 6350 3850
Wire Wire Line
	6800 3350 6800 3400
Wire Wire Line
	6800 3400 6350 3400
Wire Wire Line
	6350 4050 7000 4050
Wire Wire Line
	6350 3600 7000 3600
Wire Wire Line
	6350 4500 7000 4500
Wire Wire Line
	6400 3050 6400 3000
Wire Wire Line
	6400 3000 6800 3000
Wire Wire Line
	6600 2700 6600 3050
Wire Wire Line
	6800 3000 6800 3050
Connection ~ 6600 3000
Wire Wire Line
	4600 3850 5750 3850
Wire Wire Line
	4600 4300 5750 4300
Wire Wire Line
	5050 3250 5150 3250
Wire Wire Line
	5450 3250 5450 3400
Wire Wire Line
	4600 3400 5750 3400
Connection ~ 5450 3400
Text HLabel 4600 3400 0    60   Output ~ 0
LO
Text HLabel 4600 3850 0    60   Output ~ 0
SOE
Text HLabel 4600 4300 0    60   Output ~ 0
SODS
Text HLabel 7000 2700 2    60   Input ~ 0
RXSM_28V
Wire Wire Line
	7000 2700 6600 2700
Text HLabel 7000 3600 2    60   Input ~ 0
RXSM_LO
Text HLabel 7000 4050 2    60   Input ~ 0
RXSM_SOE
Text HLabel 7000 4500 2    60   Input ~ 0
RXSM_SODS
$EndSCHEMATC
