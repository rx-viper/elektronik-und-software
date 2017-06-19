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


template<typename SpiStruct, uint32_t SpiBaudrate>
inline void
spiMasterInitialize()
{
	SpiStruct::Sck::connect(SpiStruct::Spi::Sck);
	SpiStruct::Mosi::connect(SpiStruct::Spi::Mosi);
	SpiStruct::Miso::connect(SpiStruct::Spi::Miso);
	SpiStruct::Spi::template initialize<systemClock, SpiBaudrate>();
}

using BattChargeStatus	= GpioInputB12;
using BattChargeEnable	= GpioOutputB13;

using BoostEnable		= GpioOutputB15;

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

		Button1::setInput(Gpio::InputType::PullUp);
		Button2::setInput(Gpio::InputType::PullUp);

		// Create a IODevice with the Uart
		xpcc::IODeviceWrapper<DebugUart, xpcc::IOBuffer::BlockIfFull> device;
		xpcc::IOStream stream(device);

		DebugUartRx::connect(DebugUart::Rx);
		DebugUartTx::connect(DebugUart::Tx);
		DebugUart::initialize<systemClock, 115200>(12);
	}
}

namespace Camera {
    using Light		= GpioOutputB14;
    using LensHeat	= GpioOutputD8;

    inline void
	initialize() {
		//TODO
	}
}

namespace Rxsm {
    using TelemetrieRx		= GpioInputD2;
    using TelemetrieTx		= GpioOutputC12;
    using TelemetrieUart	= Uart5;

    using EventLo			= GpioInputD9;
    using EventSoe			= GpioInputD10;
    using EventSods			= GpioInputD11;

    inline void
	initialize()
	{
		EventLo::setInput(Gpio::InputType::Floating);
		EventSoe::setInput(Gpio::InputType::Floating);
		EventSods::setInput(Gpio::InputType::Floating);

		TelemetrieRx::connect(TelemetrieUart::Rx);
		TelemetrieTx::connect(TelemetrieUart::Tx);
		TelemetrieUart::initialize<systemClock, 38400>(12);
	}
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

    inline void
	initialize()
	{
		EndSwitch::setInput(Gpio::InputType::PullUp);

		//TODO
	}
}

namespace Encoders {
    template<typename EncoderStruct>
    inline void
	EncoderInitialize()
	{
		EncoderStruct::Timer::enable();
		EncoderStruct::Timer::setMode(EncoderStruct::Timer::Mode::UpCounter, EncoderStruct::Timer::SlaveMode::Encoder3);
		// Overflow must be 16bit because else a lot of our motor control code will break!
		EncoderStruct::Timer::setOverflow(0xffff);
		EncoderStruct::PinA::connect(EncoderStruct::Timer::Channel1, Gpio::InputType::Floating);
		EncoderStruct::PinB::connect(EncoderStruct::Timer::Channel2, Gpio::InputType::Floating);
		EncoderStruct::Timer::start();
	}

	struct Motor {
		using PinA = GpioInputD12;
		using PinB = GpioInputD13;
		using Timer = Timer4;
		inline Timer::Value getEncoderRaw() { return Timer::getValue(); }
	};

	struct Heatprobe1 {
		using PinA = GpioInputA15;
		using PinB = GpioInputB3;
		using Timer = Timer2;
		inline Timer::Value getEncoderRaw() { return Timer::getValue(); }
	};

	struct Heatprobe2 {
		using PinA = GpioInputB4;
		using PinB = GpioInputB5;
		using Timer = Timer3;
		inline Timer::Value getEncoderRaw() { return Timer::getValue(); }
	};

	struct Heatprobe3 {
		using PinA = GpioInputA0;
		using PinB = GpioInputA1;
		using Timer = Timer5;
		inline Timer::Value getEncoderRaw() { return Timer::getValue(); }
	};

	inline void
	initialize()
	{
		EncoderInitialize<Motor>();
		EncoderInitialize<Heatprobe1>();
		EncoderInitialize<Heatprobe2>();
		EncoderInitialize<Heatprobe3>();
	}
}

namespace Heatprobes {
    using Pin1	= GpioOutputE14;
    using Pin2	= GpioOutputE15;
    using Pin3	= GpioOutputB11;

    inline void
	initialize() {
		//TODO
		/*Timer::enable();
		Timer::setMode(Timer::Mode::UpCounter, Timer::SlaveMode::Encoder3);
		// Overflow must be 16bit because else a lot of our motor control code will break!
		Timer::setOverflow(0xffff);
		PinA::connect(EncoderStruct::Timer::Channel1, Gpio::InputType::Floating);
		PinB::connect(EncoderStruct::Timer::Channel2, Gpio::InputType::Floating);
		Timer::start();*/
	}
}

namespace Sensors {
    using PressureScl		= GpioB6;
	using PressureSda		= GpioB7;
	using PressureI2c		= I2cMaster1;

    using TemperatureScl	= GpioF1;
	using TemperatureSda	= GpioF0;
	using TemperatureI2c	= I2cMaster2;

    inline void
	initialize()
	{
		PressureScl::connect(PressureI2c::Scl);
		PressureSda::connect(PressureI2c::Sda);
		PressureI2c::initialize<systemClock, PressureI2c::Baudrate::Standard, xpcc::Tolerance::FivePercent>();

		TemperatureScl::connect(TemperatureI2c::Scl);
		TemperatureSda::connect(TemperatureI2c::Sda);
		TemperatureI2c::initialize<systemClock, PressureI2c::Baudrate::Standard, xpcc::Tolerance::FivePercent>();
	}
}

namespace Storage {
    constexpr uint32_t SpiBaudrate = 700000;

	struct Flash1 {
		using Sck		= GpioOutputB10;
		using Miso		= GpioInputC2;
		using Mosi		= GpioOutputC3;
		using Cs		= GpioOutputA3;
		using Spi		= SpiMaster2;
	};

	struct Flash2 {
		using Sck		= GpioOutputC10;
		using Miso		= GpioInputC11;
		using Mosi		= GpioOutputD6;
		using Cs		= GpioOutputD7;
		using Spi		= SpiMaster3;
	};

	inline void
	initialize()
	{
		Flash1::Cs::set();
		Flash1::Cs::setOutput(Gpio::OutputType::PushPull);
		Flash2::Cs::set();
		Flash2::Cs::setOutput(Gpio::OutputType::PushPull);

		spiMasterInitialize<Flash1, SpiBaudrate>();
		spiMasterInitialize<Flash2, SpiBaudrate>();
	}
}

namespace TemperaturePt100 {
    constexpr uint32_t SpiBaudrate = 700000;

	struct Chips123 {
	    using Sck	= GpioOutputE2;
	    using Miso	= GpioInputE5;
	    using Mosi	= GpioOutputE6;
	    using Spi	= SpiMaster4;

		using Cs1	= GpioOutputC14;
		using Cs2	= GpioOutputC15;
		using Cs3	= GpioOutputF2;
	};

	struct Chips456 {
	    using Sck	= GpioOutputF7;
	    using Miso	= GpioInputF8;
	    using Mosi	= GpioOutputF9;
	    using Spi	= SpiMaster5;

		using Cs4	= GpioOutputE3;
		using Cs5	= GpioOutputC13;
		using Cs6	= GpioOutputE4;
	};

	inline void
	initialize()
	{
		Chips123::Cs1::set();
		Chips123::Cs1::setOutput(Gpio::OutputType::PushPull);
		Chips123::Cs2::set();
		Chips123::Cs2::setOutput(Gpio::OutputType::PushPull);
		Chips123::Cs3::set();
		Chips123::Cs3::setOutput(Gpio::OutputType::PushPull);

		spiMasterInitialize<Chips123, SpiBaudrate>();

		Chips456::Cs4::set();
		Chips456::Cs4::setOutput(Gpio::OutputType::PushPull);
		Chips456::Cs5::set();
		Chips456::Cs5::setOutput(Gpio::OutputType::PushPull);
		Chips456::Cs6::set();
		Chips456::Cs6::setOutput(Gpio::OutputType::PushPull);

		spiMasterInitialize<Chips456, SpiBaudrate>();
	}
}

inline void
initialize()
{
	systemClock::enable();
	xpcc::cortex::SysTickTimer::initialize<systemClock>();

	Ui::initialize();
	Rxsm::initialize();
	Motor::initialize();
	Encoders::initialize();
	Sensors::initialize();
	Storage::initialize();
	TemperaturePt100::initialize();
}

}

#endif // HARDWARE_REV1_HPP
