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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "camera light"
Date "2017-04-13"
Rev "01"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D1
U 1 1 58EF6E5C
P 5200 2500
F 0 "D1" H 5200 2600 50  0000 C CNN
F 1 "LED" H 5200 2400 50  0000 C CNN
F 2 "" H 5200 2500 50  0000 C CNN
F 3 "" H 5200 2500 50  0000 C CNN
	1    5200 2500
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 58EF6EAE
P 5200 2800
F 0 "D2" H 5200 2900 50  0000 C CNN
F 1 "LED" H 5200 2700 50  0000 C CNN
F 2 "" H 5200 2800 50  0000 C CNN
F 3 "" H 5200 2800 50  0000 C CNN
	1    5200 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 58EF6EEE
P 5750 2650
F 0 "P2" H 5750 2800 50  0000 C CNN
F 1 "CONN_01X02" V 5850 2650 50  0000 C CNN
F 2 "" H 5750 2650 50  0000 C CNN
F 3 "" H 5750 2650 50  0000 C CNN
	1    5750 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 58EF6F9C
P 4650 2650
F 0 "P1" H 4650 2800 50  0000 C CNN
F 1 "CONN_01X02" V 4750 2650 50  0000 C CNN
F 2 "" H 4650 2650 50  0000 C CNN
F 3 "" H 4650 2650 50  0000 C CNN
	1    4650 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 2600 4850 2500
Wire Wire Line
	4850 2500 5050 2500
Wire Wire Line
	4850 2700 4850 2800
Wire Wire Line
	4850 2800 5050 2800
Wire Wire Line
	5350 2800 5550 2800
Wire Wire Line
	5550 2800 5550 2700
Wire Wire Line
	5350 2500 5550 2500
Wire Wire Line
	5550 2500 5550 2600
Text Label 4700 2400 0    60   ~ 0
GND
Text Label 5550 2400 0    60   ~ 0
VCC
$EndSCHEMATC
