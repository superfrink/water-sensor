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
L Transistor_BJT:S8050 Q1
U 1 1 614EAE3B
P 5540 3910
F 0 "Q1" H 5730 3956 50  0000 L CNN
F 1 "S8050" H 5730 3865 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 5740 3835 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 5540 3910 50  0001 L CNN
	1    5540 3910
	1    0    0    -1  
$EndComp
$Comp
L superfrink:NodeMCUv2 MCU1
U 1 1 6153B45E
P 6500 3810
F 0 "MCU1" H 7000 4370 50  0000 C CNN
F 1 "NodeMCUv2" H 7000 4470 50  0000 C CNN
F 2 "" H 6500 3810 50  0001 C CNN
F 3 "" H 6500 3810 50  0001 C CNN
	1    6500 3810
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3460 7400 3560
Wire Wire Line
	6600 4110 5640 4110
$Comp
L Device:R R3
U 1 1 6153E84C
P 6220 3710
F 0 "R3" V 6120 3690 50  0000 C CNN
F 1 "680" V 6040 3690 50  0000 C CNN
F 2 "" V 6150 3710 50  0001 C CNN
F 3 "~" H 6220 3710 50  0001 C CNN
	1    6220 3710
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 6153F4AF
P 5920 3460
F 0 "R2" V 5713 3460 50  0000 C CNN
F 1 "10k" V 5804 3460 50  0000 C CNN
F 2 "" V 5850 3460 50  0001 C CNN
F 3 "~" H 5920 3460 50  0001 C CNN
	1    5920 3460
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 6153FAC3
P 5020 3910
F 0 "R1" V 4813 3910 50  0000 C CNN
F 1 "20k" V 4904 3910 50  0000 C CNN
F 2 "" V 4950 3910 50  0001 C CNN
F 3 "~" H 5020 3910 50  0001 C CNN
	1    5020 3910
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 3460 6070 3460
Wire Wire Line
	5770 3460 5640 3460
Wire Wire Line
	5640 3710 5640 3460
Wire Wire Line
	5340 3910 5170 3910
Wire Wire Line
	5640 3460 4500 3460
Connection ~ 5640 3460
Wire Wire Line
	4870 3910 4500 3910
$Comp
L power:+5V #PWR?
U 1 1 615466AA
P 7000 4420
F 0 "#PWR?" H 7000 4270 50  0001 C CNN
F 1 "+5V" H 7015 4593 50  0000 C CNN
F 2 "" H 7000 4420 50  0001 C CNN
F 3 "" H 7000 4420 50  0001 C CNN
	1    7000 4420
	-1   0    0    1   
$EndComp
Wire Wire Line
	7000 4310 7000 4420
Text GLabel 4500 3460 0    50   Input ~ 0
AlligatorClip
Text GLabel 4500 3910 0    50   Input ~ 0
AlligatorClip
Wire Wire Line
	6600 3710 6370 3710
Wire Wire Line
	6070 3710 5640 3710
Connection ~ 5640 3710
$EndSCHEMATC
