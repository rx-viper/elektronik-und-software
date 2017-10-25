/* Experiment.cpp
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

#include <xpcc/architecture/platform.hpp>

#include "Experiment.hpp"
#include "RxsmEvents.hpp"
#include "Communicator.hpp"

namespace viper
{
namespace onboard
{

Experiment::Experiment(GroundstationCommunicator& communicator_)
	: communicator{communicator_}, dataAcquisition{communicator_}, statusPacketTimer{StatusPacketTimeout}
{
}

void Experiment::initialize()
{
	dataAcquisition.start();
}

void Experiment::update()
{
	if(RxsmEvents::eventOccurred()) {
		statusPacketTimer.restart(StatusPacketTimeout);
		sendStatus();

		if(RxsmEvents::startOfExperiment()) {
			dataAcquisition.setStorageEnabled(true);
			dataAcquisition.setHighRate();
		} else if(RxsmEvents::liftOff()) { // !SOE && LO
			dataAcquisition.setStorageEnabled(true);
			dataAcquisition.setLowRate();
		} else { // !SOE && !LO
			dataAcquisition.setStorageEnabled(false);
			dataAcquisition.setLowRate();
		}

		RxsmEvents::acknowledge();
	}

	if(statusPacketTimer.execute()) {
		sendStatus();
	}

	dataAcquisition.update();
}

void Experiment::sendStatus()
{
	packet::Status status;

	status.time = xpcc::Clock::now().getTime();
	status.lo = RxsmEvents::liftOff();
	status.soe = RxsmEvents::startOfExperiment();
	status.sods = RxsmEvents::startOfDataStorage();

	communicator.sendPacket(status);
}

}
}
