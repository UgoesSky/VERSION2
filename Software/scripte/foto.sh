#!/bin/bash
ORT1=/home/pi/webcam1
ORT2=/home/pi/webcam2
ORT3=/home/pi/webcam3
while true
do
#Variable
DATE=$(date +%Y-%m-%d%H-%M-%S)
echo $DATE
#Foto machen
fswebcam -r 1280x720 --skip 30 --no-banner --jpeg -1 $ORT1/$DATE.jpg
#TODO: Mehrere Kamaras anschließen und ansprechen
done
