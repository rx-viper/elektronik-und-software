#include "MeasurementData.hpp"

#include <stdexcept>
#include <algorithm>

namespace viper
{

IceTemperatures::IceTemperatures()
{
	data.fill(0);
}

IceTemperatures::IceTemperatures(const int32_t values[9])
{
	std::copy_n(values, 9, data.data());
}

float IceTemperatures::getFloat(uint8_t x, uint8_t y) const
{
	return this->operator()(x, y) / 1024.0f;
}

int32_t& IceTemperatures::operator()(uint8_t x, uint8_t y)
{
	checkIndex(x, y);
	return data[x + 3 * y];
}

int32_t IceTemperatures::operator()(uint8_t x, uint8_t y) const
{
	checkIndex(x, y);
	return data[x + 3 * y];
}

int32_t& IceTemperatures::operator()(uint8_t index)
{
	return data.at(index);
}

int32_t IceTemperatures::operator()(uint8_t index) const
{
	return data.at(index);
}

void IceTemperatures::checkIndex(uint8_t x, uint8_t y)
{
	if(x >= 3 || y >= 3) {
		throw std::out_of_range("Temperature index out of range");
	}
}

}
