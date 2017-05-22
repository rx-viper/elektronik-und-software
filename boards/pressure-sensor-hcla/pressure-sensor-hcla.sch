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
LIBS:pressure-sensor-hcla
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
L HCLA-XXXX-DIP-X U1
U 1 1 592323F8
P 2550 1400
F 0 "U1" H 2550 1650 60  0000 C CNN
F 1 "HCLA-XXXX-DIP-X" H 2550 1150 60  0000 C CNN
F 2 "pressure-sensor-hcla:HCLA-DIP" H 2550 1400 60  0001 C CNN
F 3 "" H 2550 1400 60  0001 C CNN
	1    2550 1400
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 592324A4
P 1800 1050
F 0 "C1" H 1825 1150 50  0000 L CNN
F 1 "100nF" H 1825 950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1838 900 50  0001 C CNN
F 3 "" H 1800 1050 50  0001 C CNN
	1    1800 1050
	0    1    1    0   
$EndComp
$Comp
L CONN_01X04 J1
U 1 1 592325E7
P 1000 1200
F 0 "J1" H 1000 1450 50  0000 C CNN
F 1 "CONN_01X04" V 1100 1200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 1000 1200 50  0001 C CNN
F 3 "" H 1000 1200 50  0001 C CNN
	1    1000 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 1150 2100 1150
Wire Wire Line
	2100 1150 2100 900 
Wire Wire Line
	2100 900  2500 900 
Wire Wire Line
	2500 900  2500 950 
Wire Wire Line
	1950 1050 2100 1050
Connection ~ 2100 1050
Wire Wire Line
	1200 1050 1650 1050
Wire Wire Line
	1400 1050 1400 800 
Wire Wire Line
	1400 800  2600 800 
Wire Wire Line
	2600 800  2600 950 
Connection ~ 1400 1050
Wire Wire Line
	1200 1250 2100 1250
Wire Wire Line
	2100 1250 2100 1950
Wire Wire Line
	2100 1950 2400 1950
Wire Wire Line
	2400 1950 2400 1850
Wire Wire Line
	1200 1350 2000 1350
Wire Wire Line
	2000 1350 2000 2050
Wire Wire Line
	2000 2050 2700 2050
Wire Wire Line
	2700 2050 2700 1850
Text Label 1200 1050 0    60   ~ 0
GND
Text Label 1200 1150 0    60   ~ 0
VCC
Text Label 1200 1250 0    60   ~ 0
SCL
Text Label 1200 1350 0    60   ~ 0
SDA
$EndSCHEMATC
