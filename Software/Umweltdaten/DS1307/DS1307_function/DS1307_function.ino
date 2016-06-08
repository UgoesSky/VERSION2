#include <Wire.h>

#define ds1307_address 0x68

void setup()
{
  Serial.begin(9600);
  Wire.begin();
}

void loop()
{
  byte time[7];
  
  ds1307(ds1307_address, time);
  Serial.print("second:");
  Serial.print(time[0], HEX);
  Serial.print("minute:");
  Serial.print(time[1], HEX);
  Serial.print("hour:");
  Serial.print(time[2], HEX);
  Serial.print("weekday:");
  Serial.print(time[3], HEX);
  Serial.print("date:");
  Serial.print(time[4], HEX);
  Serial.print("month:");
  Serial.print(time[5], HEX);
  Serial.print("year:");
  Serial.print(time[6], HEX);
  
  delay(1000);
}

void ds1307(byte address, byte* time)
{ 
  Wire.beginTransmission(0x68);    //write to DS1307
  Wire.write(0x0);                    //set  pointer register
  Wire.endTransmission(false);        //Start repeat
  
  Wire.requestFrom(0x68, 7);       //read from DS1307: seconds - year
  if (Wire.available())
  {
    time[0] = Wire.read();            //second
    time[1] = Wire.read();            //minute
    time[2] = Wire.read();            //hour
    time[3] = Wire.read();            //weekday
    time[4] = Wire.read();            //date
    time[5] = Wire.read();            //month
    time[6] = Wire.read();            //year
  }
}
