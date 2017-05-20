#include "datapacket.h"

void setup() {
  Serial.begin(9600);
}

uint16_t counter = 0;

void loop() {
  DataPacket pak;
  pak.Data1 = float(counter)*2.0;
  pak.Data2 = float(counter)*1.414;
  pak.Data3 = counter;
  pak.Data4 = 0;
  ++counter;
  
  Serial.print(SyncWord);
  Serial.write(reinterpret_cast<char*>(&pak), sizeof(DataPacket));
  Serial.print(EndingWord);
  
  delay(200);
}
