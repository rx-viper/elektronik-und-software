#ifndef JPEG_ENCODER_HPP
#define JPEG_ENCODER_HPP

#include <stdexcept>

#include <turbojpeg.h>
#include "TurboJpegAllocator.h"

class JpegEncoder
{
public:
	JpegEncoder(int width, int height, TJPF srcFormat, TJSAMP chromaSubsampling)
		: width(width), height(height), srcFormat(srcFormat), chromaSubsampling(chromaSubsampling)
	{
		handle = tjInitCompress();
		if(!handle) {
			throw std::runtime_error(tjGetErrorStr());
		}

		const auto bufferSize = tjBufSize(width, height, chromaSubsampling);
		jpegBuffer.resize(bufferSize);
		resultSize = 0;
	}

	~JpegEncoder()
	{
		tjDestroy(handle);
	}

	template<typename Data>
	void compress(const Data* data, int quality)
	{
		static_assert(std::is_integral<Data>::value, "Invalid data type");

		auto src = const_cast<uint8_t*>(reinterpret_cast<const uint8_t*>(data));
		auto pitch = width * tjPixelSize[srcFormat];
		auto dst = jpegBuffer.data();
		resultSize = jpegBuffer.size();

		auto result = tjCompress2(handle, src, width, pitch, height, srcFormat, &dst, &resultSize, chromaSubsampling, quality, TJFLAG_NOREALLOC);
		if(result != 0) {
			resultSize = 0;
			throw std::runtime_error(tjGetErrorStr());
		}
	}

	const uint8_t* jpegData() const { return jpegBuffer.data(); }
	int jpegSize() const { return resultSize; }

private:
	tjhandle handle = nullptr;

	std::vector<uint8_t, TurboJpegAllocator<uint8_t>> jpegBuffer;

	int width;
	int height;
	TJPF srcFormat;

	TJSAMP chromaSubsampling;
	unsigned long resultSize;
};

#endif
