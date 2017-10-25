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

#ifndef VIPER_ONBOARD_EXPERIMENT_HPP
#define VIPER_ONBOARD_EXPERIMENT_HPP

#include <xpcc/processing/resumable.hpp>
#include <xpcc/processing/timer/periodic_timer.hpp>
#include "Communicator.hpp"
#include "DataAcquisition.hpp"

namespace viper
{
namespace onboard
{

class Experiment : public xpcc::NestedResumable<10>
{
public:
	static constexpr uint16_t StatusPacketTimeout = 1000; // in ms

	Experiment(GroundstationCommunicator& communicator_);
	Experiment(const Experiment&) = delete;
	Experiment& operator=(const Experiment&) = delete;

	void initialize();

	void update();

private:
	void sendStatus();

	GroundstationCommunicator& communicator;
	DataAcquisition dataAcquisition;
	xpcc::ShortPeriodicTimer statusPacketTimer;
};

}
}

#endif // VIPER_ONBOARD_EXPERIMENT_HPP
