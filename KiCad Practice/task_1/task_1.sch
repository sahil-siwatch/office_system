EESchema Schematic File Version 4
EELAYER 30 0
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
L MCU_ST_STM8:STM8L051F3P U3
U 1 1 5E46991D
P 2500 2150
F 0 "U3" H 2500 3231 50  0000 C CNN
F 1 "STM8L051F3P" H 2500 3140 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 2550 3150 50  0001 L CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00060484.pdf" H 2500 1750 50  0001 C CNN
	1    2500 2150
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MIC5219-2.8YM5 U5
U 1 1 5E46BDD6
P 7550 3450
F 0 "U5" H 7550 3792 50  0000 C CNN
F 1 "MIC5219-2.8YM5" H 7550 3701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7550 3775 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC5219-500mA-Peak-Output-LDO-Regulator-DS20006021A.pdf" H 7550 3450 50  0001 C CNN
	1    7550 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E46F3F6
P 1300 4450
F 0 "R3" H 1370 4496 50  0000 L CNN
F 1 "1M" H 1370 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 1230 4450 50  0001 C CNN
F 3 "~" H 1300 4450 50  0001 C CNN
	1    1300 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E46F74B
P 3650 2350
F 0 "R7" H 3720 2396 50  0000 L CNN
F 1 "1K" H 3720 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 3580 2350 50  0001 C CNN
F 3 "~" H 3650 2350 50  0001 C CNN
	1    3650 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E46F9D8
P 1900 4450
F 0 "R4" H 1970 4496 50  0000 L CNN
F 1 "1M" H 1970 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 1830 4450 50  0001 C CNN
F 3 "~" H 1900 4450 50  0001 C CNN
	1    1900 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 5E46FADD
P 11050 1700
F 0 "R17" H 11120 1746 50  0000 L CNN
F 1 "330" H 11120 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 10980 1700 50  0001 C CNN
F 3 "~" H 11050 1700 50  0001 C CNN
	1    11050 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5E46FC69
P 9400 1700
F 0 "R10" H 9470 1746 50  0000 L CNN
F 1 "330" H 9470 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 9330 1700 50  0001 C CNN
F 3 "~" H 9400 1700 50  0001 C CNN
	1    9400 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5E46FDC1
P 10200 1700
F 0 "R14" H 10270 1746 50  0000 L CNN
F 1 "330" H 10270 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 10130 1700 50  0001 C CNN
F 3 "~" H 10200 1700 50  0001 C CNN
	1    10200 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5E46FFC4
P 9800 1700
F 0 "R11" H 9870 1746 50  0000 L CNN
F 1 "330" H 9870 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 9730 1700 50  0001 C CNN
F 3 "~" H 9800 1700 50  0001 C CNN
	1    9800 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5E47018A
P 10600 1700
F 0 "R16" H 10670 1746 50  0000 L CNN
F 1 "330" H 10670 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 10530 1700 50  0001 C CNN
F 3 "~" H 10600 1700 50  0001 C CNN
	1    10600 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5E470331
P 8350 2500
F 0 "R9" H 8420 2546 50  0000 L CNN
F 1 "10K" H 8420 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 8280 2500 50  0001 C CNN
F 3 "~" H 8350 2500 50  0001 C CNN
	1    8350 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5E471284
P 9400 1200
F 0 "D1" H 9393 1416 50  0000 C CNN
F 1 "LED" H 9393 1325 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9400 1200 50  0001 C CNN
F 3 "~" H 9400 1200 50  0001 C CNN
	1    9400 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5E471847
P 9800 1200
F 0 "D2" H 9793 1416 50  0000 C CNN
F 1 "LED" H 9793 1325 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9800 1200 50  0001 C CNN
F 3 "~" H 9800 1200 50  0001 C CNN
	1    9800 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5E471A77
P 10600 1200
F 0 "D5" H 10593 1416 50  0000 C CNN
F 1 "LED" H 10593 1325 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 10600 1200 50  0001 C CNN
F 3 "~" H 10600 1200 50  0001 C CNN
	1    10600 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5E471D5A
P 10200 1200
F 0 "D4" H 10193 1416 50  0000 C CNN
F 1 "LED" H 10193 1325 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 10200 1200 50  0001 C CNN
F 3 "~" H 10200 1200 50  0001 C CNN
	1    10200 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5E47207D
P 11050 1200
F 0 "D6" H 11043 1416 50  0000 C CNN
F 1 "LED" H 11043 1325 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 11050 1200 50  0001 C CNN
F 3 "~" H 11050 1200 50  0001 C CNN
	1    11050 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 2250 8550 2250
Wire Wire Line
	8850 2050 8850 1950
Wire Wire Line
	8850 1950 9400 1950
Wire Wire Line
	11050 1950 11050 1850
Wire Wire Line
	10600 1850 10600 1950
Connection ~ 10600 1950
Wire Wire Line
	10600 1950 11050 1950
Wire Wire Line
	10200 1850 10200 1950
Connection ~ 10200 1950
Wire Wire Line
	10200 1950 10600 1950
Wire Wire Line
	9800 1850 9800 1950
Connection ~ 9800 1950
Wire Wire Line
	9800 1950 10200 1950
Wire Wire Line
	9400 1850 9400 1950
Connection ~ 9400 1950
Wire Wire Line
	9400 1950 9800 1950
Wire Wire Line
	9400 1550 9400 1350
Wire Wire Line
	9800 1550 9800 1350
Wire Wire Line
	10200 1550 10200 1350
Wire Wire Line
	10600 1550 10600 1350
Wire Wire Line
	11050 1550 11050 1350
Wire Wire Line
	7250 3450 6900 3450
Wire Wire Line
	6900 3450 6900 3350
Connection ~ 6900 3350
Wire Wire Line
	6900 3350 7250 3350
Wire Wire Line
	7550 4650 7550 4450
Wire Wire Line
	7850 3450 7950 3450
Connection ~ 7550 4650
Wire Wire Line
	11050 850  11050 1050
Wire Wire Line
	10600 1050 10600 850 
Connection ~ 10600 850 
Wire Wire Line
	10600 850  11050 850 
Wire Wire Line
	10200 1050 10200 850 
Connection ~ 10200 850 
Wire Wire Line
	10200 850  10600 850 
Wire Wire Line
	9800 1050 9800 850 
Connection ~ 9800 850 
Wire Wire Line
	9800 850  10200 850 
Wire Wire Line
	9400 1050 9400 850 
Wire Wire Line
	9400 850  9800 850 
Wire Wire Line
	7950 4450 7550 4450
Connection ~ 7550 4450
Wire Wire Line
	7550 4450 7550 3750
Wire Wire Line
	6100 3750 6100 3350
Wire Wire Line
	6100 3350 6700 3350
Connection ~ 6700 3350
Wire Wire Line
	1000 4450 1150 4450
$Comp
L Switch:SW_Push SW1
U 1 1 5E4C6924
P 3650 2200
F 0 "SW1" H 3650 2485 50  0000 C CNN
F 1 "SW_Push" H 3650 2394 50  0000 C CNN
F 2 "" H 3650 2400 50  0001 C CNN
F 3 "~" H 3650 2400 50  0001 C CNN
	1    3650 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2200 3250 2200
Wire Wire Line
	3200 2200 3200 1650
Wire Wire Line
	3200 1650 3100 1650
Wire Wire Line
	3500 2350 3250 2350
Wire Wire Line
	3250 2350 3250 2200
Connection ~ 3250 2200
Wire Wire Line
	3250 2200 3200 2200
Wire Wire Line
	6700 4150 6700 4650
Connection ~ 6700 4650
Wire Wire Line
	6100 4650 6700 4650
Wire Wire Line
	6100 4150 6100 4650
$Comp
L power:GND #PWR03
U 1 1 5E484854
P 2500 3200
F 0 "#PWR03" H 2500 2950 50  0001 C CNN
F 1 "GND" H 2505 3027 50  0000 C CNN
F 2 "" H 2500 3200 50  0001 C CNN
F 3 "" H 2500 3200 50  0001 C CNN
	1    2500 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E4850E6
P 8850 2650
F 0 "#PWR09" H 8850 2400 50  0001 C CNN
F 1 "GND" H 8855 2477 50  0000 C CNN
F 2 "" H 8850 2650 50  0001 C CNN
F 3 "" H 8850 2650 50  0001 C CNN
	1    8850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3200 2500 3100
$Comp
L power:GND #PWR01
U 1 1 5E48CF19
P 1000 4750
F 0 "#PWR01" H 1000 4500 50  0001 C CNN
F 1 "GND" H 1005 4577 50  0000 C CNN
F 2 "" H 1000 4750 50  0001 C CNN
F 3 "" H 1000 4750 50  0001 C CNN
	1    1000 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4450 1000 4750
Wire Wire Line
	6700 4650 7550 4650
Wire Wire Line
	6700 3350 6900 3350
Wire Wire Line
	2500 1250 2500 1000
Wire Wire Line
	9400 850  8800 850 
Connection ~ 9400 850 
Text Notes 7500 2900 2    50   ~ 0
Power Section
Text Notes 1750 3850 2    50   ~ 0
Voltage Divider\n
Wire Wire Line
	2050 4450 2100 4450
Wire Wire Line
	2100 4450 2100 4000
Wire Wire Line
	3850 2200 3950 2200
Wire Wire Line
	8850 2650 8850 2550
$Comp
L power:GND #PWR05
U 1 1 5E4CD370
P 3900 2550
F 0 "#PWR05" H 3900 2300 50  0001 C CNN
F 1 "GND" H 3905 2377 50  0000 C CNN
F 2 "" H 3900 2550 50  0001 C CNN
F 3 "" H 3900 2550 50  0001 C CNN
	1    3900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2350 3900 2350
Wire Wire Line
	3900 2350 3900 2550
Text Notes 10050 650  2    50   ~ 0
LED Panel
Text Label 1750 2050 2    50   ~ 0
PB0
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5E4D414B
P 8750 2250
F 0 "Q1" H 8954 2296 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 8954 2205 50  0000 L CNN
F 2 "" H 8950 2350 50  0001 C CNN
F 3 "~" H 8750 2250 50  0001 C CNN
	1    8750 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5E4D77EA
P 4600 1050
F 0 "J1" H 4628 1026 50  0000 L CNN
F 1 "Conn_01x04_Female" H 4628 935 50  0000 L CNN
F 2 "" H 4600 1050 50  0001 C CNN
F 3 "~" H 4600 1050 50  0001 C CNN
	1    4600 1050
	1    0    0    -1  
$EndComp
Text Label 4250 950  2    50   ~ 0
2.8V
Text Label 1800 1550 2    50   ~ 0
SWIM
Text Label 4250 1050 2    50   ~ 0
SWIM
Text Label 4250 1250 2    50   ~ 0
NRST
$Comp
L power:GND #PWR06
U 1 1 5E4E010F
P 4050 1400
F 0 "#PWR06" H 4050 1150 50  0001 C CNN
F 1 "GND" H 4055 1227 50  0000 C CNN
F 2 "" H 4050 1400 50  0001 C CNN
F 3 "" H 4050 1400 50  0001 C CNN
	1    4050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1150 4050 1150
Wire Wire Line
	4050 1150 4050 1400
Text Label 1100 1650 2    50   ~ 0
NRST
Text Label 1750 2750 2    50   ~ 0
PB7
Wire Wire Line
	1450 4450 1600 4450
Text Label 1600 4650 3    50   ~ 0
PB7
Wire Wire Line
	1600 4650 1600 4450
Connection ~ 1600 4450
Wire Wire Line
	1600 4450 1750 4450
Text Label 2100 4000 1    50   ~ 0
3.6V
Text Label 8800 850  2    50   ~ 0
3.6V
Text Label 8050 2250 2    50   ~ 0
PB0
Text Label 3950 2200 0    50   ~ 0
2.8V
Text Label 2500 900  1    50   ~ 0
2.8V
Text Label 8750 3350 0    50   ~ 0
2.8V
$Comp
L comps:FS8205A U2
U 1 1 5E50AEF5
P 2150 6950
F 0 "U2" H 2025 7365 50  0000 C CNN
F 1 "FS8205A" H 2025 7274 50  0000 C CNN
F 2 "" H 2150 6950 50  0001 C CNN
F 3 "" H 2150 6950 50  0001 C CNN
	1    2150 6950
	1    0    0    -1  
$EndComp
$Comp
L comps:DW01 U4
U 1 1 5E50D0C6
P 3850 6900
F 0 "U4" H 3850 7165 50  0000 C CNN
F 1 "DW01" H 3850 7074 50  0000 C CNN
F 2 "" H 4200 6900 50  0001 C CNN
F 3 "" H 4200 6900 50  0001 C CNN
	1    3850 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5E50F86D
P 2800 7400
F 0 "#PWR04" H 2800 7150 50  0001 C CNN
F 1 "GND" H 2805 7227 50  0000 C CNN
F 2 "" H 2800 7400 50  0001 C CNN
F 3 "" H 2800 7400 50  0001 C CNN
	1    2800 7400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5E510990
P 3200 6950
F 0 "R6" V 2993 6950 50  0000 C CNN
F 1 "1K" V 3084 6950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 3130 6950 50  0001 C CNN
F 3 "~" H 3200 6950 50  0001 C CNN
	1    3200 6950
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 6950 3350 6950
Wire Wire Line
	3050 6950 2800 6950
Wire Wire Line
	2550 6900 2650 6900
Wire Wire Line
	2650 6900 2650 6950
Wire Wire Line
	2550 7000 2650 7000
Wire Wire Line
	2650 7000 2650 6950
Connection ~ 2650 6950
Wire Wire Line
	2800 6950 2800 7400
Connection ~ 2800 6950
Wire Wire Line
	2800 6950 2650 6950
Wire Wire Line
	3450 7050 3050 7050
Wire Wire Line
	3050 7050 3050 7100
Wire Wire Line
	3050 7100 2550 7100
Wire Wire Line
	1500 6800 1450 6800
Wire Wire Line
	1450 6800 1450 6650
Wire Wire Line
	1450 6650 2650 6650
Wire Wire Line
	2650 6650 2650 6800
Wire Wire Line
	2650 6800 2550 6800
Wire Wire Line
	1500 6900 1400 6900
Wire Wire Line
	1400 6900 1400 6950
Wire Wire Line
	1400 7000 1500 7000
Wire Wire Line
	4250 6850 4600 6850
Wire Wire Line
	4600 6850 4600 6700
Wire Wire Line
	4600 6700 4750 6700
Wire Wire Line
	4750 6700 4750 6800
Wire Wire Line
	4250 6950 4550 6950
Wire Wire Line
	4550 6950 4550 7200
Wire Wire Line
	4550 7200 4750 7200
Wire Wire Line
	4750 7200 4750 7100
$Comp
L Device:C C5
U 1 1 5E52AF4A
P 4750 6950
F 0 "C5" H 4865 6996 50  0000 L CNN
F 1 "0.1uF" H 4865 6905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4788 6800 50  0001 C CNN
F 3 "~" H 4750 6950 50  0001 C CNN
	1    4750 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5E52BAF7
P 8650 3950
F 0 "C8" H 8765 3996 50  0000 L CNN
F 1 "2.2uF" H 8765 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8688 3800 50  0001 C CNN
F 3 "~" H 8650 3950 50  0001 C CNN
	1    8650 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5E52C182
P 7950 4200
F 0 "C7" H 8065 4246 50  0000 L CNN
F 1 "470pF" H 8065 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7988 4050 50  0001 C CNN
F 3 "~" H 7950 4200 50  0001 C CNN
	1    7950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3350 6700 3850
$Comp
L Device:C C6
U 1 1 5E52CAC4
P 6700 4000
F 0 "C6" H 6815 4046 50  0000 L CNN
F 1 "0.1uF" H 6815 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6738 3850 50  0001 C CNN
F 3 "~" H 6700 4000 50  0001 C CNN
	1    6700 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E52D2E1
P 5250 7200
F 0 "R8" V 5043 7200 50  0000 C CNN
F 1 "100R" V 5134 7200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 5180 7200 50  0001 C CNN
F 3 "~" H 5250 7200 50  0001 C CNN
	1    5250 7200
	0    1    1    0   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5E52DCFF
P 5550 6900
F 0 "BT1" H 5432 6904 50  0000 R CNN
F 1 "Battery_Cell" H 5432 6995 50  0000 R CNN
F 2 "" V 5550 6960 50  0001 C CNN
F 3 "~" V 5550 6960 50  0001 C CNN
	1    5550 6900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 7200 5100 7200
Connection ~ 4750 7200
Wire Wire Line
	5400 7200 5550 7200
Wire Wire Line
	5550 7200 5550 7100
Wire Wire Line
	5550 6800 5550 6700
Wire Wire Line
	5550 6700 4750 6700
Connection ~ 4750 6700
Text Label 5550 6550 0    50   ~ 0
Battery-
Text Label 1300 6950 2    50   ~ 0
Battery-
Wire Wire Line
	5550 6700 5550 6550
Connection ~ 5550 6700
Wire Wire Line
	1300 6950 1400 6950
Connection ~ 1400 6950
Wire Wire Line
	1400 6950 1400 7000
Text Label 5750 7200 0    50   ~ 0
3.6V
Wire Wire Line
	5550 7200 5750 7200
Connection ~ 5550 7200
Text Label 6100 3750 3    50   ~ 0
3.6V
$Comp
L power:GND #PWR07
U 1 1 5E543423
P 6100 4150
F 0 "#PWR07" H 6100 3900 50  0001 C CNN
F 1 "GND" H 6105 3977 50  0000 C CNN
F 2 "" H 6100 4150 50  0001 C CNN
F 3 "" H 6100 4150 50  0001 C CNN
	1    6100 4150
	-1   0    0    1   
$EndComp
$Comp
L Connector:USB_OTG J2
U 1 1 5E543EE5
P 8900 5650
F 0 "J2" H 8957 6117 50  0000 C CNN
F 1 "USB_OTG" H 8957 6026 50  0000 C CNN
F 2 "" H 9050 5600 50  0001 C CNN
F 3 " ~" H 9050 5600 50  0001 C CNN
	1    8900 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5E54622A
P 9850 6250
F 0 "#PWR011" H 9850 6000 50  0001 C CNN
F 1 "GND" H 9855 6077 50  0000 C CNN
F 2 "" H 9850 6250 50  0001 C CNN
F 3 "" H 9850 6250 50  0001 C CNN
	1    9850 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5E5467E1
P 8850 6200
F 0 "#PWR010" H 8850 5950 50  0001 C CNN
F 1 "GND" H 8855 6027 50  0000 C CNN
F 2 "" H 8850 6200 50  0001 C CNN
F 3 "" H 8850 6200 50  0001 C CNN
	1    8850 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5E546F44
P 9850 5300
F 0 "R12" H 9920 5346 50  0000 L CNN
F 1 "1M" H 9920 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 9780 5300 50  0001 C CNN
F 3 "~" H 9850 5300 50  0001 C CNN
	1    9850 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5E5473A5
P 9850 5850
F 0 "R13" H 9920 5896 50  0000 L CNN
F 1 "1M" H 9920 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 9780 5850 50  0001 C CNN
F 3 "~" H 9850 5850 50  0001 C CNN
	1    9850 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5450 9200 5050
Wire Wire Line
	9200 5050 9500 5050
Wire Wire Line
	9850 5050 9850 5150
Wire Wire Line
	9850 6000 9850 6150
Wire Wire Line
	9850 5700 9850 5600
$Comp
L Device:C C9
U 1 1 5E5531FE
P 9500 5850
F 0 "C9" H 9615 5896 50  0000 L CNN
F 1 "0.1uF" H 9615 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9538 5700 50  0001 C CNN
F 3 "~" H 9500 5850 50  0001 C CNN
	1    9500 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5700 9500 5600
Wire Wire Line
	9500 5600 9850 5600
Connection ~ 9850 5600
Wire Wire Line
	9850 5600 9850 5450
Wire Wire Line
	9500 6000 9500 6150
Wire Wire Line
	9500 6150 9850 6150
Connection ~ 9850 6150
Wire Wire Line
	9850 6150 9850 6250
Wire Wire Line
	9850 5600 10050 5600
Text Label 10050 5600 0    50   ~ 0
Charging_stat
Text Label 3350 1550 0    50   ~ 0
Charging_stat
$Comp
L Device:LED D3
U 1 1 5E5606DF
P 9850 2850
F 0 "D3" V 9797 2928 50  0000 L CNN
F 1 "LED" V 9888 2928 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9850 2850 50  0001 C CNN
F 3 "~" H 9850 2850 50  0001 C CNN
	1    9850 2850
	1    0    0    -1  
$EndComp
Text Label 10750 2850 0    50   ~ 0
2.8V
Text Label 9600 2850 2    50   ~ 0
Battery_low
Wire Wire Line
	9700 2850 9600 2850
Text Label 1750 2150 2    50   ~ 0
Battery_low
$Comp
L comps:XT4052 U1
U 1 1 5E57ABDC
P 1700 5750
F 0 "U1" H 1675 6165 50  0000 C CNN
F 1 "XT4052" H 1675 6074 50  0000 C CNN
F 2 "" H 1700 5750 50  0001 C CNN
F 3 "" H 1700 5750 50  0001 C CNN
	1    1700 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E57B358
P 1700 6200
F 0 "#PWR02" H 1700 5950 50  0001 C CNN
F 1 "GND" H 1705 6027 50  0000 C CNN
F 2 "" H 1700 6200 50  0001 C CNN
F 3 "" H 1700 6200 50  0001 C CNN
	1    1700 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E57BB27
P 2350 5900
F 0 "R5" H 2280 5854 50  0000 R CNN
F 1 "20K" H 2280 5945 50  0000 R CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 2280 5900 50  0001 C CNN
F 3 "~" H 2350 5900 50  0001 C CNN
	1    2350 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5E57C0E7
P 850 5900
F 0 "C1" H 965 5946 50  0000 L CNN
F 1 "4.7uF" H 965 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 888 5750 50  0001 C CNN
F 3 "~" H 850 5900 50  0001 C CNN
	1    850  5900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5E57CA5C
P 3050 5900
F 0 "C4" H 3165 5946 50  0000 L CNN
F 1 "10uF" H 3165 5855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3088 5750 50  0001 C CNN
F 3 "~" H 3050 5900 50  0001 C CNN
	1    3050 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6200 1700 6150
Connection ~ 1700 6150
Wire Wire Line
	1700 6150 1700 6000
Wire Wire Line
	850  6150 1700 6150
Wire Wire Line
	3050 6150 2350 6150
Wire Wire Line
	2000 5700 2350 5700
Wire Wire Line
	2350 5700 2350 5750
Wire Wire Line
	2000 5600 3050 5600
Wire Wire Line
	3050 5600 3050 5750
Wire Wire Line
	3050 6050 3050 6150
Wire Wire Line
	2350 6050 2350 6150
Connection ~ 2350 6150
Wire Wire Line
	2350 6150 1700 6150
Wire Wire Line
	850  6150 850  6050
Wire Wire Line
	850  5750 850  5600
Wire Wire Line
	850  5600 1350 5600
Text Label 9500 4850 1    50   ~ 0
usb+
Wire Wire Line
	9500 5050 9500 4850
Connection ~ 9500 5050
Wire Wire Line
	9500 5050 9850 5050
Text Label 3050 5400 1    50   ~ 0
3.6V
Wire Wire Line
	3050 5400 3050 5600
Connection ~ 3050 5600
Text Label 850  5450 1    50   ~ 0
usb+
Wire Wire Line
	850  5450 850  5600
Connection ~ 850  5600
Text Label 1200 5700 2    50   ~ 0
charging
Wire Wire Line
	1350 5700 1200 5700
Text Label 1700 1750 2    50   ~ 0
charging
$Comp
L Device:R R15
U 1 1 5E5D1486
P 10400 2850
F 0 "R15" V 10193 2850 50  0000 C CNN
F 1 "330" V 10284 2850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 10330 2850 50  0001 C CNN
F 3 "~" H 10400 2850 50  0001 C CNN
	1    10400 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 2850 10250 2850
Wire Wire Line
	10550 2850 10750 2850
$Comp
L Device:R R1
U 1 1 5E5E4A5A
P 700 2500
F 0 "R1" H 770 2546 50  0000 L CNN
F 1 "1M" H 770 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 630 2500 50  0001 C CNN
F 3 "~" H 700 2500 50  0001 C CNN
	1    700  2500
	1    0    0    -1  
$EndComp
Text Label 700  2150 0    50   ~ 0
2.8V
Text Label 700  2850 3    50   ~ 0
charging
Wire Wire Line
	700  2350 700  2150
Wire Wire Line
	700  2650 700  2850
$Comp
L Device:C C3
U 1 1 5E64FAB3
P 1400 2400
F 0 "C3" H 1515 2446 50  0000 L CNN
F 1 "0.1uF" H 1515 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1438 2250 50  0001 C CNN
F 3 "~" H 1400 2400 50  0001 C CNN
	1    1400 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2250 1400 1650
Connection ~ 1400 1650
Wire Wire Line
	1400 1650 1900 1650
Wire Wire Line
	1400 2550 1400 3100
Wire Wire Line
	1400 3100 2500 3100
Connection ~ 2500 3100
Wire Wire Line
	2500 3100 2500 3050
$Comp
L Device:R R2
U 1 1 5E65E9B8
P 1250 1400
F 0 "R2" H 1320 1446 50  0000 L CNN
F 1 "10K" H 1320 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" V 1180 1400 50  0001 C CNN
F 3 "~" H 1250 1400 50  0001 C CNN
	1    1250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1650 1250 1650
Wire Wire Line
	1250 1550 1250 1650
Connection ~ 1250 1650
Wire Wire Line
	1250 1650 1400 1650
Wire Wire Line
	1250 1250 1250 1000
Wire Wire Line
	1250 1000 2500 1000
Connection ~ 2500 1000
Wire Wire Line
	2500 1000 2500 900 
$Comp
L Device:C C2
U 1 1 5E67CEE2
P 1300 4200
F 0 "C2" V 1552 4200 50  0000 C CNN
F 1 "0.1uF" V 1461 4200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1338 4050 50  0001 C CNN
F 3 "~" H 1300 4200 50  0001 C CNN
	1    1300 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 4450 1600 4200
Wire Wire Line
	1600 4200 1450 4200
Wire Wire Line
	1000 4450 1000 4200
Wire Wire Line
	1000 4200 1150 4200
Connection ~ 1000 4450
Wire Wire Line
	8650 3800 8650 3350
Connection ~ 8650 3350
Wire Wire Line
	8650 3350 8750 3350
Wire Wire Line
	8650 4650 8650 4100
Wire Wire Line
	7950 4450 7950 4350
Wire Wire Line
	7850 3350 8650 3350
Wire Wire Line
	7550 4650 8650 4650
Wire Wire Line
	7950 3450 7950 4050
Wire Wire Line
	8350 2650 8700 2650
Wire Wire Line
	8700 2650 8700 2550
Wire Wire Line
	8700 2550 8850 2550
Connection ~ 8850 2550
Wire Wire Line
	8850 2550 8850 2450
Wire Wire Line
	8350 2350 8350 2250
Wire Wire Line
	8050 2250 8350 2250
Connection ~ 8350 2250
Wire Wire Line
	1900 1750 1700 1750
Wire Wire Line
	1900 1550 1800 1550
Wire Wire Line
	1900 2050 1750 2050
Wire Wire Line
	1900 2150 1750 2150
Wire Wire Line
	1900 2750 1750 2750
Wire Wire Line
	3100 1550 3350 1550
Wire Wire Line
	4400 1050 4250 1050
Wire Wire Line
	4400 950  4250 950 
Wire Wire Line
	4400 1250 4250 1250
$EndSCHEMATC
