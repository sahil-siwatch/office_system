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
P 2100 2000
F 0 "U3" H 2100 3081 50  0000 C CNN
F 1 "STM8L051F3P" H 2100 2990 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 2150 3000 50  0001 L CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00060484.pdf" H 2100 1600 50  0001 C CNN
	1    2100 2000
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
F 1 "1K" H 1370 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1230 4450 50  0001 C CNN
F 3 "~" H 1300 4450 50  0001 C CNN
	1    1300 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E46F74B
P 3250 2200
F 0 "R7" H 3320 2246 50  0000 L CNN
F 1 "1K" H 3320 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3180 2200 50  0001 C CNN
F 3 "~" H 3250 2200 50  0001 C CNN
	1    3250 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E46F9D8
P 1900 4450
F 0 "R4" H 1970 4496 50  0000 L CNN
F 1 "3.5K" H 1970 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1830 4450 50  0001 C CNN
F 3 "~" H 1900 4450 50  0001 C CNN
	1    1900 4450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 5E46FADD
P 10650 1750
F 0 "R17" H 10720 1796 50  0000 L CNN
F 1 "330" H 10720 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10580 1750 50  0001 C CNN
F 3 "~" H 10650 1750 50  0001 C CNN
	1    10650 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5E46FC69
P 9000 1750
F 0 "R10" H 9070 1796 50  0000 L CNN
F 1 "330" H 9070 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8930 1750 50  0001 C CNN
F 3 "~" H 9000 1750 50  0001 C CNN
	1    9000 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5E46FDC1
P 9800 1750
F 0 "R14" H 9870 1796 50  0000 L CNN
F 1 "330" H 9870 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9730 1750 50  0001 C CNN
F 3 "~" H 9800 1750 50  0001 C CNN
	1    9800 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5E46FFC4
P 9400 1750
F 0 "R11" H 9470 1796 50  0000 L CNN
F 1 "330" H 9470 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9330 1750 50  0001 C CNN
F 3 "~" H 9400 1750 50  0001 C CNN
	1    9400 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5E47018A
P 10200 1750
F 0 "R16" H 10270 1796 50  0000 L CNN
F 1 "330" H 10270 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10130 1750 50  0001 C CNN
F 3 "~" H 10200 1750 50  0001 C CNN
	1    10200 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5E470331
P 7950 2550
F 0 "R9" H 8020 2596 50  0000 L CNN
F 1 "10K" H 8020 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7880 2550 50  0001 C CNN
F 3 "~" H 7950 2550 50  0001 C CNN
	1    7950 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5E471284
P 9000 1250
F 0 "D1" H 8993 1466 50  0000 C CNN
F 1 "LED" H 8993 1375 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9000 1250 50  0001 C CNN
F 3 "~" H 9000 1250 50  0001 C CNN
	1    9000 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5E471847
P 9400 1250
F 0 "D2" H 9393 1466 50  0000 C CNN
F 1 "LED" H 9393 1375 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9400 1250 50  0001 C CNN
F 3 "~" H 9400 1250 50  0001 C CNN
	1    9400 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5E471A77
P 10200 1250
F 0 "D5" H 10193 1466 50  0000 C CNN
F 1 "LED" H 10193 1375 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 10200 1250 50  0001 C CNN
F 3 "~" H 10200 1250 50  0001 C CNN
	1    10200 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5E471D5A
P 9800 1250
F 0 "D4" H 9793 1466 50  0000 C CNN
F 1 "LED" H 9793 1375 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9800 1250 50  0001 C CNN
F 3 "~" H 9800 1250 50  0001 C CNN
	1    9800 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 5E47207D
P 10650 1250
F 0 "D6" H 10643 1466 50  0000 C CNN
F 1 "LED" H 10643 1375 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 10650 1250 50  0001 C CNN
F 3 "~" H 10650 1250 50  0001 C CNN
	1    10650 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 2300 8150 2300
Wire Wire Line
	8450 2100 8450 2000
Wire Wire Line
	8450 2000 9000 2000
Wire Wire Line
	10650 2000 10650 1900
Wire Wire Line
	10200 1900 10200 2000
Connection ~ 10200 2000
Wire Wire Line
	10200 2000 10650 2000
Wire Wire Line
	9800 1900 9800 2000
Connection ~ 9800 2000
Wire Wire Line
	9800 2000 10200 2000
Wire Wire Line
	9400 1900 9400 2000
Connection ~ 9400 2000
Wire Wire Line
	9400 2000 9800 2000
Wire Wire Line
	9000 1900 9000 2000
Connection ~ 9000 2000
Wire Wire Line
	9000 2000 9400 2000
Wire Wire Line
	9000 1600 9000 1400
Wire Wire Line
	9400 1600 9400 1400
Wire Wire Line
	9800 1600 9800 1400
Wire Wire Line
	10200 1600 10200 1400
Wire Wire Line
	10650 1600 10650 1400
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
	10650 900  10650 1100
Wire Wire Line
	10200 1100 10200 900 
Connection ~ 10200 900 
Wire Wire Line
	10200 900  10650 900 
Wire Wire Line
	9800 1100 9800 900 
Connection ~ 9800 900 
Wire Wire Line
	9800 900  10200 900 
Wire Wire Line
	9400 1100 9400 900 
Connection ~ 9400 900 
Wire Wire Line
	9400 900  9800 900 
Wire Wire Line
	9000 1100 9000 900 
Wire Wire Line
	9000 900  9400 900 
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
P 3250 2050
F 0 "SW1" H 3250 2335 50  0000 C CNN
F 1 "SW_Push" H 3250 2244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3250 2250 50  0001 C CNN
F 3 "~" H 3250 2250 50  0001 C CNN
	1    3250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2050 2850 2050
Wire Wire Line
	2800 2050 2800 1500
Wire Wire Line
	2800 1500 2700 1500
Wire Wire Line
	3100 2200 2850 2200
Wire Wire Line
	2850 2200 2850 2050
Connection ~ 2850 2050
Wire Wire Line
	2850 2050 2800 2050
Wire Wire Line
	6700 4150 6700 4650
$Comp
L power:GND #PWR03
U 1 1 5E484854
P 2100 3050
F 0 "#PWR03" H 2100 2800 50  0001 C CNN
F 1 "GND" H 2105 2877 50  0000 C CNN
F 2 "" H 2100 3050 50  0001 C CNN
F 3 "" H 2100 3050 50  0001 C CNN
	1    2100 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E4850E6
P 8450 2700
F 0 "#PWR09" H 8450 2450 50  0001 C CNN
F 1 "GND" H 8455 2527 50  0000 C CNN
F 2 "" H 8450 2700 50  0001 C CNN
F 3 "" H 8450 2700 50  0001 C CNN
	1    8450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3050 2100 2950
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
	2100 1100 2100 850 
Wire Wire Line
	9000 900  8400 900 
Connection ~ 9000 900 
Text Notes 7500 2900 2    50   ~ 0
Power Section
Text Notes 1750 3850 2    50   ~ 0
Voltage Divider\n
Wire Wire Line
	2050 4450 2100 4450
Wire Wire Line
	2100 4450 2100 4000
Wire Wire Line
	3450 2050 3550 2050
Wire Wire Line
	8450 2700 8450 2600
$Comp
L power:GND #PWR05
U 1 1 5E4CD370
P 3500 2400
F 0 "#PWR05" H 3500 2150 50  0001 C CNN
F 1 "GND" H 3505 2227 50  0000 C CNN
F 2 "" H 3500 2400 50  0001 C CNN
F 3 "" H 3500 2400 50  0001 C CNN
	1    3500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2200 3500 2200
Wire Wire Line
	3500 2200 3500 2400
Text Notes 9650 700  2    50   ~ 0
LED Panel
Text Label 1350 1900 2    50   ~ 0
PB0
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5E4D414B
P 8350 2300
F 0 "Q1" H 8554 2346 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 8554 2255 50  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 8550 2400 50  0001 C CNN
F 3 "~" H 8350 2300 50  0001 C CNN
	1    8350 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5E4D77EA
P 4200 900
F 0 "J1" H 4228 876 50  0000 L CNN
F 1 "Conn_01x04_Female" H 4228 785 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4200 900 50  0001 C CNN
F 3 "~" H 4200 900 50  0001 C CNN
	1    4200 900 
	1    0    0    -1  
$EndComp
Text Label 3850 800  2    50   ~ 0
2.8V
Text Label 1400 1400 2    50   ~ 0
SWIM
Text Label 3850 900  2    50   ~ 0
SWIM
Text Label 3850 1100 2    50   ~ 0
NRST
$Comp
L power:GND #PWR06
U 1 1 5E4E010F
P 3650 1250
F 0 "#PWR06" H 3650 1000 50  0001 C CNN
F 1 "GND" H 3655 1077 50  0000 C CNN
F 2 "" H 3650 1250 50  0001 C CNN
F 3 "" H 3650 1250 50  0001 C CNN
	1    3650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1000 3650 1000
Wire Wire Line
	3650 1000 3650 1250
Text Label 700  1500 2    50   ~ 0
NRST
Text Label 1350 2600 2    50   ~ 0
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
Text Label 8400 900  2    50   ~ 0
3.6V
Text Label 7650 2300 2    50   ~ 0
PB0
Text Label 3550 2050 0    50   ~ 0
2.8V
Text Label 2100 750  1    50   ~ 0
2.8V
Text Label 8750 3350 0    50   ~ 0
2.8V
$Comp
L comps:FS8205A U2
U 1 1 5E50AEF5
P 2150 6950
F 0 "U2" H 2200 7000 50  0001 C CNN
F 1 "FS8205A" H 2050 7350 50  0000 C CNN
F 2 "task1:FS8205a" H 2150 6950 50  0001 C CNN
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
F 2 "task1:DW01" H 4200 6900 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric" V 3130 6950 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric" V 5180 7200 50  0001 C CNN
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
F 2 "task1:lir2477" V 5550 6960 50  0001 C CNN
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
P 7550 4700
F 0 "#PWR07" H 7550 4450 50  0001 C CNN
F 1 "GND" H 7555 4527 50  0000 C CNN
F 2 "" H 7550 4700 50  0001 C CNN
F 3 "" H 7550 4700 50  0001 C CNN
	1    7550 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_OTG J2
U 1 1 5E543EE5
P 8900 5650
F 0 "J2" H 8957 6117 50  0000 C CNN
F 1 "USB_OTG" H 8957 6026 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 9050 5600 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric" V 9780 5300 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric" V 9780 5850 50  0001 C CNN
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
Text Label 2950 1400 0    50   ~ 0
Charging_stat
$Comp
L Device:LED D3
U 1 1 5E5606DF
P 6450 2150
F 0 "D3" V 6397 2228 50  0000 L CNN
F 1 "LED" V 6488 2228 50  0000 L CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6450 2150 50  0001 C CNN
F 3 "~" H 6450 2150 50  0001 C CNN
	1    6450 2150
	0    -1   -1   0   
$EndComp
Text Label 6450 1250 1    50   ~ 0
2.8V
Text Label 6450 2400 3    50   ~ 0
Battery_low
Wire Wire Line
	6450 2300 6450 2400
Text Label 1350 2000 2    50   ~ 0
Battery_low
$Comp
L comps:XT4052 U1
U 1 1 5E57ABDC
P 1700 5750
F 0 "U1" H 1675 6165 50  0000 C CNN
F 1 "XT4052" H 1675 6074 50  0000 C CNN
F 2 "task1:XT4052" H 1700 5750 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric" V 2280 5900 50  0001 C CNN
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
Text Label 1300 1600 2    50   ~ 0
charging
$Comp
L Device:R R15
U 1 1 5E5D1486
P 6450 1600
F 0 "R15" V 6243 1600 50  0000 C CNN
F 1 "330" V 6334 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6380 1600 50  0001 C CNN
F 3 "~" H 6450 1600 50  0001 C CNN
	1    6450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2000 6450 1750
Wire Wire Line
	6450 1450 6450 1250
$Comp
L Device:R R1
U 1 1 5E5E4A5A
P 5700 2200
F 0 "R1" H 5770 2246 50  0000 L CNN
F 1 "1M" H 5770 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5630 2200 50  0001 C CNN
F 3 "~" H 5700 2200 50  0001 C CNN
	1    5700 2200
	1    0    0    -1  
$EndComp
Text Label 5700 1850 0    50   ~ 0
2.8V
Text Label 5700 2550 3    50   ~ 0
charging
Wire Wire Line
	5700 2050 5700 1850
Wire Wire Line
	5700 2350 5700 2550
$Comp
L Device:C C3
U 1 1 5E64FAB3
P 1000 2250
F 0 "C3" H 1115 2296 50  0000 L CNN
F 1 "0.1uF" H 1115 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1038 2100 50  0001 C CNN
F 3 "~" H 1000 2250 50  0001 C CNN
	1    1000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2100 1000 1500
Connection ~ 1000 1500
Wire Wire Line
	1000 1500 1500 1500
Wire Wire Line
	1000 2400 1000 2950
Wire Wire Line
	1000 2950 2100 2950
Connection ~ 2100 2950
Wire Wire Line
	2100 2950 2100 2900
$Comp
L Device:R R2
U 1 1 5E65E9B8
P 850 1250
F 0 "R2" H 920 1296 50  0000 L CNN
F 1 "10K" H 920 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 780 1250 50  0001 C CNN
F 3 "~" H 850 1250 50  0001 C CNN
	1    850  1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  1500 850  1500
Wire Wire Line
	850  1400 850  1500
Connection ~ 850  1500
Wire Wire Line
	850  1500 1000 1500
Wire Wire Line
	850  1100 850  850 
Wire Wire Line
	850  850  2100 850 
Connection ~ 2100 850 
Wire Wire Line
	2100 850  2100 750 
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
	7950 2700 8300 2700
Wire Wire Line
	8300 2700 8300 2600
Wire Wire Line
	8300 2600 8450 2600
Connection ~ 8450 2600
Wire Wire Line
	8450 2600 8450 2500
Wire Wire Line
	7950 2400 7950 2300
Wire Wire Line
	7650 2300 7950 2300
Connection ~ 7950 2300
Wire Wire Line
	1500 1600 1300 1600
Wire Wire Line
	1500 1400 1400 1400
Wire Wire Line
	1500 1900 1350 1900
Wire Wire Line
	1500 2000 1350 2000
Wire Wire Line
	1500 2600 1350 2600
Wire Wire Line
	2700 1400 2950 1400
Wire Wire Line
	4000 900  3850 900 
Wire Wire Line
	4000 800  3850 800 
Wire Wire Line
	4000 1100 3850 1100
$Comp
L Device:C C10
U 1 1 5E4AB4D8
P 3700 4350
F 0 "C10" V 3952 4350 50  0000 C CNN
F 1 "1uF" V 3861 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3738 4200 50  0001 C CNN
F 3 "~" H 3700 4350 50  0001 C CNN
	1    3700 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5E4AB913
P 4200 4350
F 0 "C11" V 4452 4350 50  0000 C CNN
F 1 "22uF" V 4361 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4238 4200 50  0001 C CNN
F 3 "~" H 4200 4350 50  0001 C CNN
	1    4200 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 5E4ABD92
P 4800 4350
F 0 "C12" V 5052 4350 50  0000 C CNN
F 1 "47uF" V 4961 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4838 4200 50  0001 C CNN
F 3 "~" H 4800 4350 50  0001 C CNN
	1    4800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3700 3700 4200
Wire Wire Line
	4200 4200 4200 3700
Wire Wire Line
	4800 4200 4800 3700
Wire Wire Line
	3700 4500 3700 4900
Wire Wire Line
	4200 4500 4200 4900
Wire Wire Line
	4800 4500 4800 4900
Wire Wire Line
	3700 3700 4200 3700
Connection ~ 4200 3700
Wire Wire Line
	4200 3700 4800 3700
Wire Wire Line
	3700 4900 4200 4900
Connection ~ 4200 4900
Wire Wire Line
	4200 4900 4800 4900
Wire Wire Line
	4200 3700 4200 3550
Wire Wire Line
	4200 4900 4200 5050
$Comp
L power:GND #PWR0101
U 1 1 5E530F83
P 4200 5050
F 0 "#PWR0101" H 4200 4800 50  0001 C CNN
F 1 "GND" H 4205 4877 50  0000 C CNN
F 2 "" H 4200 5050 50  0001 C CNN
F 3 "" H 4200 5050 50  0001 C CNN
	1    4200 5050
	1    0    0    -1  
$EndComp
Text Label 4200 3550 0    50   ~ 0
3.6V
Wire Notes Line
	5300 3350 450  3350
Wire Notes Line
	3350 5250 3350 3350
Wire Notes Line
	3150 5250 3150 5100
Wire Notes Line
	3150 5100 450  5100
Wire Notes Line
	8450 4750 9100 4750
Wire Notes Line
	9100 4750 9100 2950
Wire Notes Line
	9100 2950 7600 2950
Wire Notes Line
	3150 5250 8450 5250
Wire Notes Line
	9100 4300 11200 4300
Wire Notes Line
	11200 4300 11200 6500
Wire Notes Line
	11200 6500 8450 6500
Wire Notes Line
	8450 4750 8450 6500
Wire Notes Line
	6050 500  6050 3000
Text Notes 2250 6550 0    50   ~ 0
We can also use DMN20116UTS instead of FS8205a.
Wire Notes Line
	3950 5250 3950 6300
Wire Notes Line
	3950 6300 1800 6300
Wire Notes Line
	1800 6300 1800 6550
Wire Notes Line
	1800 6550 450  6550
Wire Notes Line
	6850 3000 5300 3000
Wire Notes Line
	5300 500  5300 5250
Wire Notes Line
	7150 2750 7150 450 
Wire Wire Line
	8850 6200 8850 6100
Wire Wire Line
	8850 6050 8900 6050
Wire Wire Line
	8800 6050 8800 6100
Wire Wire Line
	8800 6100 8850 6100
Connection ~ 8850 6100
Wire Wire Line
	8850 6100 8850 6050
Wire Wire Line
	7550 4700 7550 4650
$Comp
L Device:C C14
U 1 1 5E4E2AAA
P 2350 850
F 0 "C14" H 2465 896 50  0000 L CNN
F 1 "0.1uF" H 2465 805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2388 700 50  0001 C CNN
F 3 "~" H 2350 850 50  0001 C CNN
	1    2350 850 
	0    1    1    0   
$EndComp
$Comp
L Device:C C13
U 1 1 5E4E4024
P 2350 600
F 0 "C13" V 2602 600 50  0000 C CNN
F 1 "22uF" V 2511 600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2388 450 50  0001 C CNN
F 3 "~" H 2350 600 50  0001 C CNN
	1    2350 600 
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 850  2200 600 
Wire Wire Line
	2200 850  2100 850 
Connection ~ 2200 850 
Wire Wire Line
	2500 600  2500 700 
$Comp
L power:GND #PWR0102
U 1 1 5E505D44
P 2650 750
F 0 "#PWR0102" H 2650 500 50  0001 C CNN
F 1 "GND" H 2655 577 50  0000 C CNN
F 2 "" H 2650 750 50  0001 C CNN
F 3 "" H 2650 750 50  0001 C CNN
	1    2650 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 700  2650 700 
Wire Wire Line
	2650 700  2650 750 
Connection ~ 2500 700 
Wire Wire Line
	2500 700  2500 850 
$EndSCHEMATC
