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
LIBS:camera-light-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Camera light 2"
Date "2017-08-23"
Rev "2"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D1
U 1 1 58EF6E5C
P 5050 2650
F 0 "D1" H 5050 2750 50  0000 C CNN
F 1 "LED" H 5050 2550 50  0000 C CNN
F 2 "LW_G6SP:LW_G6SP_Handsoldering" H 5050 2450 50  0000 C CNN
F 3 "" H 5050 2650 50  0000 C CNN
	1    5050 2650
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 58EF6F9C
P 4650 2650
F 0 "P1" H 4650 2800 50  0000 C CNN
F 1 "CONN_01X02" V 4750 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4500 3150 50  0000 C CNN
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
$EndSCHEMATC
