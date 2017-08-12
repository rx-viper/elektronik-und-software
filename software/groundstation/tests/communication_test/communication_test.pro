QT += core serialport network
QT -= gui

CONFIG += c++14

TARGET = communication_test
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

# Run script to generate packet definitions
PACKETS_GENERATED_DIR = ../../../common/communication/generated/
PACKETS_HPP = $$PACKETS_GENERATED_DIR/Packets.hpp
PACKETS_CPP = $$PACKETS_GENERATED_DIR/Packets.cpp

PACKETS_XML = ../../../common/communication/packets.xml
PACKETS_GENERATOR = ../../../common/communication/packet_generator/PacketGenerator.py

packets.target = $$PACKETS_HPP $$PACKETS_CPP
packets.commands = ./$$PACKETS_GENERATOR $$PACKETS_XML $$PACKETS_GENERATED_DIR
packets.depends = ../../../common/communication/packets.xml

COMMUNICATION_SRC_DIR = ../../../common/communication/src/

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
PRE_TARGETDEPS += $$PACKETS_HPP

INCLUDEPATH += '../../../common/communication/src'
INCLUDEPATH += '../../../common/communication/generated'

SOURCES += main.cpp \
    QIODeviceBackend.cpp \
    SerialPortBackend.cpp \
    TCPBackend.cpp \
    Communicator.cpp \
    $$PACKETS_CPP \
    CommunicationTest.cpp

SOURCES += $$COMMUNICATION_SRC

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS += \
    CommunicationBackend.hpp \
    Communicator.hpp \
    QIODeviceBackend.hpp \
    SerialPortBackend.hpp \
    TCPBackend.hpp \
    CommunicationExceptions.hpp \
    $$PACKETS_HPP \
    CommunicationTest.hpp

HEADERS += $$COMMUNICATION_HEADERS
