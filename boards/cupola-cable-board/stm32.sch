EESchema Schematic File Version 4
LIBS:cupola-cable-board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L MCU_ST_STM32F4:STM32F410CBTx U2
U 1 1 5C314697
P 5450 2900
F 0 "U2" H 6200 3650 50  0000 C CNN
F 1 "STM32F410CBTx" H 6450 3550 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 4850 1400 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00214043.pdf" H 5450 2900 50  0001 C CNN
	1    5450 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1400 5350 1350
Wire Wire Line
	5350 1350 5450 1350
Wire Wire Line
	5450 1350 5450 1400
Wire Wire Line
	5450 1350 5550 1350
Wire Wire Line
	5550 1350 5550 1400
Connection ~ 5450 1350
Wire Wire Line
	5550 1350 5650 1350
Wire Wire Line
	5650 1350 5650 1400
Connection ~ 5550 1350
Wire Wire Line
	5450 1250 5450 1350
Wire Wire Line
	5250 4500 5250 4550
Wire Wire Line
	5250 4550 5350 4550
Wire Wire Line
	5550 4550 5550 4500
Wire Wire Line
	5450 4500 5450 4550
Connection ~ 5450 4550
Wire Wire Line
	5450 4550 5550 4550
Wire Wire Line
	5350 4500 5350 4550
Connection ~ 5350 4550
Wire Wire Line
	5350 4550 5450 4550
$Comp
L power:GND #PWR026
U 1 1 5C315064
P 5350 4650
F 0 "#PWR026" H 5350 4400 50  0001 C CNN
F 1 "GND" H 5355 4477 50  0000 C CNN
F 2 "" H 5350 4650 50  0001 C CNN
F 3 "" H 5350 4650 50  0001 C CNN
	1    5350 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4650 5350 4550
$Comp
L power:GND #PWR023
U 1 1 5C315223
P 4300 1600
F 0 "#PWR023" H 4300 1350 50  0001 C CNN
F 1 "GND" V 4305 1472 50  0000 R CNN
F 2 "" H 4300 1600 50  0001 C CNN
F 3 "" H 4300 1600 50  0001 C CNN
	1    4300 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 5C3158E8
P 4550 1600
F 0 "C9" H 4350 1650 50  0000 L CNN
F 1 "100n" H 4250 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4588 1450 50  0001 C CNN
F 3 "~" H 4550 1600 50  0001 C CNN
	1    4550 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C C7
U 1 1 5C317B19
P 2700 2350
F 0 "C7" H 2500 2400 50  0000 L CNN
F 1 "4u7" H 2400 2300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2738 2200 50  0001 C CNN
F 3 "~" H 2700 2350 50  0001 C CNN
	1    2700 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5C3184FA
P 4650 1800
F 0 "#PWR024" H 4650 1550 50  0001 C CNN
F 1 "GND" V 4655 1672 50  0000 R CNN
F 2 "" H 4650 1800 50  0001 C CNN
F 3 "" H 4650 1800 50  0001 C CNN
	1    4650 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 1800 4650 1800
$Comp
L power:+3.3V #PWR025
U 1 1 5C3186FA
P 4650 2000
F 0 "#PWR025" H 4650 1850 50  0001 C CNN
F 1 "+3.3V" V 4665 2128 50  0000 L CNN
F 2 "" H 4650 2000 50  0001 C CNN
F 3 "" H 4650 2000 50  0001 C CNN
	1    4650 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4750 2000 4650 2000
Wire Wire Line
	4700 1600 4750 1600
Wire Wire Line
	4400 1600 4300 1600
$Comp
L power:GND #PWR020
U 1 1 5C3198B7
P 2700 2550
F 0 "#PWR020" H 2700 2300 50  0001 C CNN
F 1 "GND" H 2705 2377 50  0000 C CNN
F 2 "" H 2700 2550 50  0001 C CNN
F 3 "" H 2700 2550 50  0001 C CNN
	1    2700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1350 5250 1350
Wire Wire Line
	5250 1350 5250 1400
Connection ~ 5350 1350
$Comp
L Oscillator:SG-8002LB X1
U 1 1 5C3672C5
P 3600 2650
F 0 "X1" H 3150 2450 50  0000 L CNN
F 1 "ECS-3963-120-AU-TR" H 3150 2350 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_SeikoEpson_SG8002LB-4Pin_5.0x3.2mm" H 4300 2300 50  0001 C CNN
F 3 "https://support.epson.biz/td/api/doc_check.php?mode=dl&lang=en&Parts=SG-8002DC" H 3500 2650 50  0001 C CNN
	1    3600 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 5C3676D8
P 3600 2250
F 0 "#PWR022" H 3600 2100 50  0001 C CNN
F 1 "+3.3V" V 3615 2378 50  0000 L CNN
F 2 "" H 3600 2250 50  0001 C CNN
F 3 "" H 3600 2250 50  0001 C CNN
	1    3600 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5C36771B
P 3150 2600
F 0 "C8" H 2950 2650 50  0000 L CNN
F 1 "100n" H 2850 2550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3188 2450 50  0001 C CNN
F 3 "~" H 3150 2600 50  0001 C CNN
	1    3150 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2500 2700 2550
Wire Wire Line
	2700 2100 2700 2200
Wire Wire Line
	3600 2300 3150 2300
Wire Wire Line
	3150 2300 3150 2450
Wire Wire Line
	3600 2250 3600 2300
Wire Wire Line
	3600 2350 3600 2300
Connection ~ 3600 2300
Wire Wire Line
	3150 2750 3150 3000
Wire Wire Line
	3150 3000 3350 3000
Wire Wire Line
	3600 3000 3600 2950
Wire Wire Line
	4150 2650 4150 2300
$Comp
L power:GND #PWR021
U 1 1 5C36AE86
P 3350 3050
F 0 "#PWR021" H 3350 2800 50  0001 C CNN
F 1 "GND" H 3355 2877 50  0000 C CNN
F 2 "" H 3350 3050 50  0001 C CNN
F 3 "" H 3350 3050 50  0001 C CNN
	1    3350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3050 3350 3000
Connection ~ 3350 3000
Wire Wire Line
	3350 3000 3600 3000
Wire Wire Line
	4150 2300 4750 2300
Text HLabel 4650 2800 0    50   Output ~ 0
Sensor0_A
Text HLabel 6150 2800 2    50   Output ~ 0
Sensor0_B
Text HLabel 4650 2600 0    50   Output ~ 0
Sensor1_A
Text HLabel 4650 2700 0    50   Output ~ 0
Sensor1_B
Text HLabel 6150 2900 2    50   Output ~ 0
Sensor2_A
Text HLabel 6150 3000 2    50   Output ~ 0
Sensor2_B
Wire Wire Line
	6150 2900 6050 2900
Wire Wire Line
	6150 3000 6050 3000
Text HLabel 4650 3100 0    50   Input ~ 0
Sensor0_Motion
Text HLabel 6150 3900 2    50   Output ~ 0
Sensor0_Cs
Wire Wire Line
	6150 3100 6050 3100
Wire Wire Line
	6150 3200 6050 3200
Text HLabel 4650 3000 0    50   Output ~ 0
Sensor0_Sck
Text HLabel 6750 4000 2    50   BiDi ~ 0
Sensor0_Sdio
$Comp
L Device:R R3
U 1 1 5C3767DF
P 6300 3500
F 0 "R3" V 6300 3800 50  0000 C CNN
F 1 "3k3" V 6300 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 3500 50  0001 C CNN
F 3 "~" H 6300 3500 50  0001 C CNN
	1    6300 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 3500 6150 3500
Wire Wire Line
	6050 3400 6500 3400
Wire Wire Line
	6450 3500 6500 3500
Wire Wire Line
	6500 3500 6500 3400
Connection ~ 6500 3400
Wire Wire Line
	6500 3400 6600 3400
Wire Wire Line
	6150 3300 6050 3300
Text HLabel 6150 3100 2    50   Input ~ 0
Sensor1_Motion
Wire Wire Line
	6150 3600 6050 3600
Text HLabel 4650 4000 0    50   Output ~ 0
Sensor2_Cs
$Comp
L Device:R R4
U 1 1 5C379D66
P 6300 3800
F 0 "R4" V 6250 3600 50  0000 C CNN
F 1 "3k3" V 6300 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 3800 50  0001 C CNN
F 3 "~" H 6300 3800 50  0001 C CNN
	1    6300 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 3800 6050 3800
Wire Wire Line
	6450 3800 6700 3800
Wire Wire Line
	6700 3800 6700 4000
Wire Wire Line
	6700 4000 6050 4000
Wire Wire Line
	6150 3900 6050 3900
Wire Wire Line
	6150 3700 6050 3700
Text HLabel 4250 4200 0    50   BiDi ~ 0
Sensor2_Sdio
Wire Wire Line
	6700 4000 6750 4000
Connection ~ 6700 4000
$Comp
L Connector:Conn_01x03_Male J11
U 1 1 5C380F57
P 6650 4200
F 0 "J11" H 6622 4130 50  0000 R CNN
F 1 "SWD" H 6622 4221 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6650 4200 50  0001 C CNN
F 3 "~" H 6650 4200 50  0001 C CNN
	1    6650 4200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5C384E0B
P 6450 4200
F 0 "#PWR028" H 6450 3950 50  0001 C CNN
F 1 "GND" H 6455 4027 50  0000 C CNN
F 2 "" H 6450 4200 50  0001 C CNN
F 3 "" H 6450 4200 50  0001 C CNN
	1    6450 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 4100 6450 4100
Wire Wire Line
	6050 4200 6150 4200
Wire Wire Line
	6150 4200 6150 4300
Wire Wire Line
	6150 4300 6450 4300
Text HLabel 4650 4100 0    50   Output ~ 0
Sensor2_Sck
Wire Wire Line
	4750 3000 4650 3000
Text HLabel 6150 3600 2    50   Input ~ 0
Sensor2_Motion
Text Label 4650 3300 2    50   ~ 0
DebugUart_Rx
Text Label 6150 3700 0    50   ~ 0
DebugUart_Tx
Wire Wire Line
	4750 3300 4650 3300
Text HLabel 6150 3200 2    50   Output ~ 0
Sensor1_Cs
Text HLabel 6150 3300 2    50   Output ~ 0
Sensor1_Sck
$Comp
L Device:R R2
U 1 1 5C38C57F
P 4500 4300
F 0 "R2" V 4550 4500 50  0000 C CNN
F 1 "3k3" V 4500 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4430 4300 50  0001 C CNN
F 3 "~" H 4500 4300 50  0001 C CNN
	1    4500 4300
	0    1    1    0   
$EndComp
Text HLabel 6600 3400 2    50   BiDi ~ 0
Sensor1_Sdio
Wire Wire Line
	4750 4000 4650 4000
Wire Wire Line
	4750 4100 4650 4100
Wire Wire Line
	4750 4300 4650 4300
Wire Wire Line
	4350 4300 4300 4300
Wire Wire Line
	4300 4300 4300 4200
Wire Wire Line
	4300 4200 4750 4200
Wire Wire Line
	4300 4200 4250 4200
Connection ~ 4300 4200
Text Label 7100 1650 2    50   ~ 0
DebugUart_Tx
Text Label 7100 1750 2    50   ~ 0
DebugUart_Rx
$Comp
L Device:C C4
U 1 1 5C3AB937
P 1600 1300
F 0 "C4" H 1400 1350 50  0000 L CNN
F 1 "100n" H 1300 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1638 1150 50  0001 C CNN
F 3 "~" H 1600 1300 50  0001 C CNN
	1    1600 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5C3ABE17
P 1200 1300
F 0 "C3" H 1000 1350 50  0000 L CNN
F 1 "100n" H 900 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1238 1150 50  0001 C CNN
F 3 "~" H 1200 1300 50  0001 C CNN
	1    1200 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5C3ABE45
P 2000 1300
F 0 "C5" H 1800 1350 50  0000 L CNN
F 1 "100n" H 1700 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2038 1150 50  0001 C CNN
F 3 "~" H 2000 1300 50  0001 C CNN
	1    2000 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5C3ABF5A
P 2400 1300
F 0 "C6" H 2200 1350 50  0000 L CNN
F 1 "100n" H 2100 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2438 1150 50  0001 C CNN
F 3 "~" H 2400 1300 50  0001 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1150 1200 1100
Wire Wire Line
	1200 1100 1600 1100
Wire Wire Line
	1600 1100 1600 1150
Connection ~ 1600 1100
Wire Wire Line
	2400 1100 2400 1150
Wire Wire Line
	1600 1100 1800 1100
Wire Wire Line
	2000 1150 2000 1100
Connection ~ 2000 1100
Wire Wire Line
	2000 1100 2400 1100
Wire Wire Line
	2400 1450 2400 1500
Wire Wire Line
	2400 1500 2000 1500
Wire Wire Line
	2000 1500 2000 1450
Wire Wire Line
	2000 1500 1800 1500
Wire Wire Line
	1600 1500 1600 1450
Connection ~ 2000 1500
Wire Wire Line
	1600 1500 1200 1500
Wire Wire Line
	1200 1500 1200 1450
Connection ~ 1600 1500
$Comp
L power:GND #PWR019
U 1 1 5C3BC41E
P 1800 1550
F 0 "#PWR019" H 1800 1300 50  0001 C CNN
F 1 "GND" V 1805 1422 50  0000 R CNN
F 2 "" H 1800 1550 50  0001 C CNN
F 3 "" H 1800 1550 50  0001 C CNN
	1    1800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1550 1800 1500
Connection ~ 1800 1500
Wire Wire Line
	1800 1500 1600 1500
$Comp
L power:+3.3V #PWR018
U 1 1 5C3BEB13
P 1800 1050
F 0 "#PWR018" H 1800 900 50  0001 C CNN
F 1 "+3.3V" V 1815 1178 50  0000 L CNN
F 2 "" H 1800 1050 50  0001 C CNN
F 3 "" H 1800 1050 50  0001 C CNN
	1    1800 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1050 1800 1100
Connection ~ 1800 1100
Wire Wire Line
	1800 1100 2000 1100
Wire Wire Line
	2700 2100 4750 2100
Wire Wire Line
	3900 2650 4150 2650
Wire Wire Line
	4750 3100 4650 3100
$Comp
L Device:R R5
U 1 1 5C46757F
P 8400 1950
F 0 "R5" H 8470 1996 50  0000 L CNN
F 1 "HEAT" V 8400 1850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8330 1950 50  0001 C CNN
F 3 "~" H 8400 1950 50  0001 C CNN
	1    8400 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5C467957
P 8400 2200
F 0 "#PWR031" H 8400 1950 50  0001 C CNN
F 1 "GND" H 8405 2027 50  0000 C CNN
F 2 "" H 8400 2200 50  0001 C CNN
F 3 "" H 8400 2200 50  0001 C CNN
	1    8400 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR030
U 1 1 5C4679BD
P 8400 1700
F 0 "#PWR030" H 8400 1550 50  0001 C CNN
F 1 "+5V" H 8415 1873 50  0000 C CNN
F 2 "" H 8400 1700 50  0001 C CNN
F 3 "" H 8400 1700 50  0001 C CNN
	1    8400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1700 8400 1800
Wire Wire Line
	8400 2100 8400 2200
Text Notes 8550 2050 0    50   ~ 0
Heater resistor
$Comp
L power:+3.3V #PWR0106
U 1 1 5C3C7090
P 5450 1250
F 0 "#PWR0106" H 5450 1100 50  0001 C CNN
F 1 "+3.3V" V 5465 1378 50  0000 L CNN
F 2 "" H 5450 1250 50  0001 C CNN
F 3 "" H 5450 1250 50  0001 C CNN
	1    5450 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2600 4650 2600
Wire Wire Line
	4750 2700 4650 2700
Wire Wire Line
	4750 2800 4650 2800
Wire Wire Line
	6050 2800 6150 2800
$Comp
L Connector:TestPoint TP1
U 1 1 5C43AB33
P 7200 1650
F 0 "TP1" V 7200 1850 50  0000 L CNN
F 1 "TX" V 7200 2100 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 7400 1650 50  0001 C CNN
F 3 "~" H 7400 1650 50  0001 C CNN
	1    7200 1650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5C43AB81
P 7200 1750
F 0 "TP2" V 7200 1950 50  0000 L CNN
F 1 "RX" V 7200 2200 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 7400 1750 50  0001 C CNN
F 3 "~" H 7400 1750 50  0001 C CNN
	1    7200 1750
	0    1    -1   0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5C43FFBF
P 7200 1850
F 0 "TP3" V 7200 2050 50  0000 L CNN
F 1 "GND" V 7200 2300 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 7400 1850 50  0001 C CNN
F 3 "~" H 7400 1850 50  0001 C CNN
	1    7200 1850
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5C43FFF1
P 7100 1850
F 0 "#PWR0107" H 7100 1600 50  0001 C CNN
F 1 "GND" H 7105 1677 50  0000 C CNN
F 2 "" H 7100 1850 50  0001 C CNN
F 3 "" H 7100 1850 50  0001 C CNN
	1    7100 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 1650 7200 1650
Wire Wire Line
	7100 1750 7200 1750
Wire Wire Line
	7100 1850 7200 1850
Text Label 6150 4100 0    50   ~ 0
SWCLK
Text Label 6150 4300 0    50   ~ 0
SWDIO
$EndSCHEMATC
