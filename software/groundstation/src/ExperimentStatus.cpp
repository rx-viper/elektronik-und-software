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

bool ExperimentStatus::heatProbeOvertemperature(size_t heatProbeIndex) const
{
	return hpOvertemperature.at(heatProbeIndex);
}

EventLineStatus ExperimentStatus::eventLineStatus() const
{
	return eventLines;
}

int16_t ExperimentStatus::otherTemperatures(size_t sensorIndex) const
{
	return otherTemp.at(sensorIndex);
}

int32_t ExperimentStatus::motorPosition() const
{
	return motorPos;
}

uint8_t ExperimentStatus::testMode() const
{
	return testModeEnabled;
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

void ExperimentStatus::updateHpOvertemperature(uint8_t flags)
{
	this->hpOvertemperature[0] = flags & 0b001;
	this->hpOvertemperature[1] = flags & 0b010;
	this->hpOvertemperature[2] = flags & 0b100;
}

void ExperimentStatus::updateUptime(uint32_t uptime)
{
	this->uptime = uptime;
}

void ExperimentStatus::updateOtherTemperatures(const std::array<int16_t, 5>& otherTemp)
{
	this->otherTemp = otherTemp;
}

void ExperimentStatus::updateMotorPosition(int32_t pos)
{
	motorPos = pos;
}

void ExperimentStatus::updateTestMode(uint8_t test)
{
	testModeEnabled = test;
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
