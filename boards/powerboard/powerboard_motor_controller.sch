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
LIBS:drv8332
LIBS:cd40109b
LIBS:powerboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 11
Title "Powerboard motor controller"
Date "2017-11-23"
Rev "rev10"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 5500 1250 1    60   Input ~ 0
V_IN
Text HLabel 9600 2300 2    60   Output ~ 0
Phase_U
Text HLabel 9600 2400 2    60   Output ~ 0
Phase_V
Text HLabel 9600 2500 2    60   Output ~ 0
Phase_W
Text HLabel 3300 2650 0    60   Input ~ 0
Motor_U_P
Text HLabel 3300 3000 0    60   Input ~ 0
Motor_U_N
Text HLabel 3300 2750 0    60   Input ~ 0
Motor_V_P
Text HLabel 3300 3100 0    60   Input ~ 0
Motor_V_N
Text HLabel 3300 2850 0    60   Input ~ 0
Motor_W_P
Text HLabel 3300 3200 0    60   Input ~ 0
Motor_W_N
$Comp
L LED D302
U 1 1 59379B27
P 1950 3350
F 0 "D302" H 2150 3300 50  0000 C CNN
F 1 "LED" H 1950 3250 50  0000 C CNN
F 2 "LEDs:LED_0603" H 1950 3350 50  0001 C CNN
F 3 "" H 1950 3350 50  0001 C CNN
	1    1950 3350
	-1   0    0    1   
$EndComp
$Comp
L LED D301
U 1 1 59379B92
P 1550 3450
F 0 "D301" H 1550 3550 50  0000 C CNN
F 1 "LED" H 1550 3600 50  0000 C CNN
F 2 "LEDs:LED_0603" H 1550 3450 50  0001 C CNN
F 3 "" H 1550 3450 50  0001 C CNN
	1    1550 3450
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR039
U 1 1 59379BBE
P 1200 3400
F 0 "#PWR039" H 1200 3250 50  0001 C CNN
F 1 "+5V" H 1200 3540 50  0000 C CNN
F 2 "" H 1200 3400 50  0001 C CNN
F 3 "" H 1200 3400 50  0001 C CNN
	1    1200 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R302
U 1 1 59379C3A
P 2750 3350
F 0 "R302" V 2830 3350 50  0000 C CNN
F 1 "470" V 2750 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2680 3350 50  0001 C CNN
F 3 "" H 2750 3350 50  0001 C CNN
	1    2750 3350
	0    1    1    0   
$EndComp
$Comp
L R R301
U 1 1 59379C8A
P 2350 3450
F 0 "R301" V 2430 3450 50  0000 C CNN
F 1 "470" V 2350 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2280 3450 50  0001 C CNN
F 3 "" H 2350 3450 50  0001 C CNN
	1    2350 3450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR040
U 1 1 59379D87
P 2900 3600
F 0 "#PWR040" H 2900 3350 50  0001 C CNN
F 1 "GND" H 2900 3450 50  0000 C CNN
F 2 "" H 2900 3600 50  0001 C CNN
F 3 "" H 2900 3600 50  0001 C CNN
	1    2900 3600
	0    1    1    0   
$EndComp
$Comp
L R R303
U 1 1 59379DA8
P 3150 3600
F 0 "R303" V 3230 3600 50  0000 C CNN
F 1 "200k" V 3150 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 3080 3600 50  0001 C CNN
F 3 "" H 3150 3600 50  0001 C CNN
	1    3150 3600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR041
U 1 1 5937A00C
P 5600 5000
F 0 "#PWR041" H 5600 4750 50  0001 C CNN
F 1 "GND" H 5600 4850 50  0000 C CNN
F 2 "" H 5600 5000 50  0001 C CNN
F 3 "" H 5600 5000 50  0001 C CNN
	1    5600 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 5937A030
P 3300 4400
F 0 "#PWR042" H 3300 4150 50  0001 C CNN
F 1 "GND" H 3300 4250 50  0000 C CNN
F 2 "" H 3300 4400 50  0001 C CNN
F 3 "" H 3300 4400 50  0001 C CNN
	1    3300 4400
	1    0    0    -1  
$EndComp
$Comp
L C C308
U 1 1 5937A285
P 6300 3000
F 0 "C308" H 6325 3100 50  0000 L CNN
F 1 "100n" H 6325 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6338 2850 50  0001 C CNN
F 3 "" H 6300 3000 50  0001 C CNN
	1    6300 3000
	1    0    0    -1  
$EndComp
$Comp
L C C309
U 1 1 5937A2ED
P 6600 3000
F 0 "C309" H 6625 3100 50  0000 L CNN
F 1 "100n" H 6625 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6638 2850 50  0001 C CNN
F 3 "" H 6600 3000 50  0001 C CNN
	1    6600 3000
	1    0    0    -1  
$EndComp
$Comp
L C C310
U 1 1 5937A31D
P 6900 3000
F 0 "C310" H 6925 3100 50  0000 L CNN
F 1 "100n" H 6925 2900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6938 2850 50  0001 C CNN
F 3 "" H 6900 3000 50  0001 C CNN
	1    6900 3000
	1    0    0    -1  
$EndComp
$Comp
L ACS711 U303
U 1 1 5937A6A5
P 6200 4750
F 0 "U303" H 6200 4450 60  0000 C CNN
F 1 "ACS711" H 6200 5050 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6200 4750 60  0001 C CNN
F 3 "" H 6200 4750 60  0001 C CNN
	1    6200 4750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR043
U 1 1 5937A989
P 6800 4500
F 0 "#PWR043" H 6800 4350 50  0001 C CNN
F 1 "+3V3" H 6800 4640 50  0000 C CNN
F 2 "" H 6800 4500 50  0001 C CNN
F 3 "" H 6800 4500 50  0001 C CNN
	1    6800 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR044
U 1 1 5937A9B1
P 6800 5000
F 0 "#PWR044" H 6800 4750 50  0001 C CNN
F 1 "GND" H 6800 4850 50  0000 C CNN
F 2 "" H 6800 5000 50  0001 C CNN
F 3 "" H 6800 5000 50  0001 C CNN
	1    6800 5000
	1    0    0    -1  
$EndComp
Text HLabel 6900 4700 2    60   Output ~ 0
Current
$Comp
L GND #PWR045
U 1 1 5938B958
P 3300 2200
F 0 "#PWR045" H 3300 1950 50  0001 C CNN
F 1 "GND" H 3300 2050 50  0000 C CNN
F 2 "" H 3300 2200 50  0001 C CNN
F 3 "" H 3300 2200 50  0001 C CNN
	1    3300 2200
	-1   0    0    1   
$EndComp
$Comp
L C C305
U 1 1 5938BECA
P 3000 4100
F 0 "C305" H 3025 4200 50  0000 L CNN
F 1 "100n" H 3025 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3038 3950 50  0001 C CNN
F 3 "" H 3000 4100 50  0001 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
$Comp
L C C304
U 1 1 5938BF02
P 2700 4100
F 0 "C304" H 2725 4200 50  0000 L CNN
F 1 "100n" H 2725 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2738 3950 50  0001 C CNN
F 3 "" H 2700 4100 50  0001 C CNN
	1    2700 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 5938C0D3
P 3000 4400
F 0 "#PWR046" H 3000 4150 50  0001 C CNN
F 1 "GND" H 3000 4250 50  0000 C CNN
F 2 "" H 3000 4400 50  0001 C CNN
F 3 "" H 3000 4400 50  0001 C CNN
	1    3000 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR047
U 1 1 5938C102
P 2700 4400
F 0 "#PWR047" H 2700 4150 50  0001 C CNN
F 1 "GND" H 2700 4250 50  0000 C CNN
F 2 "" H 2700 4400 50  0001 C CNN
F 3 "" H 2700 4400 50  0001 C CNN
	1    2700 4400
	1    0    0    -1  
$EndComp
Text Label 3000 3900 0    60   ~ 0
VREG
Text Label 3150 2500 0    60   ~ 0
VREG
Text Notes 1850 3750 0    60   ~ 0
1.4A current limit
$Comp
L GND #PWR048
U 1 1 5939C50C
P 5650 1850
F 0 "#PWR048" H 5650 1600 50  0001 C CNN
F 1 "GND" H 5650 1700 50  0000 C CNN
F 2 "" H 5650 1850 50  0001 C CNN
F 3 "" H 5650 1850 50  0001 C CNN
	1    5650 1850
	1    0    0    -1  
$EndComp
$Comp
L C C307
U 1 1 5939C9A1
P 5750 1600
F 0 "C307" H 5775 1700 50  0000 L CNN
F 1 "1µ" H 5775 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5788 1450 50  0001 C CNN
F 3 "" H 5750 1600 50  0001 C CNN
	1    5750 1600
	1    0    0    -1  
$EndComp
Text Label 5550 1350 0    60   ~ 0
V_IN
Text Label 1050 6350 0    60   ~ 0
V_IN
$Comp
L GND #PWR049
U 1 1 5939E00D
P 2750 6950
F 0 "#PWR049" H 2750 6700 50  0001 C CNN
F 1 "GND" H 2750 6800 50  0000 C CNN
F 2 "" H 2750 6950 50  0001 C CNN
F 3 "" H 2750 6950 50  0001 C CNN
	1    2750 6950
	1    0    0    -1  
$EndComp
$Comp
L C C303
U 1 1 5939E4CC
P 3350 6600
F 0 "C303" H 3375 6700 50  0000 L CNN
F 1 "10µ" H 3375 6500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3388 6450 50  0001 C CNN
F 3 "" H 3350 6600 50  0001 C CNN
	1    3350 6600
	1    0    0    -1  
$EndComp
$Comp
L C C301
U 1 1 5939E5FF
P 1550 6600
F 0 "C301" H 1575 6700 50  0000 L CNN
F 1 "4µ7 0805" H 1575 6500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1588 6450 50  0001 C CNN
F 3 "" H 1550 6600 50  0001 C CNN
	1    1550 6600
	1    0    0    -1  
$EndComp
Text Label 2700 3750 0    60   ~ 0
12V
$Comp
L DRV8332 U302
U 1 1 593822E3
P 4200 2750
F 0 "U302" H 4550 3400 60  0000 C CNN
F 1 "DRV8332" H 4200 3400 60  0000 C CNN
F 2 "HSSOP:HSSOP-36" H 3900 2750 60  0001 C CNN
F 3 "" H 3900 2750 60  0000 C CNN
	1    4200 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3200 3400 3200
Wire Wire Line
	3400 3100 3300 3100
Wire Wire Line
	3300 3000 3400 3000
Wire Wire Line
	3400 2850 3300 2850
Wire Wire Line
	3300 2750 3400 2750
Wire Wire Line
	3400 2650 3300 2650
Wire Wire Line
	1200 3400 1300 3400
Wire Wire Line
	1300 3350 1300 3450
Wire Wire Line
	1300 3450 1400 3450
Wire Wire Line
	1300 3350 1800 3350
Connection ~ 1300 3400
Wire Wire Line
	2100 3350 2600 3350
Wire Wire Line
	2200 3450 1700 3450
Wire Wire Line
	2500 3450 3400 3450
Wire Wire Line
	3400 3350 2900 3350
Wire Wire Line
	3300 3600 3400 3600
Wire Wire Line
	2900 3600 3000 3600
Wire Wire Line
	3400 4050 3300 4050
Wire Wire Line
	5600 5000 5600 4800
Wire Wire Line
	5600 4800 5700 4800
Wire Wire Line
	5700 4900 5600 4900
Connection ~ 5600 4900
Wire Wire Line
	5700 4700 5600 4700
Wire Wire Line
	5600 4700 5600 4600
Connection ~ 5600 4600
Wire Wire Line
	6800 5000 6800 4900
Wire Wire Line
	6800 4900 6700 4900
Wire Wire Line
	6700 4600 6800 4600
Wire Wire Line
	6800 4600 6800 4500
Wire Wire Line
	6700 4700 6900 4700
Wire Wire Line
	4950 2300 8400 2300
Wire Wire Line
	4950 2400 8400 2400
Wire Wire Line
	4950 2500 8400 2500
Wire Wire Line
	6300 3450 6300 3150
Connection ~ 6300 2300
Connection ~ 6600 2400
Connection ~ 6900 2500
Wire Wire Line
	6900 3650 6900 3150
Wire Wire Line
	6600 3550 6600 3150
Wire Wire Line
	5300 3100 4950 3100
Wire Wire Line
	5300 3200 4950 3200
Connection ~ 5300 3200
Wire Wire Line
	3300 2200 3300 2400
Wire Wire Line
	3300 2300 3400 2300
Wire Wire Line
	3300 2400 3400 2400
Connection ~ 3300 2300
Wire Wire Line
	3400 3750 2700 3750
Wire Wire Line
	2700 3750 2700 3950
Wire Wire Line
	3000 3950 3000 3900
Wire Wire Line
	3000 3900 3400 3900
Wire Wire Line
	2700 4400 2700 4250
Wire Wire Line
	3000 4250 3000 4400
Wire Wire Line
	3150 2500 3400 2500
Wire Wire Line
	5300 3300 4950 3300
Wire Wire Line
	5500 1450 5500 1250
Wire Wire Line
	5300 1350 6250 1350
Connection ~ 5500 1350
Connection ~ 5300 3100
Wire Wire Line
	5750 1350 5750 1450
Wire Wire Line
	5500 1750 5500 1800
Wire Wire Line
	5500 1800 6250 1800
Wire Wire Line
	5650 1800 5650 1850
Wire Wire Line
	5750 1800 5750 1750
Connection ~ 5650 1800
Wire Wire Line
	1050 6350 2350 6350
Wire Wire Line
	2750 6650 2750 6950
Wire Wire Line
	1550 6850 4600 6850
Connection ~ 2750 6850
Wire Wire Line
	1550 6850 1550 6750
Wire Wire Line
	1550 6450 1550 6350
Connection ~ 1550 6350
Wire Wire Line
	3350 6850 3350 6750
Wire Wire Line
	3150 6350 5000 6350
Wire Wire Line
	3350 6350 3350 6450
Connection ~ 3350 6350
Wire Wire Line
	5300 1350 5300 3300
Wire Wire Line
	6300 3450 4950 3450
Wire Wire Line
	6600 3550 4950 3550
Wire Wire Line
	4950 3650 6900 3650
Wire Wire Line
	6900 2850 6900 2500
Wire Wire Line
	6600 2400 6600 2850
Wire Wire Line
	6300 2850 6300 2300
Wire Wire Line
	4950 2650 5450 2650
Wire Wire Line
	4950 2950 5050 2950
Wire Wire Line
	5050 2950 5050 2650
Connection ~ 5050 2650
Wire Wire Line
	4950 2750 5050 2750
Connection ~ 5050 2750
Wire Wire Line
	5050 2850 4950 2850
Connection ~ 5050 2850
Wire Wire Line
	4950 3800 5250 3800
Wire Wire Line
	5250 3800 5250 4600
Wire Wire Line
	5250 4600 5700 4600
Wire Wire Line
	4950 3900 5250 3900
Connection ~ 5250 3900
Wire Wire Line
	4950 4000 5250 4000
Connection ~ 5250 4000
$Comp
L GND #PWR050
U 1 1 59385450
P 5050 4350
F 0 "#PWR050" H 5050 4100 50  0001 C CNN
F 1 "GND" H 5050 4200 50  0000 C CNN
F 2 "" H 5050 4350 50  0001 C CNN
F 3 "" H 5050 4350 50  0001 C CNN
	1    5050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4350 5050 4150
Wire Wire Line
	5050 4150 4950 4150
Wire Wire Line
	4950 4250 5050 4250
Connection ~ 5050 4250
Wire Wire Line
	3300 4050 3300 4400
Wire Wire Line
	3300 4150 3400 4150
Connection ~ 3300 4150
$Comp
L L_Small L301
U 1 1 593942CD
P 8500 2300
F 0 "L301" V 8550 2050 50  0000 L CNN
F 1 "742792515" V 8550 2300 50  0000 L CNN
F 2 "Inductors_SMD:L_1812" H 8500 2300 50  0001 C CNN
F 3 "" H 8500 2300 50  0001 C CNN
	1    8500 2300
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L302
U 1 1 5939492B
P 8500 2400
F 0 "L302" V 8550 2150 50  0000 L CNN
F 1 "742792515" V 8550 2400 50  0000 L CNN
F 2 "Inductors_SMD:L_1812" H 8500 2400 50  0001 C CNN
F 3 "" H 8500 2400 50  0001 C CNN
	1    8500 2400
	0    -1   -1   0   
$EndComp
$Comp
L L_Small L303
U 1 1 59394977
P 8500 2500
F 0 "L303" V 8550 2250 50  0000 L CNN
F 1 "742792515" V 8550 2500 50  0000 L CNN
F 2 "Inductors_SMD:L_1812" H 8500 2500 50  0001 C CNN
F 3 "" H 8500 2500 50  0001 C CNN
	1    8500 2500
	0    -1   -1   0   
$EndComp
Text Notes 8150 2200 0    60   ~ 0
3x Würth 742792515\nWE-CBF SMD-Ferrit
$Comp
L C C316
U 1 1 59394A5C
P 8800 2750
F 0 "C316" V 8850 2800 50  0000 L CNN
F 1 "100p" V 8850 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8838 2600 50  0001 C CNN
F 3 "" H 8800 2750 50  0001 C CNN
	1    8800 2750
	1    0    0    -1  
$EndComp
$Comp
L C C317
U 1 1 59394D20
P 9100 2750
F 0 "C317" V 9150 2800 50  0000 L CNN
F 1 "100p" V 9150 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9138 2600 50  0001 C CNN
F 3 "" H 9100 2750 50  0001 C CNN
	1    9100 2750
	1    0    0    -1  
$EndComp
$Comp
L C C318
U 1 1 59394D7D
P 9400 2750
F 0 "C318" V 9450 2800 50  0000 L CNN
F 1 "100p" V 9450 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9438 2600 50  0001 C CNN
F 3 "" H 9400 2750 50  0001 C CNN
	1    9400 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2500 9600 2500
Wire Wire Line
	9600 2400 8600 2400
Wire Wire Line
	8600 2300 9600 2300
Wire Wire Line
	9400 2900 9400 3000
Wire Wire Line
	9400 3000 9250 3000
Wire Wire Line
	8800 2900 8800 3000
Wire Wire Line
	8800 3000 8650 3000
Wire Wire Line
	8650 3000 8650 2500
Connection ~ 8650 2500
Wire Wire Line
	8800 2600 8800 2400
Connection ~ 8800 2400
Wire Wire Line
	9100 2600 9100 2300
Connection ~ 9100 2300
Wire Wire Line
	9100 2900 9100 3000
Wire Wire Line
	9100 3000 8950 3000
Wire Wire Line
	8950 3000 8950 2400
Connection ~ 8950 2400
$Comp
L D_TVS D304
U 1 1 59395CC5
P 7350 2750
F 0 "D304" H 7350 2850 50  0000 C CNN
F 1 "SMBJ40CA" H 7350 2650 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB_Standard" H 7350 2750 50  0001 C CNN
F 3 "" H 7350 2750 50  0001 C CNN
	1    7350 2750
	0    1    1    0   
$EndComp
$Comp
L D_TVS D305
U 1 1 59396C40
P 7700 2750
F 0 "D305" H 7700 2850 50  0000 C CNN
F 1 "SMBJ40CA" H 7700 2650 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB_Standard" H 7700 2750 50  0001 C CNN
F 3 "" H 7700 2750 50  0001 C CNN
	1    7700 2750
	0    1    1    0   
$EndComp
$Comp
L D_TVS D306
U 1 1 59396FB4
P 8050 2750
F 0 "D306" H 8050 2850 50  0000 C CNN
F 1 "SMBJ40CA" H 8050 2650 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB_Standard" H 8050 2750 50  0001 C CNN
F 3 "" H 8050 2750 50  0001 C CNN
	1    8050 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 2500 7150 3000
Wire Wire Line
	7150 3000 7350 3000
Wire Wire Line
	7350 3000 7350 2900
Connection ~ 7150 2500
Wire Wire Line
	7350 2600 7350 2400
Connection ~ 7350 2400
Wire Wire Line
	7500 2400 7500 3000
Wire Wire Line
	7500 3000 7700 3000
Wire Wire Line
	7700 3000 7700 2900
Connection ~ 7500 2400
Wire Wire Line
	7700 2600 7700 2300
Connection ~ 7700 2300
Wire Wire Line
	9250 3000 9250 2300
Connection ~ 9250 2300
Wire Wire Line
	9400 2600 9400 2500
Connection ~ 9400 2500
Wire Wire Line
	7850 2300 7850 3000
Wire Wire Line
	7850 3000 8050 3000
Wire Wire Line
	8050 3000 8050 2900
Connection ~ 7850 2300
Wire Wire Line
	8050 2600 8050 2500
Connection ~ 8050 2500
Text Notes 8350 3150 0    60   ~ 0
Switching noise filter
Text Notes 7150 3250 0    60   ~ 0
Flyback protection\nbidirectional TVS diodes
$Comp
L C C313
U 1 1 59398698
P 5500 1600
F 0 "C313" H 5525 1700 50  0000 L CNN
F 1 "4µ7 0805" V 5450 1150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5538 1450 50  0001 C CNN
F 3 "" H 5500 1600 50  0001 C CNN
	1    5500 1600
	1    0    0    -1  
$EndComp
$Comp
L C C314
U 1 1 59398EA3
P 6000 1600
F 0 "C314" H 6025 1700 50  0000 L CNN
F 1 "1µ" H 6025 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6038 1450 50  0001 C CNN
F 3 "" H 6000 1600 50  0001 C CNN
	1    6000 1600
	1    0    0    -1  
$EndComp
$Comp
L C C315
U 1 1 59398F11
P 6250 1600
F 0 "C315" H 6275 1700 50  0000 L CNN
F 1 "100n" H 6275 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6288 1450 50  0001 C CNN
F 3 "" H 6250 1600 50  0001 C CNN
	1    6250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1350 6000 1450
Connection ~ 5750 1350
Wire Wire Line
	6250 1350 6250 1450
Connection ~ 6000 1350
Wire Wire Line
	6250 1800 6250 1750
Connection ~ 5750 1800
Wire Wire Line
	6000 1750 6000 1800
Connection ~ 6000 1800
$Comp
L C C312
U 1 1 5939B286
P 4600 6600
F 0 "C312" H 4625 6700 50  0000 L CNN
F 1 "100n" H 4625 6500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4638 6450 50  0001 C CNN
F 3 "" H 4600 6600 50  0001 C CNN
	1    4600 6600
	1    0    0    -1  
$EndComp
Connection ~ 3350 6850
$Comp
L C C319
U 1 1 59453879
P 7050 5050
F 0 "C319" H 7075 5150 50  0000 L CNN
F 1 "1n" H 7075 4950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7088 4900 50  0001 C CNN
F 3 "" H 7050 5050 50  0001 C CNN
	1    7050 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR051
U 1 1 59453906
P 7050 5300
F 0 "#PWR051" H 7050 5050 50  0001 C CNN
F 1 "GND" H 7050 5150 50  0000 C CNN
F 2 "" H 7050 5300 50  0001 C CNN
F 3 "" H 7050 5300 50  0001 C CNN
	1    7050 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5300 7050 5200
Wire Wire Line
	6700 4800 7050 4800
Wire Wire Line
	7050 4800 7050 4900
$Comp
L LM7812 U301
U 1 1 5A192C4C
P 2750 6400
F 0 "U301" H 2900 6204 50  0000 C CNN
F 1 "7812SR-C" H 2750 6600 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 2750 6400 50  0001 C CNN
F 3 "" H 2750 6400 50  0001 C CNN
	1    2750 6400
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR052
U 1 1 5A194A5C
P 5000 6350
F 0 "#PWR052" H 5000 6200 50  0001 C CNN
F 1 "+12V" H 5000 6490 50  0000 C CNN
F 2 "" H 5000 6350 50  0001 C CNN
F 3 "" H 5000 6350 50  0001 C CNN
	1    5000 6350
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR053
U 1 1 5A194AD4
P 5450 2650
F 0 "#PWR053" H 5450 2500 50  0001 C CNN
F 1 "+12V" H 5450 2790 50  0000 C CNN
F 2 "" H 5450 2650 50  0001 C CNN
F 3 "" H 5450 2650 50  0001 C CNN
	1    5450 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 6850 4600 6750
Wire Wire Line
	4600 6450 4600 6350
Connection ~ 4600 6350
$EndSCHEMATC
