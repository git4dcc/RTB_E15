EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "RTB E15 module"
Date "2024-11-14"
Rev "1"
Comp "Frank Schumacher"
Comment1 "WS2811 chip emulator for 12 multiplex LEDs (fixed voltage)"
Comment2 ""
Comment3 ""
Comment4 "Licensed under the Apache License, Version 2"
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega4808-M U1
U 1 1 6065C5F0
P 3900 2350
F 0 "U1" H 3650 1150 50  0000 C CNN
F 1 "AVR-64da32" H 3450 1250 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.1x3.1mm" H 3900 2350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40002017A.pdf" H 3900 2350 50  0001 C CNN
	1    3900 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1450 3000 1450
Text GLabel 3000 1450 0    50   Input ~ 0
UPDI
Wire Wire Line
	3900 1250 3900 1050
Wire Wire Line
	4000 1050 4000 1250
Text GLabel 8900 1850 0    50   Input ~ 0
OUT4
Text GLabel 8900 1750 0    50   Input ~ 0
OUT3
Text GLabel 8900 1650 0    50   Input ~ 0
OUT2
Text GLabel 8900 1550 0    50   Input ~ 0
OUT1
Text GLabel 2600 2550 0    50   Input ~ 0
OUT1
Text GLabel 2600 2750 0    50   Input ~ 0
OUT2
Text GLabel 2600 2950 0    50   Input ~ 0
OUT3
Text GLabel 2600 3150 0    50   Input ~ 0
OUT4
Wire Wire Line
	3300 1650 3000 1650
Wire Wire Line
	3000 1750 3300 1750
Wire Wire Line
	3000 1950 3300 1950
Text GLabel 3000 1650 0    50   Input ~ 0
V24.tx
Text GLabel 3000 1750 0    50   Input ~ 0
V24.rx
Text GLabel 3000 1950 0    50   Input ~ 0
V24.cts
$Comp
L Device:C C2
U 1 1 6072CAD8
P 4750 1200
F 0 "C2" H 4800 1300 50  0000 L CNN
F 1 "100n" H 4800 1100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4788 1050 50  0001 C CNN
F 3 "~" H 4750 1200 50  0001 C CNN
	1    4750 1200
	1    0    0    -1  
$EndComp
Connection ~ 4000 1050
Wire Wire Line
	4000 1050 4750 1050
$Comp
L Device:C C3
U 1 1 60730021
P 5100 1200
F 0 "C3" H 5150 1300 50  0000 L CNN
F 1 "100n" H 5150 1100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5138 1050 50  0001 C CNN
F 3 "~" H 5100 1200 50  0001 C CNN
	1    5100 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1050 5100 1050
Connection ~ 4750 1050
Wire Wire Line
	4750 1350 5100 1350
$Comp
L power:GND #PWR0107
U 1 1 60735B90
P 4750 1450
F 0 "#PWR0107" H 4750 1200 50  0001 C CNN
F 1 "GND" H 4755 1277 50  0000 C CNN
F 2 "" H 4750 1450 50  0001 C CNN
F 3 "" H 4750 1450 50  0001 C CNN
	1    4750 1450
	1    0    0    -1  
$EndComp
Connection ~ 4750 1350
$Comp
L Device:LED D2
U 1 1 6074997E
P 2050 1850
F 0 "D2" V 1900 2000 50  0000 R CNN
F 1 "HBT(green)" V 2000 2300 50  0001 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2050 1850 50  0001 C CNN
F 3 "~" H 2050 1850 50  0001 C CNN
	1    2050 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 2000 2050 2050
Wire Wire Line
	2050 2050 3300 2050
$Comp
L Device:R R20
U 1 1 60759709
P 2050 1550
F 0 "R20" V 1950 1550 50  0000 C CNN
F 1 "3.3k" V 2050 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1980 1550 50  0001 C CNN
F 3 "~" H 2050 1550 50  0001 C CNN
	1    2050 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2050 1050 3900 1050
Connection ~ 3900 1050
$Comp
L power:GND #PWR0108
U 1 1 607011E1
P 3900 3450
F 0 "#PWR0108" H 3900 3200 50  0001 C CNN
F 1 "GND" H 3905 3277 50  0000 C CNN
F 2 "" H 3900 3450 50  0001 C CNN
F 3 "" H 3900 3450 50  0001 C CNN
	1    3900 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 60679519
P 9100 1750
F 0 "J7" H 9350 1650 50  0000 R CNN
F 1 "MPX output" H 9700 1750 50  0000 R CNN
F 2 "RTB_parts:1725672" H 9100 1750 50  0001 C CNN
F 3 "~" H 9100 1750 50  0001 C CNN
	1    9100 1750
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 2650 4900 2650
$Comp
L power:VDD #PWR0103
U 1 1 606FE46A
P 3900 1050
F 0 "#PWR0103" H 3900 900 50  0001 C CNN
F 1 "VDD" H 3917 1223 50  0000 C CNN
F 2 "" H 3900 1050 50  0001 C CNN
F 3 "" H 3900 1050 50  0001 C CNN
	1    3900 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1050 4000 1050
$Comp
L Device:R R18
U 1 1 606D9C59
P 5050 2650
F 0 "R18" V 5150 2650 50  0000 C CNN
F 1 "160" V 5050 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 2650 50  0001 C CNN
F 3 "~" H 5050 2650 50  0001 C CNN
	1    5050 2650
	0    -1   -1   0   
$EndComp
Text GLabel 5300 2650 2    50   Input ~ 0
DI
$Comp
L Device:R R19
U 1 1 606DE0A7
P 5050 2750
F 0 "R19" V 4950 2750 50  0000 C CNN
F 1 "160" V 5050 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 2750 50  0001 C CNN
F 3 "~" H 5050 2750 50  0001 C CNN
	1    5050 2750
	0    -1   -1   0   
$EndComp
Text GLabel 5300 2750 2    50   Input ~ 0
DO
Text GLabel 3000 1850 0    50   Input ~ 0
V24.rts
Wire Wire Line
	3300 1850 3000 1850
Text Notes 5600 2650 0    50   ~ 0
USART-1
Text Notes 2200 1800 0    50   ~ 0
USART-2
Wire Notes Line
	7750 700  10700 700 
Wire Notes Line
	10700 700  10700 6300
Wire Notes Line
	10700 6300 7750 6300
Wire Notes Line
	7750 6300 7750 700 
Connection ~ 5500 5050
Wire Wire Line
	5500 5050 5200 5050
Connection ~ 5400 5900
Connection ~ 5400 4950
Wire Wire Line
	5400 4950 5400 5900
$Comp
L power:+5V #PWR0118
U 1 1 6072C827
P 1800 5200
F 0 "#PWR0118" H 1800 5050 50  0001 C CNN
F 1 "+5V" H 1815 5373 50  0000 C CNN
F 2 "" H 1800 5200 50  0001 C CNN
F 3 "" H 1800 5200 50  0001 C CNN
	1    1800 5200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0105
U 1 1 60700A86
P 5200 6400
F 0 "#PWR0105" H 5200 6250 50  0001 C CNN
F 1 "VDD" V 5200 6550 50  0000 L CNN
F 2 "" H 5200 6400 50  0001 C CNN
F 3 "" H 5200 6400 50  0001 C CNN
	1    5200 6400
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0104
U 1 1 606FF267
P 5200 5500
F 0 "#PWR0104" H 5200 5350 50  0001 C CNN
F 1 "VDD" V 5200 5650 50  0000 L CNN
F 2 "" H 5200 5500 50  0001 C CNN
F 3 "" H 5200 5500 50  0001 C CNN
	1    5200 5500
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0102
U 1 1 606FD673
P 3050 5200
F 0 "#PWR0102" H 3050 5050 50  0001 C CNN
F 1 "VDD" H 3067 5373 50  0000 C CNN
F 2 "" H 3050 5200 50  0001 C CNN
F 3 "" H 3050 5200 50  0001 C CNN
	1    3050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5150 5650 5150
Text GLabel 5200 4650 0    50   Input ~ 0
DO
Wire Wire Line
	5650 4650 5200 4650
Wire Wire Line
	5400 4450 5400 4950
Text GLabel 5200 6700 0    50   Input ~ 0
V24.cts
$Comp
L power:GND #PWR0101
U 1 1 606717F4
P 5400 6800
F 0 "#PWR0101" H 5400 6550 50  0001 C CNN
F 1 "GND" H 5405 6627 50  0000 C CNN
F 2 "" H 5400 6800 50  0001 C CNN
F 3 "" H 5400 6800 50  0001 C CNN
	1    5400 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6200 5400 6800
Wire Wire Line
	5650 6700 5200 6700
Wire Wire Line
	5400 5900 5400 6200
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 606643DB
P 5850 4550
F 0 "J2" H 5800 4650 50  0000 R CNN
F 1 "WS-bus output" H 5800 4550 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5850 4550 50  0001 C CNN
F 3 "~" H 5850 4550 50  0001 C CNN
	1    5850 4550
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 60665244
P 5850 5050
F 0 "J3" H 5800 5150 50  0000 R CNN
F 1 "WS-bus input" H 5800 5050 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5850 5050 50  0001 C CNN
F 3 "~" H 5850 5050 50  0001 C CNN
	1    5850 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 6300 5200 6300
Wire Wire Line
	5650 6500 5200 6500
Wire Wire Line
	5200 6600 5650 6600
Text GLabel 5200 6500 0    50   Input ~ 0
V24.rx
Text GLabel 5200 6600 0    50   Input ~ 0
V24.tx
Text GLabel 5200 6300 0    50   Input ~ 0
V24.rts
Wire Wire Line
	5650 6400 5200 6400
Connection ~ 5400 6200
Wire Wire Line
	5650 6200 5400 6200
$Comp
L Connector:Conn_01x06_Male J5
U 1 1 606FB752
P 5850 6400
F 0 "J5" H 5800 6500 50  0000 R CNN
F 1 "Debug IF" H 5800 6400 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5850 6400 50  0001 C CNN
F 3 "~" H 5850 6400 50  0001 C CNN
	1    5850 6400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 5500 5200 5500
Text GLabel 5200 5150 0    50   Input ~ 0
DI
Wire Wire Line
	5500 5050 5650 5050
Wire Wire Line
	5500 4550 5500 5050
Wire Wire Line
	5650 4550 5500 4550
Wire Wire Line
	5650 5900 5400 5900
Wire Wire Line
	5650 4950 5400 4950
Wire Wire Line
	5650 4450 5400 4450
Wire Wire Line
	5200 5400 5650 5400
Text GLabel 5200 5400 0    50   Input ~ 0
UPDI
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 60666C65
P 5850 5600
F 0 "J4" H 5800 5700 50  0000 R CNN
F 1 "UPDI IF" H 5800 5600 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x03_P1.27mm_Vertical" H 5850 5600 50  0001 C CNN
F 3 "~" H 5850 5600 50  0001 C CNN
	1    5850 5600
	-1   0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60670943
P 3600 7450
F 0 "H4" H 3700 7496 50  0000 L CNN
F 1 "MountingHole" H 3700 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 3600 7450 50  0001 C CNN
F 3 "~" H 3600 7450 50  0001 C CNN
	1    3600 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 65435EAC
P 2750 7450
F 0 "H3" H 2850 7496 50  0000 L CNN
F 1 "MountingHole" H 2850 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 2750 7450 50  0001 C CNN
F 3 "~" H 2750 7450 50  0001 C CNN
	1    2750 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 606D2D2A
P 1850 7450
F 0 "H2" H 1950 7496 50  0000 L CNN
F 1 "MountingHole" H 1950 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 1850 7450 50  0001 C CNN
F 3 "~" H 1850 7450 50  0001 C CNN
	1    1850 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 606D2302
P 950 7450
F 0 "H1" H 1050 7496 50  0000 L CNN
F 1 "MountingHole" H 1050 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 950 7450 50  0001 C CNN
F 3 "~" H 950 7450 50  0001 C CNN
	1    950  7450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 65566999
P 5200 5050
F 0 "#PWR0113" H 5200 4900 50  0001 C CNN
F 1 "+5V" V 5200 5250 50  0000 C CNN
F 2 "" H 5200 5050 50  0001 C CNN
F 3 "" H 5200 5050 50  0001 C CNN
	1    5200 5050
	0    -1   -1   0   
$EndComp
NoConn ~ 5650 5600
NoConn ~ 5650 5700
NoConn ~ 5650 5800
Wire Notes Line
	4400 4100 6600 4100
Wire Notes Line
	6600 4100 6600 7050
Wire Notes Line
	6600 7050 4400 7050
Wire Notes Line
	4400 7050 4400 4100
Wire Notes Line
	3800 4100 1050 4100
Wire Notes Line
	1050 4100 1050 7050
Wire Notes Line
	1050 7050 3800 7050
Wire Notes Line
	3800 7050 3800 4100
Text Notes 1150 4300 0    79   ~ 16
Power
Text Notes 4500 4250 0    79   ~ 16
Interfaces
Wire Notes Line
	1050 3850 6600 3850
Wire Notes Line
	6600 3850 6600 700 
Wire Notes Line
	6600 700  1050 700 
Wire Notes Line
	1050 700  1050 3850
Text Notes 1150 900  0    79   ~ 16
CPU
Text Notes 7850 900  0    79   ~ 16
Multiplex Signal connector
NoConn ~ 3300 2250
Wire Wire Line
	2050 1050 2050 1400
NoConn ~ 3300 2150
$Comp
L power:GND #PWR0106
U 1 1 65698D2B
P 2450 6400
F 0 "#PWR0106" H 2450 6150 50  0001 C CNN
F 1 "GND" H 2455 6227 50  0000 C CNN
F 2 "" H 2450 6400 50  0001 C CNN
F 3 "" H 2450 6400 50  0001 C CNN
	1    2450 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 656982B2
P 1800 6050
F 0 "C1" H 1850 5950 50  0000 L CNN
F 1 "4.7u/10V" H 1850 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1838 5900 50  0001 C CNN
F 3 "~" H 1800 6050 50  0001 C CNN
	1    1800 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2750 4900 2750
NoConn ~ 4500 2850
NoConn ~ 4500 2550
NoConn ~ 4500 2350
NoConn ~ 4500 2250
NoConn ~ 4500 2150
NoConn ~ 4500 2050
NoConn ~ 4500 1950
NoConn ~ 4500 1850
NoConn ~ 4500 1750
NoConn ~ 4500 1650
Text GLabel 8900 2950 0    50   Input ~ 0
OUT4
Text GLabel 8900 2850 0    50   Input ~ 0
OUT3
Text GLabel 8900 2750 0    50   Input ~ 0
OUT2
Text GLabel 8900 2650 0    50   Input ~ 0
OUT1
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 658F13E6
P 9100 2750
F 0 "J1" H 9350 2750 50  0000 R CNN
F 1 "MPX output" H 9700 2650 50  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x02_P2.00mm_Vertical" H 9100 2750 50  0001 C CNN
F 3 "~" H 9100 2750 50  0001 C CNN
	1    9100 2750
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MIC5205-5.0YM5 U2
U 1 1 65909D8D
P 2450 5900
F 0 "U2" H 2450 6242 50  0000 C CNN
F 1 "MIC5205-5.0YM5" H 2450 6151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2450 6225 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005785A.pdf" H 2450 5900 50  0001 C CNN
	1    2450 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5800 2000 5800
Wire Wire Line
	1800 5800 1800 5900
Wire Wire Line
	1800 6200 1800 6300
Wire Wire Line
	1800 6300 2450 6300
Wire Wire Line
	2450 6200 2450 6300
Connection ~ 2450 6300
Wire Wire Line
	2450 6300 3050 6300
Wire Wire Line
	2750 5800 3050 5800
Wire Wire Line
	3050 5800 3050 5900
Wire Wire Line
	3050 6200 3050 6300
Connection ~ 1800 5800
Wire Wire Line
	2150 5900 2000 5900
Wire Wire Line
	2000 5900 2000 5800
Connection ~ 2000 5800
Wire Wire Line
	2000 5800 1800 5800
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 65922BEA
P 2450 5350
F 0 "JP1" H 2450 5555 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2450 5464 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2450 5350 50  0001 C CNN
F 3 "~" H 2450 5350 50  0001 C CNN
	1    2450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5200 1800 5350
Wire Wire Line
	3050 5200 3050 5350
Connection ~ 3050 5800
Wire Wire Line
	2600 5350 3050 5350
Connection ~ 3050 5350
Wire Wire Line
	3050 5350 3050 5800
Wire Wire Line
	2300 5350 1800 5350
Connection ~ 1800 5350
Wire Wire Line
	1800 5350 1800 5800
NoConn ~ 2750 5900
Text Notes 1600 1900 0    50   ~ 0
Hbt (grn)
Wire Wire Line
	3300 3150 3150 3150
$Comp
L Device:R R14
U 1 1 606C55D3
P 3000 3150
F 0 "R14" V 3050 3350 50  0000 C CNN
F 1 "120" V 3000 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 3150 50  0001 C CNN
F 3 "~" H 3000 3150 50  0001 C CNN
	1    3000 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 2950 3150 2950
$Comp
L Device:R R15
U 1 1 606C55DD
P 3000 2950
F 0 "R15" V 3050 3150 50  0000 C CNN
F 1 "120" V 3000 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 2950 50  0001 C CNN
F 3 "~" H 3000 2950 50  0001 C CNN
	1    3000 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 2750 3150 2750
$Comp
L Device:R R16
U 1 1 606C55E7
P 3000 2750
F 0 "R16" V 3050 2950 50  0000 C CNN
F 1 "120" V 3000 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 2750 50  0001 C CNN
F 3 "~" H 3000 2750 50  0001 C CNN
	1    3000 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 2550 3300 2550
$Comp
L Device:R R17
U 1 1 606C55F1
P 3000 2550
F 0 "R17" V 3050 2750 50  0000 C CNN
F 1 "120" V 3000 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 2550 50  0001 C CNN
F 3 "~" H 3000 2550 50  0001 C CNN
	1    3000 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 2550 2750 2550
Wire Wire Line
	2600 2750 2750 2750
Wire Wire Line
	2600 2950 2750 2950
Wire Wire Line
	2600 3150 2750 3150
Wire Wire Line
	2750 2550 2750 2650
Wire Wire Line
	2750 2650 3300 2650
Connection ~ 2750 2550
Wire Wire Line
	2750 2550 2850 2550
Wire Wire Line
	2750 2750 2750 2850
Wire Wire Line
	2750 2850 3300 2850
Connection ~ 2750 2750
Wire Wire Line
	2750 2750 2850 2750
Wire Wire Line
	2750 2950 2750 3050
Wire Wire Line
	2750 3050 3300 3050
Connection ~ 2750 2950
Wire Wire Line
	2750 2950 2850 2950
Wire Wire Line
	2750 3150 2750 3250
Wire Wire Line
	2750 3250 3300 3250
Connection ~ 2750 3150
Wire Wire Line
	2750 3150 2850 3150
$Comp
L Diode:1N4001 D1
U 1 1 6594502C
P 1550 6050
F 0 "D1" V 1650 5900 50  0000 L CNN
F 1 "SSA33L" V 1750 5750 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 1550 5875 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1550 6050 50  0001 C CNN
	1    1550 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 6300 1550 6300
Wire Wire Line
	1550 6300 1550 6200
Connection ~ 1800 6300
Wire Wire Line
	1550 5900 1550 5800
Wire Wire Line
	1550 5800 1800 5800
Text Notes 1350 5950 0    50   ~ 0
n.f.
Wire Wire Line
	2450 6300 2450 6400
Wire Wire Line
	4750 1350 4750 1450
$Comp
L Device:C C4
U 1 1 6591D86E
P 3050 6050
F 0 "C4" H 3100 5950 50  0000 L CNN
F 1 "4.7u/10V" H 3100 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3088 5900 50  0001 C CNN
F 3 "~" H 3050 6050 50  0001 C CNN
	1    3050 6050
	1    0    0    -1  
$EndComp
Text Notes 1750 4400 0    50   Italic 0
LDO is optional and only to protect CPU against\nhigh voltage on the bus. The D1 protects against\nreverse polarity. Close JP1 if LDO is not fitted.
Text Notes 8650 3200 0    50   ~ 0
2x2 pin header
Text Notes 8650 2100 0    50   ~ 0
1x4 terminal connector (optional)
Text Notes 1550 2250 0    50   ~ 0
Note: R20 depends on LED
Wire Wire Line
	5200 2650 5300 2650
Wire Wire Line
	5200 2750 5300 2750
$EndSCHEMATC
