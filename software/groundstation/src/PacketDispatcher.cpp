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
	const int32_t* dataPtr{data.temperatures.data()};
	std::array<IceTemperatures, 3> iceTemperatures{dataPtr, dataPtr + 9, dataPtr + 18};

	experimentStatus.updateIceTemperatures(iceTemperatures);
}

void PacketDispatcher::operator()(const IceTemperatureHS& data)
{
	static_assert(data.temperatures.size() == 27, "Unexpected ice temp data size");
	const int32_t* dataPtr{data.temperatures.data()};
	std::array<IceTemperatures, 3> iceTemperatures{dataPtr, dataPtr + 9, dataPtr + 18};

	experimentStatus.updateIceTemperatures(iceTemperatures);
}

void PacketDispatcher::operator()(const PressureLS& pressures)
{
	// Get last pressure value only
	experimentStatus.updatePressure(pressures.values.at(4));
}

void PacketDispatcher::operator()(const PressureHS& pressures)
{
	// Get last pressure value only
	experimentStatus.updatePressure(pressures.values.at(19));
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
}

void PacketDispatcher::operator()(const OtherTemperatureLS& otherTemperatures)
{
	// TODO
	Q_UNUSED(otherTemperatures);
}

void PacketDispatcher::operator()(const OtherTemperatureHS& otherTemperatures)
{
	// TODO
	Q_UNUSED(otherTemperatures);
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

