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
LIBS:powerboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title "Powerboard motor controller"
Date "2017-03-14"
Rev "01"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4050 2750 0    60   Input ~ 0
V_IN
Text HLabel 5450 3700 0    60   Input ~ 0
Direction
Text HLabel 5450 3900 0    60   Input ~ 0
Pwm
Text HLabel 4050 3050 0    60   Input ~ 0
GND
Text HLabel 7350 4000 2    60   Input ~ 0
Motor+
Text HLabel 7350 4100 2    60   Input ~ 0
Motor-
Text HLabel 5200 4200 0    60   Input ~ 0
Current_measure
$Comp
L DRV8816 U?
U 1 1 5889C518
P 6550 3850
AR Path="/5888DA23/5889C518" Ref="U?"  Part="1" 
AR Path="/588899D1/5889C518" Ref="U?"  Part="1" 
F 0 "U?" H 6550 4000 60  0000 C CNN
F 1 "DRV8816" H 6550 4350 60  0000 C CNN
F 2 "" H 6550 3800 60  0001 C CNN
F 3 "" H 6550 3800 60  0001 C CNN
	1    6550 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5889C567
P 4150 3150
AR Path="/5888DA23/5889C567" Ref="#PWR?"  Part="1" 
AR Path="/588899D1/5889C567" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4150 2900 50  0001 C CNN
F 1 "GND" H 4150 3000 50  0000 C CNN
F 2 "" H 4150 3150 50  0000 C CNN
F 3 "" H 4150 3150 50  0000 C CNN
	1    4150 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5889C69B
P 6550 4700
AR Path="/5888DA23/5889C69B" Ref="#PWR?"  Part="1" 
AR Path="/588899D1/5889C69B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6550 4450 50  0001 C CNN
F 1 "GND" H 6550 4550 50  0000 C CNN
F 2 "" H 6550 4700 50  0000 C CNN
F 3 "" H 6550 4700 50  0000 C CNN
	1    6550 4700
	1    0    0    -1  
$EndComp
Text HLabel 5450 3600 0    60   Input ~ 0
Enable
Wire Wire Line
	7350 4000 7250 4000
Wire Wire Line
	7250 4100 7350 4100
Wire Wire Line
	5750 4200 5850 4200
Wire Wire Line
	4050 3050 4950 3050
Wire Wire Line
	4150 3050 4150 3150
Wire Wire Line
	4050 2750 4950 2750
Wire Wire Line
	7250 3900 7750 3900
Wire Wire Line
	6550 4500 6550 4700
Wire Wire Line
	6450 4600 6650 4600
Wire Wire Line
	6450 4600 6450 4500
Connection ~ 6550 4600
Wire Wire Line
	6650 4600 6650 4500
Wire Wire Line
	5450 3600 5850 3600
Wire Wire Line
	5750 3600 5750 3800
Wire Wire Line
	5750 3800 5850 3800
Connection ~ 5750 3600
Wire Wire Line
	5450 3700 5850 3700
Wire Wire Line
	5450 3900 5850 3900
$Comp
L R R?
U 1 1 5889C751
P 5750 3300
AR Path="/5888DA23/5889C751" Ref="R?"  Part="1" 
AR Path="/588899D1/5889C751" Ref="R?"  Part="1" 
F 0 "R?" V 5830 3300 50  0000 C CNN
F 1 "10k" V 5750 3300 50  0000 C CNN
F 2 "" V 5680 3300 50  0000 C CNN
F 3 "" H 5750 3300 50  0000 C CNN
	1    5750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3050 5750 3150
Wire Wire Line
	5750 3450 5750 3500
Wire Wire Line
	5750 3500 5850 3500
$Comp
L GND #PWR?
U 1 1 5889C7C0
P 7350 4700
AR Path="/5888DA23/5889C7C0" Ref="#PWR?"  Part="1" 
AR Path="/588899D1/5889C7C0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 4450 50  0001 C CNN
F 1 "GND" H 7350 4550 50  0000 C CNN
F 2 "" H 7350 4700 50  0000 C CNN
F 3 "" H 7350 4700 50  0000 C CNN
	1    7350 4700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5889C7E1
P 7350 4450
AR Path="/5888DA23/5889C7E1" Ref="R?"  Part="1" 
AR Path="/588899D1/5889C7E1" Ref="R?"  Part="1" 
F 0 "R?" V 7430 4450 50  0000 C CNN
F 1 "0R1" V 7350 4450 50  0000 C CNN
F 2 "" V 7280 4450 50  0000 C CNN
F 3 "" H 7350 4450 50  0000 C CNN
	1    7350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4200 7350 4200
Wire Wire Line
	7350 4200 7350 4300
Wire Wire Line
	7350 4700 7350 4600
$Comp
L C C?
U 1 1 5889C868
P 7500 3600
AR Path="/5888DA23/5889C868" Ref="C?"  Part="1" 
AR Path="/588899D1/5889C868" Ref="C?"  Part="1" 
F 0 "C?" H 7525 3700 50  0000 L CNN
F 1 "100n" H 7525 3500 50  0000 L CNN
F 2 "" H 7538 3450 50  0000 C CNN
F 3 "" H 7500 3600 50  0000 C CNN
	1    7500 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 3600 7350 3600
Wire Wire Line
	7650 3600 7650 3700
Wire Wire Line
	7650 3700 7250 3700
$Comp
L C C?
U 1 1 5889C930
P 7350 3250
AR Path="/5888DA23/5889C930" Ref="C?"  Part="1" 
AR Path="/588899D1/5889C930" Ref="C?"  Part="1" 
F 0 "C?" H 7375 3350 50  0000 L CNN
F 1 "100n" H 7375 3150 50  0000 L CNN
F 2 "" H 7388 3100 50  0000 C CNN
F 3 "" H 7350 3250 50  0000 C CNN
	1    7350 3250
	-1   0    0    1   
$EndComp
$Comp
L CP C?
U 1 1 5889C95E
P 4950 2900
AR Path="/5888DA23/5889C95E" Ref="C?"  Part="1" 
AR Path="/588899D1/5889C95E" Ref="C?"  Part="1" 
F 0 "C?" H 4975 3000 50  0000 L CNN
F 1 "10µ" H 4975 2800 50  0000 L CNN
F 2 "" H 4988 2750 50  0000 C CNN
F 3 "" H 4950 2900 50  0000 C CNN
	1    4950 2900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5889CB17
P 4400 2900
AR Path="/5888DA23/5889CB17" Ref="C?"  Part="1" 
AR Path="/588899D1/5889CB17" Ref="C?"  Part="1" 
F 0 "C?" H 4425 3000 50  0000 L CNN
F 1 "100n" H 4425 2800 50  0000 L CNN
F 2 "" H 4438 2750 50  0000 C CNN
F 3 "" H 4400 2900 50  0000 C CNN
	1    4400 2900
	1    0    0    -1  
$EndComp
Connection ~ 4150 2750
Connection ~ 4400 2750
Connection ~ 4150 3050
Connection ~ 4400 3050
$Comp
L C C?
U 1 1 5889CF1C
P 4650 2900
AR Path="/5888DA23/5889CF1C" Ref="C?"  Part="1" 
AR Path="/588899D1/5889CF1C" Ref="C?"  Part="1" 
F 0 "C?" H 4675 3000 50  0000 L CNN
F 1 "100n" H 4675 2800 50  0000 L CNN
F 2 "" H 4688 2750 50  0000 C CNN
F 3 "" H 4650 2900 50  0000 C CNN
	1    4650 2900
	1    0    0    -1  
$EndComp
Connection ~ 4650 3050
Connection ~ 4650 2750
Wire Wire Line
	7250 3500 7350 3500
Wire Wire Line
	7350 3500 7350 3400
Wire Wire Line
	7350 2850 7350 3100
$Comp
L R R?
U 1 1 5889D770
P 5600 4200
AR Path="/5888DA23/5889D770" Ref="R?"  Part="1" 
AR Path="/588899D1/5889D770" Ref="R?"  Part="1" 
F 0 "R?" V 5680 4200 50  0000 C CNN
F 1 "1k" V 5600 4200 50  0000 C CNN
F 2 "" V 5530 4200 50  0000 C CNN
F 3 "" H 5600 4200 50  0000 C CNN
	1    5600 4200
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 5889D79F
P 5350 4450
AR Path="/5888DA23/5889D79F" Ref="C?"  Part="1" 
AR Path="/588899D1/5889D79F" Ref="C?"  Part="1" 
F 0 "C?" H 5375 4550 50  0000 L CNN
F 1 "100n" H 5375 4350 50  0000 L CNN
F 2 "" H 5388 4300 50  0000 C CNN
F 3 "" H 5350 4450 50  0000 C CNN
	1    5350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4200 5450 4200
Wire Wire Line
	5350 4300 5350 4200
Connection ~ 5350 4200
$Comp
L GND #PWR?
U 1 1 5889D884
P 5350 4700
AR Path="/5888DA23/5889D884" Ref="#PWR?"  Part="1" 
AR Path="/588899D1/5889D884" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 4450 50  0001 C CNN
F 1 "GND" H 5350 4550 50  0000 C CNN
F 2 "" H 5350 4700 50  0000 C CNN
F 3 "" H 5350 4700 50  0000 C CNN
	1    5350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4700 5350 4600
$Comp
L +5V #PWR?
U 1 1 5889EE93
P 5750 3050
AR Path="/5888DA23/5889EE93" Ref="#PWR?"  Part="1" 
AR Path="/588899D1/5889EE93" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5750 2900 50  0001 C CNN
F 1 "+5V" H 5750 3190 50  0000 C CNN
F 2 "" H 5750 3050 50  0000 C CNN
F 3 "" H 5750 3050 50  0000 C CNN
	1    5750 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2750 4150 2650
Wire Wire Line
	4150 2650 4850 2650
Text Label 4850 2650 2    59   ~ 0
28V
Text Label 7750 3900 2    59   ~ 0
28V
Text Label 7350 2850 3    59   ~ 0
28V
NoConn ~ 5850 4100
$EndSCHEMATC
