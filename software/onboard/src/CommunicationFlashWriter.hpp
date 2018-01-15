#ifndef COMMUNICATIONFLASHWRITER_HPP
#define COMMUNICATIONFLASHWRITER_HPP

#include "FlashWriter.hpp"
#include <xpcc/driver/storage/block_device_spiflash.hpp>
#include <xpcc/driver/storage/block_device_mirror.hpp>
#include "../hardware_rev1.hpp"

namespace viper
{
namespace onboard
{

using CommunicationFlashWriter = FlashWriter< xpcc::BdMirror<
    xpcc::BdSpiFlash<
        Board::Storage::Flash1Spi::Spi,
        Board::Storage::Flash1Spi::Cs,
        Board::Storage::FlashSize
    >,
    xpcc::BdSpiFlash<
        Board::Storage::Flash2Spi::Spi,
        Board::Storage::Flash2Spi::Cs,
        Board::Storage::FlashSize
    >
> >;

}
}

#endif // COMMUNICATIONFLASHWRITER_HPP
