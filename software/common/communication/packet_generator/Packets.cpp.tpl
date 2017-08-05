#include <Packets.hpp>

/*
 *  This is an auto-generated file. DO NOT EDIT!
 */

namespace viper
{
namespace packet
{

{%- for packet in packets %}

bool {{packet.name}}::read(DataReader& reader)
{
    {%- for elem in packet.elements %}
    {%- if loop.last %}
    return reader.read({{ elem.name }});
    {%- else %}
    if(!reader.read({{ elem.name }}))
        return false;
    {% endif %}
    {%- else %}
   return true;
    {%- endfor %}
}

bool {{packet.name}}::write(DataWriter& writer) const
{
    {%- for elem in packet.elements %}
    {%- if loop.last %}
    return writer.write({{ elem.name }});
    {%- else %}
    if(!writer.write({{ elem.name }}))
        return false;
    {% endif %}
    {%- else %}
   return true;
    {%- endfor %}
}

{%- endfor %}

}
}
