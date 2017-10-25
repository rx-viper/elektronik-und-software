#ifndef VIPER_QIODEVICE_BACKEND_HPP
#define VIPER_QIODEVICE_BACKEND_HPP

#include <QObject>

#include "CommunicationBackend.hpp"

class QIODevice;

namespace viper
{

/**
 * @brief Abstract base class for QIODevice-based communication backends
 */
class QIODeviceBackend : public CommunicationBackend
{
protected:
	QIODeviceBackend(QIODevice& ioDevice);

	// CommunicationBackend interface
public:
	void open() override;
	bool isOpen() const noexcept override;
	void close() noexcept override;
	std::size_t write(const uint8_t* data, std::size_t size) override;
	bool isDataAvailable() const override;
	std::size_t read(uint8_t* destination, std::size_t bufferSize) override;

protected:
	QIODevice& ioDevice;
};

}

#endif // VIPER_QIODEVICE_BACKEND_HPP
