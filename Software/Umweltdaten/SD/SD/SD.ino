#include <SPI.h>
#include <SD.h>
#include <Wire.h>
#include <DHT.h>

#define tmp75_address_1 0x48
#define bmp085_address 0x77
#define ds1307_address 0x68

#define DHTPIN 8
#define DHTTYPE DHT22

unsigned long previousMillis = 0;
const long interval = 1000;

File file;
DHT dht(DHTPIN, DHTTYPE);

const int CS = 10;  //SPI chip select for SDcard
const int batteryPin = A7;  //ADC pin to messure battery voltage

const unsigned char OSS = 0;  //Oversampling Setting for BMP085

//-----BMP085-----
// Calibration values
int ac1;
int ac2;
int ac3;
unsigned int ac4;
unsigned int ac5;
unsigned int ac6;
int b1;
int b2;
int mb;
int mc;
int md;

// b5 is calculated in bmp085GetTemperature(...), this variable is also used in bmp085GetPressure(...)
// so ...Temperature(...) must be called before ...Pressure(...).
long b5;
//-----end BMP085-----


void setup()
{
  Serial.begin(9600);
  Serial.println("Serial start");

  analogReference(INTERNAL);
  pinMode(batteryPin, INPUT);
  Serial.println("ADC start");

  dht.begin();
  Serial.println("DHT22 start");

  Wire.begin();
  Serial.println("Wire start");

  if (SD.begin(CS))
  {
    Serial.println("SD start");
  }
  else
  {
    Serial.println("SD start failed");
  }

  file = SD.open("test.txt", FILE_WRITE);
  if (file)
  {
    Serial.println("File open");
  }
  else
  {
    Serial.println("File open failed");
  }

  Wire.beginTransmission(tmp75_address_1);    //write to TMP75
  Wire.write(0x1);                            //set pointer register: 01 = configuration
  Wire.write(0x61);                           //write configuration
  Wire.endTransmission();
  Serial.println("TMP75 start");

  bmp085Calibration();
  Serial.println("BMP085 start");

  Serial.print("temperature 1;");
  Serial.print("temperature 2;");
  Serial.print("temperature 3;");
  Serial.print("humidity;");
  Serial.print("pressure;");
  Serial.print("atm;");
  Serial.print("altitude;");
  Serial.print("battery;");
  Serial.print("time;");
  Serial.println("n");

  file.print("temperature 1;");
  file.print("temperature 2;");
  file.print("temperature 3;");
  file.print("humidity;");
  file.print("pressure;");
  file.print("atm;");
  file.print("altitude;");
  file.print("battery;");
  file.print("time;");
  file.println("n");
}

void loop()
{
  int n = 0;
  byte time[7];

  while (n < 60)
  {
    unsigned long currentMillis = millis();

    if (currentMillis - previousMillis >= interval)
    {
      previousMillis = currentMillis;
      n++;

      ds1307(ds1307_address, time);

      float temperature_3 = tmp75(tmp75_address_1);

      float humidity = dht.readHumidity();
      float temperature_2 = dht.readTemperature();

      float temperature_1 = bmp085GetTemperature(bmp085ReadUT()); //MUST be called first
      float pressure = bmp085GetPressure(bmp085ReadUP());
      float atm = pressure / 101325; // "standard atmosphere"
      float altitude = calcAltitude(pressure); //Uncompensated caculation - in Meters

      int battery = analogRead(batteryPin);

      Serial.print(temperature_1, 1);
      Serial.print(";");
      Serial.print(temperature_2, 1);
      Serial.print(";");
      Serial.print(temperature_3, 4);
      Serial.print(";");

      Serial.print(humidity, 1);
      Serial.print(";");

      Serial.print(pressure, 0);
      Serial.print(";");
      Serial.print(atm, 4);
      Serial.print(";");
      Serial.print(altitude, 2);
      Serial.print(";");

      Serial.print(battery);
      Serial.print(";");

      Serial.print(time[6], HEX);
      Serial.print("-");
      Serial.print(time[5], HEX);
      Serial.print("-");
      Serial.print(time[4], HEX);
      Serial.print("T");
      Serial.print(time[2], HEX);
      Serial.print(":");
      Serial.print(time[1], HEX);
      Serial.print(":");
      Serial.print(time[0], HEX);
      Serial.print(";");

      Serial.println(n);


      file.print(temperature_1, 1);
      file.print(";");
      file.print(temperature_2, 1);
      file.print(";");
      file.print(temperature_3, 4);
      file.print(";");

      file.print(humidity, 1);
      file.print(";");

      file.print(pressure, 0);
      file.print(";");
      file.print(atm, 4);
      file.print(";");
      file.print(altitude, 2);
      file.print(";");

      file.print(battery);
      file.print(";");

      file.print(time[6], HEX);
      file.print("-");
      file.print(time[5], HEX);
      file.print("-");
      file.print(time[4], HEX);
      file.print("T");
      file.print(time[2], HEX);
      file.print(":");
      file.print(time[1], HEX);
      file.print(":");
      file.print(time[0], HEX);
      file.print(";");

      file.println(n);

    }
  }
  file.flush();
  Serial.println("save");
}

void ds1307(byte address, byte* time)
{
  Wire.beginTransmission(address);    //write to DS1307
  Wire.write(0x0);                    //set  pointer register
  Wire.endTransmission(false);        //Start repeat

  Wire.requestFrom(address, 7);       //read from DS1307: seconds - year
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

float tmp75(byte address)
{
  byte msb;
  byte lsb;
  word data;
  float shift;
  float temperature;

  Wire.beginTransmission(address);   //write to TMP75
  Wire.write(0x1);                    //set pointer register: 01 = configuration
  Wire.write(0xE1);                    //write configuration: One-Shot
  Wire.endTransmission();

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

//-----BMP085-----
// Stores all of the bmp085's calibration values into global variables
// Calibration values are required to calculate temp and pressure
// This function should be called at the beginning of the program
void bmp085Calibration()
{
  ac1 = bmp085ReadInt(0xAA);
  ac2 = bmp085ReadInt(0xAC);
  ac3 = bmp085ReadInt(0xAE);
  ac4 = bmp085ReadInt(0xB0);
  ac5 = bmp085ReadInt(0xB2);
  ac6 = bmp085ReadInt(0xB4);
  b1 = bmp085ReadInt(0xB6);
  b2 = bmp085ReadInt(0xB8);
  mb = bmp085ReadInt(0xBA);
  mc = bmp085ReadInt(0xBC);
  md = bmp085ReadInt(0xBE);
}

// Calculate temperature in deg C
float bmp085GetTemperature(unsigned int ut) {
  long x1, x2;

  x1 = (((long)ut - (long)ac6) * (long)ac5) >> 15;
  x2 = ((long)mc << 11) / (x1 + md);
  b5 = x1 + x2;

  float temp = ((b5 + 8) >> 4);
  temp = temp / 10;

  return temp;
}

// Calculate pressure given up
// calibration values must be known
// b5 is also required so bmp085GetTemperature(...) must be called first.
// Value returned will be pressure in units of Pa.
long bmp085GetPressure(unsigned long up) {
  long x1, x2, x3, b3, b6, p;
  unsigned long b4, b7;

  b6 = b5 - 4000;
  // Calculate B3
  x1 = (b2 * (b6 * b6) >> 12) >> 11;
  x2 = (ac2 * b6) >> 11;
  x3 = x1 + x2;
  b3 = (((((long)ac1) * 4 + x3) << OSS) + 2) >> 2;

  // Calculate B4
  x1 = (ac3 * b6) >> 13;
  x2 = (b1 * ((b6 * b6) >> 12)) >> 16;
  x3 = ((x1 + x2) + 2) >> 2;
  b4 = (ac4 * (unsigned long)(x3 + 32768)) >> 15;

  b7 = ((unsigned long)(up - b3) * (50000 >> OSS));
  if (b7 < 0x80000000)
    p = (b7 << 1) / b4;
  else
    p = (b7 / b4) << 1;

  x1 = (p >> 8) * (p >> 8);
  x1 = (x1 * 3038) >> 16;
  x2 = (-7357 * p) >> 16;
  p += (x1 + x2 + 3791) >> 4;

  long temp = p;
  return temp;
}

// Read 1 byte from the BMP085 at 'address'
char bmp085Read(unsigned char address)
{
  unsigned char data;

  Wire.beginTransmission(bmp085_address);
  Wire.write(address);
  Wire.endTransmission();

  Wire.requestFrom(bmp085_address, 1);
  while (!Wire.available())
    ;

  return Wire.read();
}

// Read 2 bytes from the BMP085
// First byte will be from 'address'
// Second byte will be from 'address'+1
int bmp085ReadInt(unsigned char address)
{
  unsigned char msb, lsb;

  Wire.beginTransmission(bmp085_address);
  Wire.write(address);
  Wire.endTransmission();

  Wire.requestFrom(bmp085_address, 2);
  while (Wire.available() < 2)
    ;
  msb = Wire.read();
  lsb = Wire.read();

  return (int) msb << 8 | lsb;
}

// Read the uncompensated temperature value
unsigned int bmp085ReadUT() {
  unsigned int ut;

  // Write 0x2E into Register 0xF4
  // This requests a temperature reading
  Wire.beginTransmission(bmp085_address);
  Wire.write(0xF4);
  Wire.write(0x2E);
  Wire.endTransmission();

  // Wait at least 4.5ms
  delay(5);

  // Read two bytes from registers 0xF6 and 0xF7
  ut = bmp085ReadInt(0xF6);
  return ut;
}

// Read the uncompensated pressure value
unsigned long bmp085ReadUP() {

  unsigned char msb, lsb, xlsb;
  unsigned long up = 0;

  // Write 0x34+(OSS<<6) into register 0xF4
  // Request a pressure reading w/ oversampling setting
  Wire.beginTransmission(bmp085_address);
  Wire.write(0xF4);
  Wire.write(0x34 + (OSS << 6));
  Wire.endTransmission();

  // Wait for conversion, delay time dependent on OSS
  delay(2 + (3 << OSS));

  // Read register 0xF6 (MSB), 0xF7 (LSB), and 0xF8 (XLSB)
  msb = bmp085Read(0xF6);
  lsb = bmp085Read(0xF7);
  xlsb = bmp085Read(0xF8);

  up = (((unsigned long) msb << 16) | ((unsigned long) lsb << 8) | (unsigned long) xlsb) >> (8 - OSS);

  return up;
}

void writeRegister(int deviceAddress, byte address, byte val) {
  Wire.beginTransmission(deviceAddress); // start transmission to device
  Wire.write(address);       // send register address
  Wire.write(val);         // send value to write
  Wire.endTransmission();     // end transmission
}

int readRegister(int deviceAddress, byte address) {

  int v;
  Wire.beginTransmission(deviceAddress);
  Wire.write(address); // register to read
  Wire.endTransmission();

  Wire.requestFrom(deviceAddress, 1); // read a byte

  while (!Wire.available()) {
    // waiting
  }

  v = Wire.read();
  return v;
}

float calcAltitude(float pressure) {

  float A = pressure / 101325;
  float B = 1 / 5.25588;
  float C = pow(A, B);
  C = 1 - C;
  C = C / 0.0000225577;

  return C;
}
