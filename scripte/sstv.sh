#!/bin/bash
NUM=0
timea=0
timeb=0
timec=0
ORT=/home/pi/picam
PIC=0
SPIC=0
echo "25" > /sys/class/gpio/unexport
echo "25" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio25/direction
echo "0" > /sys/class/gpio/gpio25/value
while true
do
#Variablen
	DATE=$(date +%Y-%m-%dt%H:%M:%S)
	echo $DATE

	#make picture
	echo "0" > /home/pi/werte/sstv.txt

	raspistill -q 100 -o $ORT/$DATE.jpg -l $ORT/latest.jpg --nopreview
	PIC=$(($PIC + 1))
	SPIC=$(($SPIC + 1))
	echo "$DATE:	Foto Nr. $PIC gemacht -> SSTV $SPIC"

#SERIAL=1
#SERIAL=$(date +%Y-%m-%dt%H:%M:%S)

	# convert picture
	echo "1" > /home/pi/werte/sstv.txt
	convert $ORT/latest.jpg -resize '320x240' /home/pi/sstv/latest.jpg #Dateiname beachten
	echo "$DATE:	SSTV $SPIC verkleinert"
	sed '/./!d' /home/pi/ausgabe.txt -i /home/pi/ausgabe_leer.txt
	echo "$DATE:	SSTV $SPIC SERIAL Ausgabe Leerzeilen entfernt"
	tail -n 4 /home/pi/ausgabe_leer.txt > /home/pi/sstv/serial.txt
	echo "$DATE:	SSTV $SPIC SERIAL Ausgabe 4 Zeilen in Datei"
	cat /home/pi/sstv/serial.txt
	SERIAL=`cat /home/pi/sstv/serial.txt`
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
	echo "$DATE:	SSTV $SPIC Rufzeichen in Bild einpflegen" TODO:
	/home/pi/pisstv /home/pi/sstv/sstv.jpg
	echo "$DATE:	SSTV $SPIC Konvertierung Martin 1"
	echo "2" > /home/pi/sstv.txt
	echo "1" > /sys/class/gpio/gpio25/value
	sleep 0.5
	echo "$DATE:	SSTV $SPIC SENDUNG BEGINN"
	aplay /home/pi/sstv/sstv.jpg.wav
	echo "$DATE:	SSTV $SPIC SENDUNG ENDE"
	echo "0" > /sys/class/gpio/gpio25/value
	#save transmitted picture
	cp /home/pi/sstv/sstv.jpg /home/pi/sstv/save/$DATE.jpg
# wir warten 2 Min mit dem nächsten Sendung. Solange machen wir hochauflösende Bilder

timea=$(date +%s)
timeb=$(date +%s)
timec=$(( timea + 120 ))
echo "3" > /home/pi/werte/sstv.txt
while (( $timec > $timeb ))
do
	raspistill -q 100 -o $ORT/$DATE.jpg -l $ORT/latest.jpg --nopreview
	timeb=$(date +%s)

done
#Jump into SSTV Schleife
done
