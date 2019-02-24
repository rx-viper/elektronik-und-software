/* hardware.hpp
 *
 * Copyright (C) 2019 Raphael Lehmann <raphael@rleh.de>
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

#ifndef HARDWARE_HPP
#define HARDWARE_HPP

#include <modm/platform.hpp>
#include <modm/architecture/interface/clock.hpp>
#include <modm/platform/clock/clock.hpp>
#include <modm/platform/gpio/software_port.hpp>

using namespace modm::platform;

namespace Board
{

/// STM32F410 running at 50MHz generated with the PLL from 12MHz HSE oscillator

struct systemClock {
	static constexpr uint32_t Frequency = 50 * MHz1;
	static constexpr uint32_t Ahb = Frequency;
	static constexpr uint32_t Apb1 = Frequency / 2;
	static constexpr uint32_t Apb2 = Frequency;

	static constexpr uint32_t Usart1 = Apb2;
	static constexpr uint32_t Usart2 = Apb1;
	static constexpr uint32_t Usart6 = Apb2;

	static constexpr uint32_t Adc1 = Apb2;

	static constexpr uint32_t Dac = Apb1;

	static constexpr uint32_t Spi1 = Apb2;
	static constexpr uint32_t Spi2 = Apb1;
	static constexpr uint32_t Spi5 = Apb2;

	static constexpr uint32_t Timer1 = Apb2;
	static constexpr uint32_t Timer5 = Apb1;
	static constexpr uint32_t Timer6 = Apb1;
	static constexpr uint32_t Timer9 = Apb2;
	static constexpr uint32_t Timer11 = Apb2;


	static bool inline
	enable()
	{
		ClockControl::enableExternalClock();

		ClockControl::enablePll(
			ClockControl::PllSource::Hse,
			12,		// 12MHz / M=12 -> 1MHz
			100,	// 1MHz * N=100 -> 100MHz
			2		// 100MHz / P=2 -> 50MHz = F_cpu
		);
		ClockControl::setFlashLatency(Frequency);

		// switch system clock to PLL output
		ClockControl::enableSystemClock(ClockControl::SystemClockSource::Pll);
		ClockControl::setAhbPrescaler(ClockControl::AhbPrescaler::Div1);
		ClockControl::setApb1Prescaler(ClockControl::Apb1Prescaler::Div2);
		ClockControl::setApb2Prescaler(ClockControl::Apb2Prescaler::Div1);

		// update frequencies for busy-wait delay functions
		modm::clock::fcpu     = Frequency;
		modm::clock::fcpu_kHz = Frequency / 1000;
		modm::clock::fcpu_MHz = Frequency / 1000000;
		modm::clock::ns_per_loop = ::round(3000.f / (Frequency / 1000000));

		return true;
	}
};


namespace DebugUart {
	using Tx	= GpioA9;
	using Rx	= GpioB3;
	using Uart	= Usart1;
	static constexpr uint32_t UartBaudrate = Uart::Baudrate::B115200;

	inline void
	initialize()
	{
		Uart::connect<Tx::Tx, Rx::Rx>();
		Uart::initialize<systemClock, UartBaudrate>(12);
	}
}

namespace Sensors {
	static constexpr uint32_t SpiBaudrate = 781'250;

	struct Sensor0 {
		using Spi		= SpiBidiMaster5;
		using Sck		= GpioB0;
		using Miso		= GpioA12;
		using Mosi		= GpioA10;
		using Cs		= GpioA11;
		using Motion	= GpioB1;
	};

	struct Sensor1 {
		using Spi		= SpiBidiMaster1;
		using Sck		= GpioA5;
		using Miso		= GpioA6;
		using Mosi		= GpioA7;
		using Cs		= GpioA4;
		using Motion	= GpioA3;
	};

	struct Sensor2 {
		using Spi		= SpiBidiMaster2;
		using Sck		= GpioB13;
		using Miso		= GpioB14;
		using Mosi		= GpioB15;
		using Cs		= GpioB12;
		using Motion	= GpioA8;
	};


	template<class SpiStruct, uint32_t SpiBaudrate>
	inline void
	spiMasterInitialize()
	{
		SpiStruct::Spi::template connect<
			SpiStruct::Sck::template Sck,
			SpiStruct::Mosi::template Mosi >();
		SpiStruct::Spi::template initialize<systemClock, SpiBaudrate>();

		SpiStruct::Cs::setOutput(Gpio::OutputType::PushPull);
		SpiStruct::Motion::setInput(Gpio::InputType::Floating);
	}

	inline void
	initialize()
	{
		spiMasterInitialize<Sensor0, SpiBaudrate>();
		spiMasterInitialize<Sensor1, SpiBaudrate>();
		spiMasterInitialize<Sensor2, SpiBaudrate>();
	}
}

namespace EncoderOutputs {
	using Timer = Timer11;
	using Port0 = SoftwareGpioPort<GpioOutputC15, GpioOutputA0>;
	using Port1 = SoftwareGpioPort<GpioOutputC13, GpioOutputC14>;
	using Port2 = SoftwareGpioPort<GpioOutputA1, GpioOutputA2>;

	inline void
	initialize()
	{
		Timer::enable();
		Timer::setMode(Timer::Mode::UpCounter);

		Timer::setPrescaler(1);
		Timer::setOverflow(5000);
		Timer::applyAndReset();
		// start the timer
		Timer::start();
		Timer::enableInterrupt(Timer::Interrupt::Update);
		Timer::enableInterruptVector(true, 5 /* priority */);
	}

}


inline void
initializeMcu()
{
	systemClock::enable();
	modm::cortex::SysTickTimer::initialize<systemClock>();
}

inline void
initializeAllPeripherals()
{
	DebugUart::initialize();
	Sensors::initialize();
	EncoderOutputs::initialize();
}

}

#endif // HARDWARE_HPP
