#include "datamanager.h"
#include "datapacket.h"
#include "log.h"
#include <QByteArray>
#include <QDebug>

DataManager::DataManager(Log& log) : log(log), lastSyncPos(0) {}

void DataManager::addNewData(const QByteArray &newData) {
    buffer += newData;

    while(lastSyncPos+MessageLength < buffer.size()) {
        const int syncPos = buffer.indexOf(SyncWord, lastSyncPos+SyncWordLength);
        if(syncPos < 0) break;
        if(syncPos+MessageLength >= buffer.size()) break;

        handleNewPacket(*reinterpret_cast<const DataPacket*>
                        (buffer.constData() + syncPos + SyncWordLength));

        lastSyncPos = syncPos;
    }
}

void DataManager::handleNewPacket(const DataPacket& newPacket) {
    Packets.push_back(newPacket);

    log.append("Received Packet: "
               + QString::number(newPacket.Data1) + ", "
               + QString::number(newPacket.Data2) + ", "
               + QString::number(newPacket.Data3) + ", "
               + QString::number(newPacket.Data4));

    hpDepth[0] = static_cast<float>(newPacket.Data1)/1024.0*60.0;
    hpDepth[1] = static_cast<float>(newPacket.Data2)/1024.0*60.0;
    hpDepth[2] = static_cast<float>(newPacket.Data3)/1024.0*60.0;
}

float DataManager::currentHeatProbePenDepth(int idx) {
    return hpDepth[idx];
}
