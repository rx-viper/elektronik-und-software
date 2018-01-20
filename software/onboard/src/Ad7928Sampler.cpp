/* Ad7928Sampler.cpp
 *
 * Copyright (C) 2018 Raphael Lehmann
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include "Ad7928Sampler.hpp"

namespace viper
{
namespace onboard
{

Ad7928Sampler::Ad7928Sampler() : initialized{false}, start{false}
{
}

bool
Ad7928Sampler::update()
{
	PT_BEGIN();

	PT_CALL(adc.initialize());
	initialized = true;

	PT_WAIT_UNTIL(start);

	static constexpr xpcc::ad7928::SequenceChannels_t sequence =
	        xpcc::ad7928::SequenceChannels::Ch0 |
	        xpcc::ad7928::SequenceChannels::Ch1 |
	        xpcc::ad7928::SequenceChannels::Ch2 |
	        xpcc::ad7928::SequenceChannels::Ch3 |
	        xpcc::ad7928::SequenceChannels::Ch4 |
	        xpcc::ad7928::SequenceChannels::Ch5 |
	        xpcc::ad7928::SequenceChannels::Ch6 |
	        xpcc::ad7928::SequenceChannels::Ch7;

	while(1)
	{
		timeout.restart(SamplePeriod);
		PT_CALL(adc.startSequence(sequence));
		filters[0].update(PT_CALL(adc.nextSequenceConversion()).value());
		filters[1].update(PT_CALL(adc.nextSequenceConversion()).value());
		filters[2].update(PT_CALL(adc.nextSequenceConversion()).value());
		filters[3].update(PT_CALL(adc.nextSequenceConversion()).value());
		filters[4].update(PT_CALL(adc.nextSequenceConversion()).value());
		filters[5].update(PT_CALL(adc.nextSequenceConversion()).value());
		filters[6].update(PT_CALL(adc.nextSequenceConversion()).value());
		filters[7].update(PT_CALL(adc.nextSequenceConversion()).value());
		PT_WAIT_UNTIL(timeout.execute());
	}

	PT_END();
}

bool Ad7928Sampler::isInitialized() const
{
	return initialized;
}

void Ad7928Sampler::startSampling() {
	start = true;
}

uint16_t
Ad7928Sampler::getDataAndReset(Sensor sensor)
{
	// voltage = 2.5V * value / 4096
	switch(sensor) {
	case Sensor::HP1Current:
	case Sensor::HP2Current:
	case Sensor::HP3Current:
	case Sensor::MotorCurrent:
		// Current = (voltage - 0.33V) / (264mV/mA)
		// <=> ((2.5V * value / 4096) - 0.33V) / (0.264mV/mA)
		// -> 0.00231194 * value - 1.25
		// -> 0.00231194 (value - 540.672)
		// ~> (value - 541) / 433
		return (filters[static_cast<uint8_t>(sensor)].getValueAndReset() - 541) / 433;
	case Sensor::HP1Voltage:
	case Sensor::HP2Voltage:
	case Sensor::HP3Voltage:
		// Voltage[mV] = value * 2500mV * 16 / 4096
		// -> mV = value * 9.765625
		return filters[static_cast<uint8_t>(sensor)].getValueAndReset() * 9.765625f;
	case Sensor::BattVoltage:
		// Voltage[mV] = value * 2500mV * 8 * 1000 / 4096
		// -> mV = value * 4.8828125
		return filters[static_cast<uint8_t>(sensor)].getValueAndReset() * 4.8828125f;
	default:
		// this should not happen
		return 0xFFFF;
	}
}

}
}
