/* main.hpp
 *
 * Copyright (C) 2017 Raphael Lehmann <raphael@rleh.de>
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

#include "Communicator.hpp"
#include "Packets.hpp"

#include "../hardware_rev1.hpp"
#include "RxsmEvents.hpp"
#include "Experiment.hpp"
#include "Motor.hpp"
#include "HeatprobeControl.hpp"
#include "DataAcquisition.hpp"

using viper::onboard::RxsmEvents;
using viper::onboard::Experiment;
using viper::onboard::Motor;
using viper::onboard::GroundstationCommunicator;
using viper::onboard::PiCommunicator;
using viper::onboard::CommunicationFlashWriter;
using viper::onboard::HeatprobeControl;
using viper::onboard::RxsmUart;

#include <xpcc/debug/logger.hpp>

namespace {
	CommunicationFlashWriter communicationFlashWriter;
	GroundstationCommunicator communicator(communicationFlashWriter);
	PiCommunicator piCommunicator(communicationFlashWriter, false);
}

int
main()
{
	Board::initializeMcu();
	Board::initializeAllPeripherals();

	Motor::initialize();
	HeatprobeControl::initialize();

	RxsmEvents::initialize();


	uint32_t experimentId = RF_CALL_BLOCKING(communicationFlashWriter.initialize());
	if(experimentId == 0) {
		XPCC_LOG_INFO << "Error: Unable to initialize CommunicationFlashWriter!" << xpcc::endl;
	}
	else {
		XPCC_LOG_INFO << "Info: Experiment ID = " << experimentId << xpcc::endl;
	}

	Experiment experiment{communicator, piCommunicator, experimentId};
	experiment.initialize();

	while (1)
	{
		RxsmEvents::update();
		Motor::update();
		HeatprobeControl::update();
		RxsmUart::update();

		experiment.update();
		communicator.update();
		communicationFlashWriter.run();
		piCommunicator.update();
	}

	return 0;
}
