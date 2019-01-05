#ifndef VIPER_ONBOARD_PAUSE_UART_HPP
#define VIPER_ONBOARD_PAUSE_UART_HPP

#include <cstdint>
#include <cstddef>
#include <array>

#include <xpcc/debug/logger.hpp>

#include <xpcc/container/deque.hpp>

#include <xpcc/processing/timer.hpp>

namespace viper
{
namespace onboard
{

template<typename Device, size_t BufferSize, size_t BlockSize>
class PauseUart
{
public:
	static const size_t UartBlockDelay = 4;

	PauseUart() = delete;

	static bool
	read(uint8_t& data);

	static std::size_t
	read(uint8_t* buffer, std::size_t length);

	static bool
	write(uint8_t data);

	static std::size_t
	write(const uint8_t* data, std::size_t length);

	static void
	update();

private:
	static xpcc::BoundedDeque<uint8_t, BufferSize> outBuffer;
	static size_t bytesSent;
	static xpcc::Timeout timeout;
};

}
}

#include "PauseUart_impl.hpp"

#endif // VIPER_ONBOARD_PAUSE_UART_HPP

