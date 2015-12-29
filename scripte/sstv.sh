#!/bin/bash
#Variablen # IDEA: Programmierung in C
			#NUM=0 	#Gibts so nicht
timea=0 #Variable für Warteschleife zw. Sendungen
timeb=0 #Variable für Warteschleife zw. Sendungen
timec=0 #Variable für Warteschleife zw. Sendungen
ORT=/home/pi/picam #Verzeichnis zur Speicherung von Bildern
PIC=0 # Zähler für verarbeitete hochaflösende Bilder
SPIC=0 # Zähler für SSTV Bilder

echo "25" > /sys/class/gpio/unexport # Emulierung PTT-Funktion an Funkgerät
echo "25" > /sys/class/gpio/export  # Emulierung PTT-Funktion an Funkgerät
echo "out" > /sys/class/gpio/gpio25/direction # Emulierung PTT-Funktion an Funkgerät
echo "0" > /sys/class/gpio/gpio25/value # Emulierung PTT-Funktion an Funkgerät

while true #Hauptprogramm
do
#Variablen
	DATE=$(date +%Y-%m-%dt%H:%M:%S) #Datum
	#echo $DATE # braucht man nicht. Nur zu Debugzwecke.

	#make picture
	echo "0" > /home/pi/werte/sstv.txt   # AFSK an Arduino: Das SSTV-Bild wird gemacht

	raspistill -q 100 -o $ORT/$DATE.jpg -l $ORT/latest.jpg --nopreview
	PIC=$(($PIC + 1))
	SPIC=$(($SPIC + 1))
	echo "$DATE:	Foto Nr. $PIC gemacht -> SSTV $SPIC"

#SERIAL=1 # Was macht das?
#SERIAL=$(date +%Y-%m-%dt%H:%M:%S) # Was macht das?

	# convert picture
	echo "1" > /home/pi/werte/sstv.txt  # AFSK an Arduino: SSTV-Bild wird zur Sendung vorbereitet.
	convert $ORT/latest.jpg -resize '320x240' /home/pi/sstv/latest.jpg #Dateiname beachten
	echo "$DATE:	SSTV $SPIC verkleinert"
	sed '/./!d' /home/pi/ausgabe.txt -i /home/pi/ausgabe_leer.txt # Mitschnitt der Serielen Schnittstelle Rx vom Arduino
	echo "$DATE:	SSTV $SPIC SERIAL Ausgabe Leerzeilen entfernt"
	tail -n 4 /home/pi/ausgabe_leer.txt > /home/pi/sstv/serial.txt # Abschnitt der letzte 4 Zeilen zur SSTV Sendung; braucht man nicht mehr, wenn AFSK tut.
	echo "$DATE:	SSTV $SPIC SERIAL Ausgabe 4 Zeilen in Datei"
	# cat /home/pi/sstv/serial.txt
	SERIAL=`cat /home/pi/sstv/serial.txt` #Befüllung einer Variable mit Tx
	echo "$DATE:	SSTV $SPIC SERIAL Ausgabe in  Variable"
	echo "Serial: $SERIAL"
	convert -density 90 -pointsize 14 -fill red label:"$SERIAL" /home/pi/sstv/serial.png
	echo "$DATE:	SSTV $SPIC SERIAL Ausgabe als Bild"
	convert /home/pi/sstv/serial.png -transparent white /home/pi/sstv/serial.png
	echo "$DATE:	SSTV $SPIC SERIAL Sendung transparent"
	composite -geometry +10+175 /home/pi/sstv/serial.png sstv/latest.jpg sstv/sstv.jpg
	echo "$DATE:	SSTV $SPIC SERIAL Ausgabe in Bild einpflegen"
  echo "DC1MAK-11"
	composite -geometry +230+220 sstv/dc1mak.png sstv/sstv.jpg sstv/sstv.jpg
	echo "$DATE:	SSTV $SPIC Rufzeichen in Bild einpflegen"  # TODO: Ja was eigendlich?
	/home/pi/pisstv /home/pi/sstv/sstv.jpg
	echo "$DATE:	SSTV $SPIC Konvertierung Martin 1"
	echo "2" > /home/pi/sstv.txt # AFSK an Arduino: Sendung steht bevor!
	echo "1" > /sys/class/gpio/gpio25/value # Emulierung PTT-Funktion an Funkgerät
	sleep 0.5	#	Funkgerät aktiviert Sendeendstufe
	echo "$DATE:	SSTV $SPIC SENDUNG BEGINN"
	aplay /home/pi/sstv/sstv.jpg.wav	# SENDUNG VIA FUNK
	echo "$DATE:	SSTV $SPIC SENDUNG ENDE"
	echo "0" > /sys/class/gpio/gpio25/value # Ausschalten PTT-Funktion
	#save transmitted picture
	cp /home/pi/sstv/sstv.jpg /home/pi/sstv/save/$DATE.jpg
# wir warten 2 Min mit dem nächsten Sendung. Solange machen wir hochauflösende Bilder

timea=$(date +%s)
timeb=$(date +%s)
timec=$(( timea + 120 ))
echo "3" > /home/pi/werte/sstv.txt   # AFSK an Arduino: Warte mit SSTV; mache schöne Bilder
while (( $timec > $timeb ))
do
	PIC=$(($PIC + 1))
	raspistill -q 100 -o $ORT/$DATE.jpg -l $ORT/latest.jpg --nopreview
	timeb=$(date +%s)
	echo "$DATE:	Foto Nr. $PIC gemacht"
done
#Jump into SSTV Schleife
done
