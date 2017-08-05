#!/usr/bin/env python3

import sys
import jinja2
import re
from lxml import etree
from collections import namedtuple
from os import path

Enum = namedtuple('Enum', 'name type elements')
EnumElement = namedtuple('EnumElement', 'name')  # TODO: user defined values for enum constants

Packet = namedtuple('Packet', 'name id elements size')
PacketElement = namedtuple('PacketElement', 'name type array_size')

PacketGroup = namedtuple('PacketGroup', 'name packets')

INT_TYPES = ('uint8_t', 'uint16_t', 'uint32_t', 'int8_t', 'int16_t', 'int32_t')
PACKET_ELEMENT_TYPES = INT_TYPES + ('float','bool',)

SIZES = dict(uint8_t=1, uint16_t=2, uint32_t=4, int8_t=1, int16_t=2, int32_t=4, float=4, bool=1)


def is_in_list(data_list, value, key = lambda x: x):
    return any(filter(lambda elem: key(elem) == value, data_list))


class PacketGenerator(object):
    def __init__(self, description_file, output_folder):
        self._xml = etree.parse(description_file)
        self._output_folder = output_folder
        self._enums = []
        self._packets = []
        self._packet_groups = []

    def generate_packets(self):
        self._enums = []
        self._packets = []
        self._packet_groups = []

        self._read_xml()
        self._read_templates()
        self._generate_code()

    @staticmethod
    def _verify_type_name(name):
        return re.fullmatch('([A-Z]+)([a-zA-Z0-9_]*)', name)

    @staticmethod
    def _verify_packet_element_name(name):
        return re.fullmatch('([a-z])([a-zA-Z0-9_]*)', name)

    def _read_xml(self):
        enums = self._xml.xpath('/packets/enum')
        packets = self._xml.xpath('/packets/packet')
        packet_groups = self._xml.xpath('/packets/packet_group')

        for enum in enums:
            self._read_enum(enum)

        for packet in packets:
            self._read_packet(packet)

        for group in packet_groups:
            self._read_packet_group(group)

    def _read_enum(self, enum_element):
        name = enum_element.get('name')
        underlying_type = enum_element.get('type')

        if name is None:
            raise RuntimeError('No enum name specified')
        if not self._verify_type_name(name):
            raise RuntimeError('Invalid enum name "%s"' % name)
        if is_in_list(self._enums, name, lambda e: e.name):
            raise RuntimeError('Duplicate enum name "%s"' % name)

        if underlying_type is None:
            raise RuntimeError('No enum underlying type specified for enum "%s"' % name)
        if underlying_type not in INT_TYPES:
            raise RuntimeError('Invalid underlying type "%s" specified for enum "%s"' % (underlying_type, name))

        enum = Enum(name, underlying_type, [])
        for elem in enum_element.xpath('element'):
            elem_name = elem.get('name')
            if elem_name is None:
                raise RuntimeError('Element without a name in enum "%s"' % name)
            if not self._verify_type_name(elem_name):
                raise RuntimeError('Invalid enum element name "%s" in enum "%s"' % (elem_name, name))
            if is_in_list(enum.elements, elem_name, lambda e: e.name):
                raise RuntimeError('Duplicate element "%s" in enum "%s"' % (elem_name, name))
            enum.elements.append(EnumElement(elem_name))

        self._enums.append(enum)

    def _read_packet(self, packet_element):
        name = packet_element.get('name')
        id_str = packet_element.get('id')

        if name is None:
            raise RuntimeError('No packet name specified')
        if not self._verify_type_name(name):
            raise RuntimeError('Invalid packet name "%s"' % name)
        if is_in_list(self._packets, name, lambda e: e.name):
            raise RuntimeError('Duplicate packet name "%s"' % name)

        if id_str is None:
            raise RuntimeError('No packet id specified for packet "%s"' % name)

        try:
            id = int(id_str)
        except ValueError:
            id = None

        if id is None or not (0 <= id <= 255):
            raise RuntimeError('Invalid packet id "%s" specified for packet "%s"' % (id_str, name))
        if is_in_list(self._packets, id, lambda p: p.id):
            raise RuntimeError('Duplicate packet id %i ' % id)

        elements = []
        size = 0
        for elem in packet_element:
            if elem.tag not in ('array', 'element'):
                raise RuntimeError('Unexpected element "%s" in definition of packet "%s"' % (elem.tag, name))

            elem_name = elem.get('name')
            elem_type = elem.get('type')
            is_array = (elem.tag == 'array')

            if elem_name is None:
                raise RuntimeError('Element without a name in packet "%s"' % name)
            if not self._verify_packet_element_name(elem_name):
                raise RuntimeError('Invalid packet element name "%s" in packet "%s"' % (elem_name, name))
            if is_in_list(elements, elem_name, lambda e: e.name):
                raise RuntimeError('Duplicate element "%s" in packet "%s"' % (elem_name, name))
            if elem_type not in PACKET_ELEMENT_TYPES and not is_in_list(self._enums, elem_type, lambda e: e.name):
                raise RuntimeError('Invalid type "%s" specified '
                                   'for element "%s" in packet "%s"' % (elem_type, elem_name, name))

            array_size = None
            if is_array:
                array_size_str = elem.get('size')
                if array_size_str is None:
                    raise RuntimeError('Array size missing in array "%s"' % elem_name)

                try:
                    array_size = int(array_size_str)
                except ValueError:
                    pass

                if array_size <= 1:
                    raise RuntimeError('Invalid array size "%s"' % array_size_str)
            elif elem.get('size') is not None:
                raise RuntimeError('Array size specified for scalar element "%s" in packet "%s"' % (elem_name, name))

            if self._is_enum(elem_type):
                elem_size = SIZES[self._enum_underlying_type(elem_type)]
            else:
                elem_size = SIZES[elem_type]

            if is_array:
                elem_size *= array_size

            size += elem_size
            elements.append(PacketElement(elem_name, elem_type, array_size))

        self._packets.append(Packet(name, id, elements, size))

    def _read_packet_group(self, group_elem):
        packets = []
        name = group_elem.get('name')

        if name is None:
            raise RuntimeError('No packet group name specified')
        if not self._verify_type_name(name):
            raise RuntimeError('Invalid packet group name "%s"' % name)
        if self._get_packet_by_name(name) or self._get_packet_group_by_name(name):
            raise RuntimeError('Packet group name "%s" is not unique' % name)

        for packet_elem in group_elem.xpath('packet'):
            packet_name = packet_elem.get('name')
            if packet_name is None:
                raise RuntimeError('Element without a name in packet group "%s"' % name)

            packet = self._get_packet_by_name(packet_name)
            if packet is None:
                raise RuntimeError('Unknown packet "%s" in packet group "%s"' % (packet_name, name))
            if is_in_list(packets, packet_name, lambda p: p.name):
                raise RuntimeError('Duplicate packet "%s" in packet group "%s"' % (packet_name, name))

            packets.append(packet)

        self._packet_groups.append(PacketGroup(name, packets))

    def _read_templates(self):
        self._templates = {}
        loader = jinja2.FileSystemLoader(path.dirname(path.abspath(__file__)))
        env = jinja2.Environment(loader=loader)
        env.filters['hex'] = lambda number: hex(number)
        self._templates['Packets.hpp'] = env.get_template('Packets.hpp.tpl')
        self._templates['Packets.cpp'] = env.get_template('Packets.cpp.tpl')

    def _is_enum(self, enum_type):
        return is_in_list(self._enums, enum_type, lambda e: e.name)

    def _enum_underlying_type(self, enum_name):
        enum = next(filter(lambda elem: elem.name == enum_name, self._enums), None)
        return enum.type if enum else None

    def _get_packet_by_name(self, name):
        return next(filter(lambda p: p.name == name, self._packets), None)

    def _get_packet_group_by_name(self, name):
        return next(filter(lambda p: p.name == name, self._packet_groups), None)

    def _generate_code(self):
        files = ('Packets.hpp', 'Packets.cpp')
        context = dict(enums=self._enums, packets=self._packets, packet_groups=self._packet_groups)
        for filename in files:
            with open(path.join(self._output_folder, filename), 'w') as f:
                f.write(self._templates[filename].render(context))


def main():
    if len(sys.argv) != 3:
        sys.stderr.write('USAGE: PacketGenerator [packet description file] [output folder]\n')
        sys.exit(2)

    try:
        generator = PacketGenerator(sys.argv[1], sys.argv[2])
        generator.generate_packets()
    except RuntimeError as err:
        sys.stderr.write(str(err) + '\n')
        sys.exit(1)

if __name__ == '__main__':
    main()
