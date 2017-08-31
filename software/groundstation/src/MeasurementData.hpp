#ifndef MEASUREMENTDATA_HPP
#define MEASUREMENTDATA_HPP

#include <cstdint>
#include <array>

#include "Packets.hpp"

namespace viper
{

class IceTemperatures
{
public:
	IceTemperatures();
	IceTemperatures(const int32_t values[9]);
	IceTemperatures(const IceTemperatures&) = default;
	IceTemperatures& operator=(const IceTemperatures&) = default;

	float getFloat(uint8_t x, uint8_t y) const;

	int32_t& operator()(uint8_t x, uint8_t y);
	int32_t operator()(uint8_t x, uint8_t y) const;

private:
	static void checkIndex(uint8_t x, uint8_t y);
	std::array<int32_t, 9> data;
};

class OtherTemperatures
{
public:
	OtherTemperatures() = default;
	OtherTemperatures(const OtherTemperatures&) = default;
	OtherTemperatures& operator=(const OtherTemperatures&) = default;

	// TODO: ???
private:
};

struct EventLineStatus
{
	bool liftOff;
	bool startOfExperiment;
	bool startOfDataStorage;

	EventLineStatus() : liftOff{false}, startOfExperiment{false},
		startOfDataStorage{false} {}

	EventLineStatus(const packet::Status& status) : liftOff(status.lo), startOfExperiment(status.soe),
		startOfDataStorage(status.sods) {}

};

}

#endif // MEASUREMENTDATA_HPP
