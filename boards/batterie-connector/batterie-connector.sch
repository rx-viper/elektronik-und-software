EESchema Schematic File Version 4
EELAYER 26 0
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
L Connector:Conn_01x02_Male J101
U 1 1 5C40C287
P 2400 3600
F 0 "J101" H 2506 3778 50  0000 C CNN
F 1 "2W2C" H 2506 3687 50  0000 C CNN
F 2 "batterie-connector:D-Sub-Combo_2W2C" H 2400 3600 50  0001 C CNN
F 3 "~" H 2400 3600 50  0001 C CNN
	1    2400 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J102
U 1 1 5C40C3DD
P 3350 3300
F 0 "J102" V 3410 3341 50  0000 L CNN
F 1 "+" V 3501 3341 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3350 3300 50  0001 C CNN
F 3 "~" H 3350 3300 50  0001 C CNN
	1    3350 3300
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J104
U 1 1 5C40C498
P 3750 3300
F 0 "J104" V 3810 3341 50  0000 L CNN
F 1 "+" V 3901 3341 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3750 3300 50  0001 C CNN
F 3 "~" H 3750 3300 50  0001 C CNN
	1    3750 3300
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J103
U 1 1 5C40C4BA
P 3350 4000
F 0 "J103" V 3503 3912 50  0000 R CNN
F 1 "-" V 3412 3912 50  0000 R CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3350 4000 50  0001 C CNN
F 3 "~" H 3350 4000 50  0001 C CNN
	1    3350 4000
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J105
U 1 1 5C40C54A
P 3750 4000
F 0 "J105" V 3903 3912 50  0000 R CNN
F 1 "-" V 3812 3912 50  0000 R CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 3750 4000 50  0001 C CNN
F 3 "~" H 3750 4000 50  0001 C CNN
	1    3750 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 3800 3750 3700
Wire Wire Line
	3750 3700 3350 3700
Wire Wire Line
	3350 3800 3350 3700
Connection ~ 3350 3700
Wire Wire Line
	3350 3700 2600 3700
Wire Wire Line
	2600 3600 3350 3600
Wire Wire Line
	3750 3600 3750 3500
Wire Wire Line
	3350 3500 3350 3600
Connection ~ 3350 3600
Wire Wire Line
	3350 3600 3750 3600
Text Label 2850 3600 0    50   ~ 0
PLUS
Text Label 2850 3700 0    50   ~ 0
MINUS
$EndSCHEMATC
