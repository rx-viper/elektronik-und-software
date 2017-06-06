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
LIBS:powerboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 10
Title "Powerboard: ADC"
Date "2017-04-15"
Rev "10"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AD7928 U901
U 1 1 58F7607A
P 5800 3700
F 0 "U901" H 5800 4400 60  0000 C CNN
F 1 "AD7928" H 5800 3100 60  0000 C CNN
F 2 "" H 6750 3400 60  0001 C CNN
F 3 "" H 6750 3400 60  0001 C CNN
	1    5800 3700
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR802
U 1 1 58F77703
P 5200 3050
F 0 "#PWR802" H 5200 2900 50  0001 C CNN
F 1 "+3V3" H 5200 3190 50  0000 C CNN
F 2 "" H 5200 3050 50  0001 C CNN
F 3 "" H 5200 3050 50  0001 C CNN
	1    5200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3050 5200 3250
Wire Wire Line
	5000 3150 5300 3150
Wire Wire Line
	5200 3250 5300 3250
Connection ~ 5200 3150
$Comp
L +3V3 #PWR803
U 1 1 58F77724
P 6450 3050
F 0 "#PWR803" H 6450 2900 50  0001 C CNN
F 1 "+3V3" H 6450 3190 50  0000 C CNN
F 2 "" H 6450 3050 50  0001 C CNN
F 3 "" H 6450 3050 50  0001 C CNN
	1    6450 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3050 6450 3150
Wire Wire Line
	6450 3150 6350 3150
$Comp
L GND #PWR804
U 1 1 58F77776
P 6450 4250
F 0 "#PWR804" H 6450 4000 50  0001 C CNN
F 1 "GND" H 6450 4100 50  0000 C CNN
F 2 "" H 6450 4250 50  0001 C CNN
F 3 "" H 6450 4250 50  0001 C CNN
	1    6450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3850 6450 4250
Wire Wire Line
	6450 4150 6350 4150
Wire Wire Line
	6350 4050 6450 4050
Connection ~ 6450 4150
Wire Wire Line
	6450 3950 6350 3950
Connection ~ 6450 4050
Wire Wire Line
	6450 3850 6350 3850
Connection ~ 6450 3950
Text HLabel 7200 3250 2    60   Input ~ 0
SCK
Text HLabel 7200 3350 2    60   Input ~ 0
MOSI
Text HLabel 7200 3450 2    60   Output ~ 0
MISO
Text HLabel 7200 3550 2    60   Input ~ 0
CS
Wire Wire Line
	7200 3250 6350 3250
Wire Wire Line
	6350 3350 7200 3350
Wire Wire Line
	6350 3450 7200 3450
Wire Wire Line
	7200 3550 6350 3550
Text HLabel 4600 3450 0    60   Input ~ 0
IN7
Text HLabel 4600 3550 0    60   Input ~ 0
IN6
Text HLabel 4600 3650 0    60   Input ~ 0
IN5
Text HLabel 4600 3750 0    60   Input ~ 0
IN4
Text HLabel 4600 3850 0    60   Input ~ 0
IN3
Text HLabel 4600 3950 0    60   Input ~ 0
IN2
Text HLabel 4600 4050 0    60   Input ~ 0
IN1
Text HLabel 4600 4150 0    60   Input ~ 0
IN0
Wire Wire Line
	4600 3450 5300 3450
Wire Wire Line
	5300 3550 4600 3550
Wire Wire Line
	4600 3650 5300 3650
Wire Wire Line
	5300 3750 4600 3750
Wire Wire Line
	4600 3850 5300 3850
Wire Wire Line
	5300 3950 4600 3950
Wire Wire Line
	4600 4050 5300 4050
Wire Wire Line
	5300 4150 4600 4150
$Comp
L REF3025 U902
U 1 1 58F77F4A
P 8550 3750
F 0 "U902" H 8550 4000 50  0000 C CNN
F 1 "REF3025" H 8650 3500 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8550 3300 50  0001 C CNN
F 3 "" H 8650 3400 50  0000 C CNN
	1    8550 3750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8250 3750 6350 3750
$Comp
L GND #PWR807
U 1 1 58F780D6
P 8650 4250
F 0 "#PWR807" H 8650 4000 50  0001 C CNN
F 1 "GND" H 8650 4100 50  0000 C CNN
F 2 "" H 8650 4250 50  0001 C CNN
F 3 "" H 8650 4250 50  0001 C CNN
	1    8650 4250
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR806
U 1 1 58F780E9
P 8650 3250
F 0 "#PWR806" H 8650 3100 50  0001 C CNN
F 1 "+3V3" H 8650 3390 50  0000 C CNN
F 2 "" H 8650 3250 50  0001 C CNN
F 3 "" H 8650 3250 50  0001 C CNN
	1    8650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3250 8650 3450
$Comp
L C C902
U 1 1 58F78119
P 9000 3750
F 0 "C902" H 9025 3850 50  0000 L CNN
F 1 "100n" H 9025 3650 50  0000 L CNN
F 2 "" H 9038 3600 50  0001 C CNN
F 3 "" H 9000 3750 50  0001 C CNN
	1    9000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3350 9000 3350
Wire Wire Line
	9000 3350 9000 3600
Connection ~ 8650 3350
Wire Wire Line
	8650 4250 8650 4050
Wire Wire Line
	8650 4150 9000 4150
Wire Wire Line
	9000 4150 9000 3900
Connection ~ 8650 4150
$Comp
L C C901
U 1 1 58F78267
P 4850 3150
F 0 "C901" H 4875 3250 50  0000 L CNN
F 1 "100n" H 4875 3050 50  0000 L CNN
F 2 "" H 4888 3000 50  0001 C CNN
F 3 "" H 4850 3150 50  0001 C CNN
	1    4850 3150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR801
U 1 1 58F784AA
P 4600 3150
F 0 "#PWR801" H 4600 2900 50  0001 C CNN
F 1 "GND" H 4600 3000 50  0000 C CNN
F 2 "" H 4600 3150 50  0001 C CNN
F 3 "" H 4600 3150 50  0001 C CNN
	1    4600 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 3150 4700 3150
$Comp
L +2V5 #PWR805
U 1 1 58F831C8
P 8050 3650
F 0 "#PWR805" H 8050 3500 50  0001 C CNN
F 1 "+2V5" H 8050 3790 50  0000 C CNN
F 2 "" H 8050 3650 50  0001 C CNN
F 3 "" H 8050 3650 50  0001 C CNN
	1    8050 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3650 8050 3750
Connection ~ 8050 3750
$EndSCHEMATC
