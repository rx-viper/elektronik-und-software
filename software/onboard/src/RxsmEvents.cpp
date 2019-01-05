/* RxsmEvents.cpp
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

#include "../hardware_rev1.hpp"

#include "RxsmEvents.hpp"

namespace viper
{
namespace onboard
{

xpcc::PeriodicTimer RxsmEvents::debounceTimer{RxsmEvents::UpdateTimeoutMs};

bool RxsmEvents::loChanged{true};
xpcc::filter::Debounce<uint8_t> RxsmEvents::loFilter{RxsmEvents::DebounceHysteresis};

bool RxsmEvents::soeChanged{true};
xpcc::filter::Debounce<uint8_t> RxsmEvents::soeFilter{RxsmEvents::DebounceHysteresis};

bool RxsmEvents::sodsChanged{true};
xpcc::filter::Debounce<uint8_t> RxsmEvents::sodsFilter{RxsmEvents::DebounceHysteresis};

void RxsmEvents::initialize()
{
	loFilter.reset(Board::Rxsm::EventLo::read());
	soeFilter.reset(Board::Rxsm::EventSoe::read());
	sodsFilter.reset(Board::Rxsm::EventSods::read());
}

void RxsmEvents::update()
{
	if(debounceTimer.execute()) {
		const bool loState = loFilter.getValue();
		const bool soeState = soeFilter.getValue();
		const bool sodsState = sodsFilter.getValue();

		loFilter.update(Board::Rxsm::EventLo::read());
		soeFilter.update(Board::Rxsm::EventSoe::read());
		sodsFilter.update(Board::Rxsm::EventSods::read());

		if(loState ^ loFilter.getValue()) {
			loChanged = true;
		}

		if(soeState ^ soeFilter.getValue()) {
			soeChanged = true;
		}
		
		if(sodsState ^ sodsFilter.getValue()) {
			sodsChanged = true;
		}

		Board::Ui::LedRed::setOutput(loFilter.getValue());
		Board::Ui::LedGreen::setOutput(soeFilter.getValue());
		Board::Ui::LedBlue::setOutput(sodsFilter.getValue());
	}
}

void RxsmEvents::acknowledge()
{
	loChanged = soeChanged = sodsChanged = false;
}

bool RxsmEvents::eventOccurred()
{
	return loChanged || soeChanged || sodsChanged;
}

bool RxsmEvents::liftOff()
{
	return loFilter.getValue();
}

bool RxsmEvents::liftOffChanged()
{
	return loChanged;
}

bool RxsmEvents::startOfExperiment()
{
	return soeFilter.getValue();
}

bool RxsmEvents::startOfExperimentChanged()
{
	return soeChanged;
}

bool RxsmEvents::startOfDataStorage()
{
	return sodsFilter.getValue();
}

bool RxsmEvents::startOfDataStorageChanged()
{
	return sodsChanged;
}

}
}
