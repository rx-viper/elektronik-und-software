#ifndef DATAMANAGER_H
#define DATAMANAGER_H

#include "datapacket.h"
#include "log.h"

#include <QByteArray>
#include <vector>

using std::vector;

class DataManager : public QObject
{
    Q_OBJECT

private:
    Log& log;
    QByteArray buffer;
    vector<DataPacket> Packets;
    int lastSyncPos;
    float hpDepth[3] = {0.0, 0.0, 0.0};

public:
    DataManager(Log& log);
    float currentHeatProbePenDepth(int idx);

public slots:
    void addNewData(const QByteArray& newData);

private:
    void handleNewPacket(const DataPacket& newPacket);

signals:
    void penetrationDepthChanged();
};

#endif // DATAMANAGER_H
