#ifndef PACKETDISPATCHER_HPP
#define PACKETDISPATCHER_HPP

#include "Packets.hpp"
#include "MeasurementData.hpp"

using viper::packet::IceTemperatureLS;
using viper::packet::IceTemperatureHS;
using viper::packet::OtherTemperatureLS;
using viper::packet::OtherTemperatureHS;
using viper::packet::HpPenetrationDepthLS;
using viper::packet::HpPenetrationDepthHS;
using viper::packet::PressureLS;
using viper::packet::PressureHS;
using viper::packet::HpTemperatureLS;
using viper::packet::HpTemperatureHS;
using viper::packet::Status;

namespace viper
{

class Application;
class ExperimentStatus;

class PacketDispatcher
{
public:
	PacketDispatcher(Application& app_);

	void operator()(const IceTemperatureLS& iceTemperatures);
	void operator()(const IceTemperatureHS& iceTemperatures);
	void operator()(const OtherTemperatureLS& otherTemperatures);
	void operator()(const OtherTemperatureHS& otherTemperatures);
	void operator()(const HpPenetrationDepthLS& hpDepth);
	void operator()(const HpPenetrationDepthHS& hpDepth);
	void operator()(const PressureLS& pressures);
	void operator()(const PressureHS& pressures);
	void operator()(const HpTemperatureLS& hpTemperatures);
	void operator()(const HpTemperatureHS& hpTemperatures);
	void operator()(const Status& status);

private:
	Application& app;
	ExperimentStatus& experimentStatus;
};

}

#endif // PACKETDISPATCHER_HPP
