/* main.cpp
 *
 * Copyright (C) 2017 Christopher Durand
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <xpcc/architecture/platform.hpp>
#include <Packets.hpp>
#include <xpcc/processing/timer.hpp>
#include <xpcc/architecture/platform/driver/uart/hosted/serial_interface.hpp>

#include "Communicator.hpp"

using namespace viper::communication;
using namespace viper::packet;
using namespace viper::onboard;


namespace
{

struct SerialWrapperDevice
{
	static xpcc::hosted::SerialInterface* interface;
	
	static void write(const uint8_t* data, size_t size)
	{
		if(interface) {
			interface->writeBytes(data, size);
		}
	}
	
	static bool read(uint8_t& data)
	{
		if(interface && interface->bytesAvailable()) {
			return interface->read(reinterpret_cast<char&>(data));
		} else {
			return false;
		}
	}
};

using TestCommunicator = Communicator<GroundstationPackets, SerialWrapperDevice>;

xpcc::hosted::SerialInterface* SerialWrapperDevice::interface = nullptr;
bool soe = false;
bool lo = false;
bool sods = false;

xpcc::PeriodicTimer tempTimer{2000};
xpcc::PeriodicTimer pressureTimer{200};
xpcc::PeriodicTimer statusTimer{1000};
xpcc::PeriodicTimer hpTimer{1000};
xpcc::PeriodicTimer batteryMotorTimer{666};
xpcc::Timeout soeTimeout;
xpcc::Timeout loTimeout;
xpcc::Timeout sodsTimeout;

template<typename PacketT>
void send(TestCommunicator& c, const PacketT& packet)
{
	packet.sequenceNumber = xpcc::Clock::now().getTime();
	c.sendPacket(packet);
}

void sendIceTemperatures(TestCommunicator& c)
{
	static uint16_t state = 0;
	if(soe) {
		IceTemperatureHS packet;
		for(auto& value : packet.temperatures)
			value = (state++ - 100) * 256;
		send(c, packet);
	} else {
		IceTemperatureLS packet;
		for(auto& value : packet.temperatures)
			value = (state++ - 100) * 256;
		send(c, packet);
	}
}

void sendPressures(TestCommunicator& c)
{
	static uint16_t state = 0;
	if(soe) {
		PressureHS packet;
		for(auto& value : packet.sensor1)
			value = state++;
		for(auto& value : packet.sensor2)
			value = state++;
		send(c, packet);
	} else {
		PressureLS packet;
		for(auto& value : packet.sensor1)
			value = state++;
		for(auto& value : packet.sensor2)
			value = state++;
		send(c, packet);
	}

}

void sendHpTemp(TestCommunicator& c)
{
	static uint16_t state = 0;
	if(soe) {
		HpTemperatureHS packet;
		for(auto& value : packet.temperatures)
			value = state++;
		send(c, packet);
	} else {
		HpTemperatureLS packet;
		for(auto& value : packet.temperatures)
			value = state++;
		send(c, packet);
	}
}

void sendHpDepth(TestCommunicator& c)
{
	static uint16_t state = 0;
	if(soe) {
		HpPenetrationDepthHS packet;
		for(auto& value : packet.depth)
			value = state++;
		send(c, packet);
	} else {
		HpPenetrationDepthLS packet;
		for(auto& value : packet.depth)
			value = state++;
		send(c, packet);
	}
}

void sendHpPower(TestCommunicator& c)
{
	static uint16_t state = 0;
	if(soe) {
		HpPowerHS packet;
		for(auto& value : packet.voltage)
			value = state++;
		for(auto& value : packet.current)
			value = state++;
		send(c, packet);
	} else {
		HpPowerLS packet;
		for(auto& value : packet.voltage)
			value = state++;
		for(auto& value : packet.current)
			value = state++;
		send(c, packet);
	}
}

void sendBattVoltage(TestCommunicator& c)
{
	static uint16_t state = 0;
	if(soe) {
		BattVoltageHS packet;
		for(auto& value : packet.values)
			value = state++;
		send(c, packet);
	} else {
		BattVoltageLS packet;
		packet.value = state++;
		send(c, packet);
	}
}

void sendMotorCurrent(TestCommunicator& c)
{
	static uint16_t state = 0;
	if(soe) {
		MotorCurrentHS packet;
		for(auto& value : packet.values)
			value = state++ + 4;
		send(c, packet);
	} else {
		MotorCurrentLS packet;
		packet.value = state++ + 4;
		send(c, packet);
	}
}

}

int main()
{
	xpcc::hosted::SerialInterface serialPort("/dev/ttyUSB0", 38400);
	
	if (not serialPort.open()) {
		XPCC_LOG_ERROR << "Could not open port: " << serialPort.getDeviceName().c_str() << xpcc::endl;
		exit(EXIT_FAILURE);
	}

	sodsTimeout.restart(7900);
	loTimeout.restart(8900);
	soeTimeout.restart(10000);

	SerialWrapperDevice::interface = &serialPort;

	TestCommunicator communicator;

	while (1) {
		if(loTimeout.execute()) {
			lo = true;
		}

		if(sodsTimeout.execute()) {
			sods = true;
		}

		if(soeTimeout.execute()) {
			soe = true;
			tempTimer.restart(1000);
		}

		if(statusTimer.execute()) {
			Status s;
			s.time = xpcc::Clock::now().getTime();
			s.lo = lo;
			s.soe = soe;
			s.sods = sods;
			s.state = static_cast<ExperimentState>(41);
			s.hpOvertemperature = 1;
			s.motorPosition = bool(xpcc::Clock::now().getTime() % 5);
			s.testModeEnabled = 2;
			s.experimentId = 42;
			s.piRecordingEnabled = sods;
			s.piStorageAvailable = 13371337;
			communicator.sendPacket(s);
		}

		if(pressureTimer.execute()) {
			sendPressures(communicator);
		}

		if(tempTimer.execute()) {
			sendIceTemperatures(communicator);
		}

		if(hpTimer.execute()) {
			sendHpTemp(communicator);
			sendHpPower(communicator);
			sendHpDepth(communicator);
		}

		if(batteryMotorTimer.execute()) {
			sendMotorCurrent(communicator);
			sendBattVoltage(communicator);
		}

		communicator.update();
	}

	return 0;
}

