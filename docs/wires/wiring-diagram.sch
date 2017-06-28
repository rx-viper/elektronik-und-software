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
LIBS:d-sub_high-pin-count
LIBS:DB
LIBS:wiring-diagram-cache
EELAYER 25 0
EELAYER END
$Descr User 11693 35433
encoding utf-8
Sheet 1 1
Title "Wiring Diagram"
Date "2017-05-05"
Rev "1"
Comp "VIPER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DB9_FEMALE J102_mainboard
U 1 1 5953828C
P 2700 1550
F 0 "J102_mainboard" H 2700 2100 50  0000 C CNN
F 1 "DB9_FEMALE" H 2700 975 50  0000 C CNN
F 2 "" H 2700 1550 50  0001 C CNN
F 3 "" H 2700 1550 50  0001 C CNN
	1    2700 1550
	-1   0    0    1   
$EndComp
Text Label 3050 1850 0    60   ~ 0
pressure_SCL
Text Label 3050 1750 0    60   ~ 0
pressure_SDA
Text Label 3050 1950 0    60   ~ 0
pressure_GND
Text Label 3050 1650 0    60   ~ 0
pressure_VCC_3V3
Text Notes 6500 1450 0    60   ~ 0
BOARD: pressure-sensor
$Comp
L CONN_01X04_MALE J1_temperature-sensor-DS1731
U 1 1 59538F72
P 8200 -2550
F 0 "J1_temperature-sensor-DS1731" H 8200 -2175 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 8200 -2950 50  0000 C CNN
F 2 "" H 8200 -2250 50  0001 C CNN
F 3 "" H 8200 -2250 50  0001 C CNN
	1    8200 -2550
	-1   0    0    1   
$EndComp
Text Label 3050 1450 0    60   ~ 0
temp_VCC_3V3
Text Label 3050 1350 0    60   ~ 0
temp_SCL
Text Label 3050 1250 0    60   ~ 0
temp_SDA
Text Label 3050 1150 0    60   ~ 0
temp_GND
Text Notes 7400 -3050 0    60   ~ 0
BOARD: temperature-sensor-DS1731
$Comp
L DB9_FEMALE J103_mainboard
U 1 1 5953BEB8
P 2700 3150
F 0 "J103_mainboard" H 2700 3700 50  0000 C CNN
F 1 "DB9_FEMALE" H 2700 2575 50  0000 C CNN
F 2 "" H 2700 3150 50  0001 C CNN
F 3 "" H 2700 3150 50  0001 C CNN
	1    2700 3150
	-1   0    0    1   
$EndComp
Text Label 3050 3550 0    60   ~ 0
raspi_TX
Text Label 3050 3350 0    60   ~ 0
raspi_RX
Text Label 3050 3450 0    60   ~ 0
cam_GND
$Comp
L DB_26 U1201_mainboard
U 1 1 5953C94B
P 2600 5300
F 0 "U1201_mainboard" H 2600 3950 60  0000 C CNN
F 1 "DB_26" H 2600 6750 60  0000 C CNN
F 2 "" H 3800 5300 60  0001 C CNN
F 3 "" H 3800 5300 60  0001 C CNN
	1    2600 5300
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X04_MALE J1_pressure-sensor
U 1 1 595383DD
P 7300 1950
F 0 "J1_pressure-sensor" H 7300 2325 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 7300 1550 50  0000 C CNN
F 2 "" H 7300 2250 50  0001 C CNN
F 3 "" H 7300 2250 50  0001 C CNN
	1    7300 1950
	-1   0    0    1   
$EndComp
Text Label 3050 6200 0    60   ~ 0
enc1_A+
Text Label 3050 6100 0    60   ~ 0
enc1_A-
Text Label 3050 6000 0    60   ~ 0
enc1_B+
Text Label 3050 5900 0    60   ~ 0
enc1_B-
Text Label 3050 6400 0    60   ~ 0
enc1_GND
Text Label 3050 6300 0    60   ~ 0
enc1_5V
Text Label 3050 5500 0    60   ~ 0
enc2_A+
Text Label 3050 5400 0    60   ~ 0
enc2_A-
Text Label 3050 5300 0    60   ~ 0
enc2_B+
Text Label 3050 5200 0    60   ~ 0
enc2_B-
Text Label 3050 5600 0    60   ~ 0
enc2_GND
Text Label 3050 5700 0    60   ~ 0
enc2_5V
Text Label 3050 5000 0    60   ~ 0
enc3_5V
Text Label 3050 4800 0    60   ~ 0
enc3_A+
Text Label 3050 4700 0    60   ~ 0
enc3_A-
Text Label 3050 4600 0    60   ~ 0
enc3_B+
Text Label 3050 4500 0    60   ~ 0
enc3_B-
Text Label 3050 4900 0    60   ~ 0
enc3_GND
$Comp
L CONN_02X03 J1_optical-distance_3
U 1 1 59542CBF
P 10150 5100
F 0 "J1_optical-distance_3" H 10150 5300 50  0000 C CNN
F 1 "CONN_02X03" H 10150 4900 50  0000 C CNN
F 2 "" H 10150 3900 50  0001 C CNN
F 3 "" H 10150 3900 50  0001 C CNN
	1    10150 5100
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 J1_optical-distance_1
U 1 1 5954347B
P 6700 6400
F 0 "J1_optical-distance_1" H 6700 6600 50  0000 C CNN
F 1 "CONN_02X03" H 6700 6200 50  0000 C CNN
F 2 "" H 6700 5200 50  0001 C CNN
F 3 "" H 6700 5200 50  0001 C CNN
	1    6700 6400
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 J1_optical-distance_?
U 1 1 59543BF8
P 8450 5800
F 0 "J1_optical-distance_?" H 8450 6000 50  0000 C CNN
F 1 "CONN_02X03" H 8450 5600 50  0000 C CNN
F 2 "" H 8450 4600 50  0001 C CNN
F 3 "" H 8450 4600 50  0001 C CNN
	1    8450 5800
	1    0    0    -1  
$EndComp
Text Notes 9650 4450 0    60   ~ 0
BOARD: optical-distance
Text Notes 7950 5150 0    60   ~ 0
BOARD: optical-distance
Text Notes 6200 5850 0    60   ~ 0
BOARD: optical-distance
$Comp
L DB_78 U202_mainboard
U 1 1 59546962
P 2550 11650
F 0 "U202_mainboard" H 2550 7350 60  0000 C CNN
F 1 "DB_78" H 2550 15650 60  0000 C CNN
F 2 "" H 2400 15350 60  0001 C CNN
F 3 "" H 2400 15350 60  0001 C CNN
	1    2550 11650
	-1   0    0    -1  
$EndComp
Text Notes 1600 11700 1    60   ~ 0
Temperature sensor connectors
$Comp
L DB_44 U201_mainboard
U 1 1 59546FD6
P 2600 18350
F 0 "U201_mainboard" H 2600 16000 60  0000 C CNN
F 1 "DB_44" H 2600 20600 60  0000 C CNN
F 2 "" H 3800 18350 60  0001 C CNN
F 3 "" H 3800 18350 60  0001 C CNN
	1    2600 18350
	-1   0    0    -1  
$EndComp
$Comp
L DB25_FEMALE J201_mainboard
U 1 1 59548AFB
P 2700 22350
F 0 "J201_mainboard" H 2700 23700 50  0000 C CNN
F 1 "DB25_FEMALE" H 2700 20975 50  0000 C CNN
F 2 "" H 2700 22350 50  0001 C CNN
F 3 "" H 2700 22350 50  0001 C CNN
	1    2700 22350
	-1   0    0    -1  
$EndComp
Text Notes 1000 800  0    60   ~ 0
BOARD: mainboard
$Comp
L DB15_MALE J101_powerboard
U 1 1 59552ADF
P 2700 25400
F 0 "J101_powerboard" H 2720 26250 50  0000 C CNN
F 1 "DB15_MALE" H 2700 24525 50  0000 C CNN
F 2 "" H 2700 25400 50  0001 C CNN
F 3 "" H 2700 25400 50  0001 C CNN
	1    2700 25400
	-1   0    0    1   
$EndComp
Text Label 3150 26100 0    60   ~ 0
RXSM_GND
Text Label 3150 24800 0    60   ~ 0
RXSM_POWER
Text Label 3150 24900 0    60   ~ 0
RXSM_CHARGE+
Text Label 3150 25100 0    60   ~ 0
RXSM_SODS
Text Label 3150 25300 0    60   ~ 0
RXSM_SOE
Text Label 3150 25400 0    60   ~ 0
RXSM_CHARGE-
Text Label 3150 25500 0    60   ~ 0
RXSM_LO
Text Label 3150 25600 0    60   ~ 0
RXSM_RX_A
Text Label 3150 25700 0    60   ~ 0
RXSM_RX_Y
Text Label 3150 25800 0    60   ~ 0
RXSM_B(inverted)
Text Label 3150 25900 0    60   ~ 0
RXSM_Z(inverted)
$Comp
L DB9_FEMALE J103_powerboard
U 1 1 59556B6B
P 2700 27050
F 0 "J103_powerboard" H 2700 27600 50  0000 C CNN
F 1 "DB9_FEMALE" H 2700 26475 50  0000 C CNN
F 2 "" H 2700 27050 50  0001 C CNN
F 3 "" H 2700 27050 50  0001 C CNN
	1    2700 27050
	-1   0    0    1   
$EndComp
Text Label 3100 26850 0    60   ~ 0
camera-light_LED_OUT
Text Label 3100 26950 0    60   ~ 0
camera-light_GND
$Comp
L DB15_FEMALE J104_powerboard
U 1 1 595585AE
P 2700 28750
F 0 "J104_powerboard" H 2720 29600 50  0000 C CNN
F 1 "DB15_FEMALE" H 2700 27875 50  0000 C CNN
F 2 "" H 2700 28750 50  0001 C CNN
F 3 "" H 2700 28750 50  0001 C CNN
	1    2700 28750
	-1   0    0    1   
$EndComp
Text Label 3100 28150 0    60   ~ 0
motor_PHASE_W
Text Label 3100 28250 0    60   ~ 0
motor_PHASE_V
Text Label 3100 28350 0    60   ~ 0
motor_PHASE_U
Text Label 3100 28650 0    60   ~ 0
endswitch_out
Text Label 3100 28550 0    60   ~ 0
endswitch_5V
Text Label 3100 29050 0    60   ~ 0
motor-encoder_A+
Text Label 3100 28950 0    60   ~ 0
motor-encoder_A-
Text Label 3100 28850 0    60   ~ 0
motor-encoder_B+
Text Label 3100 28750 0    60   ~ 0
motor-encoder_B-
Text Label 3100 29450 0    60   ~ 0
motor-hall_U
Text Label 3100 29350 0    60   ~ 0
motor-hall_V
Text Label 3100 29250 0    60   ~ 0
motor-hall_W
$Comp
L DB25_FEMALE J801_powerboard
U 1 1 5955DA13
P 2700 31300
F 0 "J801_powerboard" H 2700 32650 50  0000 C CNN
F 1 "DB25_FEMALE" H 2700 29925 50  0000 C CNN
F 2 "" H 2700 31300 50  0001 C CNN
F 3 "" H 2700 31300 50  0001 C CNN
	1    2700 31300
	-1   0    0    1   
$EndComp
Text Notes 1000 24450 0    60   ~ 0
BOARD: powerboard
Text Label 3150 30900 0    60   ~ 0
bat_24V_3
Text Label 3150 31700 0    60   ~ 0
bat_24V_2
Text Label 3150 32500 0    60   ~ 0
bat_24V_1
Text Label 3150 32100 0    60   ~ 0
probe_1
Text Label 3150 31300 0    60   ~ 0
probe_2
Text Label 3150 30500 0    60   ~ 0
probe_3
$Comp
L CONN_01X02 P1_camera-light_1
U 1 1 59540207
P 5950 26900
F 0 "P1_camera-light_1" V 6050 26650 50  0000 C CNN
F 1 "CONN_01X02" V 5950 26550 50  0000 C CNN
F 2 "" H 5950 26900 50  0001 C CNN
F 3 "" H 5950 26900 50  0001 C CNN
	1    5950 26900
	1    0    0    -1  
$EndComp
Text Notes 5700 26700 0    60   ~ 0
BOARD: camera-light
$Comp
L CONN_01X02 P2_camera-light_1
U 1 1 59540A79
P 6300 26900
F 0 "P2_camera-light_1" V 6400 26650 50  0000 C CNN
F 1 "CONN_01X02" V 6300 26550 50  0000 C CNN
F 2 "" H 6300 26900 50  0001 C CNN
F 3 "" H 6300 26900 50  0001 C CNN
	1    6300 26900
	-1   0    0    -1  
$EndComp
Text Notes 5900 26800 0    60   ~ 0
-
Text Notes 6250 26800 0    60   ~ 0
+
$Comp
L CONN_01X02 P1_camera-light_?
U 1 1 59542D60
P 7700 26900
F 0 "P1_camera-light_?" V 7800 26650 50  0000 C CNN
F 1 "CONN_01X02" V 7700 26550 50  0000 C CNN
F 2 "" H 7700 26900 50  0001 C CNN
F 3 "" H 7700 26900 50  0001 C CNN
	1    7700 26900
	1    0    0    -1  
$EndComp
Text Notes 7450 26700 0    60   ~ 0
BOARD: camera-light
$Comp
L CONN_01X02 P2_camera-light_?
U 1 1 59542D69
P 8050 26900
F 0 "P2_camera-light_?" V 8150 26650 50  0000 C CNN
F 1 "CONN_01X02" V 8050 26550 50  0000 C CNN
F 2 "" H 8050 26900 50  0001 C CNN
F 3 "" H 8050 26900 50  0001 C CNN
	1    8050 26900
	-1   0    0    -1  
$EndComp
Text Notes 7650 26800 0    60   ~ 0
-
Text Notes 8000 26800 0    60   ~ 0
+
$Comp
L CONN_01X02 P1_camera-light_?
U 1 1 595431FD
P 9500 26900
F 0 "P1_camera-light_?" V 9600 26650 50  0000 C CNN
F 1 "CONN_01X02" V 9500 26550 50  0000 C CNN
F 2 "" H 9500 26900 50  0001 C CNN
F 3 "" H 9500 26900 50  0001 C CNN
	1    9500 26900
	1    0    0    -1  
$EndComp
Text Notes 9250 26700 0    60   ~ 0
BOARD: camera-light
$Comp
L CONN_01X02 P2_camera-light_?
U 1 1 59543206
P 9850 26900
F 0 "P2_camera-light_?" V 9950 26650 50  0000 C CNN
F 1 "CONN_01X02" V 9850 26550 50  0000 C CNN
F 2 "" H 9850 26900 50  0001 C CNN
F 3 "" H 9850 26900 50  0001 C CNN
	1    9850 26900
	-1   0    0    -1  
$EndComp
Text Notes 9450 26800 0    60   ~ 0
-
Text Notes 9800 26800 0    60   ~ 0
+
$Comp
L CONN_01X08 J1_motor
U 1 1 59543EDC
P 9350 28500
F 0 "J1_motor" H 9350 28950 50  0000 C CNN
F 1 "CONN_01X08" V 9450 28500 50  0000 C CNN
F 2 "" H 9350 28500 50  0001 C CNN
F 3 "" H 9350 28500 50  0001 C CNN
	1    9350 28500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J1_endswitch
U 1 1 59544789
P 8100 28850
F 0 "J1_endswitch" H 8100 29000 50  0000 C CNN
F 1 "CONN_01X02" H 8100 28700 50  0000 C CNN
F 2 "" H 8100 28850 50  0001 C CNN
F 3 "" H 8100 28850 50  0001 C CNN
	1    8100 28850
	1    0    0    -1  
$EndComp
Text Notes 7800 28650 0    60   ~ 0
End-Switch
Text Label 3100 28450 0    60   ~ 0
motor-hall_5V
Text Label 3100 28050 0    60   ~ 0
motor-hall_GND
$Comp
L CONN_01X10 J1_motor-encoder
U 1 1 5954944C
P 7000 30050
F 0 "J1_motor-encoder" V 7100 30350 50  0000 C CNN
F 1 "CONN_01X10" V 7100 29700 50  0000 C CNN
F 2 "" H 7000 30050 50  0001 C CNN
F 3 "" H 7000 30050 50  0001 C CNN
	1    7000 30050
	0    -1   1    0   
$EndComp
Text Notes 8650 28000 0    60   ~ 0
Motor EC-max 22, 283840
Text Label 6550 29850 1    60   ~ 0
Motor+
Text Label 6850 29850 1    60   ~ 0
Motor-
Text Label 3100 29150 0    60   ~ 0
motor-encoder_GND
Text Notes 6300 30300 0    60   ~ 0
Motor-Encoder MR Typ-M, 201937
$Comp
L CONN_01X04_MALE J1_temperature-sensor-DS4
U 1 1 5955935F
P 10600 -150
F 0 "J1_temperature-sensor-DS4" H 10600 225 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 10600 -550 50  0000 C CNN
F 2 "" H 10600 150 50  0001 C CNN
F 3 "" H 10600 150 50  0001 C CNN
	1    10600 -150
	0    1    1    0   
$EndComp
Text Notes 10100 650  1    60   ~ 0
BOARD: temperature-sensor-DS1731
$Comp
L CONN_01X04_MALE J1_temperature-sensor-DS3
U 1 1 59559F83
P 9200 -150
F 0 "J1_temperature-sensor-DS3" H 9200 225 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 9200 -550 50  0000 C CNN
F 2 "" H 9200 150 50  0001 C CNN
F 3 "" H 9200 150 50  0001 C CNN
	1    9200 -150
	0    1    1    0   
$EndComp
Text Notes 8700 650  1    60   ~ 0
BOARD: temperature-sensor-DS1731
$Comp
L CONN_01X04_MALE J1_temperature-sensor-DS2
U 1 1 5955AE90
P 7750 -150
F 0 "J1_temperature-sensor-DS2" H 7750 225 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 7750 -550 50  0000 C CNN
F 2 "" H 7750 150 50  0001 C CNN
F 3 "" H 7750 150 50  0001 C CNN
	1    7750 -150
	0    1    1    0   
$EndComp
Text Notes 7250 650  1    60   ~ 0
BOARD: temperature-sensor-DS1731
$Comp
L CONN_01X04_MALE J1_temperature-sensor-DS1
U 1 1 5955B334
P 6300 -150
F 0 "J1_temperature-sensor-DS1" H 6300 225 50  0000 C CNN
F 1 "CONN_01X04_MALE" H 6300 -550 50  0000 C CNN
F 2 "" H 6300 150 50  0001 C CNN
F 3 "" H 6300 150 50  0001 C CNN
	1    6300 -150
	0    1    1    0   
$EndComp
Text Notes 5800 650  1    60   ~ 0
BOARD: temperature-sensor-DS1731
Wire Wire Line
	3000 3450 3400 3450
Wire Wire Line
	3000 3350 3400 3350
Wire Wire Line
	3000 3550 3400 3550
Wire Notes Line
	7400 -3050 7400 -2100
Wire Notes Line
	8850 -3050 7400 -3050
Wire Notes Line
	8850 -2100 8850 -3050
Wire Notes Line
	7400 -2100 8850 -2100
Wire Wire Line
	7500 -2450 7900 -2450
Wire Wire Line
	7500 -2850 7500 -2450
Wire Wire Line
	4450 -2850 7500 -2850
Wire Wire Line
	7600 -2250 7900 -2250
Wire Wire Line
	7600 -2550 7600 -2250
Wire Wire Line
	4750 -2550 7600 -2550
Wire Wire Line
	7600 -2850 7900 -2850
Wire Wire Line
	7600 -2750 7600 -2850
Wire Wire Line
	4550 -2750 7600 -2750
Wire Wire Line
	4650 -2650 7900 -2650
Wire Wire Line
	3550 1150 3000 1150
Wire Wire Line
	3650 1250 3000 1250
Wire Wire Line
	3750 1350 3000 1350
Wire Wire Line
	3850 1450 3000 1450
Wire Notes Line
	6500 2400 6500 1450
Wire Notes Line
	7750 2400 6500 2400
Wire Notes Line
	7750 1450 7750 2400
Wire Notes Line
	6500 1450 7750 1450
Wire Wire Line
	6600 2250 7000 2250
Wire Wire Line
	6600 1650 6600 2250
Wire Wire Line
	3000 1650 6600 1650
Wire Wire Line
	6700 2050 7000 2050
Wire Wire Line
	6700 1950 6700 2050
Wire Wire Line
	3000 1950 6700 1950
Wire Wire Line
	6700 1650 7000 1650
Wire Wire Line
	6700 1750 6700 1650
Wire Wire Line
	3000 1750 6700 1750
Wire Wire Line
	3000 1850 7000 1850
Wire Wire Line
	3000 4100 3400 4100
Wire Wire Line
	3000 4200 3400 4200
Wire Wire Line
	3000 4300 3400 4300
Wire Wire Line
	3000 4400 3400 4400
Wire Wire Line
	3000 4500 10950 4500
Wire Wire Line
	3000 4600 10850 4600
Wire Wire Line
	3000 4700 10750 4700
Wire Wire Line
	3000 4800 10650 4800
Wire Wire Line
	3000 4900 9700 4900
Wire Wire Line
	3000 5000 9900 5000
Wire Wire Line
	3000 5100 3400 5100
Wire Wire Line
	3000 5200 9200 5200
Wire Wire Line
	3000 5300 9100 5300
Wire Wire Line
	3000 5400 9000 5400
Wire Wire Line
	3000 5500 8900 5500
Wire Wire Line
	3000 5600 8000 5600
Wire Wire Line
	3000 5700 8200 5700
Wire Wire Line
	3000 5800 3400 5800
Wire Wire Line
	3000 5900 7450 5900
Wire Wire Line
	3000 6000 7350 6000
Wire Wire Line
	3000 6100 7250 6100
Wire Wire Line
	3000 6200 7150 6200
Wire Wire Line
	3000 6300 6450 6300
Wire Wire Line
	3000 6400 6450 6400
Wire Wire Line
	3000 6500 3400 6500
Wire Wire Line
	3000 6600 3400 6600
Wire Wire Line
	9700 4900 9700 5100
Wire Wire Line
	9700 5100 9900 5100
Wire Wire Line
	10650 4800 10650 5000
Wire Wire Line
	10650 5000 10400 5000
Wire Wire Line
	10750 4700 10750 5100
Wire Wire Line
	10750 5100 10400 5100
Wire Wire Line
	10850 4600 10850 5200
Wire Wire Line
	10850 5200 10400 5200
Wire Wire Line
	10950 4500 10950 5400
Wire Wire Line
	10950 5400 9800 5400
Wire Wire Line
	9800 5400 9800 5200
Wire Wire Line
	9800 5200 9900 5200
Wire Wire Line
	7150 6200 7150 6300
Wire Wire Line
	7150 6300 6950 6300
Wire Wire Line
	7250 6100 7250 6400
Wire Wire Line
	7250 6400 6950 6400
Wire Wire Line
	7350 6000 7350 6500
Wire Wire Line
	7350 6500 6950 6500
Wire Wire Line
	7450 5900 7450 6650
Wire Wire Line
	7450 6650 6300 6650
Wire Wire Line
	6300 6650 6300 6500
Wire Wire Line
	6300 6500 6450 6500
Wire Wire Line
	8000 5600 8000 5800
Wire Wire Line
	8000 5800 8200 5800
Wire Wire Line
	8900 5500 8900 5700
Wire Wire Line
	8900 5700 8700 5700
Wire Wire Line
	9000 5400 9000 5800
Wire Wire Line
	9000 5800 8700 5800
Wire Wire Line
	9100 5300 9100 5900
Wire Wire Line
	9100 5900 8700 5900
Wire Wire Line
	9200 5200 9200 6050
Wire Wire Line
	9200 6050 8000 6050
Wire Wire Line
	8000 6050 8000 5900
Wire Wire Line
	8000 5900 8200 5900
Wire Notes Line
	6200 6700 6200 5850
Wire Notes Line
	6200 5850 7500 5850
Wire Notes Line
	7500 5850 7500 6700
Wire Notes Line
	7500 6700 6200 6700
Wire Notes Line
	7950 6100 9250 6100
Wire Notes Line
	9250 6100 9250 5150
Wire Notes Line
	9250 5150 7950 5150
Wire Notes Line
	7950 5150 7950 6100
Wire Notes Line
	9650 5450 11000 5450
Wire Notes Line
	11000 5450 11000 4450
Wire Notes Line
	11000 4450 9650 4450
Wire Notes Line
	9650 4450 9650 5450
Wire Notes Line
	4000 800  4000 23800
Wire Notes Line
	1000 800  4000 800 
Wire Notes Line
	4000 23800 1000 23800
Wire Wire Line
	3000 24700 3100 24700
Wire Wire Line
	3100 24700 3100 24800
Wire Wire Line
	3000 24800 3700 24800
Connection ~ 3100 24800
Wire Wire Line
	3000 24900 3700 24900
Wire Wire Line
	3000 25100 3700 25100
Wire Wire Line
	3000 25300 3700 25300
Wire Wire Line
	3000 25400 3700 25400
Wire Wire Line
	3000 25500 3700 25500
Wire Wire Line
	3000 25600 3700 25600
Wire Wire Line
	3000 25700 3700 25700
Wire Wire Line
	3000 25800 3700 25800
Wire Wire Line
	3000 25900 3700 25900
Wire Wire Line
	3000 26100 3700 26100
Wire Wire Line
	3100 26100 3100 26000
Wire Wire Line
	3100 26000 3000 26000
Connection ~ 3100 26100
Wire Wire Line
	3000 26850 3700 26850
Wire Wire Line
	3000 26950 3700 26950
Wire Wire Line
	3000 28050 9000 28050
Wire Wire Line
	3000 28150 9150 28150
Wire Wire Line
	3000 28250 9150 28250
Wire Wire Line
	3000 28850 7250 28850
Wire Wire Line
	3000 28950 6950 28950
Wire Wire Line
	3000 29050 7050 29050
Wire Wire Line
	3000 29450 8800 29450
Wire Wire Line
	3000 29350 8900 29350
Wire Wire Line
	3000 29250 9000 29250
Wire Notes Line
	4000 24450 1000 24450
Wire Notes Line
	4000 24450 4000 32900
Wire Notes Line
	1000 24450 1000 32900
Wire Notes Line
	1000 32900 4000 32900
Wire Notes Line
	1000 23800 1000 800 
Wire Wire Line
	3000 30500 3700 30500
Wire Wire Line
	3000 30400 3100 30400
Wire Wire Line
	3100 30200 3100 30500
Connection ~ 3100 30500
Wire Wire Line
	3000 30300 3100 30300
Connection ~ 3100 30400
Wire Wire Line
	3000 30200 3100 30200
Connection ~ 3100 30300
Wire Wire Line
	3000 30900 3700 30900
Wire Wire Line
	3000 30600 3100 30600
Wire Wire Line
	3100 30600 3100 30900
Connection ~ 3100 30900
Wire Wire Line
	3000 30700 3100 30700
Connection ~ 3100 30700
Wire Wire Line
	3000 30800 3100 30800
Connection ~ 3100 30800
Wire Wire Line
	3000 31300 3700 31300
Wire Wire Line
	3000 31000 3100 31000
Wire Wire Line
	3100 31000 3100 31300
Connection ~ 3100 31300
Wire Wire Line
	3000 31100 3100 31100
Connection ~ 3100 31100
Wire Wire Line
	3000 31200 3100 31200
Connection ~ 3100 31200
Wire Wire Line
	3000 31700 3700 31700
Wire Wire Line
	3000 31400 3100 31400
Wire Wire Line
	3100 31400 3100 31700
Connection ~ 3100 31700
Wire Wire Line
	3000 31500 3100 31500
Connection ~ 3100 31500
Wire Wire Line
	3000 31600 3100 31600
Connection ~ 3100 31600
Wire Wire Line
	3000 32100 3700 32100
Wire Wire Line
	3000 31800 3100 31800
Wire Wire Line
	3100 31800 3100 32100
Connection ~ 3100 32100
Wire Wire Line
	3000 31900 3100 31900
Connection ~ 3100 31900
Wire Wire Line
	3000 32000 3100 32000
Connection ~ 3100 32000
Wire Wire Line
	3000 32500 3700 32500
Wire Wire Line
	3000 32200 3100 32200
Wire Wire Line
	3100 32200 3100 32500
Connection ~ 3100 32500
Wire Wire Line
	3000 32400 3100 32400
Connection ~ 3100 32400
Wire Wire Line
	3000 32300 3100 32300
Connection ~ 3100 32300
Wire Notes Line
	5700 26700 6550 26700
Wire Notes Line
	5700 26700 5700 27550
Wire Notes Line
	5700 27550 6550 27550
Wire Notes Line
	6550 27550 6550 26700
Wire Notes Line
	7450 26700 8300 26700
Wire Notes Line
	7450 26700 7450 27550
Wire Notes Line
	7450 27550 8300 27550
Wire Notes Line
	8300 27550 8300 26700
Wire Notes Line
	9250 26700 10100 26700
Wire Notes Line
	9250 26700 9250 27550
Wire Notes Line
	9250 27550 10100 27550
Wire Notes Line
	10100 27550 10100 26700
Wire Notes Line
	7800 28650 7800 29050
Wire Notes Line
	7800 29050 8400 29050
Wire Notes Line
	8400 29050 8400 28650
Wire Notes Line
	8400 28650 7800 28650
Wire Wire Line
	9000 29250 9000 28650
Wire Wire Line
	9000 28650 9150 28650
Wire Wire Line
	8900 29350 8900 28750
Wire Wire Line
	8900 28750 9150 28750
Wire Wire Line
	8800 29450 8800 28850
Wire Wire Line
	8800 28850 9150 28850
Wire Wire Line
	3000 28350 9150 28350
Wire Wire Line
	3000 28450 9150 28450
Wire Wire Line
	9000 28050 9000 28550
Wire Wire Line
	9000 28550 9150 28550
Wire Notes Line
	8650 28000 8650 28950
Wire Notes Line
	8650 28950 9700 28950
Wire Notes Line
	9700 28950 9700 28000
Wire Notes Line
	9700 28000 8650 28000
Wire Wire Line
	6950 28950 6950 29850
Wire Wire Line
	7050 29050 7050 29850
Wire Wire Line
	7250 28850 7250 29850
Wire Wire Line
	3000 28750 7150 28750
Wire Wire Line
	7150 28750 7150 29850
Wire Wire Line
	6550 29850 6550 29600
Wire Wire Line
	6850 29850 6850 29600
Wire Wire Line
	6750 29850 6750 29150
Wire Wire Line
	6750 29150 3000 29150
Wire Wire Line
	6650 29850 6650 28550
Connection ~ 6650 28550
Wire Notes Line
	6300 30200 7650 30200
Wire Notes Line
	7650 30200 7650 29500
Wire Notes Line
	7650 29500 6300 29500
Wire Notes Line
	6300 29500 6300 30200
Wire Wire Line
	7900 28900 7350 28900
Wire Wire Line
	7350 28900 7350 28650
Wire Wire Line
	7900 28800 7450 28800
Wire Wire Line
	7450 28800 7450 28550
Wire Wire Line
	7450 28550 3000 28550
Wire Wire Line
	7350 28650 3000 28650
Wire Wire Line
	3850 1200 11150 1200
Wire Notes Line
	10100 650  11050 650 
Wire Notes Line
	10100 -800 10100 650 
Wire Notes Line
	11050 -800 10100 -800
Wire Notes Line
	11050 650  11050 -800
Wire Wire Line
	10700 150  10700 900 
Wire Wire Line
	10900 150  10900 1200
Wire Wire Line
	10300 150  10300 1000
Wire Notes Line
	8700 650  9650 650 
Wire Notes Line
	8700 -800 8700 650 
Wire Notes Line
	9650 -800 8700 -800
Wire Notes Line
	9650 650  9650 -800
Wire Wire Line
	9300 150  9300 900 
Wire Wire Line
	9500 150  9500 1200
Wire Wire Line
	8900 150  8900 1000
Wire Notes Line
	7250 650  8200 650 
Wire Notes Line
	7250 -800 7250 650 
Wire Notes Line
	8200 -800 7250 -800
Wire Notes Line
	8200 650  8200 -800
Wire Wire Line
	7850 150  7850 900 
Wire Wire Line
	8050 150  8050 1200
Wire Wire Line
	7450 150  7450 1000
Wire Notes Line
	5800 650  6750 650 
Wire Notes Line
	5800 -800 5800 650 
Wire Notes Line
	6750 -800 5800 -800
Wire Notes Line
	6750 650  6750 -800
Wire Wire Line
	6400 150  6400 900 
Wire Wire Line
	6600 150  6600 1200
Wire Wire Line
	6000 150  6000 1000
Wire Wire Line
	6200 150  6200 1100
Connection ~ 6200 1100
Connection ~ 6000 1000
Connection ~ 6600 1200
Connection ~ 6400 900 
Wire Wire Line
	3850 1200 3850 1450
Wire Wire Line
	3750 1100 3750 1350
Wire Wire Line
	3650 1000 3650 1250
Wire Wire Line
	3550 900  3550 1150
Connection ~ 8050 1200
Connection ~ 7850 900 
Wire Wire Line
	7650 150  7650 1100
Connection ~ 7650 1100
Connection ~ 7450 1000
Wire Wire Line
	10500 150  10500 1100
Wire Wire Line
	9100 150  9100 1100
Connection ~ 9100 1100
Connection ~ 8900 1000
Connection ~ 9300 900 
Connection ~ 9500 1200
Wire Wire Line
	3550 900  11150 900 
Wire Wire Line
	3650 1000 11150 1000
Wire Wire Line
	3750 1100 11150 1100
Connection ~ 10700 900 
Connection ~ 10300 1000
Connection ~ 10500 1100
Connection ~ 10900 1200
Wire Wire Line
	3100 7950 3500 7950
Text Label 3150 7950 0    60   ~ 0
t1_RTD1_A
Wire Wire Line
	3100 10250 3500 10250
Text Label 3150 10250 0    60   ~ 0
t1_RTD6_D
Wire Wire Line
	3100 10350 3500 10350
Text Label 3150 10350 0    60   ~ 0
t2_RTD1_A
Wire Wire Line
	3100 12650 3550 12650
Wire Wire Line
	3100 12750 3550 12750
Text Label 3150 12650 0    60   ~ 0
t2_RTD6_D
Text Label 3150 12750 0    60   ~ 0
t3_RTD1_A
Wire Wire Line
	3100 15050 3550 15050
Text Label 3150 15050 0    60   ~ 0
t3_RTD6_D
Wire Wire Line
	3000 16250 3550 16250
Text Label 3050 16250 0    60   ~ 0
t4_RTD1_A
Wire Wire Line
	3000 16350 3550 16350
Text Label 3050 16350 0    60   ~ 0
t4_RTD2_B
Wire Wire Line
	3000 18150 3550 18150
Wire Wire Line
	3000 18250 3550 18250
Text Label 3050 18150 0    60   ~ 0
t4_RTD6_D
Text Label 3050 18250 0    60   ~ 0
t5_RTD1_A
Wire Wire Line
	3000 20550 3600 20550
Text Label 3050 20550 0    60   ~ 0
t5_RTD6_D
Wire Wire Line
	3000 21150 3600 21150
Text Label 3050 21150 0    60   ~ 0
t6_RTD1_A
Wire Wire Line
	3000 22350 3600 22350
Wire Wire Line
	3000 23550 3600 23550
Text Label 3050 23550 0    60   ~ 0
t6_RTD6_D
Text Label 3100 22350 0    60   ~ 0
GND
$Comp
L CONN_01X01 J1_ltc3757_GND_1
U 1 1 5957BB15
P 6400 30950
F 0 "J1_ltc3757_GND_1" H 6400 31050 50  0000 C CNN
F 1 "CONN_01X01" H 6750 30950 50  0000 C CNN
F 2 "" H 6400 30950 50  0001 C CNN
F 3 "" H 6400 30950 50  0001 C CNN
	1    6400 30950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J2_ltc3757_ENABLE_1
U 1 1 5957C7AA
P 6400 31150
F 0 "J2_ltc3757_ENABLE_1" H 6400 31250 50  0000 C CNN
F 1 "CONN_01X01" H 6750 31150 50  0000 C CNN
F 2 "" H 6400 31150 50  0001 C CNN
F 3 "" H 6400 31150 50  0001 C CNN
	1    6400 31150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J3_ltc3757_BAT_1
U 1 1 5957C85F
P 6400 31350
F 0 "J3_ltc3757_BAT_1" H 6400 31450 50  0000 C CNN
F 1 "CONN_01X01" H 6750 31350 50  0000 C CNN
F 2 "" H 6400 31350 50  0001 C CNN
F 3 "" H 6400 31350 50  0001 C CNN
	1    6400 31350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J4_ltc3757_24V_1
U 1 1 5957CCBD
P 6400 31550
F 0 "J4_ltc3757_24V_1" H 6400 31650 50  0000 C CNN
F 1 "CONN_01X01" H 6750 31550 50  0000 C CNN
F 2 "" H 6400 31550 50  0001 C CNN
F 3 "" H 6400 31550 50  0001 C CNN
	1    6400 31550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J9_ltc3757_GND_1
U 1 1 5957D1B2
P 6400 31750
F 0 "J9_ltc3757_GND_1" H 6400 31850 50  0000 C CNN
F 1 "CONN_01X01" H 6750 31750 50  0000 C CNN
F 2 "" H 6400 31750 50  0001 C CNN
F 3 "" H 6400 31750 50  0001 C CNN
	1    6400 31750
	1    0    0    -1  
$EndComp
Wire Notes Line
	5900 30750 5900 31850
Wire Notes Line
	5900 31850 7100 31850
Wire Notes Line
	7100 31850 7100 30750
Wire Notes Line
	7100 30750 5900 30750
Text Notes 5900 30750 0    60   ~ 0
BOARD: lt3757-boost-converter
$Comp
L CONN_01X02 J1_heatprobe_1
U 1 1 5957F4EA
P 6350 32450
F 0 "J1_heatprobe_1" H 6350 32600 50  0000 C CNN
F 1 "CONN_01X02" H 6650 32450 50  0000 C CNN
F 2 "" H 6350 32450 50  0001 C CNN
F 3 "" H 6350 32450 50  0001 C CNN
	1    6350 32450
	1    0    0    -1  
$EndComp
Wire Notes Line
	6000 32250 6000 32600
Wire Notes Line
	6000 32600 6950 32600
Wire Notes Line
	6950 32600 6950 32250
Wire Notes Line
	6950 32250 6000 32250
Text Notes 6000 32250 0    60   ~ 0
FREEK Kleinheizpatrone 24V
$EndSCHEMATC
