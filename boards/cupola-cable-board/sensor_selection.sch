EESchema Schematic File Version 4
LIBS:cupola-cable-board-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Jumper:SolderJumper_3_Open JP1
U 1 1 5C324175
P 1650 1050
F 0 "JP1" V 1604 1118 50  0000 L CNN
F 1 "Enc0_A" V 1695 1118 50  0000 L CNN
F 2 "" H 1650 1050 50  0001 C CNN
F 3 "~" H 1650 1050 50  0001 C CNN
	1    1650 1050
	0    -1   -1   0   
$EndComp
Text HLabel 1550 750  0    50   Output ~ 0
Magnet0_A
Text HLabel 1550 1350 0    50   Output ~ 0
Optical0_A
Wire Wire Line
	1550 750  1650 750 
Wire Wire Line
	1650 750  1650 850 
Wire Wire Line
	1650 1250 1650 1350
Wire Wire Line
	1650 1350 1550 1350
$Comp
L Jumper:SolderJumper_3_Open JP3
U 1 1 5C324A65
P 3300 1100
F 0 "JP3" V 3254 1168 50  0000 L CNN
F 1 "Enc1_A" V 3345 1168 50  0000 L CNN
F 2 "" H 3300 1100 50  0001 C CNN
F 3 "~" H 3300 1100 50  0001 C CNN
	1    3300 1100
	0    -1   -1   0   
$EndComp
Text HLabel 3200 800  0    50   Output ~ 0
Magnet1_A
Text HLabel 3200 1400 0    50   Output ~ 0
Optical1_A
Wire Wire Line
	3200 800  3300 800 
Wire Wire Line
	3300 800  3300 900 
Wire Wire Line
	3300 1300 3300 1400
Wire Wire Line
	3300 1400 3200 1400
$Comp
L Jumper:SolderJumper_3_Open JP5
U 1 1 5C324AE9
P 4900 1100
F 0 "JP5" V 4854 1168 50  0000 L CNN
F 1 "Enc2_A" V 4945 1168 50  0000 L CNN
F 2 "" H 4900 1100 50  0001 C CNN
F 3 "~" H 4900 1100 50  0001 C CNN
	1    4900 1100
	0    -1   -1   0   
$EndComp
Text HLabel 4800 800  0    50   Output ~ 0
Magnet2_A
Text HLabel 4800 1400 0    50   Output ~ 0
Optical2_A
Wire Wire Line
	4800 800  4900 800 
Wire Wire Line
	4900 800  4900 900 
Wire Wire Line
	4900 1300 4900 1400
Wire Wire Line
	4900 1400 4800 1400
$Comp
L Jumper:SolderJumper_3_Open JP2
U 1 1 5C324C33
P 1650 1850
F 0 "JP2" V 1604 1918 50  0000 L CNN
F 1 "Enc0_B" V 1695 1918 50  0000 L CNN
F 2 "" H 1650 1850 50  0001 C CNN
F 3 "~" H 1650 1850 50  0001 C CNN
	1    1650 1850
	0    -1   -1   0   
$EndComp
Text HLabel 1550 1550 0    50   Output ~ 0
Magnet0_B
Text HLabel 1550 2150 0    50   Output ~ 0
Optical0_B
Wire Wire Line
	1550 1550 1650 1550
Wire Wire Line
	1650 1550 1650 1650
Wire Wire Line
	1650 2050 1650 2150
Wire Wire Line
	1650 2150 1550 2150
$Comp
L Jumper:SolderJumper_3_Open JP4
U 1 1 5C324C3F
P 3300 1900
F 0 "JP4" V 3254 1968 50  0000 L CNN
F 1 "Enc1_B" V 3345 1968 50  0000 L CNN
F 2 "" H 3300 1900 50  0001 C CNN
F 3 "~" H 3300 1900 50  0001 C CNN
	1    3300 1900
	0    -1   -1   0   
$EndComp
Text HLabel 3200 1600 0    50   Output ~ 0
Magnet1_B
Text HLabel 3200 2200 0    50   Output ~ 0
Optical1_B
Wire Wire Line
	3200 1600 3300 1600
Wire Wire Line
	3300 1600 3300 1700
Wire Wire Line
	3300 2100 3300 2200
Wire Wire Line
	3300 2200 3200 2200
$Comp
L Jumper:SolderJumper_3_Open JP6
U 1 1 5C324C4B
P 4900 1900
F 0 "JP6" V 4854 1968 50  0000 L CNN
F 1 "Enc2_B" V 4945 1968 50  0000 L CNN
F 2 "" H 4900 1900 50  0001 C CNN
F 3 "~" H 4900 1900 50  0001 C CNN
	1    4900 1900
	0    -1   -1   0   
$EndComp
Text HLabel 4800 1600 0    50   Output ~ 0
Magnet2_B
Text HLabel 4800 2200 0    50   Output ~ 0
Optical2_B
Wire Wire Line
	4800 1600 4900 1600
Wire Wire Line
	4900 1600 4900 1700
Wire Wire Line
	4900 2100 4900 2200
Wire Wire Line
	4900 2200 4800 2200
Text HLabel 1900 1050 2    50   Output ~ 0
Out0_A
Text HLabel 1900 1850 2    50   Output ~ 0
Out0_B
Text HLabel 3550 1100 2    50   Output ~ 0
Out1_A
Text HLabel 3550 1900 2    50   Output ~ 0
Out1_B
Text HLabel 5150 1100 2    50   Output ~ 0
Out2_A
Text HLabel 5150 1900 2    50   Output ~ 0
Out2_B
Wire Wire Line
	1900 1050 1800 1050
Wire Wire Line
	3550 1100 3450 1100
Wire Wire Line
	5150 1100 5050 1100
Wire Wire Line
	5050 1900 5150 1900
Wire Wire Line
	3550 1900 3450 1900
Wire Wire Line
	1900 1850 1800 1850
$EndSCHEMATC
