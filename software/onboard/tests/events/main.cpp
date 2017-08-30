/* main.hpp
 *
 * test for rxsm event lines:
 * - lo: red
 * - sods: blue
 * - soe: green
 *
 *
 * Copyright (C) 2017 Leonard Rapp <leonardrapp@gmx.de>
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

#include "../../hardware_rev1.hpp"

int
main()
{
	Board::initializeMcu();
	Board::Ui::initialize();

	Board::Ui::LedRed::reset();
	Board::Ui::LedGreen::reset();
	Board::Ui::LedBlue::reset();


	while (1)
	{
		Board::Ui::LedRed::setOutput(Board::Rxsm::EventLo::read());
		Board::Ui::LedBlue::setOutput(Board::Rxsm::EventSods::read());
		Board::Ui::LedGreen::setOutput(Board::Rxsm::EventSoe::read());
	}

	return 0;
}
