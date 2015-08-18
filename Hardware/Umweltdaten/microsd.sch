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
Sheet 3 7
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
L microSD_SPI P4
U 1 1 55D42A6F
P 2300 2400
F 0 "P4" H 2150 3250 50  0000 C CNN
F 1 "microSD_SPI" H 2350 2250 50  0000 C CNN
F 2 "" H 2300 2400 50  0000 C CNN
F 3 "" H 2300 2400 50  0000 C CNN
	1    2300 2400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR06
U 1 1 55D42A76
P 2600 1200
F 0 "#PWR06" H 2600 1050 50  0001 C CNN
F 1 "+3V3" H 2600 1340 50  0000 C CNN
F 2 "" H 2600 1200 60  0000 C CNN
F 3 "" H 2600 1200 60  0000 C CNN
	1    2600 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 55D42A7C
P 2600 2900
F 0 "#PWR07" H 2600 2650 50  0001 C CNN
F 1 "GND" H 2600 2750 50  0000 C CNN
F 2 "" H 2600 2900 60  0000 C CNN
F 3 "" H 2600 2900 60  0000 C CNN
	1    2600 2900
	1    0    0    -1  
$EndComp
Text GLabel 1700 1800 0    50   Input ~ 0
MISO
Text GLabel 1700 1900 0    50   Input ~ 0
SCK
Text GLabel 1700 1700 0    50   Input ~ 0
MOSI
Text GLabel 1700 2100 0    50   Input ~ 0
SS
Wire Wire Line
	2600 2700 2600 2900
Wire Wire Line
	2600 1400 2600 1200
Wire Wire Line
	1900 1700 1700 1700
Wire Wire Line
	1900 1800 1700 1800
Wire Wire Line
	1900 1900 1700 1900
Wire Wire Line
	1900 2100 1700 2100
$EndSCHEMATC
