#include "QIODeviceBackend.hpp"
#include "CommunicationExceptions.hpp"

#include <QIODevice>

namespace viper
{

QIODeviceBackend::QIODeviceBackend(QIODevice& ioDevice_)
	: ioDevice(ioDevice_)
{
}

void QIODeviceBackend::open()
{
	if(!isOpen()) {
		if(!ioDevice.open(QIODevice::ReadWrite)) {
			throw CommunicationIOError{std::string{"Opening backend failed"}};
		}
	}
}

bool QIODeviceBackend::isOpen() const noexcept
{
	return ioDevice.isOpen();
}

void QIODeviceBackend::close() noexcept
{
	ioDevice.close();
}

size_t QIODeviceBackend::write(const uint8_t* data, size_t size)
{
	// Qt uses signed ints for sizes, prevent overflow:
	if(size > std::numeric_limits<qint64>::max()) {
		size = static_cast<size_t>(std::numeric_limits<qint64>::max());
	}

	// Qt represents bytes with char, not uint8_t
	// This reinterpret_cast is safe on all reasonable platforms
	auto dataPtr = reinterpret_cast<const char*>(data);

	qint64 result = ioDevice.write(dataPtr, static_cast<qint64>(size));
	if(result < 0) {
		throw CommunicationIOError{ioDevice.errorString()};
	}

	return static_cast<size_t>(result);
}

bool QIODeviceBackend::isDataAvailable() const
{
	return ioDevice.bytesAvailable() > 0;
}

size_t QIODeviceBackend::read(uint8_t* destination, size_t bufferSize)
{
	// Qt uses signed ints for sizes, prevent overflow:
	if(bufferSize > std::numeric_limits<qint64>::max()) {
		bufferSize = static_cast<size_t>(std::numeric_limits<qint64>::max());
	}

	// Qt represents bytes with char, not uint8_t
	// This reinterpret_cast is safe on all reasonable platforms
	auto dataPtr = reinterpret_cast<char*>(destination);

	qint64 result = ioDevice.read(dataPtr, static_cast<qint64>(bufferSize));
	if(result < 0) {
		throw CommunicationIOError{ioDevice.errorString()};
	}

	return static_cast<size_t>(result);
}

}
