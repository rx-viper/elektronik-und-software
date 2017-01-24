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
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4700 3000 2300 1950
U 5889F4B8
F0 "Mainboard microcontroller" 60
F1 "mainboard_microcontroller.sch" 60
$EndSheet
$Comp
L CONN_01X02 P?
U 1 1 5889F4C3
P 1150 1200
F 0 "P?" H 1150 1350 50  0000 C CNN
F 1 "POWER 5V" V 1250 1200 50  0000 C CNN
F 2 "" H 1150 1200 50  0000 C CNN
F 3 "" H 1150 1200 50  0000 C CNN
	1    1150 1200
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 5889F577
P 1450 1350
F 0 "#PWR?" H 1450 1100 50  0001 C CNN
F 1 "GND" H 1450 1200 50  0000 C CNN
F 2 "" H 1450 1350 50  0000 C CNN
F 3 "" H 1450 1350 50  0000 C CNN
	1    1450 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1350 1450 1250
Wire Wire Line
	1450 1250 1350 1250
$Comp
L +5V #PWR?
U 1 1 5889F590
P 1450 1050
F 0 "#PWR?" H 1450 900 50  0001 C CNN
F 1 "+5V" H 1450 1190 50  0000 C CNN
F 2 "" H 1450 1050 50  0000 C CNN
F 3 "" H 1450 1050 50  0000 C CNN
	1    1450 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1050 1450 1150
Wire Wire Line
	1450 1150 1350 1150
$EndSCHEMATC
