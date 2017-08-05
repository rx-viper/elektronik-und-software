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

{%- for enum in enums %}

/// @enum {{enum.name}}
enum class {{enum.name}} : {{enum.type}}
{
{%- for elem in enum.elements %}
    {{ elem.name }}{% if not loop.last %},{% endif %}
{%- endfor %}
};
{%- endfor %}

{%- for packet in packets %}

/// Packet {{packet.name}}
struct {{packet.name}}
{
    static constexpr uint8_t PacketID{{ '{' }}{{ packet.id | hex }}{{ '}' }};
    static constexpr size_t PacketSize{{ '{' }}{{ packet.size }}{{ '}' }};
    {% for elem in packet.elements %}
    {%- if elem.array_size and elem.array_size > 1 %}
    std::array<{{ elem.type }}, {{ elem.array_size }}> {{ elem.name }};
    {%- else %}
    {{ elem.type }} {{ elem.name }};
    {%- endif %}
    {%- endfor %}

    bool read(DataReader& reader);
    bool write(DataWriter& writer) const;

    constexpr inline size_t size() const { return PacketSize; }
};

{%- endfor %}

{% for group in packet_groups -%}
/// PacketGroup {{group.name}}
using {{ group.name }} = PacketGroup<{%- for packet in group.packets %}{{ packet.name }}{%- if not loop.last %}, {% endif %}{% endfor %}>;
{% endfor %}
}
}

#endif
