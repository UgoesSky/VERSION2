#include <Wire.h>

byte msb;
byte lsb;
word data;
int shift;
int temperature;

void setup()
{
  Serial.begin(9600);
  Wire.begin();
}

void loop()
{
  Wire.beginTransmission(0x4F);    //write to TMP75
  Wire.write(0x0);                 //set pointer register: 00 = temperature
  Wire.endTransmission(false);     //end write to TMP75
  
  Wire.requestFrom(0x4F, 2);       //read register(temperature)
  if (Wire.available())
  {
    msb = Wire.read();             //first byte(T11 - T4)
    lsb = Wire.read();             //second byte(T3 - T0, first four bits always 0)
  }
  
  data = word(msb, lsb);           //put first and second byte together
  shift = data >> 4;               //bitshift >> 4: removes the four zeros in the second byte
  temperature = shift / 16;        //calculates the temperature
  
  //print the values
  Serial.print("msb:");
  Serial.print(msb);
  Serial.print("lsb:");
  Serial.print(lsb);
  Serial.print("word:");
  Serial.print(data);
  Serial.print("shift:");
  Serial.print(shift);
  Serial.print("temperature:");
  Serial.print(temperature);
  
  delay(100);
}