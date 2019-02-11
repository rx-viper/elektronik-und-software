EESchema Schematic File Version 4
LIBS:cupola-feedthrouch-simulator-cache
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
L Connector:DB15_Female J3
U 1 1 5C457FD0
P 5100 650
F 0 "J3" H 5255 696 50  0000 L CNN
F 1 "DB15_Female" H 5255 605 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-15_Female_Vertical_P2.77x2.84mm_MountingHoles" H 5100 650 50  0001 C CNN
F 3 " ~" H 5100 650 50  0001 C CNN
	1    5100 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:DB15_Female J4
U 1 1 5C458102
P 6850 650
F 0 "J4" H 7005 696 50  0000 L CNN
F 1 "DB15_Female" H 7005 605 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-15_Female_Vertical_P2.77x2.84mm_MountingHoles" H 6850 650 50  0001 C CNN
F 3 " ~" H 6850 650 50  0001 C CNN
	1    6850 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:DB15_Female J5
U 1 1 5C458154
P 8600 650
F 0 "J5" H 8755 696 50  0000 L CNN
F 1 "DB15_Female" H 8755 605 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-15_Female_Vertical_P2.77x2.84mm_MountingHoles" H 8600 650 50  0001 C CNN
F 3 " ~" H 8600 650 50  0001 C CNN
	1    8600 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:DB15_Female J1
U 1 1 5C45832A
P 1600 650
F 0 "J1" H 1755 696 50  0000 L CNN
F 1 "DB15_Female" H 1755 605 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-15_Female_Vertical_P2.77x2.84mm_MountingHoles" H 1600 650 50  0001 C CNN
F 3 " ~" H 1600 650 50  0001 C CNN
	1    1600 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:DB15_Female J2
U 1 1 5C4583A8
P 3350 650
F 0 "J2" H 3505 696 50  0000 L CNN
F 1 "DB15_Female" H 3505 605 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-15_Female_Vertical_P2.77x2.84mm_MountingHoles" H 3350 650 50  0001 C CNN
F 3 " ~" H 3350 650 50  0001 C CNN
	1    3350 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector:DB9_Male J6
U 1 1 5C4586A2
P 7150 6000
F 0 "J6" V 7450 6000 50  0000 C CNN
F 1 "DB9_Male" V 7350 6000 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-9_Male_Vertical_P2.77x2.84mm_MountingHoles" H 7150 6000 50  0001 C CNN
F 3 " ~" H 7150 6000 50  0001 C CNN
	1    7150 6000
	0    1    1    0   
$EndComp
$Comp
L Connector:DB15_Male J7
U 1 1 5C4588DA
P 8600 6000
F 0 "J7" V 8900 6000 50  0000 C CNN
F 1 "DB15_Male" V 8800 6000 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-15_Male_Vertical_P2.77x2.84mm_MountingHoles" H 8600 6000 50  0001 C CNN
F 3 " ~" H 8600 6000 50  0001 C CNN
	1    8600 6000
	0    1    1    0   
$EndComp
$Comp
L DB_high_density:DB_26 U1
U 1 1 5C5F3AD9
P 2350 6100
F 0 "U1" V 2680 6125 60  0000 C CNN
F 1 "DB_26" V 2786 6125 60  0000 C CNN
F 2 "Connector_Dsub:DSUB-26-HD_Male_Vertical_P2.29x1.98mm_MountingHoles" H 3550 6100 60  0001 C CNN
F 3 "" H 3550 6100 60  0001 C CNN
	1    2350 6100
	0    1    1    0   
$EndComp
Text Notes 7950 6300 0    50   ~ 0
Motor\nPowerbaord
Text Notes 6800 6450 0    50   ~ 0
Power\nPowerboard
Text Notes 4050 6250 0    50   ~ 0
Pi-Board
Wire Wire Line
	7900 1550 7900 5700
Wire Wire Line
	8000 1550 8000 5700
Wire Wire Line
	8100 1550 8100 5700
Wire Wire Line
	8200 5700 8200 1550
Wire Wire Line
	8400 5700 8400 1550
Wire Wire Line
	8500 1550 8500 5700
Wire Wire Line
	8600 5700 8600 1550
Wire Wire Line
	8700 1550 8700 5700
Wire Wire Line
	8900 5700 8900 1550
Wire Wire Line
	9000 1550 9000 5700
Wire Wire Line
	9100 1550 9100 5700
Wire Wire Line
	9200 5700 9200 1550
Wire Wire Line
	9300 1550 9300 5700
$Comp
L Connector:DB25_Female J8
U 1 1 5C4584FC
P 5200 6000
F 0 "J8" V 5517 6000 50  0000 C CNN
F 1 "DB25_Female" V 5426 6000 50  0000 C CNN
F 2 "Connector_Dsub:DSUB-25_Female_Vertical_P2.77x2.84mm_MountingHoles" H 5200 6000 50  0001 C CNN
F 3 " ~" H 5200 6000 50  0001 C CNN
	1    5200 6000
	0    -1   1    0   
$EndComp
Wire Wire Line
	6150 3600 6400 3600
Wire Wire Line
	6400 3600 6400 5700
Wire Wire Line
	6150 1550 6150 3600
Wire Wire Line
	6300 5700 6300 3500
Wire Wire Line
	6300 3500 6250 3500
Wire Wire Line
	6250 3500 6250 1550
Wire Wire Line
	6200 5700 6200 3700
Wire Wire Line
	6200 3700 6350 3700
Wire Wire Line
	6350 3700 6350 1550
Wire Wire Line
	6450 1550 6450 3800
Wire Wire Line
	6450 3800 6100 3800
Wire Wire Line
	6100 3800 6100 5700
Wire Wire Line
	5600 5700 5600 5600
Wire Wire Line
	5600 5600 5500 5600
Wire Wire Line
	5500 5600 5500 5700
Wire Wire Line
	5400 5700 5400 5600
Wire Wire Line
	5400 5600 5300 5600
Wire Wire Line
	5300 5600 5300 5700
Wire Wire Line
	5600 5600 5600 5500
Wire Wire Line
	5600 5500 7050 5500
Wire Wire Line
	7050 5500 7050 5700
Connection ~ 5600 5600
Wire Wire Line
	5400 5600 5400 5400
Wire Wire Line
	5400 5400 7550 5400
Wire Wire Line
	7550 5400 7550 5700
Connection ~ 5400 5600
Wire Wire Line
	7350 5700 7350 5200
Wire Wire Line
	4000 5700 4000 5100
Wire Wire Line
	4200 5700 4200 4900
Wire Wire Line
	4400 5700 4400 4700
Wire Wire Line
	4500 5700 4500 4600
Wire Wire Line
	4600 5700 4600 4500
Wire Wire Line
	900  1550 900  1650
Wire Wire Line
	900  1650 1000 1650
Wire Wire Line
	1000 1650 1000 1550
Wire Wire Line
	1100 1550 1100 1650
Wire Wire Line
	1100 1650 1200 1650
Wire Wire Line
	1200 1650 1200 1550
Wire Wire Line
	2650 1550 2650 1650
Wire Wire Line
	2650 1650 2750 1650
Wire Wire Line
	2750 1650 2750 1550
Wire Wire Line
	2850 1550 2850 1650
Wire Wire Line
	2850 1650 2950 1650
Wire Wire Line
	2950 1650 2950 1550
Wire Wire Line
	4400 1550 4400 1650
Wire Wire Line
	4400 1650 4500 1650
Wire Wire Line
	4500 1650 4500 1550
Wire Wire Line
	4600 1550 4600 1650
Wire Wire Line
	4600 1650 4700 1650
Wire Wire Line
	4700 1650 4700 1550
$Comp
L Connector:Conn_01x06_Male J14
U 1 1 5C637822
P 550 2000
F 0 "J14" H 656 2378 50  0000 C CNN
F 1 "Conn_01x06_Male" H 656 2287 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 550 2000 50  0001 C CNN
F 3 "~" H 550 2000 50  0001 C CNN
	1    550  2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  1800 900  1800
Wire Wire Line
	900  1800 900  1650
Connection ~ 900  1650
Wire Wire Line
	750  1900 1100 1900
Wire Wire Line
	1100 1900 1100 1650
Connection ~ 1100 1650
Wire Wire Line
	750  2000 2650 2000
Wire Wire Line
	2650 2000 2650 1650
Connection ~ 2650 1650
Wire Wire Line
	750  2100 2850 2100
Wire Wire Line
	2850 2100 2850 1650
Connection ~ 2850 1650
Wire Wire Line
	750  2200 4400 2200
Wire Wire Line
	4400 2200 4400 1650
Connection ~ 4400 1650
Wire Wire Line
	750  2300 4600 2300
Wire Wire Line
	4600 2300 4600 1650
Connection ~ 4600 1650
Wire Wire Line
	7250 5300 7550 5300
Wire Wire Line
	7250 5300 7250 5700
Wire Wire Line
	7350 5200 7450 5200
Wire Wire Line
	7550 1550 7550 5300
Wire Wire Line
	7450 1550 7450 5200
Wire Wire Line
	7350 5100 4000 5100
Wire Wire Line
	4100 5000 7250 5000
Wire Wire Line
	4100 5000 4100 5700
Wire Wire Line
	7150 4900 4200 4900
Wire Wire Line
	4300 4800 7050 4800
Wire Wire Line
	4300 4800 4300 5700
Wire Wire Line
	6950 4700 4400 4700
Wire Wire Line
	6850 4600 4500 4600
Wire Wire Line
	6750 4500 4600 4500
Wire Wire Line
	6650 4400 4700 4400
Wire Wire Line
	4700 4400 4700 5700
Wire Wire Line
	7350 1550 7350 5100
Wire Wire Line
	7250 1550 7250 5000
Wire Wire Line
	7150 1550 7150 4900
Wire Wire Line
	7050 1550 7050 4800
Wire Wire Line
	6950 1550 6950 4700
Wire Wire Line
	6850 1550 6850 4600
Wire Wire Line
	6750 1550 6750 4500
Wire Wire Line
	6650 1550 6650 4400
Wire Wire Line
	2000 1550 2000 2550
Wire Wire Line
	2000 2550 750  2550
Wire Wire Line
	2100 1550 2100 2650
Wire Wire Line
	2100 2650 750  2650
Wire Wire Line
	2200 1550 2200 2750
Wire Wire Line
	2200 2750 750  2750
Wire Wire Line
	2300 1550 2300 2850
Wire Wire Line
	2300 2850 750  2850
Wire Wire Line
	3750 1550 3750 2950
Wire Wire Line
	3750 2950 750  2950
Wire Wire Line
	3850 1550 3850 3050
Wire Wire Line
	3850 3050 750  3050
Wire Wire Line
	3950 1550 3950 3150
Wire Wire Line
	3950 3150 750  3150
Wire Wire Line
	4050 1550 4050 3250
Wire Wire Line
	4050 3250 750  3250
Wire Wire Line
	5500 1550 5500 3350
Wire Wire Line
	5500 3350 750  3350
Wire Wire Line
	5600 1550 5600 3450
Wire Wire Line
	5600 3450 750  3450
Wire Wire Line
	5700 1550 5700 3550
Wire Wire Line
	5700 3550 750  3550
Wire Wire Line
	5800 1550 5800 3650
Wire Wire Line
	5800 3650 750  3650
Wire Wire Line
	1900 1550 1900 3750
Wire Wire Line
	1900 3750 1550 3750
Wire Wire Line
	1550 3750 1550 5700
Wire Wire Line
	1800 1550 1800 3850
Wire Wire Line
	1800 3850 1650 3850
Wire Wire Line
	1650 3850 1650 5700
Wire Wire Line
	1700 1550 1700 3950
Wire Wire Line
	1700 3950 1750 3950
Wire Wire Line
	1750 3950 1750 5700
Wire Wire Line
	1600 1550 1600 4050
Wire Wire Line
	1600 4050 1850 4050
Wire Wire Line
	1850 4050 1850 5700
Wire Wire Line
	1500 1550 1500 4150
Wire Wire Line
	1500 4150 1950 4150
Wire Wire Line
	1950 4150 1950 5700
Wire Wire Line
	1400 1550 1400 4250
Wire Wire Line
	1400 4250 2050 4250
Wire Wire Line
	2050 4250 2050 5700
Wire Wire Line
	3650 1550 3650 3750
Wire Wire Line
	3650 3750 2250 3750
Wire Wire Line
	2250 3750 2250 5700
Wire Wire Line
	3550 1550 3550 1650
Wire Wire Line
	3550 3850 2350 3850
Wire Wire Line
	2350 3850 2350 5700
Wire Wire Line
	3450 1550 3450 3950
Wire Wire Line
	3450 3950 2450 3950
Wire Wire Line
	2450 3950 2450 5700
Wire Wire Line
	3350 1550 3350 4050
Wire Wire Line
	3350 4050 2550 4050
Wire Wire Line
	2550 4050 2550 5700
Wire Wire Line
	3250 1550 3250 4150
Wire Wire Line
	3250 4150 2650 4150
Wire Wire Line
	2650 4150 2650 5700
Wire Wire Line
	3150 1550 3150 4250
Wire Wire Line
	2750 4250 2750 5700
Wire Wire Line
	2750 4250 3150 4250
Wire Wire Line
	5400 1550 5400 3750
Wire Wire Line
	5400 3750 3750 3750
Wire Wire Line
	3750 3750 3750 4350
Wire Wire Line
	3750 4350 2950 4350
Wire Wire Line
	2950 4350 2950 5700
Wire Wire Line
	5300 1550 5300 3850
Wire Wire Line
	5300 3850 3850 3850
Wire Wire Line
	3850 3850 3850 4450
Wire Wire Line
	3850 4450 3050 4450
Wire Wire Line
	3050 4450 3050 5700
Wire Wire Line
	5200 1550 5200 3950
Wire Wire Line
	5200 3950 3950 3950
Wire Wire Line
	3950 3950 3950 4550
Wire Wire Line
	3950 4550 3150 4550
Wire Wire Line
	3150 4550 3150 5700
Wire Wire Line
	5100 1550 5100 4050
Wire Wire Line
	5100 4050 4050 4050
Wire Wire Line
	4050 4050 4050 4650
Wire Wire Line
	4050 4650 3250 4650
Wire Wire Line
	3250 4650 3250 5700
Wire Wire Line
	5000 1550 5000 4150
Wire Wire Line
	5000 4150 4150 4150
Wire Wire Line
	4150 4150 4150 4750
Wire Wire Line
	4150 4750 3350 4750
Wire Wire Line
	3350 4750 3350 5700
Wire Wire Line
	4900 1550 4900 4250
Wire Wire Line
	4250 4250 4250 4850
Wire Wire Line
	4250 4850 3450 4850
Wire Wire Line
	3450 4850 3450 5700
Wire Wire Line
	4250 4250 4900 4250
Text Label 1550 5650 1    50   ~ 0
enc3_B-
Text Label 1650 5650 1    50   ~ 0
enc3_B+
Text Label 1750 5650 1    50   ~ 0
enc3_A-
Text Label 1850 5650 1    50   ~ 0
enc3_A+
Text Label 1950 5650 1    50   ~ 0
enc3_GND
Text Label 2050 5650 1    50   ~ 0
enc3_5V
Text Label 2250 5650 1    50   ~ 0
enc2_B-
Text Label 2350 5650 1    50   ~ 0
enc2_B+
Text Label 2550 5650 1    50   ~ 0
enc2_A+
Text Label 2450 5650 1    50   ~ 0
enc2_A-
Text Label 2650 5650 1    50   ~ 0
enc2_GND
Text Label 2750 5650 1    50   ~ 0
enc2_5V
Text Label 2950 5650 1    50   ~ 0
enc1_B-
Text Label 3050 5650 1    50   ~ 0
enc1_B+
Text Label 3150 5650 1    50   ~ 0
enc1_A-
Text Label 3250 5650 1    50   ~ 0
enc1_A+
Text Label 3350 5650 1    50   ~ 0
enc1_5V
Text Label 3450 5650 1    50   ~ 0
enc1_GND
Text Label 4000 5650 1    50   ~ 0
flir_SDA
Text Label 4100 5650 1    50   ~ 0
flir_SCL
Text Label 4200 5650 1    50   ~ 0
flir_CE
Text Label 4300 5650 1    50   ~ 0
flir_MISO
Text Label 4400 5650 1    50   ~ 0
flir_MOSI
Text Label 4500 5650 1    50   ~ 0
flir_CLCK
Text Label 4600 5650 1    50   ~ 0
flir_GND
Text Label 4700 5650 1    50   ~ 0
flir_VCC
Wire Wire Line
	4800 5700 4800 5250
Wire Wire Line
	4900 5700 4900 5150
Text Label 4800 5650 1    50   ~ 0
uart_RX
Text Label 4900 5650 1    50   ~ 0
uart_TX
$Comp
L Connector:Conn_01x02_Male J16
U 1 1 5C76BA3F
P 550 5150
F 0 "J16" H 656 5328 50  0000 C CNN
F 1 "Conn_01x02_Male" H 656 5237 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 550 5150 50  0001 C CNN
F 3 "~" H 550 5150 50  0001 C CNN
	1    550  5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  5150 4900 5150
Wire Wire Line
	750  5250 4800 5250
Text Label 5650 5500 0    50   ~ 0
piboard_5V
Text Label 5650 5400 0    50   ~ 0
piboard_GND
Text Label 7350 5700 1    50   ~ 0
camera-light_LED_OUT
Text Label 7250 5700 1    50   ~ 0
camera-light_GND
Wire Wire Line
	3550 1950 3550 3850
Wire Wire Line
	900  950  900  1050
Wire Wire Line
	1000 1050 1000 950 
Wire Wire Line
	1100 950  1100 1050
Wire Wire Line
	1200 950  1200 1050
Wire Wire Line
	1300 950  1300 1050
Wire Wire Line
	1400 950  1400 1050
Wire Wire Line
	1500 1050 1500 950 
Wire Wire Line
	1600 950  1600 1050
Wire Wire Line
	1700 950  1700 1050
Wire Wire Line
	1800 950  1800 1050
Wire Wire Line
	1900 950  1900 1050
Wire Wire Line
	2000 950  2000 1050
Wire Wire Line
	2100 950  2100 1050
Wire Wire Line
	2200 950  2200 1050
Wire Wire Line
	2300 950  2300 1050
Wire Wire Line
	2650 950  2650 1050
Wire Wire Line
	2750 950  2750 1050
Wire Wire Line
	2850 950  2850 1050
Wire Wire Line
	2950 950  2950 1050
Wire Wire Line
	3050 950  3050 1050
Wire Wire Line
	3150 950  3150 1050
Wire Wire Line
	3250 950  3250 1050
Wire Wire Line
	3350 950  3350 1050
Wire Wire Line
	3450 950  3450 1050
Wire Wire Line
	3550 950  3550 1050
Wire Wire Line
	3650 950  3650 1050
Wire Wire Line
	3750 950  3750 1050
Wire Wire Line
	3850 950  3850 1050
Wire Wire Line
	3950 950  3950 1050
Wire Wire Line
	4050 950  4050 1050
Wire Wire Line
	4400 950  4400 1050
Wire Wire Line
	4500 950  4500 1050
Wire Wire Line
	4600 950  4600 1050
Wire Wire Line
	4700 950  4700 1050
Wire Wire Line
	4800 950  4800 1050
Wire Wire Line
	4900 950  4900 1050
Wire Wire Line
	5000 950  5000 1050
Wire Wire Line
	5100 950  5100 1050
Wire Wire Line
	5200 950  5200 1050
Wire Wire Line
	5300 950  5300 1050
Wire Wire Line
	5400 950  5400 1050
Wire Wire Line
	5500 950  5500 1050
Wire Wire Line
	5600 950  5600 1050
Wire Wire Line
	5700 950  5700 1050
Wire Wire Line
	5800 950  5800 1050
Wire Wire Line
	6150 950  6150 1050
Wire Wire Line
	6250 950  6250 1050
Wire Wire Line
	6350 950  6350 1050
Wire Wire Line
	6450 950  6450 1050
Wire Wire Line
	6550 950  6550 1050
Wire Wire Line
	6650 950  6650 1050
Wire Wire Line
	6750 950  6750 1050
Wire Wire Line
	6850 950  6850 1050
Wire Wire Line
	6950 950  6950 1050
Wire Wire Line
	7050 950  7050 1050
Wire Wire Line
	7150 950  7150 1050
Wire Wire Line
	7250 950  7250 1050
Wire Wire Line
	7350 950  7350 1050
Wire Wire Line
	7450 950  7450 1050
Wire Wire Line
	7550 950  7550 1050
Wire Wire Line
	7900 950  7900 1050
Wire Wire Line
	8000 950  8000 1050
Wire Wire Line
	8100 950  8100 1050
Wire Wire Line
	8200 950  8200 1050
Wire Wire Line
	8300 950  8300 1050
Wire Wire Line
	8400 950  8400 1050
Wire Wire Line
	8500 950  8500 1050
Wire Wire Line
	8600 950  8600 1050
Wire Wire Line
	8700 950  8700 1050
Wire Wire Line
	8800 950  8800 1050
Wire Wire Line
	8900 950  8900 1050
Wire Wire Line
	9000 950  9000 1050
Wire Wire Line
	9100 950  9100 1050
Wire Wire Line
	9200 950  9200 1050
Wire Wire Line
	9300 950  9300 1050
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J13
U 1 1 5CD31A70
P 8600 1350
F 0 "J13" V 8696 562 50  0000 R CNN
F 1 "Conn_02x15_Odd_Even" V 8605 562 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x15_P2.54mm_Vertical" H 8600 1350 50  0001 C CNN
F 3 "~" H 8600 1350 50  0001 C CNN
	1    8600 1350
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J12
U 1 1 5CD631F3
P 6850 1350
F 0 "J12" V 6946 562 50  0000 R CNN
F 1 "Conn_02x15_Odd_Even" V 6855 562 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x15_P2.54mm_Vertical" H 6850 1350 50  0001 C CNN
F 3 "~" H 6850 1350 50  0001 C CNN
	1    6850 1350
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J11
U 1 1 5CD6329E
P 5100 1350
F 0 "J11" V 5196 562 50  0000 R CNN
F 1 "Conn_02x15_Odd_Even" V 5105 562 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x15_P2.54mm_Vertical" H 5100 1350 50  0001 C CNN
F 3 "~" H 5100 1350 50  0001 C CNN
	1    5100 1350
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J10
U 1 1 5CD633D1
P 3350 1350
F 0 "J10" V 3446 562 50  0000 R CNN
F 1 "Conn_02x15_Odd_Even" V 3355 562 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x15_P2.54mm_Vertical" H 3350 1350 50  0001 C CNN
F 3 "~" H 3350 1350 50  0001 C CNN
	1    3350 1350
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J9
U 1 1 5CD634FA
P 1600 1350
F 0 "J9" V 1696 562 50  0000 R CNN
F 1 "Conn_02x15_Odd_Even" V 1605 562 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x15_P2.54mm_Vertical" H 1600 1350 50  0001 C CNN
F 3 "~" H 1600 1350 50  0001 C CNN
	1    1600 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 1550 8800 5700
Wire Wire Line
	8300 1550 8300 5700
$Comp
L Connector:DB25_Male_MountingHoles J15
U 1 1 5CDAD619
P 450 3750
F 0 "J15" H 630 3661 50  0000 L CNN
F 1 "DB25_Male_MountingHoles" H 630 3752 50  0000 L CNN
F 2 "Connector_Dsub:DSUB-25_Male_Vertical_P2.77x2.84mm_MountingHoles" H 450 3750 50  0001 C CNN
F 3 " ~" H 450 3750 50  0001 C CNN
	1    450  3750
	-1   0    0    1   
$EndComp
$EndSCHEMATC
