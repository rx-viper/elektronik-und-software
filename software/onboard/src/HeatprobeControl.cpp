#include "HeatprobeControl.hpp"

#include <algorithm>

namespace viper
{
namespace onboard
{

bool HeatprobeControl::on = false;
std::array<int32_t, 3> HeatprobeControl::temperatures{{HeatprobeControl::InvalidTemperature,
													  HeatprobeControl::InvalidTemperature,
													  HeatprobeControl::InvalidTemperature}};

std::array<bool, 3> HeatprobeControl::overtemperature{{false, false, false}};

void HeatprobeControl::initialize()
{
	setOff();

	Hp1Timer::start();
	Hp2Timer::start();
	Hp3Timer::start();
}

void HeatprobeControl::update()
{
	if(!on){
		Hp1Timer::forceInactive(1);
		Hp2Timer::forceInactive(1);
		Hp3Timer::forceInactive(1);
	} else {
		if(temperatures[0] >= OvertemperatureOffThreshold) {
			Hp1Timer::setCompareValue(1, 0);
			Hp1Timer::forceInactive(1);
			overtemperature[0] = true;
		}

		if(overtemperature[0]) {
			if(temperatures[0] < OvertemperatureOnThreshold) {
				Hp1Timer::setCompareValue(1, Hp1Power * MaxPwm);
				Hp1Timer::setNormalPwm(1);
				overtemperature[0] = false;
			}
		}

		if(temperatures[1] >= OvertemperatureOffThreshold) {
			Hp2Timer::setCompareValue(1, 0);
			Hp2Timer::forceInactive(1);
			overtemperature[1] = true;
		}

		if(overtemperature[1]) {
			if(temperatures[1] < OvertemperatureOnThreshold) {
				Hp2Timer::setCompareValue(1, Hp2Power * MaxPwm);
				Hp2Timer::setNormalPwm(1);
				overtemperature[1] = false;
			}
		}

		if(temperatures[2] >= OvertemperatureOffThreshold) {
			Hp3Timer::setCompareValue(1, 0);
			Hp3Timer::forceInactive(1);
			overtemperature[2] = true;
		}

		if(overtemperature[2]) {
			if(temperatures[2] < OvertemperatureOnThreshold) {
				Hp3Timer::setCompareValue(1, Hp3Power * MaxPwm);
				Hp3Timer::setNormalPwm(1);
				overtemperature[2] = false;
			}
		}
	}
}

void HeatprobeControl::setOn()
{
	on = true;
	if(!overtemperature[0]) {
		Hp1Timer::setCompareValue(1, Hp1Power * MaxPwm);
		Hp1Timer::setNormalPwm(1);
	}

	if(!overtemperature[1]) {
		Hp2Timer::setCompareValue(1, Hp2Power * MaxPwm);
		Hp2Timer::setNormalPwm(1);
	}

	if(!overtemperature[2]) {
		Hp3Timer::setCompareValue(1, Hp3Power * MaxPwm);
		Hp3Timer::setNormalPwm(1);
	}

}

void HeatprobeControl::setOff()
{
	on = false;

	Hp1Timer::setCompareValue(1, 0);
	Hp2Timer::setCompareValue(1, 0);
	Hp3Timer::setCompareValue(1, 0);

	Hp1Timer::forceInactive(1);
	Hp2Timer::forceInactive(1);
	Hp3Timer::forceInactive(1);
}

bool HeatprobeControl::isOn()
{
	return on;
}

bool HeatprobeControl::isOvertemperature()
{
	return std::any_of(overtemperature.begin(), overtemperature.end(),
					   [](bool value){ return value; });
}

bool HeatprobeControl::isOvertemperature(size_t index)
{
	return overtemperature[index];
}

void HeatprobeControl::setTemperature(size_t index, int32_t temp)
{
	temperatures[index] = temp;
}


}
}
