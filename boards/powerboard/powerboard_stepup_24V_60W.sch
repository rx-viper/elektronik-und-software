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
LIBS:TI-LMZ1xxxx
LIBS:DRV8816
LIBS:ACS711
LIBS:powerboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1850 1850 0    60   Input ~ 0
BAT_10V_IN
Text HLabel 1850 2050 0    60   Input ~ 0
GND
$Comp
L GND #PWR019
U 1 1 58870495
P 1950 2150
AR Path="/5886F238/58870495" Ref="#PWR019"  Part="1" 
AR Path="/5886F2AA/58870495" Ref="#PWR021"  Part="1" 
AR Path="/5886F5A0/58870495" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 1950 1900 50  0001 C CNN
F 1 "GND" H 1950 2000 50  0000 C CNN
F 2 "" H 1950 2150 50  0000 C CNN
F 3 "" H 1950 2150 50  0000 C CNN
	1    1950 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2050 1950 2050
Wire Wire Line
	1950 2050 1950 2150
Text HLabel 6700 1950 2    60   Input ~ 0
24W_60W_OUT
$Comp
L R R?
U 1 1 588704AE
P 4200 1900
AR Path="/5886F238/588704AE" Ref="R?"  Part="1" 
AR Path="/5886F2AA/588704AE" Ref="R?"  Part="1" 
AR Path="/5886F5A0/588704AE" Ref="R?"  Part="1" 
F 0 "R?" V 4280 1900 50  0000 C CNN
F 1 "R" V 4200 1900 50  0000 C CNN
F 2 "" V 4130 1900 50  0000 C CNN
F 3 "" H 4200 1900 50  0000 C CNN
	1    4200 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 1950 4500 1950
Wire Wire Line
	4500 1950 4500 1900
Wire Wire Line
	4500 1900 4350 1900
Wire Wire Line
	4050 1900 2800 1900
Wire Wire Line
	2800 1900 2800 1850
Wire Wire Line
	2800 1850 1850 1850
Text HLabel 1850 2850 0    60   Input ~ 0
EN_PWM_IN
$Comp
L R R?
U 1 1 58878248
P 1950 3100
AR Path="/5886F238/58878248" Ref="R?"  Part="1" 
AR Path="/5886F2AA/58878248" Ref="R?"  Part="1" 
AR Path="/5886F5A0/58878248" Ref="R?"  Part="1" 
F 0 "R?" V 2030 3100 50  0000 C CNN
F 1 "10k" V 1950 3100 50  0000 C CNN
F 2 "" V 1880 3100 50  0000 C CNN
F 3 "" H 1950 3100 50  0000 C CNN
	1    1950 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 58878312
P 1950 3350
AR Path="/5886F238/58878312" Ref="#PWR020"  Part="1" 
AR Path="/5886F2AA/58878312" Ref="#PWR022"  Part="1" 
AR Path="/5886F5A0/58878312" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 1950 3100 50  0001 C CNN
F 1 "GND" H 1950 3200 50  0000 C CNN
F 2 "" H 1950 3350 50  0000 C CNN
F 3 "" H 1950 3350 50  0000 C CNN
	1    1950 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3350 1950 3250
Wire Wire Line
	1950 2950 1950 2850
Wire Wire Line
	1950 2850 1850 2850
$EndSCHEMATC
