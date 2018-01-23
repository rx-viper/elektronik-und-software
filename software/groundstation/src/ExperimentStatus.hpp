#ifndef EXPERIMENTSTATUS_HPP
#define EXPERIMENTSTATUS_HPP

#include <array>
#include "MeasurementData.hpp"

namespace viper
{

class ExperimentStatus
{
public:
	ExperimentStatus();

	const IceTemperatures& iceTemperatures(size_t containerIndex) const;
	float pressure(size_t sensorIndex) const;
	int32_t heatProbeDepth(size_t heatProbeIndex) const;
	int32_t heatProbeTemperature(size_t heatProbeIndex) const;
	bool heatProbeOvertemperature(size_t heatProbeIndex) const;
	EventLineStatus eventLineStatus() const;
	uint32_t onboardUptime() const;
	int16_t otherTemperatures(size_t sensorIndex) const;
	int32_t motorPosition() const;
	uint8_t testMode() const;
	uint32_t getExperimentId() const;
	uint16_t heatProbeVoltage(size_t heatProbeIndex) const;
	uint16_t heatProbeCurrent(size_t heatProbeIndex) const;
	uint16_t batteryVoltage() const;
	uint16_t motorCurrent() const;

	void updateIceTemperatures(const std::array<IceTemperatures, 3> iceTemperatureData);
	void updatePressure(std::array<uint16_t, 2> pressureValues);
	void updateHpDepth(const std::array<int32_t, 3>& hpDepths);
	void updateHpTemperatures(const std::array<int32_t, 3>& hpTemperatures);
	void updateEventLines(EventLineStatus& eventLines);
	void updateHpOvertemperature(uint8_t flags);
	void updateUptime(uint32_t uptime);
	void updateOtherTemperatures(const std::array<int16_t, 5>& otherTemperatures);
	void updateMotorPosition(int32_t pos);
	void updateTestMode(uint8_t test);
	void updateExperimentId(uint32_t experimentId);
	void updateHpVoltages(const std::array<uint16_t, 3>& hpVoltages);
	void updateHpCurrents(const std::array<uint16_t, 3>& hpCurrents);
	void updateBatteryVoltage(uint16_t batteryVoltage);
	void updateMotorCurrent(uint16_t motorCurrent);

private:
	std::array<IceTemperatures, 3> iceTemperatureData = {};
	std::array<uint16_t, 2> pressureValues = {};
	std::array<int32_t, 3> hpDepths = {};
	std::array<int32_t, 3> hpTemperatures = {};
	std::array<bool, 3> hpOvertemperature = {};
	std::array<int16_t, 5> otherTemp = {};
	std::array<uint16_t, 3> hpVoltages = {};
	std::array<uint16_t, 3> hpCurrents = {};
	uint16_t battVoltage = 0;
	uint16_t motorCurrentMeasurement = 0;
	EventLineStatus eventLines;
	uint32_t uptime = 0;
	uint32_t motorPos = 0;
	uint8_t testModeEnabled = 0;
	uint32_t experimentId = 0;
};

}

#endif // EXPERIMENTSTATUS_HPP
