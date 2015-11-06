#include <Wire.h>

#define tmp75_1_address 0x48

int temperatur_1=0;
int temperatur_komma_1=0;

void setup()
{
  Wire.begin();
  Serial.begin(9600);
}

void loop()
{
  tmp75(tmp75_1_address, &temperatur_1, &temperatur_komma_1);
  
  Serial.print(temperatur_1);
  Serial.println(temperatur_komma_1);
 
  delay(1000);
}

void tmp75(int address, int *temperatur_pos, int *temperatur_komma_pos)
{
  int temperatur;
  int temperatur_komma;

  Wire.beginTransmission(address);
  Wire.requestFrom(address,2);

  if(Wire.available())
  {
    temperatur = Wire.read();  
    temperatur_komma = Wire.read();  
  }

  Wire.endTransmission();

  if(temperatur_komma == 2)
  {
    temperatur_komma = 0;
  }
  else if(temperatur_komma == 130+3 )
  {
    temperatur_komma = 5;
  }
  
  *temperatur_pos=temperatur;
  *temperatur_komma_pos=temperatur_komma;
}


