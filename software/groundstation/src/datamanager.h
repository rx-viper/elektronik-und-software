#ifndef DATAMANAGER_H
#define DATAMANAGER_H

#include "datapacket.h"
#include "log.h"

#include <QByteArray>
#include <vector>

using std::vector;

class DataManager
{
    Log& log;
    QByteArray buffer;
    vector<DataPacket> Packets;
    int lastSyncPos;
    float hpDepth[3] = {2.0, 4.0, 8.0};

public:
    DataManager(Log& log);
    void addNewData(const QByteArray &newData);
    void handleNewPacket(const DataPacket& newPacket);
    float currentHeatProbePenDepth(int idx);
};

#endif // DATAMANAGER_H
