#include <Packets.hpp>

/*
 *  This is an auto-generated file. DO NOT EDIT!
 */

namespace viper
{
namespace packet
{

bool IceTemperatureLS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(temperatures);
}

bool IceTemperatureLS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(temperatures);
}

bool IceTemperatureHS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(temperatures);
}

bool IceTemperatureHS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(temperatures);
}

bool OtherTemperatureLS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(temperatures);
}

bool OtherTemperatureLS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(temperatures);
}

bool OtherTemperatureHS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(temperatures);
}

bool OtherTemperatureHS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(temperatures);
}

bool HpPenetrationDepthLS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(depth);
}

bool HpPenetrationDepthLS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(depth);
}

bool HpPenetrationDepthHS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(depth);
}

bool HpPenetrationDepthHS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(depth);
}

bool PressureLS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    if(!reader.read(sensor1))
        return false;
    
    return reader.read(sensor2);
}

bool PressureLS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    if(!writer.write(sensor1))
        return false;
    
    return writer.write(sensor2);
}

bool PressureHS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    if(!reader.read(sensor1))
        return false;
    
    return reader.read(sensor2);
}

bool PressureHS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    if(!writer.write(sensor1))
        return false;
    
    return writer.write(sensor2);
}

bool HpTemperatureLS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(temperatures);
}

bool HpTemperatureLS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(temperatures);
}

bool HpTemperatureHS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(temperatures);
}

bool HpTemperatureHS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(temperatures);
}

bool HpPowerLS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    if(!reader.read(voltage))
        return false;
    
    return reader.read(current);
}

bool HpPowerLS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    if(!writer.write(voltage))
        return false;
    
    return writer.write(current);
}

bool HpPowerHS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    if(!reader.read(voltage))
        return false;
    
    return reader.read(current);
}

bool HpPowerHS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    if(!writer.write(voltage))
        return false;
    
    return writer.write(current);
}

bool BattVoltageLS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(value);
}

bool BattVoltageLS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(value);
}

bool BattVoltageHS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(values);
}

bool BattVoltageHS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(values);
}

bool MotorCurrentLS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(value);
}

bool MotorCurrentLS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(value);
}

bool MotorCurrentHS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(values);
}

bool MotorCurrentHS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(values);
}

bool TestMode::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(enabled);
}

bool TestMode::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(enabled);
}

bool Status::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    if(!reader.read(time))
        return false;
    
    if(!reader.read(lo))
        return false;
    
    if(!reader.read(soe))
        return false;
    
    if(!reader.read(sods))
        return false;
    
    if(!reader.read(state))
        return false;
    
    if(!reader.read(hpOvertemperature))
        return false;
    
    if(!reader.read(motorPosition))
        return false;
    
    if(!reader.read(testModeEnabled))
        return false;
    
    return reader.read(experimentId);
}

bool Status::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    if(!writer.write(time))
        return false;
    
    if(!writer.write(lo))
        return false;
    
    if(!writer.write(soe))
        return false;
    
    if(!writer.write(sods))
        return false;
    
    if(!writer.write(state))
        return false;
    
    if(!writer.write(hpOvertemperature))
        return false;
    
    if(!writer.write(motorPosition))
        return false;
    
    if(!writer.write(testModeEnabled))
        return false;
    
    return writer.write(experimentId);
}

bool PiStatus::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    if(!reader.read(recordingEnabled))
        return false;
    
    return reader.read(storageAvailable);
}

bool PiStatus::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    if(!writer.write(recordingEnabled))
        return false;
    
    return writer.write(storageAvailable);
}

bool PiCommand::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    if(!reader.read(recordingEnabled))
        return false;
    
    if(!reader.read(onboardTime))
        return false;
    
    return reader.read(experimentId);
}

bool PiCommand::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    if(!writer.write(recordingEnabled))
        return false;
    
    if(!writer.write(onboardTime))
        return false;
    
    return writer.write(experimentId);
}

bool PiShutdown::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(dummy);
}

bool PiShutdown::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(dummy);
}

bool TestPacket1::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(testArray);
}

bool TestPacket1::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(testArray);
}

bool TestPacket2::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    if(!reader.read(test1))
        return false;
    
    return reader.read(test2);
}

bool TestPacket2::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    if(!writer.write(test1))
        return false;
    
    return writer.write(test2);
}

}
}