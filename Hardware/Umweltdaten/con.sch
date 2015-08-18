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
LIBS:sensors
LIBS:card
LIBS:Umweltdaten-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L CONN_01X03 P3
U 1 1 55D472F5
P 2300 1800
F 0 "P3" H 2300 2000 50  0000 C CNN
F 1 "CONN_01X03" V 2400 1800 50  0000 C CNN
F 2 "" H 2300 1800 60  0000 C CNN
F 3 "" H 2300 1800 60  0000 C CNN
	1    2300 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 55D472FE
P 2000 2000
F 0 "#PWR017" H 2000 1750 50  0001 C CNN
F 1 "GND" H 2000 1850 50  0000 C CNN
F 2 "" H 2000 2000 60  0000 C CNN
F 3 "" H 2000 2000 60  0000 C CNN
	1    2000 2000
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P2
U 1 1 55D47304
P 2450 3000
F 0 "P2" H 2450 3200 50  0000 C CNN
F 1 "CONN_02X03" H 2450 2800 50  0000 C CNN
F 2 "" H 2450 1800 60  0000 C CNN
F 3 "" H 2450 1800 60  0000 C CNN
	1    2450 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 55D4730B
P 2800 3200
F 0 "#PWR018" H 2800 2950 50  0001 C CNN
F 1 "GND" H 2800 3050 50  0000 C CNN
F 2 "" H 2800 3200 60  0000 C CNN
F 3 "" H 2800 3200 60  0000 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR019
U 1 1 55D47311
P 2800 2800
F 0 "#PWR019" H 2800 2650 50  0001 C CNN
F 1 "+3V3" H 2800 2940 50  0000 C CNN
F 2 "" H 2800 2800 60  0000 C CNN
F 3 "" H 2800 2800 60  0000 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
Text GLabel 2000 3100 0    50   Input ~ 0
RESET
Text GLabel 2900 3000 2    50   Input ~ 0
MOSI
Text GLabel 2000 2900 0    50   Input ~ 0
MISO
Text GLabel 2000 3000 0    50   Input ~ 0
SCK
Wire Wire Line
	2200 2900 2000 2900
Wire Wire Line
	2200 3000 2000 3000
Wire Wire Line
	2200 3100 2000 3100
Wire Wire Line
	2800 3100 2800 3200
Wire Wire Line
	2700 3100 2800 3100
Wire Wire Line
	2800 2900 2800 2800
Wire Wire Line
	2700 2900 2800 2900
Wire Wire Line
	2900 3000 2700 3000
Wire Wire Line
	2000 1900 2000 2000
Wire Wire Line
	2100 1900 2000 1900
Wire Wire Line
	2100 1800 1900 1800
Wire Wire Line
	2100 1700 1900 1700
Text GLabel 1900 1700 0    50   Input ~ 0
RX
Text GLabel 1900 1800 0    50   Input ~ 0
TX
$EndSCHEMATC
