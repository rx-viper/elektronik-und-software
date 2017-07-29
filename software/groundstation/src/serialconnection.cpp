#include "serialconnection.h"

SerialConnection::SerialConnection(Log& log) :
    log(log)
{
    QObject::connect(&serial, &QSerialPort::readyRead,
                     this, &SerialConnection::readyRead);
}

void SerialConnection::updateNameList(QComboBox* namesList) {
    portNames.clear();
    const auto infos = QSerialPortInfo::availablePorts();
    for(auto& info : infos) {
        portNames.append(info.portName());
    }

    namesList->clear();
    namesList->addItems(portNames);

    setName(namesList->currentText());
}

void SerialConnection::updateBaudRateList(QComboBox* baudRateList) {
    baudRateList->clear();
    baudRateList->addItems(baudRates);

    setBaudRate(baudRateList->currentText());
}

void SerialConnection::setName(const QString& name) {
    if(portNames.contains(name)) {
        currentSettings.name = name;
        log.append("Port name set to " + name);
    } else {
        log.append("Invalid port name: " + name);
    }
}

void SerialConnection::setBaudRate(const QString& baudRate) {
    if(baudRates.contains(baudRate)) {
        currentSettings.baudRate = baudRate.toInt();
        log.append("Baud rate set to " + baudRate + " 1/s");
    } else {
        log.append("Invalid baud rate: " + baudRate);
    }
}

bool SerialConnection::connect() {
    serial.setPortName(currentSettings.name);
    serial.setBaudRate(currentSettings.baudRate);
    serial.setDataBits(currentSettings.dataBits);
    serial.setParity(currentSettings.parity);
    serial.setStopBits(currentSettings.stopBits);
    serial.setFlowControl(currentSettings.flowControl);

    if(serial.open(QIODevice::ReadWrite)) {
        log.append("Connected to " + currentSettings.name
                   + " at " + QString::number(currentSettings.baudRate) + " 1/s");
        return true;
    } else {
        log.append("Error while opening the serial connection: " + serial.errorString());
        return false;
    }
}

void SerialConnection::disconnect() {
    if(serial.isOpen()) {
        serial.close();
        log.append("Serial connection closed");
    }
}

bool SerialConnection::isConnected() {
    return serial.isOpen();
}

void SerialConnection::send(const QByteArray& data) {
    serial.write(data);
}

void SerialConnection::readyRead() {
    receive(serial.readAll());
}
