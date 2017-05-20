#ifndef DATAPACKET_H
#define DATAPACKET_H

//#include <cstdint>

const char SyncWord[] = "Viper";
const int SyncWordLength = 5;

const char EndingWord[] = "EOM";
const int EndingWordLength = 3;

struct DataPacket {
    uint16_t Data1, Data2, Data3, Data4;
};

#endif // DATAPACKET_H
