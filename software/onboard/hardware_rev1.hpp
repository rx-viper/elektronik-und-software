/* hardware_rev1.hpp
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

#ifndef HARDWARE_REV1_HPP
#define HARDWARE_REV1_HPP

#include <xpcc/architecture/platform.hpp>

#include <xpcc/io/iostream.hpp>

using namespace xpcc::stm32;

namespace Board
{

/// STM32F429 running at 180MHz from the external 8MHz crystal
struct systemClock
{
	static constexpr uint32_t Frequency = MHz180;
	static constexpr uint32_t Apb1 = Frequency / 4;
	static constexpr uint32_t Apb2 = Frequency / 2;

	static constexpr uint32_t Adc = Apb2;

	static constexpr uint32_t Spi1 = Apb2;
	static constexpr uint32_t Spi2 = Apb1;
	static constexpr uint32_t Spi3 = Apb1;
	static constexpr uint32_t Spi4 = Apb2;
	static constexpr uint32_t Spi5 = Apb2;
	static constexpr uint32_t Spi6 = Apb2;

	static constexpr uint32_t Usart1 = Apb2;
	static constexpr uint32_t Usart2 = Apb1;
	static constexpr uint32_t Usart3 = Apb1;
	static constexpr uint32_t Uart4  = Apb1;
	static constexpr uint32_t Uart5  = Apb1;
	static constexpr uint32_t Usart6 = Apb2;
	static constexpr uint32_t Uart7  = Apb1;
	static constexpr uint32_t Uart8  = Apb1;

	static constexpr uint32_t Can1 = Apb1;
	static constexpr uint32_t Can2 = Apb1;

	static constexpr uint32_t I2c1 = Apb1;
	static constexpr uint32_t I2c2 = Apb1;
	static constexpr uint32_t I2c3 = Apb1;
	static constexpr uint32_t I2c4 = Apb1;

	static constexpr uint32_t Apb1Timer = Apb1 * 2;
	static constexpr uint32_t Apb2Timer = Apb2 * 2;
	static constexpr uint32_t Timer1  = Apb2Timer;
	static constexpr uint32_t Timer2  = Apb1Timer;
	static constexpr uint32_t Timer3  = Apb1Timer;
	static constexpr uint32_t Timer4  = Apb1Timer;
	static constexpr uint32_t Timer5  = Apb1Timer;
	static constexpr uint32_t Timer6  = Apb1Timer;
	static constexpr uint32_t Timer7  = Apb1Timer;
	static constexpr uint32_t Timer8  = Apb2Timer;
	static constexpr uint32_t Timer10 = Apb2Timer;
	static constexpr uint32_t Timer11 = Apb2Timer;
	static constexpr uint32_t Timer12 = Apb1Timer;
	static constexpr uint32_t Timer13 = Apb1Timer;
	static constexpr uint32_t Timer14 = Apb1Timer;

	static bool inline
	enable()
	{
		ClockControl::enableExternalCrystal(); // 8 MHz
		ClockControl::enablePll(
			ClockControl::PllSource::ExternalCrystal,
			4,      // 8MHz / N=4 -> 2MHz
			180,    // 2MHz * M=180 -> 360MHz
			2,      // 360MHz / P=2 -> 180MHz = F_cpu
			7       // 360MHz / Q=7 -> ~51MHz = F_usb => bad for USB
		);
		ClockControl::setFlashLatency(Frequency);
		ClockControl::enableSystemClock(ClockControl::SystemClockSource::Pll);
		ClockControl::setApb1Prescaler(ClockControl::Apb1Prescaler::Div4);
		ClockControl::setApb2Prescaler(ClockControl::Apb2Prescaler::Div2);
		// update clock frequencies
		xpcc::clock::fcpu     = Frequency;
		xpcc::clock::fcpu_kHz = Frequency / 1000;
		xpcc::clock::fcpu_MHz = Frequency / 1000000;
		xpcc::clock::ns_per_loop = ::round(3000 / (Frequency / 1000000));

		return true;
	}
};


using BattChargeStatus	= GpioInputB12;
using BattChargeEnable	= GpioOutputB13;

using BoostEnable		= GpioOutputB15;

using CameraLightEnable		= GpioOutputB14;
using CameraLensHeatEnable	= GpioOutputD8;

using HeatprobeEnable1	= GpioOutputE14;
using HeatprobeEnable2	= GpioOutputE15;
using HeatprobeEnable3	= GpioOutputB11;

namespace Ui {
	using LedRed		= GpioOutputG3;	// LED1
	using LedGreen		= GpioOutputG4;	// LED2
	using LedBlue		= GpioOutputG5;	// LED3

	using Button1		= GpioInputG13;	// SW1
	using Button2		= GpioInputG14;	// SW1

	using DebugUartRx	= GpioInputA10;
	using DebugUartTx	= GpioOutputA9;
	using DebugUart		= Usart1;

	inline void
	initialize()
	{
		LedRed::setOutput(xpcc::Gpio::High);
		LedGreen::setOutput(xpcc::Gpio::High);
		LedBlue::setOutput(xpcc::Gpio::High);

		Button1::setInput();
		Button2::setInput();

		// Create a IODevice with the Uart
		xpcc::IODeviceWrapper<DebugUart, xpcc::IOBuffer::BlockIfFull> device;
		xpcc::IOStream stream(device);

		DebugUartRx::connect(DebugUart::Rx);
		DebugUartTx::connect(DebugUart::Tx);
		DebugUart::initialize<systemClock, 115200>(12);
	}
}

namespace Rxsm {
	using TelemetrieRx	= GpioInputD2;
	using TelemetrieTx	= GpioOutputC12;

	using EventLo		= GpioInputD9;
	using EventSoe		= GpioInputD10;
	using EventSods		= GpioInputD11;
}

namespace Motor {
	using PhaseUN		= GpioOutputE8;
	using PhaseUP		= GpioOutputE9;
	using PhaseVN		= GpioOutputE10;
	using PhaseVP		= GpioOutputE11;
	using PhaseWN		= GpioOutputE12;
	using PhaseWP		= GpioOutputE13;

	using HallU			= GpioInputC6;
	using HallV			= GpioInputC7;
	using HallW			= GpioInputC8;

	using EndSwitch		= GpioInputC5;
}

namespace Sensors {
	using PressureScl		= GpioOutputB6;
	using PressureSda		= GpioB7;
	using PressureI2c		= I2cMaster1;

	using TemperatureScl	= GpioOutputF1;
	using TemperatureSda	= GpioF0;
	using TemperatureI2c	= I2cMaster2;
}

namespace Storage {
	using Flash1Sck		= GpioOutputB10;
	using Flash1Miso	= GpioInputC2;
	using Flash1Mosi	= GpioOutputC3;
	using Flash1Cs		= GpioOutputA3;
	using Flash1Spi		= SpiMaster2;

	using Flash2Sck		= GpioOutputC10;
	using Flash2Miso	= GpioInputC11;
	using Flash2Mosi	= GpioOutputD6;
	using Flash2Cs		= GpioOutputD7;
	using Flash2Spi		= SpiMaster3;
}

namespace TemperaturePt100 {
	namespace SpiPins {
		using Cs1		= GpioOutputC14;
		using Cs2		= GpioOutputC15;
		using Cs3		= GpioOutputF2;
		using Cs4		= GpioOutputE3;
		using Cs5		= GpioOutputC13;
		using Cs6		= GpioOutputE4;
	}

	namespace Chips123 {
	    using Sck	= GpioOutputE2;
	    using Miso	= GpioOutputE5;
	    using Mosi	= GpioOutputE6;
	    using Spi	= SpiMaster4;
	}

	namespace Chips456 {
	    using Sck	= GpioOutputF7;
	    using Miso	= GpioOutputF8;
	    using Mosi	= GpioOutputF9;
	    using Spi	= SpiMaster5;
	}

	inline void
	initialize()
	{
		Chips123::Sck::connect(Chips123::Spi::Sck);
		Chips123::Mosi::connect(Chips123::Spi::Mosi);
		//Chips123::Miso::connect(Chips123::Spi::Miso);
		Chips123::Spi::initialize<systemClock, 700000>();

		Chips456::Sck::connect(Chips456::Spi::Sck);
		Chips456::Mosi::connect(Chips456::Spi::Mosi);
		//Chips456::Miso::connect(Chips456::Spi::Miso);
		Chips456::Spi::initialize<systemClock, 700000>();
	}
}

inline void
initialize()
{
	systemClock::enable();
	xpcc::cortex::SysTickTimer::initialize<systemClock>();

	Ui::initialize();
	TemperaturePt100::initialize();
}

}

#endif // HARDWARE_REV1_HPP
