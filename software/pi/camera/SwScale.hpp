#ifndef _SW_SCALE_HPP
#define _SW_SCALE_HPP

#include <stdexcept>
#include <type_traits>

extern "C" {
	#include <libswscale/swscale.h>
	#include <libavutil/pixfmt.h>
}

class SwScale
{
public:
	SwScale(int srcWidth, int srcHeight, AVPixelFormat srcFormat, int dstWidth, int dstHeight, AVPixelFormat dstFormat)
		: srcWidth(srcWidth), srcHeight(srcHeight), srcFormat(srcFormat), dstWidth(dstWidth), dstHeight(dstHeight), dstFormat(dstFormat)
	{
		context = sws_getContext(srcWidth, srcHeight, srcFormat, dstWidth, dstHeight, dstFormat, SWS_FAST_BILINEAR, nullptr, nullptr, nullptr);
		if(!context) {
			throw std::runtime_error("sws_getContext failed!");
		}
	}

	~SwScale()
	{
		sws_freeContext(context);
	}

	template<typename SrcData, typename DstData>
	int scale(const SrcData* srcData, int srcStride, DstData* dstData, int dstStride)
	{
		static_assert(std::is_integral<SrcData>::value, "Invalid source data type");
		static_assert(std::is_integral<DstData>::value, "Invalid destination data type");

		const uint8_t* src[] = {reinterpret_cast<const uint8_t*>(srcData), nullptr, nullptr, nullptr};
	    uint8_t* dst[]		 = {reinterpret_cast<uint8_t*>(dstData), nullptr, nullptr, nullptr};

		int srcStrideArray[] = {srcStride, 0, 0, 0};
	    int dstStrideArray[] = {dstStride, 0, 0, 0};

	    return sws_scale(context, src, srcStrideArray, 0, srcHeight, dst, dstStrideArray);
	}

private:
	SwsContext* context = nullptr;

	int srcWidth;
	int srcHeight;
	AVPixelFormat srcFormat;
	int dstWidth;
	int dstHeight;
	AVPixelFormat dstFormat;
};

#endif
