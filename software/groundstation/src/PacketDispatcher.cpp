#include "PacketDispatcher.hpp"
#include "Application.hpp"
#include "ExperimentStatus.hpp"

namespace viper
{

PacketDispatcher::PacketDispatcher(Application& app_) : app{app_}, experimentStatus{app_.experimentStatus()}
{
}

void PacketDispatcher::operator()(const IceTemperatureLS& data)
{
	static_assert(data.temperatures.size() == 27, "Unexpected ice temp data size");

	// 9 temperature values per ice container
	const int32_t* dataPtr{data.temperatures.data()};
	const auto* ice0Temp = dataPtr + 0;
	const auto* ice1Temp = dataPtr + 9;
	const auto* ice2Temp = dataPtr + 18;

	std::array<IceTemperatures, 3> iceTemperatures{{ice0Temp, ice1Temp, ice2Temp}};

	experimentStatus.updateIceTemperatures(iceTemperatures);
}

void PacketDispatcher::operator()(const IceTemperatureHS& data)
{
	static_assert(data.temperatures.size() == 27, "Unexpected ice temp data size");

	// 9 temperature values per ice container
	const int32_t* dataPtr{data.temperatures.data()};
	const auto* ice0Temp = dataPtr + 0;
	const auto* ice1Temp = dataPtr + 9;
	const auto* ice2Temp = dataPtr + 18;

	std::array<IceTemperatures, 3> iceTemperatures{{ice0Temp, ice1Temp, ice2Temp}};

	experimentStatus.updateIceTemperatures(iceTemperatures);
}

void PacketDispatcher::operator()(const PressureLS& pressures)
{
	static_assert (pressures.values.size(), "array size is 0");
	experimentStatus.updatePressure(pressures.values.back());
}

void PacketDispatcher::operator()(const PressureHS& pressures)
{
	static_assert (pressures.values.size(), "array size is 0");
	experimentStatus.updatePressure(pressures.values.back());
}

void PacketDispatcher::operator()(const HpTemperatureLS& hpTemperatures)
{
	experimentStatus.updateHpTemperatures(hpTemperatures.temperatures);
}

void PacketDispatcher::operator()(const HpTemperatureHS& hpTemperatures)
{
	experimentStatus.updateHpTemperatures(hpTemperatures.temperatures);
}

void PacketDispatcher::operator()(const Status& status)
{
	EventLineStatus eventStatus{status};
	experimentStatus.updateEventLines(eventStatus);
	experimentStatus.updateUptime(status.time);
	experimentStatus.updateHpOvertemperature(status.hpOvertemperature);
	experimentStatus.updateMotorPosition(status.motorPosition);
	experimentStatus.updateTestMode(status.testModeEnabled);
	std::cout << int(status.state) << ", " << uint16_t(status.testModeEnabled) << std::endl;
}

void PacketDispatcher::operator()(const OtherTemperatureLS& otherTemperatures)
{
	experimentStatus.updateOtherTemperatures(otherTemperatures.temperatures);
}

void PacketDispatcher::operator()(const OtherTemperatureHS& otherTemperatures)
{
	experimentStatus.updateOtherTemperatures(otherTemperatures.temperatures);
}

void PacketDispatcher::operator()(const HpPenetrationDepthLS& hpDepth)
{
	experimentStatus.updateHpDepth(hpDepth.depth);
}

void PacketDispatcher::operator()(const HpPenetrationDepthHS& hpDepth)
{
	experimentStatus.updateHpDepth(hpDepth.depth);
}

}

