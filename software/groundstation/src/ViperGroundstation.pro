#-------------------------------------------------
#
# Project created by QtCreator 2017-04-21T12:37:58
#
#-------------------------------------------------

QT       += core gui serialport printsupport network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++14

TARGET = groundstationTest
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Run script to generate packet definitions
PACKETS_GENERATED_DIR = ../../common/communication/generated
PACKETS_HPP = $$PACKETS_GENERATED_DIR/Packets.hpp
PACKETS_CPP = $$PACKETS_GENERATED_DIR/Packets.cpp

PACKETS_XML = ../../common/communication/packets.xml
PACKETS_GENERATOR = ../../common/communication/packet_generator/PacketGenerator.py

packets.target = $$PACKETS_HPP $$PACKETS_CPP
packets.commands = ./$$PACKETS_GENERATOR $$PACKETS_XML $$PACKETS_GENERATED_DIR
packets.depends = ../../common/communication/packets.xml

COMMUNICATION_SRC_DIR = ../../common/communication/src

COMMUNICATION_SRC = $$COMMUNICATION_SRC_DIR/CobsReader.cpp \
    $$COMMUNICATION_SRC_DIR/CobsWriter.cpp \
    $$COMMUNICATION_SRC_DIR/CRC32.cpp \
    $$COMMUNICATION_SRC_DIR/DataReader.cpp \
    $$COMMUNICATION_SRC_DIR/DataWriter.cpp

COMMUNICATION_HEADERS = $$COMMUNICATION_SRC_DIR/CobsReader.hpp \
    $$COMMUNICATION_SRC_DIR/CobsWriter.hpp \
    $$COMMUNICATION_SRC_DIR/CRC32.hpp \
    $$COMMUNICATION_SRC_DIR/DataReader.hpp \
    $$COMMUNICATION_SRC_DIR/DataWriter.hpp \
    $$COMMUNICATION_SRC_DIR/PacketGroup.hpp \
    $$COMMUNICATION_SRC_DIR/PacketGroup_impl.hpp \
    $$COMMUNICATION_SRC_DIR/Platform.hpp \
    $$COMMUNICATION_SRC_DIR/Variant.hpp \
    $$COMMUNICATION_SRC_DIR/Variant_impl.hpp

QMAKE_EXTRA_TARGETS += packets
PRE_TARGETDEPS += $$PACKETS_HPP $$PACKETS_CPP

INCLUDEPATH += '../../common/communication/src'
INCLUDEPATH += '../../common/communication/generated'

SOURCES += main.cpp \
    mainwindow.cpp \
    icehppmgraphic.cpp \
    qcustomplot.cpp \
    communcation/Communicator.cpp \
    communcation/QIODeviceBackend.cpp \
    communcation/SerialPortBackend.cpp \
    communcation/TCPBackend.cpp \
    $$PACKETS_CPP \
    Application.cpp \
    ExperimentStatus.cpp \
    PacketDispatcher.cpp \
    MeasurementData.cpp \
    IceTemperatureWidget.cpp \
    communcation/SerialPortConfigWidget.cpp

SOURCES += $$COMMUNICATION_SRC

HEADERS  += mainwindow.h \
    icehppmgraphic.h \
    qcustomplot.h \
    communcation/CommunicationBackend.hpp \
    communcation/CommunicationExceptions.hpp \
    communcation/Communicator.hpp \
    communcation/QIODeviceBackend.hpp \
    communcation/SerialPortBackend.hpp \
    communcation/TCPBackend.hpp \
    $$PACKETS_HPP \
    Application.hpp \
    ExperimentStatus.hpp \
    PacketDispatcher.hpp \
    MeasurementData.hpp \
    IceTemperatureWidget.hpp \
    communcation/BackendConfigWidget.hpp \
    communcation/SerialPortConfigWidget.hpp

HEADERS += $$COMMUNICATION_HEADERS

FORMS    += mainwindow.ui \
    communcation/SerialPortConfigWidget.ui

RESOURCES +=
