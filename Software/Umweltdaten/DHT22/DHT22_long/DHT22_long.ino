#include "DHT.h"

#define DHTPIN 2     // what digital pin we're connected to

#define DHTTYPE DHT22   // DHT 22  (AM2302), AM2321

DHT dht(DHTPIN, DHTTYPE);

void setup()
{
  Serial.begin(9600);
  dht.begin();
  Serial.println("DHT22 start"); 
}

void loop()
{
  float h = dht.readHumidity();
  float t = dht.readTemperature();

  Serial.print("humidity:");
  Serial.print(h,1);
  Serial.print("temperature:");
  Serial.println(t,1);
  
  delay(100);
}
