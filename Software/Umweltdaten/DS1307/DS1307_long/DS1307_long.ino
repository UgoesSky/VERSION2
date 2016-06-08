#include <Wire.h>

#define address 0x68

byte second;
byte minute;
byte hour;
byte weekday;
byte date;
byte month;
byte year;

void setup()
{
  Serial.begin(9600);
  Wire.begin();
}

void loop()
{
  Wire.beginTransmission(address);    //write to DS1307
  Wire.write(0x0);                    //set  pointer register
  Wire.endTransmission(false);        //Start repeat
  
  Wire.requestFrom(address, 7);       //read from DS1307: seconds - year
  if (Wire.available())
  {
    second = Wire.read();             //second
    minute = Wire.read();             //minute
    hour = Wire.read();               //hour
    weekday = Wire.read();            //weekday
    date = Wire.read();               //date
    month = Wire.read();              //month
    year = Wire.read();               //year
  }
  
  Serial.print("second:");
  Serial.print(second, HEX);
  Serial.print("minute:");
  Serial.print(minute, HEX);
  Serial.print("hour:");
  Serial.print(hour, HEX);
  Serial.print("weekday:");
  Serial.print(weekday, HEX);
  Serial.print("date:");
  Serial.print(date, HEX);
  Serial.print("month:");
  Serial.print(month, HEX);
  Serial.print("year:");
  Serial.print(year, HEX);
  
  delay(1000);
}
