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
LIBS:rchojetzki-pressure-sensor-board
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
L AMS_5915-0010-D PS1
U 1 1 590860EB
P 2500 1350
F 0 "PS1" H 2500 1950 60  0000 C CNN
F 1 "AMS_5915-0010-D" H 2500 1350 60  0000 C CNN
F 2 "rchojetzki-pressure-sensor-board:AMS_5915-XXXX-D_differential_pressure_sensor" H 2500 1350 60  0001 C CNN
F 3 "" H 2500 1350 60  0001 C CNN
	1    2500 1350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04_MALE J1
U 1 1 59086217
P 850 1200
F 0 "J1" H 850 1575 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 850 800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 850 1500 50  0001 C CNN
F 3 "" H 850 1500 50  0001 C CNN
	1    850  1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1300 1550 1300
Wire Wire Line
	1150 1500 1650 1500
Text Label 1150 1100 0    60   ~ 0
GND
Text Label 1150 900  0    60   ~ 0
VCC
Text Label 1150 1300 0    60   ~ 0
SDA
Text Label 1150 1500 0    60   ~ 0
SCL
Wire Wire Line
	2050 900  1450 900 
Wire Wire Line
	1450 900  1450 1100
Wire Wire Line
	1450 1100 1150 1100
Wire Wire Line
	2050 1000 1350 1000
Wire Wire Line
	1350 1000 1350 900 
Wire Wire Line
	1350 900  1150 900 
Wire Wire Line
	1550 1300 1550 1100
Wire Wire Line
	1550 1100 2050 1100
Wire Wire Line
	2050 1200 1650 1200
Wire Wire Line
	1650 1200 1650 1500
$EndSCHEMATC
