/* RxsmEvents.hpp
 *
 * Copyright (C) 2017 Christopher Durand
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

#ifndef VIPER_ONBOARD_RXSM_EVENTS_HPP
#define VIPER_ONBOARD_RXSM_EVENTS_HPP

#include <xpcc/math/filter/debounce.hpp>
#include <xpcc/processing/timer/periodic_timer.hpp>

namespace viper
{
namespace onboard
{

class RxsmEvents
{
public:
	static void initialize();	

	/// Call periodically from main loop
	static void update();

	/// Reset event line changes
	static void acknowledge();

	static bool eventOccurred();

	static bool liftOff();
	static bool liftOffChanged();

	static bool startOfExperiment();
	static bool startOfExperimentChanged();

	static bool startOfDataStorage();
	static bool startOfDataStorageChanged();

private:
	static constexpr uint16_t UpdateTimeoutMs = 1;
	static constexpr uint16_t DebounceHysteresis = 5;

	static xpcc::ShortPeriodicTimer debounceTimer;

	static bool loChanged;
	static xpcc::filter::Debounce<uint8_t> loFilter;

	static bool soeChanged;
	static xpcc::filter::Debounce<uint8_t> soeFilter;

	static bool sodsChanged;
	static xpcc::filter::Debounce<uint8_t> sodsFilter;
};

}
}

#endif // VIPER_ONBOARD_RXSM_EVENTS_HPP
