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
	float pressure() const;
	int32_t heatProbeDepth(size_t heatProbeIndex) const;
	int32_t heatProbeTemperature(size_t heatProbeIndex) const;
	bool heatProbeOvertemperature(size_t heatProbeIndex) const;
	EventLineStatus eventLineStatus() const;
	uint32_t onboardUptime() const;
	int16_t otherTemperatures(size_t sensorIndex) const;
	int32_t motorPosition() const;
	uint8_t testMode() const;
	uint32_t getExperimentId() const;

	void updateIceTemperatures(const std::array<IceTemperatures, 3> iceTemperatureData);
	void updatePressure(float pressureValue);
	void updateHpDepth(const std::array<int32_t, 3>& hpDepths);
	void updateHpTemperatures(const std::array<int32_t, 3>& hpTemperatures);
	void updateEventLines(EventLineStatus& eventLines);
	void updateHpOvertemperature(uint8_t flags);
	void updateUptime(uint32_t uptime);
	void updateOtherTemperatures(const std::array<int16_t, 5>& otherTemperatures);
	void updateMotorPosition(int32_t pos);
	void updateTestMode(uint8_t test);
	void updateExperimentId(uint32_t experimentId);

private:
	std::array<IceTemperatures, 3> iceTemperatureData;
	float pressureValue = 0;
	std::array<int32_t, 3> hpDepths;
	std::array<int32_t, 3> hpTemperatures;
	std::array<bool, 3> hpOvertemperature;
	std::array<int16_t, 5> otherTemp;
	EventLineStatus eventLines;
	uint32_t uptime = 0;
	uint32_t motorPos = 0;
	uint8_t testModeEnabled = 0;
	uint32_t experimentId = 0;
};

}

#endif // EXPERIMENTSTATUS_HPP
