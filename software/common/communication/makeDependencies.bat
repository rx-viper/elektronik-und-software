@echo off
echo This is a packet.cpp generation script for Windows.

mkdir .\generated
python .\packet_generator\PacketGenerator.py .\packets.xml .\generated\

PAUSE