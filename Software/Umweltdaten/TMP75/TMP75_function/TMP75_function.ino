#include <Wire.h>

#define tmp75_address 0x4F

void setup()
{
  Serial.begin(9600);
  Wire.begin();
}

void loop()
{
  Serial.print("temperature:");
  Serial.print(tmp75(tmp75_address));

  delay(100);
}

int tmp75(byte address)
{
  byte msb;
  byte lsb;
  word data;
  int shift;
  int temperature;

  Wire.beginTransmission(address);    //write to TMP75
  Wire.write(0x0);                    //set pointer register: 00 = temperature
  Wire.endTransmission(false);        //end write to TMP75

  Wire.requestFrom(address, 2);       //read register(temperature)
  if (Wire.available())
  {
    msb = Wire.read();                //first byte(T11 - T4)
    lsb = Wire.read();                //second byte(T3 - T0, first four bits always 0)
  }

  data = word(msb, lsb);              //put first and second byte together
  shift = data >> 4;                  //bitshift >> 4: removes the four zeros in the second byte
  temperature = shift / 16;           //calculates the temperature

  return temperature;                 //returns the temperature
}
