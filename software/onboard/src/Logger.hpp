/* Logger.hpp
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

#ifndef VIPER_ONBOARD_LOGGER_HPP
#define VIPER_ONBOARD_LOGGER_HPP

#include "../hardware_rev1.hpp"

namespace viper
{
namespace onboard
{

using LoggerDevice = xpcc::IODeviceWrapper<Board::Ui::DebugUart, xpcc::IOBuffer::DiscardIfFull>;

}
}

#endif // VIPER_ONBOARD_LOGGER_HPP
