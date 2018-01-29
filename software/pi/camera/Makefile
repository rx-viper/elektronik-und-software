CC=gcc
CXX=g++
RM=rm -f

PACKET_GENERATOR=../../common/communication/packet_generator/PacketGenerator.py
PACKET_XML=../../common/communication/packets.xml
PACKET_DIR=../../common/communication/generated/

CXXFLAGS=-O3 -I../../common/communication/src/ -I$(PACKET_DIR)
LDFLAGS=
LDLIBS=-lswscale -lturbojpeg -lavutil -lpthread -lueye_api -lsnappy

BUILD_DIR = ./build

BIN=camera

SRCS=$(wildcard *.cpp) $(wildcard ../../common/communication/src/*.cpp) ../../common/communication/generated/Packets.cpp

.PHONY: clean packet_generator build

all: build

build: packet_generator $(BIN)

packet_generator:
	$(PACKET_GENERATOR) $(PACKET_XML) $(PACKET_DIR)

OBJS = $(SRCS:%.cpp=$(BUILD_DIR)/%.o)
DEP = $(OBJS:%.o=%.d)

#$(BIN) : $(BUILD_DIR)/$(BIN)

$(BIN) : $(OBJS)
	mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $(LDLIBS) $(BUILD_DIR)/*.o -o $@

-include $(DEP)

$(BUILD_DIR)/%.o : %.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -MMD -c $< -o $(BUILD_DIR)/$(notdir $@)

clean :
	-rm -f $(BIN) build/*.o build/*.d
