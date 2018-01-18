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
	static constexpr uint32_t Timer9  = Apb2Timer;
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
		/*ClockControl::enableInternalClock(); // 16 MHz
		ClockControl::enablePll(
			ClockControl::PllSource::InternalClock,
			8,      // 16MHz / N=8 -> 2MHz
			180,    // 2MHz * M=180 -> 360MHz
			2,      // 360MHz / P=2 -> 180MHz = F_cpu
			7       // 360MHz / Q=7 -> ~51MHz = F_usb => bad for USB
		);*/

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

template <typename Timer, typename Pin, uint32_t Prescaler, uint32_t Overflow>
inline void
TimerPwmCh1Initialize() {
	Timer::enable();
	Timer::setMode(Timer::Mode::UpCounter,
	                Timer::SlaveMode::Disabled,
	                Timer::SlaveModeTrigger::Internal0,
	                Timer::MasterMode::CompareOc1Ref);

	Timer::setPrescaler(Prescaler);
	Timer::setOverflow(Overflow);

	Timer::forceInactive(1);
	Timer::configureOutputChannel(1, Timer::OutputCompareMode::Pwm, 0);
	Timer::forceInactive(1);

	Timer::applyAndReset();
	Timer::pause();
	Pin::connect(Timer::Channel1);
}

namespace Ui {
	using LedRed		= GpioOutputG3;	// LED1
	using LedGreen		= GpioOutputG4;	// LED2
	using LedBlue		= GpioOutputG5;	// LED3

	using Button1		= GpioInputG13;	// SW1
	using Button2		= GpioInputG14;	// SW1

	using DebugUartRx	= GpioInputA10;
	using DebugUartTx	= GpioOutputA9;
	using DebugUart		= Usart1;
	constexpr uint32_t DebugBaudrate = DebugUart::Baudrate::B115200;

	inline void
	initialize()
	{
		LedRed::setOutput(xpcc::Gpio::High);
		LedGreen::setOutput(xpcc::Gpio::High);
		LedBlue::setOutput(xpcc::Gpio::High);

		Button1::setInput(Gpio::InputType::PullUp);
		Button2::setInput(Gpio::InputType::PullUp);

		// Create a IODevice with the Uart
		xpcc::IODeviceWrapper<DebugUart, xpcc::IOBuffer::DiscardIfFull> device;
		xpcc::IOStream stream(device);

		DebugUartRx::connect(DebugUart::Rx);
		DebugUartTx::connect(DebugUart::Tx);
		DebugUart::initialize<systemClock, DebugBaudrate>(12);
	}
}

namespace Camera {
	constexpr uint16_t PwmPeriod		= 100;
	// PWM frequency 10kHz (period 100us)

	using LightPin		= GpioOutputB14;
	using LensHeatPin	= GpioOutputB15;

	using CameraTimer	= Timer12;

	inline void
	initialize() {
		CameraTimer::enable();
		CameraTimer::setMode(CameraTimer::Mode::UpCounter,
		                     CameraTimer::SlaveMode::Disabled,
		                     CameraTimer::SlaveModeTrigger::Internal0,
		                     CameraTimer::MasterMode::CompareOc1Ref);
		CameraTimer::setPeriod<systemClock>(PwmPeriod, false);
		CameraTimer::forceInactive(1);
		CameraTimer::forceInactive(2);
		CameraTimer::configureOutputChannel(1, CameraTimer::OutputCompareMode::Pwm2, 0x7FFF, CameraTimer::PinState::Disable);
		CameraTimer::configureOutputChannel(2, CameraTimer::OutputCompareMode::Pwm2, 0x7FFF, CameraTimer::PinState::Disable);
		CameraTimer::applyAndReset();
		CameraTimer::pause();
		LightPin::connect(CameraTimer::Channel1);
		LensHeatPin::connect(CameraTimer::Channel2);
	}
}

namespace Rxsm {
	using TelemetryRx		= GpioInputD2;
	using TelemetryTx		= GpioOutputC12;
	using TelemetryUart		= Uart5;
	constexpr uint32_t TelemetryBaudrate = TelemetryUart::Baudrate::B38400;

	using EventLo			= xpcc::GpioInverted<GpioInputD9>;
	using EventSoe			= xpcc::GpioInverted<GpioInputD10>;
	using EventSods			= xpcc::GpioInverted<GpioInputD11>;

	inline void
	initialize()
	{
		EventLo::setInput(Gpio::InputType::Floating);
		EventSoe::setInput(Gpio::InputType::Floating);
		EventSods::setInput(Gpio::InputType::Floating);

		TelemetryRx::connect(TelemetryUart::Rx);
		TelemetryTx::connect(TelemetryUart::Tx);
		TelemetryUart::initialize<systemClock, TelemetryBaudrate>(12);
	}
}

namespace Motor {
	namespace PcbSignals {
		using PhaseUN		= GpioOutputE8;
		using PhaseUP		= GpioOutputE9;
		using PhaseVN		= GpioOutputE10;
		using PhaseVP		= GpioOutputE11;
		using PhaseWN		= GpioOutputE12;
		using PhaseWP		= GpioOutputE13;
	}

	using PwmU			= PcbSignals::PhaseUP;
	using PwmV			= PcbSignals::PhaseVP;
	using PwmW			= PcbSignals::PhaseWP;
	using ResetU		= xpcc::GpioInverted<PcbSignals::PhaseUN>;
	using ResetV		= xpcc::GpioInverted<PcbSignals::PhaseVN>;
	using ResetW		= xpcc::GpioInverted<PcbSignals::PhaseWN>;

	using MotorTimer	= Timer1;

	using HallU			= GpioInputC6;
	using HallV			= GpioInputC7;
	using HallW			= GpioInputC8;

	//using HallTimer		= Timer8;
	constexpr uint8_t HallInterruptPriority	= 12;
	constexpr uint16_t MaxPwm{0x1FFu}; // 9 bit PWM

	using EndSwitch		= GpioInputC5;

	inline void
	initializeMotor()
	{
		MotorTimer::enable();
		MotorTimer::setMode(MotorTimer::Mode::UpCounter,
		                    MotorTimer::SlaveMode::Disabled,
		                    MotorTimer::SlaveModeTrigger::Internal0,
		                    MotorTimer::MasterMode::CompareOc1Ref);
		// MotorTimer clock: APB2 timer clock (180MHz)
		MotorTimer::setPrescaler(1);
		// Prescaler: 1 -> Timer counter frequency: 180MHz
		MotorTimer::setOverflow(MaxPwm); // 9 bit PWM
		// Pwm frequency: 180MHz / 512 = 350kHz
		MotorTimer::configureOutputChannel(1, MotorTimer::OutputCompareMode::Pwm2, 0);
		MotorTimer::configureOutputChannel(2, MotorTimer::OutputCompareMode::Pwm2, 0);
		MotorTimer::configureOutputChannel(3, MotorTimer::OutputCompareMode::Pwm2, 0);
		MotorTimer::enableCaptureComparePreloadedControl();
		MotorTimer::enableOutput();
		MotorTimer::applyAndReset();
		MotorTimer::pause();
		PwmU::connect(MotorTimer::Channel1);
		PwmV::connect(MotorTimer::Channel2);
		PwmW::connect(MotorTimer::Channel3);

		ResetU::setOutput(true);
		ResetV::setOutput(true);
		ResetW::setOutput(true);
	}

	inline void
	initializeHall()
	{
		// Timer is not used for commutation
		// Bldc motor commutation is done using external gpio pin interrupts
		HallU::setInput(Gpio::InputType::PullUp);
		HallV::setInput(Gpio::InputType::PullUp);
		HallW::setInput(Gpio::InputType::PullUp);

		HallU::setInputTrigger(Gpio::InputTrigger::BothEdges);
		HallU::enableExternalInterrupt();
		HallU::enableExternalInterruptVector(HallInterruptPriority);
		HallV::setInputTrigger(Gpio::InputTrigger::BothEdges);
		HallV::enableExternalInterrupt();
		HallV::enableExternalInterruptVector(HallInterruptPriority);
		HallW::setInputTrigger(Gpio::InputTrigger::BothEdges);
		HallW::enableExternalInterrupt();
		HallW::enableExternalInterruptVector(HallInterruptPriority);
	}

	inline void
	setCompareValue(uint16_t compareValue)
	{
		MotorTimer::setCompareValue(1, compareValue);
		MotorTimer::setCompareValue(2, compareValue);
		MotorTimer::setCompareValue(3, compareValue);
	}

	inline void
	initializeEndSwich()
	{
		EndSwitch::setInput(Gpio::InputType::Floating);
	}

	inline void
	initialize()
	{
		initializeEndSwich();
		initializeHall();
		initializeMotor();
	}
}

namespace Powermanagement {
	using BattChargeStatus	= xpcc::GpioInverted<GpioInputB12>;
	using BattChargeEnable	= GpioOutputB13;

	using BoostEnable		= GpioOutputD8;

	struct Adc
	{
		static constexpr auto SpiBaudrate = 5'625'000;

		using Spi = SpiMaster1;
		using Cs = GpioOutputA4;
		using Sck = GpioOutputA5;
		using Miso = GpioInputA6;
		using Mosi = GpioOutputA7;
	};

	inline void
	initialize()
	{
		BattChargeStatus::setInput(Gpio::InputType::PullUp);
		BattChargeEnable::setOutput(BattChargeEnable::OutputType::PushPull);
		BattChargeEnable::set(false);
		BoostEnable::setOutput(BoostEnable::OutputType::OpenDrain);
		BoostEnable::set(false);

		Adc::Cs::setOutput(true);
		spiMasterInitialize<Adc, Adc::SpiBaudrate>();
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
		static inline Timer::Value getEncoderRaw() { return Timer::getValue(); }
	};

	struct Heatprobe1 {
		using PinA = GpioInputA15;
		using PinB = GpioInputB3;
		using Timer = Timer2;
		static inline Timer::Value getEncoderRaw() { return Timer::getValue(); }
	};

	struct Heatprobe2 {
		using PinA = GpioInputB4;
		using PinB = GpioInputB5;
		using Timer = Timer3;
		static inline Timer::Value getEncoderRaw() { return Timer::getValue(); }
	};

	struct Heatprobe3 {
		using PinA = GpioInputA0;
		using PinB = GpioInputA1;
		using Timer = Timer5;
		static inline Timer::Value getEncoderRaw() { return Timer::getValue(); }
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
	// Prescaler: 6 -> Timer counter frequency: 30MHz
	// PWM frequency: 30MHz / 60000 = 500 Hz
	constexpr uint16_t Prescaler = 6;
	constexpr uint16_t Overflow	 = 60000;

	using Hp1Pin	= GpioOutputA2;
	using Hp2Pin	= GpioOutputB9;
	using Hp3Pin	= GpioOutputB8;

	using Hp1Timer	= Timer9;
	using Hp2Timer	= Timer11;
	using Hp3Timer	= Timer10;

	inline void
	initialize() {
		TimerPwmCh1Initialize<Hp1Timer, Hp1Pin, Prescaler, Overflow>();
		TimerPwmCh1Initialize<Hp2Timer, Hp2Pin, Prescaler, Overflow>();
		TimerPwmCh1Initialize<Hp3Timer, Hp3Pin, Prescaler, Overflow>();
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
initializeMcu()
{
	systemClock::enable();
	xpcc::cortex::SysTickTimer::initialize<systemClock>();
}

inline void
initializeAllPeripherals()
{
	Ui::initialize();
	Camera::initialize();
	Rxsm::initialize();
	Motor::initialize();
	Powermanagement::initialize();
	Encoders::initialize();
	Heatprobes::initialize();
	Sensors::initialize();
	Storage::initialize();
	TemperaturePt100::initialize();
}

}

#endif // HARDWARE_REV1_HPP
