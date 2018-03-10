#include <iostream>
#include <string>
#include <snappy.h>
#include <fstream>
#include <cstdint>
#include <cstring>
#include <array>
#include <vector>
#include <algorithm>

#include "color.hpp"

int main(int argc, char* argv[]) {
	if(argc < 2) {
		std::cout << "Usage: ./flir_decompress [filename [filenames]]" << std::endl;
		return 1;
	}
	for(int filenr = 1; filenr < argc; ++filenr)
	{
		std::string filename = argv[filenr];
		std::ifstream file(filename, std::ifstream::binary);
		if(!file.is_open()) {
			std::cout << "Unable to open file " << filename << std::endl;
			return 1;
		}

		std::string str;
		file.seekg(0, std::ios::end);
		str.reserve(file.tellg());
		file.seekg(0, std::ios::beg);
		str.assign((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());

		std::string uncompressedData;
		snappy::Uncompress(str.data(), str.size(), &uncompressedData);

		//std::ofstream ofile(filename + ".uncompressed", std::ifstream::binary);
		//ofile.write(uncompressedData.data(), uncompressedData.size());

		if(uncompressedData.size() < 160*120*2) {
			std::cout << "Size of uncompressed image is too small!" << std::endl;
			return 1;
		}
		std::array<uint16_t, 160 * 120> image;
		std::memcpy(image.data(), uncompressedData.data(), 160*120*2);

		uint16_t min = *std::min_element(image.begin(), image.end());
		uint16_t max = *std::max_element(image.begin(), image.end());

		if(max == min) {
			max = min + 1;
		}
		std::cout << "Image pixel values: min=" << min << " max=" << max << std::endl;

		//std::vector<uint32_t> fbLeptonImage;
		//fbLeptonImage.resize(160*120);

		std::ofstream ppmfile(filename + ".ppm");
		ppmfile << "P3" << std::endl << "160 120 " << std::endl << "255 " << std::endl;

		for(int y = 0; y < 120; ++y) {
			for(int x = 0; x < 160; ++x) {
				float floatValue = float(image[x + y * 160] - min) / (max-min) * 255;
				const auto color = colorTable[(uint8_t) floatValue];
				uint8_t r = color.r;
				uint8_t g = color.g;
				uint8_t b = color.b;
				//const uint32_t rgb = b | (g << 8) | (r << 16);
				//fbLeptonImage[x + y * 160] = rgb;
				//ppmfile.printf("%d %d %d \t", r, g, b);
				ppmfile << std::to_string(r) << " " << std::to_string(g) << " " << std::to_string(b) << " \t";
			}
			ppmfile << std::endl;
		}
	}
	return 0;
}
