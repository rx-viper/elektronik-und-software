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
    
    return reader.read(values);
}

bool PressureLS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(values);
}

bool PressureHS::read(DataReader& reader)
{
    if(!reader.read(sequenceNumber))
        return false;
    
    return reader.read(values);
}

bool PressureHS::write(DataWriter& writer) const
{
    if(!writer.write(sequenceNumber))
        return false;
    
    return writer.write(values);
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
    
    return reader.read(sods);
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
    
    return writer.write(sods);
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