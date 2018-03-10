CC=gcc
CXX=g++
RM=rm -f


CXXFLAGS=-O3
LDFLAGS=
LDLIBS=-lsnappy

BUILD_DIR = ./build

BIN=flir_decompress

SRCS=$(wildcard *.cpp)

OBJS = $(SRCS:%.cpp=$(BUILD_DIR)/%.o)
DEP = $(OBJS:%.o=%.d)

.PHONY: clean packet_generator build

all: build

build: $(BIN)

$(BIN) : $(OBJS)
	mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $(LDFLAGS) $(LDLIBS) $(BUILD_DIR)/*.o -o $@

-include $(DEP)

$(BUILD_DIR)/%.o : %.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -MMD -c $< -o $(BUILD_DIR)/$(notdir $@)

clean :
	-rm -f $(BIN) build/*.o build/*.d
