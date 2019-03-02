#ifndef ISCAMAPPING_HPP
#define ISCAMAPPING_HPP

#include <cstdint>
#include <array>

namespace viper
{

struct TempSensorMapping
{
	// A: 1, B: 2, C: 0
	uint8_t iceSample;
	//			long -> short
	// top		0	1	2
	// |
	// |		3	4	5
	// V
	// bottom	6	7	8
	uint8_t sensorNumber;
};

static constexpr uint8_t IceSampleA = 1;
static constexpr uint8_t IceSampleB = 2;
static constexpr uint8_t IceSampleC = 0;

constexpr std::array<TempSensorMapping, 27> IscaMapping = {
	/* 0:  */ TempSensorMapping{IceSampleC, 2},
	/* 1:  */ TempSensorMapping{IceSampleC, 6},
	/* 2:  */ TempSensorMapping{IceSampleA, 4},
	/* 3:  */ TempSensorMapping{IceSampleC, 7},
	/* 4:  */ TempSensorMapping{IceSampleC, 1},
	/* 5:  */ TempSensorMapping{IceSampleC, 3},
	/* 6:  */ TempSensorMapping{IceSampleC, 5},
	/* 7:  */ TempSensorMapping{IceSampleA, 6},
	/* 8:  */ TempSensorMapping{IceSampleA, 0},
	/* 9:  */ TempSensorMapping{IceSampleA, 7},
	/* 10: */ TempSensorMapping{IceSampleA, 3},
	/* 11: */ TempSensorMapping{IceSampleA, 1},
	/* 12: */ TempSensorMapping{IceSampleC, 4},
	/* 13: */ TempSensorMapping{IceSampleB, 4},
	/* 14: */ TempSensorMapping{IceSampleB, 0},
	/* 15: */ TempSensorMapping{IceSampleB, 8},
	/* 16: */ TempSensorMapping{IceSampleC, 8},
	/* 17: */ TempSensorMapping{IceSampleA, 5},
	/* 18: */ TempSensorMapping{IceSampleA, 8},
	/* 19: */ TempSensorMapping{IceSampleB, 3},
	/* 20: */ TempSensorMapping{IceSampleB, 7},
	/* 21: */ TempSensorMapping{IceSampleB, 2},
	/* 22: */ TempSensorMapping{IceSampleB, 5},
	/* 23: */ TempSensorMapping{IceSampleB, 6},
	/* 24: */ TempSensorMapping{IceSampleB, 1},
	/* 25: */ TempSensorMapping{IceSampleA, 2},
	/* 26: */ TempSensorMapping{IceSampleC, 0}
};

}

#endif // ISCAMAPPING_HPP
