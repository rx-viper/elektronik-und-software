#ifndef VIPER_PACKETS_HPP__GENERATED
#define VIPER_PACKETS_HPP__GENERATED

/*
 *  This is an auto-generated file. DO NOT EDIT!
 */

#include <array>
#include <cstddef>
#include <cstdint>

#include <DataReader.hpp>
#include <DataWriter.hpp>
#include <PacketGroup.hpp>

/// @file Packets.hpp

namespace viper
{
namespace packet
{

using communication::PacketGroup;
using communication::DataReader;
using communication::DataWriter;

/// @enum ExperimentState
enum class ExperimentState : uint8_t
{
    Initialize,
    HomeMotor,
    Idle,
    DataStorageStarted,
    LiftedOff,
    StartExperiment,
    ExperimentRunning,
    StopExperiment,
    PrepareShutdown,
    Shutdown
};

/// @enum TestEnum
enum class TestEnum : uint8_t
{
    Enum0,
    Enum1,
    Enum2
};

/// Packet IceTemperatureLS
struct IceTemperatureLS
{
    static constexpr uint8_t PacketID{0x0};
    static constexpr size_t PacketSize{112};
    
    mutable uint32_t sequenceNumber;
    std::array<int32_t, 27> temperatures;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet IceTemperatureHS
struct IceTemperatureHS
{
    static constexpr uint8_t PacketID{0x1};
    static constexpr size_t PacketSize{112};
    
    mutable uint32_t sequenceNumber;
    std::array<int32_t, 27> temperatures;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet OtherTemperatureLS
struct OtherTemperatureLS
{
    static constexpr uint8_t PacketID{0x2};
    static constexpr size_t PacketSize{14};
    
    mutable uint32_t sequenceNumber;
    std::array<int16_t, 5> temperatures;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet OtherTemperatureHS
struct OtherTemperatureHS
{
    static constexpr uint8_t PacketID{0x3};
    static constexpr size_t PacketSize{14};
    
    mutable uint32_t sequenceNumber;
    std::array<int16_t, 5> temperatures;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet HpPenetrationDepthLS
struct HpPenetrationDepthLS
{
    static constexpr uint8_t PacketID{0x4};
    static constexpr size_t PacketSize{16};
    
    mutable uint32_t sequenceNumber;
    std::array<int32_t, 3> depth;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet HpPenetrationDepthHS
struct HpPenetrationDepthHS
{
    static constexpr uint8_t PacketID{0x5};
    static constexpr size_t PacketSize{16};
    
    mutable uint32_t sequenceNumber;
    std::array<int32_t, 3> depth;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet PressureLS
struct PressureLS
{
    static constexpr uint8_t PacketID{0x6};
    static constexpr size_t PacketSize{24};
    
    mutable uint32_t sequenceNumber;
    std::array<int32_t, 5> values;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet PressureHS
struct PressureHS
{
    static constexpr uint8_t PacketID{0x7};
    static constexpr size_t PacketSize{84};
    
    mutable uint32_t sequenceNumber;
    std::array<int32_t, 20> values;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet HpTemperatureLS
struct HpTemperatureLS
{
    static constexpr uint8_t PacketID{0x8};
    static constexpr size_t PacketSize{16};
    
    mutable uint32_t sequenceNumber;
    std::array<int32_t, 3> temperatures;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet HpTemperatureHS
struct HpTemperatureHS
{
    static constexpr uint8_t PacketID{0x9};
    static constexpr size_t PacketSize{16};
    
    mutable uint32_t sequenceNumber;
    std::array<int32_t, 3> temperatures;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet TestMode
struct TestMode
{
    static constexpr uint8_t PacketID{0xb};
    static constexpr size_t PacketSize{5};
    
    mutable uint32_t sequenceNumber;
    uint8_t enabled;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet Status
struct Status
{
    static constexpr uint8_t PacketID{0xa};
    static constexpr size_t PacketSize{18};
    
    mutable uint32_t sequenceNumber;
    uint32_t time;
    uint8_t lo;
    uint8_t soe;
    uint8_t sods;
    ExperimentState state;
    uint8_t hpOvertemperature;
    int32_t motorPosition;
    uint8_t testModeEnabled;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet PiStatus
struct PiStatus
{
    static constexpr uint8_t PacketID{0x14};
    static constexpr size_t PacketSize{9};
    
    mutable uint32_t sequenceNumber;
    uint8_t recordingEnabled;
    uint32_t storageAvailable;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet PiCommand
struct PiCommand
{
    static constexpr uint8_t PacketID{0x15};
    static constexpr size_t PacketSize{9};
    
    mutable uint32_t sequenceNumber;
    uint8_t recordingEnabled;
    uint32_t onboardTime;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet TestPacket1
struct TestPacket1
{
    static constexpr uint8_t PacketID{0xff};
    static constexpr size_t PacketSize{6};
    
    mutable uint32_t sequenceNumber;
    std::array<TestEnum, 2> testArray;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// Packet TestPacket2
struct TestPacket2
{
    static constexpr uint8_t PacketID{0xfe};
    static constexpr size_t PacketSize{9};
    
    mutable uint32_t sequenceNumber;
    int32_t test1;
    TestEnum test2;

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

/// PacketGroup GroundstationPackets
using GroundstationPackets = PacketGroup<IceTemperatureLS, IceTemperatureHS, OtherTemperatureLS, OtherTemperatureHS, HpPenetrationDepthLS, HpPenetrationDepthHS, PressureLS, PressureHS, HpTemperatureLS, HpTemperatureHS, Status, TestMode>;
/// PacketGroup PiPackets
using PiPackets = PacketGroup<PiStatus, PiCommand>;
/// PacketGroup TestPackets
using TestPackets = PacketGroup<TestPacket1, TestPacket2>;

}
}

#endif