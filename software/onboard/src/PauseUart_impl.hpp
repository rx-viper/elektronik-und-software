#include "PauseUart.hpp"

namespace viper
{
namespace onboard
{

template<typename Device, size_t BufferSize, size_t BlockSize>
bool PauseUart<Device, BufferSize, BlockSize>::read(uint8_t& data)
{
	return Device::read(data);
}

template<typename Device, size_t BufferSize, size_t BlockSize>
std::size_t PauseUart<Device, BufferSize, BlockSize>::read(uint8_t* buffer, std::size_t length)
{
	return Device::read(buffer, length);
}

template<typename Device, size_t BufferSize, size_t BlockSize>
bool PauseUart<Device, BufferSize, BlockSize>::write(uint8_t data)
{
	if(bytesSent < BlockSize) {
		bytesSent++;
		Device::write(data);

		if(bytesSent >= BlockSize) {
			timeout.stop();
		}
	} else {
		outBuffer.appendOverwrite(data);
	}

	return true;
}

template<typename Device, size_t BufferSize, size_t BlockSize>
std::size_t PauseUart<Device, BufferSize, BlockSize>::write(const uint8_t* data, std::size_t length)
{
	for(size_t i = 0; i < length; ++i) {
		write(data[i]);
	}

	return length;
}

template<typename Device, size_t BufferSize, size_t BlockSize>
void PauseUart<Device, BufferSize, BlockSize>::update()
{
	if(bytesSent >= BlockSize && timeout.isStopped() && Device::isWriteFinished()) {
		timeout.restart(UartBlockDelay);
	}

	if(bytesSent >= BlockSize && timeout.isExpired()) {
		bytesSent = 0;
		timeout.stop();
	}

	while(outBuffer.isNotEmpty() && bytesSent < BlockSize) {
		Device::write(outBuffer.getFront());
		outBuffer.removeFront();
		bytesSent++;
	}
}

template<typename Device, size_t BufferSize, size_t BlockSize>
xpcc::BoundedDeque<uint8_t, BufferSize>
PauseUart<Device, BufferSize, BlockSize>::outBuffer;

template<typename Device, size_t BufferSize, size_t BlockSize>
size_t
PauseUart<Device, BufferSize, BlockSize>::bytesSent = 0;

template<typename Device, size_t BufferSize, size_t BlockSize>
xpcc::Timeout
PauseUart<Device, BufferSize, BlockSize>::timeout;

}
}
