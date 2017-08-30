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

using viper::onboard::RxsmEvents;
using viper::onboard::Experiment;
using viper::onboard::GroundstationCommunicator;

#include <xpcc/debug/logger.hpp>

int
main()
{
	Board::initializeMcu();
	Board::initializeAllPeripherals();

	RxsmEvents::initialize();

	GroundstationCommunicator communicator;

	Experiment experiment{communicator};
	experiment.initialize();

	while (1)
	{
		RxsmEvents::update();

		experiment.update();
		communicator.update();
	}

	return 0;
}
