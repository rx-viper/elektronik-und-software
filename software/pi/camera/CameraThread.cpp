#include "CameraThread.hpp"

#include <fstream>
#include <algorithm>
#include "FileUtil.hpp"

struct Color
{
	uint8_t r;
	uint8_t g;
	uint8_t b;
};

const std::array<Color, 256> colorTable = {
	Color{0, 0, 0},
	Color{15, 0, 6},
	Color{22, 0, 12},
	Color{27, 0, 18},
	Color{31, 0, 25},
	Color{35, 0, 31},
	Color{39, 0, 37},
	Color{42, 0, 43},
	Color{45, 0, 49},
	Color{47, 0, 56},
	Color{50, 0, 62},
	Color{52, 0, 68},
	Color{55, 0, 74},
	Color{57, 0, 80},
	Color{59, 0, 86},
	Color{61, 0, 92},
	Color{63, 0, 97},
	Color{65, 0, 103},
	Color{67, 0, 109},
	Color{69, 0, 115},
	Color{71, 0, 120},
	Color{73, 0, 126},
	Color{74, 0, 131},
	Color{76, 0, 136},
	Color{78, 0, 142},
	Color{79, 0, 147},
	Color{81, 0, 152},
	Color{82, 0, 157},
	Color{84, 0, 162},
	Color{85, 0, 167},
	Color{87, 0, 171},
	Color{88, 0, 176},
	Color{90, 0, 180},
	Color{91, 0, 185},
	Color{93, 0, 189},
	Color{94, 0, 193},
	Color{95, 0, 197},
	Color{97, 0, 201},
	Color{98, 0, 205},
	Color{99, 0, 209},
	Color{100, 0, 212},
	Color{102, 1, 215},
	Color{103, 1, 219},
	Color{104, 1, 222},
	Color{105, 1, 225},
	Color{107, 1, 228},
	Color{108, 1, 230},
	Color{109, 1, 233},
	Color{110, 1, 236},
	Color{111, 1, 238},
	Color{112, 1, 240},
	Color{114, 2, 242},
	Color{115, 2, 244},
	Color{116, 2, 246},
	Color{117, 2, 247},
	Color{118, 2, 249},
	Color{119, 2, 250},
	Color{120, 2, 251},
	Color{121, 3, 252},
	Color{122, 3, 253},
	Color{123, 3, 253},
	Color{124, 3, 254},
	Color{125, 3, 254},
	Color{126, 3, 254},
	Color{127, 4, 254},
	Color{128, 4, 254},
	Color{129, 4, 254},
	Color{130, 4, 254},
	Color{131, 4, 253},
	Color{132, 5, 252},
	Color{133, 5, 251},
	Color{134, 5, 250},
	Color{135, 5, 249},
	Color{136, 5, 248},
	Color{137, 6, 246},
	Color{138, 6, 245},
	Color{139, 6, 243},
	Color{140, 7, 241},
	Color{141, 7, 239},
	Color{141, 7, 237},
	Color{142, 7, 234},
	Color{143, 8, 232},
	Color{144, 8, 229},
	Color{145, 8, 226},
	Color{146, 9, 223},
	Color{147, 9, 220},
	Color{148, 9, 217},
	Color{148, 10, 214},
	Color{149, 10, 210},
	Color{150, 10, 207},
	Color{151, 11, 203},
	Color{152, 11, 199},
	Color{153, 11, 195},
	Color{153, 12, 191},
	Color{154, 12, 187},
	Color{155, 13, 183},
	Color{156, 13, 178},
	Color{157, 14, 174},
	Color{158, 14, 169},
	Color{158, 14, 164},
	Color{159, 15, 159},
	Color{160, 15, 154},
	Color{161, 16, 149},
	Color{162, 16, 144},
	Color{162, 17, 139},
	Color{163, 17, 134},
	Color{164, 18, 128},
	Color{165, 18, 123},
	Color{165, 19, 117},
	Color{166, 19, 112},
	Color{167, 20, 106},
	Color{168, 21, 100},
	Color{168, 21, 95},
	Color{169, 22, 89},
	Color{170, 22, 83},
	Color{171, 23, 77},
	Color{171, 24, 71},
	Color{172, 24, 65},
	Color{173, 25, 59},
	Color{174, 25, 53},
	Color{174, 26, 46},
	Color{175, 27, 40},
	Color{176, 27, 34},
	Color{177, 28, 28},
	Color{177, 29, 21},
	Color{178, 30, 15},
	Color{179, 30, 9},
	Color{179, 31, 3},
	Color{180, 32, 0},
	Color{181, 33, 0},
	Color{182, 33, 0},
	Color{182, 34, 0},
	Color{183, 35, 0},
	Color{184, 36, 0},
	Color{184, 37, 0},
	Color{185, 37, 0},
	Color{186, 38, 0},
	Color{186, 39, 0},
	Color{187, 40, 0},
	Color{188, 41, 0},
	Color{188, 42, 0},
	Color{189, 43, 0},
	Color{190, 44, 0},
	Color{190, 44, 0},
	Color{191, 45, 0},
	Color{192, 46, 0},
	Color{192, 47, 0},
	Color{193, 48, 0},
	Color{194, 49, 0},
	Color{194, 50, 0},
	Color{195, 51, 0},
	Color{196, 52, 0},
	Color{196, 54, 0},
	Color{197, 55, 0},
	Color{198, 56, 0},
	Color{198, 57, 0},
	Color{199, 58, 0},
	Color{200, 59, 0},
	Color{200, 60, 0},
	Color{201, 61, 0},
	Color{201, 62, 0},
	Color{202, 64, 0},
	Color{203, 65, 0},
	Color{203, 66, 0},
	Color{204, 67, 0},
	Color{205, 69, 0},
	Color{205, 70, 0},
	Color{206, 71, 0},
	Color{206, 72, 0},
	Color{207, 74, 0},
	Color{208, 75, 0},
	Color{208, 76, 0},
	Color{209, 78, 0},
	Color{210, 79, 0},
	Color{210, 81, 0},
	Color{211, 82, 0},
	Color{211, 83, 0},
	Color{212, 85, 0},
	Color{213, 86, 0},
	Color{213, 88, 0},
	Color{214, 89, 0},
	Color{214, 91, 0},
	Color{215, 92, 0},
	Color{216, 94, 0},
	Color{216, 95, 0},
	Color{217, 97, 0},
	Color{217, 98, 0},
	Color{218, 100, 0},
	Color{218, 102, 0},
	Color{219, 103, 0},
	Color{220, 105, 0},
	Color{220, 107, 0},
	Color{221, 108, 0},
	Color{221, 110, 0},
	Color{222, 112, 0},
	Color{222, 114, 0},
	Color{223, 115, 0},
	Color{224, 117, 0},
	Color{224, 119, 0},
	Color{225, 121, 0},
	Color{225, 123, 0},
	Color{226, 124, 0},
	Color{226, 126, 0},
	Color{227, 128, 0},
	Color{228, 130, 0},
	Color{228, 132, 0},
	Color{229, 134, 0},
	Color{229, 136, 0},
	Color{230, 138, 0},
	Color{230, 140, 0},
	Color{231, 142, 0},
	Color{231, 144, 0},
	Color{232, 146, 0},
	Color{233, 148, 0},
	Color{233, 150, 0},
	Color{234, 152, 0},
	Color{234, 154, 0},
	Color{235, 157, 0},
	Color{235, 159, 0},
	Color{236, 161, 0},
	Color{236, 163, 0},
	Color{237, 165, 0},
	Color{237, 168, 0},
	Color{238, 170, 0},
	Color{238, 172, 0},
	Color{239, 175, 0},
	Color{240, 177, 0},
	Color{240, 179, 0},
	Color{241, 182, 0},
	Color{241, 184, 0},
	Color{242, 187, 0},
	Color{242, 189, 0},
	Color{243, 192, 0},
	Color{243, 194, 0},
	Color{244, 197, 0},
	Color{244, 199, 0},
	Color{245, 202, 0},
	Color{245, 204, 0},
	Color{246, 207, 0},
	Color{246, 209, 0},
	Color{247, 212, 0},
	Color{247, 215, 0},
	Color{248, 217, 0},
	Color{248, 220, 0},
	Color{249, 223, 0},
	Color{249, 226, 0},
	Color{250, 228, 0},
	Color{250, 231, 0},
	Color{251, 234, 0},
	Color{251, 237, 0},
	Color{252, 240, 0},
	Color{252, 243, 0},
	Color{253, 246, 0},
	Color{253, 249, 0},
	Color{254, 252, 0},
	Color{255, 255, 0}
};

void CameraThread::start()
{
	stop();

	camera.open();
	const auto cameraWidth = camera.width();
	const auto cameraHeight = camera.height();
	cameraImage.resize(cameraWidth * cameraHeight);

	fbSize = fbRenderer.open();
	fbCameraImage.resize(fbSize.width * fbSize.height);

	jpegEncoder = std::make_unique<JpegEncoder>(cameraWidth, cameraHeight, TJPF_GRAY, TJSAMP_GRAY);
	cameraScaler = std::make_unique<SwScale>(cameraWidth, cameraHeight, AV_PIX_FMT_GRAY8, fbSize.width, fbSize.height, AV_PIX_FMT_RGB32);
	std::cout << "1LEPTON" << std::endl;
	leptonThread.start();
	std::cout << "2LEPTON" << std::endl;

	thread = std::thread{std::bind(&CameraThread::run, this)};
}

void CameraThread::stop()
{
	if(thread.joinable()) {
		stopThread = true;
		thread.join();
		thread = std::thread{};
	}

	camera.close();

	fbRenderer.close();

	jpegEncoder = nullptr;
	cameraScaler = nullptr;
	leptonThread.stop();
}

void CameraThread::setFileStorageEnabled(bool enabled)
{
	storageEnabled = enabled;
	leptonThread.setFileStorageEnabled(enabled);
}

bool CameraThread::isFileStorageEnabled()
{
	return storageEnabled;
}

void CameraThread::run()
{
	std::vector<uint32_t> fbLeptonImage;
	fbLeptonImage.resize(Lepton3::Frame::width*Lepton3::Frame::height);

	while(!stopThread) {
		try {
			if(!camera.waitForImage(1000ms)) {
				std::cerr << "IDS Camera timeout" << std::endl;
				continue;
			}
			camera.readImage(cameraImage);

			cameraScaler->scale(cameraImage.data(), camera.width(), fbCameraImage.data(), fbSize.width * sizeof(uint32_t));

			{
				auto leptonFrameLock = leptonThread.lock();
				const Lepton3::Frame& frame = leptonThread.frame();
				int min = *std::min_element(frame.data.begin(), frame.data.end());
				int max = *std::max_element(frame.data.begin(), frame.data.end());
				
				if(max == min) {
					max = min + 1;
				}

				for(int y = 0; y < Lepton3::Frame::height; ++y) {
					for(int x = 0; x < Lepton3::Frame::width; ++x) {
						float floatValue = float(frame.data[x + y * Lepton3::Frame::width] - min) / (max-min) * 255;
						const auto color = colorTable[(uint8_t) floatValue];
						uint8_t r = color.r;
						uint8_t g = color.g;
						uint8_t b = color.b;
						const uint32_t rgb = b | (g << 8) | (r << 16);
						fbLeptonImage[x + y * Lepton3::Frame::width] = rgb;
					}
				}
				fbRenderer.draw(fbCameraImage.data(), {fbSize.width,fbSize.height}, 0, 0);	
				fbRenderer.draw(fbLeptonImage.data(), {Lepton3::Frame::width,Lepton3::Frame::height}, 720-160, 576-120);
			}

			fbRenderer.swapBuffers();

			if(storageEnabled) {
				jpegEncoder->compress(cameraImage.data(), jpegQuality);

				std::string filename = nextFilename(filePath, "_camera.jpg");
				std::ofstream file(filename, std::ofstream::binary);
				file.write(reinterpret_cast<const char*>(jpegEncoder->jpegData()), jpegEncoder->jpegSize());
			}
		} catch(const std::exception& e) {
			std::cerr << "Error: " << e.what() << std::endl;
		}
    }
}
