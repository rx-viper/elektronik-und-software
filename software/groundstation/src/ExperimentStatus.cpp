#include "ExperimentStatus.hpp"

namespace viper
{

ExperimentStatus::ExperimentStatus()
{
}

const IceTemperatures& ExperimentStatus::iceTemperatures(size_t containerIndex) const
{
	return iceTemperatureData.at(containerIndex);
}

float ExperimentStatus::pressure(size_t sensorIndex) const
{
	const uint16_t offset{1638};
	const uint16_t span{13107};
	const float maxValue = 20.0f; // in mbar

	return (pressureValues.at(sensorIndex) - offset) / float(span) * maxValue;
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

uint32_t ExperimentStatus::getExperimentId() const
{
	return experimentId;
}

uint16_t ExperimentStatus::heatProbeVoltage(size_t heatProbeIndex) const
{
	return hpVoltages.at(heatProbeIndex);
}

uint16_t ExperimentStatus::heatProbeCurrent(size_t heatProbeIndex) const
{
	return hpCurrents.at(heatProbeIndex);
}

uint16_t ExperimentStatus::batteryVoltage() const
{
	return battVoltage;
}

uint16_t ExperimentStatus::motorCurrent() const
{
	return motorCurrentMeasurement;
}

bool ExperimentStatus::isPiRecordingEnabled() const
{
	return piRecordingEnabled;
}

uint32_t ExperimentStatus::piFreeStorage() const
{
	return piFreeStorageKb;
}

uint32_t ExperimentStatus::onboardUptime() const
{
	return uptime;
}

void ExperimentStatus::updateIceTemperatures(const std::array<IceTemperatures, 3> iceTemperatureData)
{
	this->iceTemperatureData = iceTemperatureData;
}

void ExperimentStatus::updatePressure(std::array<uint16_t, 2> pressureValues)
{
	this->pressureValues = pressureValues;
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

void ExperimentStatus::updateExperimentId(uint32_t experimentId)
{
	this->experimentId = experimentId;
}

void ExperimentStatus::updateBatteryVoltage(uint16_t batteryVoltage)
{
	this->battVoltage = batteryVoltage;
}

void ExperimentStatus::updateMotorCurrent(uint16_t motorCurrent)
{
	this->motorCurrentMeasurement = motorCurrent;
}

void ExperimentStatus::updatePiRecordingState(bool isRecording)
{
	piRecordingEnabled = isRecording;
}

void ExperimentStatus::updatePiFreeStorage(uint32_t freeStorageKb)
{
	piFreeStorageKb = freeStorageKb;
}

void ExperimentStatus::updateHpCurrents(const std::array<uint16_t, 3>& hpCurrents)
{
	this->hpCurrents = hpCurrents;
}

void ExperimentStatus::updateHpVoltages(const std::array<uint16_t, 3>& hpVoltages)
{
	this->hpVoltages = hpVoltages;
}

}
