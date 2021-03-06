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
LIBS:stm32
LIBS:xo53
LIBS:sst26vf064b
LIBS:pc3h7
LIBS:maxim
LIBS:common_mode_choke
LIBS:esd_diode_dual
LIBS:max6126
LIBS:mainboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "Mainboard force sensor"
Date "2017-03-17"
Rev "01"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ADS1234IPW IC?
U 1 1 58CC0DBF
P 6150 4050
F 0 "IC?" H 5700 5050 50  0000 C CNN
F 1 "ADS1234IPW" H 6450 5150 50  0000 L CNN
F 2 "" H 6150 4050 50  0000 C CIN
F 3 "" H 6150 4050 50  0000 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 58CC0EA0
P 3600 3700
F 0 "P?" H 3600 3950 50  0000 C CNN
F 1 "Force sensor 1" V 3700 3700 50  0000 C CNN
F 2 "" H 3600 3700 50  0000 C CNN
F 3 "" H 3600 3700 50  0000 C CNN
	1    3600 3700
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 58CC0EE3
P 3600 4300
F 0 "P?" H 3600 4550 50  0000 C CNN
F 1 "Force sensor 2" V 3700 4300 50  0000 C CNN
F 2 "" H 3600 4300 50  0000 C CNN
F 3 "" H 3600 4300 50  0000 C CNN
	1    3600 4300
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 P?
U 1 1 58CC0F10
P 3600 4900
F 0 "P?" H 3600 5150 50  0000 C CNN
F 1 "Force sensor 3" V 3700 4900 50  0000 C CNN
F 2 "" H 3600 4900 50  0000 C CNN
F 3 "" H 3600 4900 50  0000 C CNN
	1    3600 4900
	-1   0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58CC1078
P 5200 3350
F 0 "C?" V 5150 3400 50  0000 L CNN
F 1 "100n" V 5150 3100 50  0000 L CNN
F 2 "" H 5238 3200 50  0000 C CNN
F 3 "" H 5200 3350 50  0000 C CNN
	1    5200 3350
	0    1    1    0   
$EndComp
$Comp
L MAX6126 U?
U 1 1 58CC10C9
P 4450 2050
F 0 "U?" H 4250 1800 39  0000 C CNN
F 1 "MAX6126" H 4700 1700 39  0000 C CNN
F 2 "" H 4050 1700 20  0000 C CNN
F 3 "" H 4050 1700 20  0000 C CNN
	1    4450 2050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58CC1B40
P 4000 2300
F 0 "C?" H 4025 2400 50  0000 L CNN
F 1 "100n" H 4025 2200 50  0000 L CNN
F 2 "" H 4038 2150 50  0000 C CNN
F 3 "" H 4000 2300 50  0000 C CNN
	1    4000 2300
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58CC1B7F
P 3700 2100
F 0 "C?" H 3725 2200 50  0000 L CNN
F 1 "100n" H 3725 2000 50  0000 L CNN
F 2 "" H 3738 1950 50  0000 C CNN
F 3 "" H 3700 2100 50  0000 C CNN
	1    3700 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58CC1BED
P 4400 2650
F 0 "#PWR?" H 4400 2400 50  0001 C CNN
F 1 "GND" H 4400 2500 50  0000 C CNN
F 2 "" H 4400 2650 50  0000 C CNN
F 3 "" H 4400 2650 50  0000 C CNN
	1    4400 2650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 58CC1C25
P 2400 1750
F 0 "#PWR?" H 2400 1600 50  0001 C CNN
F 1 "+5V" H 2400 1890 50  0000 C CNN
F 2 "" H 2400 1750 50  0000 C CNN
F 3 "" H 2400 1750 50  0000 C CNN
	1    2400 1750
	0    -1   -1   0   
$EndComp
Text Notes 4050 1700 0    60   ~ 0
5V - 4.096V = 1V drop-out\n-> MAX6126 4.096V
$Comp
L INDUCTOR_SMALL L?
U 1 1 58CC1FD1
P 2850 1750
F 0 "L?" H 2850 1850 50  0000 C CNN
F 1 "100µH 0.1A" H 2850 1700 50  0000 C CNN
F 2 "" H 2850 1750 50  0000 C CNN
F 3 "" H 2850 1750 50  0000 C CNN
	1    2850 1750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58CC2021
P 2500 2100
F 0 "C?" H 2525 2200 50  0000 L CNN
F 1 "1µ" H 2525 2000 50  0000 L CNN
F 2 "" H 2538 1950 50  0000 C CNN
F 3 "" H 2500 2100 50  0000 C CNN
	1    2500 2100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 58CC20E5
P 3200 2100
F 0 "C?" H 3225 2200 50  0000 L CNN
F 1 "4µ7" H 3225 2000 50  0000 L CNN
F 2 "" H 3238 1950 50  0000 C CNN
F 3 "" H 3200 2100 50  0000 C CNN
	1    3200 2100
	1    0    0    -1  
$EndComp
Text Notes 2500 1600 0    60   ~ 0
PI filter\nf_g = <10kHz (?)
$Comp
L C C?
U 1 1 58CC29E4
P 4850 2200
F 0 "C?" H 4875 2300 50  0000 L CNN
F 1 "100n" H 4875 2100 50  0000 L CNN
F 2 "" H 4888 2050 50  0000 C CNN
F 3 "" H 4850 2200 50  0000 C CNN
	1    4850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2150 4000 2050
Wire Wire Line
	4000 2050 4100 2050
Wire Wire Line
	4100 1850 3700 1850
Wire Wire Line
	3700 1750 3700 1950
Wire Wire Line
	3700 2250 3700 2550
Wire Wire Line
	2500 2550 4850 2550
Wire Wire Line
	4000 2550 4000 2450
Wire Wire Line
	4400 2450 4400 2650
Connection ~ 4000 2550
Connection ~ 4400 2550
Connection ~ 3700 1850
Wire Wire Line
	2400 1750 2600 1750
Wire Wire Line
	2500 1950 2500 1750
Connection ~ 2500 1750
Wire Wire Line
	3100 1750 3700 1750
Wire Wire Line
	3200 1750 3200 1950
Connection ~ 3200 1750
Wire Wire Line
	2500 2250 2500 2550
Connection ~ 3700 2550
Wire Wire Line
	3200 2250 3200 2550
Connection ~ 3200 2550
Wire Wire Line
	4750 1950 5950 1950
Wire Wire Line
	4850 1950 4850 2050
Wire Wire Line
	4850 2550 4850 2350
Wire Wire Line
	5950 1950 5950 2850
Connection ~ 4850 1950
Wire Wire Line
	5950 2750 5350 2750
Wire Wire Line
	5350 2750 5350 3150
Wire Wire Line
	3900 3150 5450 3150
Connection ~ 5950 2750
Wire Wire Line
	3900 3150 3900 4750
Wire Wire Line
	3900 3550 3800 3550
Connection ~ 5350 3150
Wire Wire Line
	3900 4150 3800 4150
Connection ~ 3900 3550
Wire Wire Line
	3900 4750 3800 4750
Connection ~ 3900 4150
Wire Wire Line
	4750 1850 5100 1850
Wire Wire Line
	5100 1850 5100 3150
Connection ~ 5100 3150
Wire Wire Line
	3800 3850 4000 3850
Wire Wire Line
	4000 2950 4000 5150
Wire Wire Line
	4000 2950 4500 2950
Wire Wire Line
	4500 2950 4500 2450
Wire Wire Line
	4000 4450 3800 4450
Connection ~ 4000 3850
Wire Wire Line
	3800 5050 5350 5050
Connection ~ 4000 4450
Wire Wire Line
	5450 4950 5350 4950
Wire Wire Line
	5350 4950 5350 5050
Connection ~ 4000 5050
Wire Wire Line
	5450 3350 5350 3350
Wire Wire Line
	5050 3350 4950 3350
Wire Wire Line
	4950 3350 4950 3450
Wire Wire Line
	4950 3450 5450 3450
Wire Wire Line
	3800 3650 5450 3650
Wire Wire Line
	5450 3750 3800 3750
Wire Wire Line
	3800 4950 5250 4950
Wire Wire Line
	5250 4950 5250 4850
Wire Wire Line
	5250 4850 5350 4850
Wire Wire Line
	5350 4850 5350 4350
Wire Wire Line
	3800 4850 5150 4850
Wire Wire Line
	5150 4850 5150 4750
Wire Wire Line
	5150 4750 5250 4750
Wire Wire Line
	5250 4750 5250 4250
Wire Wire Line
	3800 4350 5150 4350
Wire Wire Line
	5150 4350 5150 4050
Wire Wire Line
	5150 4050 5450 4050
Wire Wire Line
	5450 3950 5050 3950
Wire Wire Line
	5050 3950 5050 4250
Wire Wire Line
	5050 4250 3800 4250
Wire Wire Line
	5350 4350 5450 4350
Wire Wire Line
	5250 4250 5450 4250
NoConn ~ 5450 4550
NoConn ~ 5450 4650
Text Notes 7000 3200 0    60   ~ 0
Gain = 128
$Comp
L +3V3 #PWR?
U 1 1 58CC8355
P 6350 2650
F 0 "#PWR?" H 6350 2500 50  0001 C CNN
F 1 "+3V3" H 6350 2790 50  0000 C CNN
F 2 "" H 6350 2650 50  0000 C CNN
F 3 "" H 6350 2650 50  0000 C CNN
	1    6350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2650 6350 2850
Wire Wire Line
	6350 2750 6950 2750
Wire Wire Line
	6950 2750 6950 3250
Wire Wire Line
	6950 3150 6850 3150
Connection ~ 6350 2750
Wire Wire Line
	6950 3250 6850 3250
Connection ~ 6950 3150
$Comp
L GND #PWR?
U 1 1 58CC864B
P 5950 5350
F 0 "#PWR?" H 5950 5100 50  0001 C CNN
F 1 "GND" H 5950 5200 50  0000 C CNN
F 2 "" H 5950 5350 50  0000 C CNN
F 3 "" H 5950 5350 50  0000 C CNN
	1    5950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5350 5950 5250
$Comp
L GND #PWR?
U 1 1 58CC86DF
P 6250 5450
F 0 "#PWR?" H 6250 5200 50  0001 C CNN
F 1 "GND" H 6250 5300 50  0000 C CNN
F 2 "" H 6250 5450 50  0000 C CNN
F 3 "" H 6250 5450 50  0000 C CNN
	1    6250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5450 6250 5250
Wire Wire Line
	6150 5250 6150 5350
Wire Wire Line
	6150 5350 6350 5350
Connection ~ 6250 5350
Wire Wire Line
	6350 5350 6350 5250
$Comp
L GND #PWR?
U 1 1 58CC8831
P 4000 5150
F 0 "#PWR?" H 4000 4900 50  0001 C CNN
F 1 "GND" H 4000 5000 50  0000 C CNN
F 2 "" H 4000 5150 50  0000 C CNN
F 3 "" H 4000 5150 50  0000 C CNN
	1    4000 5150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 58CC8FAB
P 6950 4650
F 0 "#PWR?" H 6950 4500 50  0001 C CNN
F 1 "+3V3" H 6950 4790 50  0000 C CNN
F 2 "" H 6950 4650 50  0000 C CNN
F 3 "" H 6950 4650 50  0000 C CNN
	1    6950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4650 6950 4750
Wire Wire Line
	6950 4750 6850 4750
Text HLabel 7100 4850 2    60   Input ~ 0
MUX_A0
Text HLabel 7100 4950 2    60   Input ~ 0
MUX_A1
Wire Wire Line
	7100 4950 6850 4950
Wire Wire Line
	6850 4850 7100 4850
$Comp
L Crystal_Small Y?
U 1 1 58CC9705
P 7100 4150
F 0 "Y?" H 7100 4250 50  0000 C CNN
F 1 "ECS ECS-49-20-4" V 7100 3700 50  0000 C CNN
F 2 "" H 7100 4150 50  0000 C CNN
F 3 "" H 7100 4150 50  0000 C CNN
	1    7100 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 4250 6850 4250
Wire Wire Line
	7100 4050 6850 4050
Text Notes 7150 4350 0    51   ~ 0
Digikey # X1049-ND \nor other 4.9152MHz 20pF
Text HLabel 7100 3450 2    60   Output ~ 0
DOUT
Text HLabel 7100 3550 2    60   Input ~ 0
SCLK
Text HLabel 7100 3650 2    60   Input ~ 0
~PWDN
Wire Wire Line
	7100 3450 6850 3450
Wire Wire Line
	6850 3550 7100 3550
Wire Wire Line
	7100 3650 6850 3650
Text Notes 8350 3050 0    60   ~ 0
Interface to mainboard: 8 signals\n* GND\n* +5V\n* +3V3\n* DOUT\n* SCLK\n* ~PWDN\n* MUX_A0\n* MUX_A1
$EndSCHEMATC
