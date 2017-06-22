#ifndef SERIALCONNECTION_H
#define SERIALCONNECTION_H

#include "log.h"

#include <QtSerialPort/QSerialPort>
#include <QtSerialPort/QSerialPortInfo>
#include <QComboBox>

class SerialConnection : public QObject
{
    Q_OBJECT

public:
    struct Settings {
        QString name = "";
        qint32 baudRate = 9600;
        QSerialPort::DataBits dataBits = QSerialPort::Data8;
        QSerialPort::Parity parity = QSerialPort::NoParity;
        QSerialPort::StopBits stopBits = QSerialPort::OneStop;
        QSerialPort::FlowControl flowControl = QSerialPort::NoFlowControl;
    };

private:
    Log& log;
    QSerialPort serial;
    Settings currentSettings;
    QStringList portNames = {};
    QStringList baudRates = {"9600", "19200", "38400", "115200"};

public:
    SerialConnection(Log& log);

public:
    void setName(const QString& name);
    void setBaudRate(const QString& name);
    void updateNameList(QComboBox* namesList);
    void updateBaudRateList(QComboBox* baudRateList);

public:
    bool connect();
    void disconnect();
    bool isConnected();

    void send(const QByteArray &data);

private:
    void readyRead();

signals:
    void receive(const QByteArray& data);
};

#endif // SERIALCONNECTION_H
