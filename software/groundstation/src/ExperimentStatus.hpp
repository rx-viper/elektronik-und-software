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
	EventLineStatus eventLineStatus() const;
	uint32_t onboardUptime() const;

	void updateIceTemperatures(const std::array<IceTemperatures, 3> iceTemperatureData);
	void updatePressure(float pressureValue);
	void updateHpDepth(const std::array<int32_t, 3>& hpDepths);
	void updateHpTemperatures(const std::array<int32_t, 3>& hpTemperatures);
	void updateEventLines(EventLineStatus& eventLines);
	void updateUptime(uint32_t uptime);

private:
	std::array<IceTemperatures, 3> iceTemperatureData;
	float pressureValue = 0;
	std::array<int32_t, 3> hpDepths;
	std::array<int32_t, 3> hpTemperatures;
	EventLineStatus eventLines;
	uint32_t uptime = 0;
};

}

#endif // EXPERIMENTSTATUS_HPP
