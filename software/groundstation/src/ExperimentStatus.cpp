#include "ExperimentStatus.hpp"

namespace viper
{

ExperimentStatus::ExperimentStatus() : hpDepths{}, hpTemperatures{}
{
}

const IceTemperatures& ExperimentStatus::iceTemperatures(size_t containerIndex) const
{
	return iceTemperatureData.at(containerIndex);
}

float ExperimentStatus::pressure() const
{
	return pressureValue;
}

int32_t ExperimentStatus::heatProbeDepth(size_t heatProbeIndex) const
{
	return hpDepths.at(heatProbeIndex);
}

int32_t ExperimentStatus::heatProbeTemperature(size_t heatProbeIndex) const
{
	return hpTemperatures.at(heatProbeIndex);
}

EventLineStatus ExperimentStatus::eventLineStatus() const
{
	return eventLines;
}

uint32_t ExperimentStatus::onboardUptime() const
{
	return uptime;
}

void ExperimentStatus::updateIceTemperatures(const std::array<IceTemperatures, 3> iceTemperatureData)
{
	this->iceTemperatureData = iceTemperatureData;
}

void ExperimentStatus::updatePressure(float pressureValue)
{
	this->pressureValue = pressureValue;
}

void ExperimentStatus::updateEventLines(EventLineStatus& eventLines)
{
	this->eventLines = eventLines;
}

void ExperimentStatus::updateUptime(uint32_t uptime)
{
	this->uptime = uptime;
}

void ExperimentStatus::updateHpTemperatures(const std::array<int32_t, 3>& hpTemperatures)
{
	this->hpTemperatures = hpTemperatures;
}

void ExperimentStatus::updateHpDepth(const std::array<int32_t, 3>& hpDepths)
{
	this->hpDepths = hpDepths;
}

}
