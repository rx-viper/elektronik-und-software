//
// Created by christopher on 16.01.18.
//

#include "FramebufferRenderer.hpp"

#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/kd.h>

#include <cerrno>
#include <fcntl.h>
#include <cstring>
#include <unistd.h>

#include <functional>

using namespace std::string_literals;

Renderer::Size FramebufferRenderer::open()
{
	if(fd != -1 || ttyFd >= 0) {
		close();
	}

	fbData = nullptr;

	if((fd = ::open(device, O_RDWR)) == -1) {
		throw RendererException("opening device "s + device + " failed:" + strerror(errno));
	}

	ttyFd = ::open("/dev/tty1", O_RDWR);
	if(ttyFd >= 0) {
		ioctl(ttyFd, KDSETMODE, KD_GRAPHICS);
	}

	readScreenInfo();

	if(varScreenInfo.bits_per_pixel != 24 && varScreenInfo.bits_per_pixel != 32) {
		throw RendererException("Unsupported bit depth "s + std::to_string(varScreenInfo.bits_per_pixel));
	}

	varScreenInfo.yres_virtual = 2 * varScreenInfo.yres;
	
	setScreenInfo();
	readScreenInfo();

	xStride = (fixScreenInfo.line_length * 8) / varScreenInfo.bits_per_pixel;

	fbSize = fixScreenInfo.smem_len;
	fbData = reinterpret_cast<uint8_t*>(mmap(nullptr, fbSize, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0));

	if(fbData == MAP_FAILED) {
		fbData = nullptr;
		throw RendererException("mmap failed");
	}

	renderingBuffers[0].resize(varScreenInfo.xres * varScreenInfo.yres);
	renderingBuffers[1].resize(varScreenInfo.xres * varScreenInfo.yres);

	stop = false;
	bufferChanged = false;

	thread = std::thread(std::bind(&FramebufferRenderer::renderThread, this));

	return Size{varScreenInfo.xres, varScreenInfo.yres};
}

void FramebufferRenderer::close()
{
	if(fbData != nullptr) {
		munmap(fbData, fbSize);
		fbData = nullptr;
	}

	if(fd != -1) {
		::close(fd);
		fd = -1;
	}

	if(ttyFd >= 0) {
		ioctl(ttyFd,KDSETMODE,KD_TEXT);
		::close(ttyFd);
	}
	ttyFd = -1;

	stop = true;
	if(thread.joinable()) {
		thread.join();
	}
}

void FramebufferRenderer::draw(const Renderer::RGBValue* data, Renderer::Size size, size_t xOffset, size_t yOffset)
{
	if(!isOpen()) {
		throw RendererException("device not open");
	}

	if(xOffset >= varScreenInfo.xres || yOffset > varScreenInfo.yres) {
		return;
	}

	size_t xSize = std::min<size_t>(size.width, varScreenInfo.xres);
	size_t ySize = std::min<size_t>(size.height, varScreenInfo.yres);

	if(xOffset + xSize < xSize || yOffset + ySize < ySize) {
		// overflow
		return;
	}

	if(xOffset + xSize > varScreenInfo.xres) {
		xSize = varScreenInfo.xres - xOffset;
	}


	if(yOffset + ySize > varScreenInfo.yres) {
		ySize = varScreenInfo.yres - yOffset;
	}

	RGBValue* buffer = nullptr;

	{
		std::lock_guard<std::mutex> lock{mutex};
		buffer = renderingBuffers.at(activeBuffer ^ 1).data();
	}

	for(size_t i = 0; i < ySize; ++i) {
		const auto* src = data + i * size.width;
		auto* dst = buffer + (i + yOffset) * varScreenInfo.xres + xOffset;
		const auto rowSize = size.width; //* sizeof(RGBValue);
		std::copy(src, src + rowSize, dst);
	}
}

void FramebufferRenderer::bufferToFb()
{
	const auto rowSize = xStride * sizeof(RGBValue);
	auto* fbPtr = fbData + fbIndex * varScreenInfo.yres * rowSize;
	auto* srcBuffer = renderingBuffers.at(activeBuffer).data();

	for(size_t i = 0; i < varScreenInfo.yres; ++i, fbPtr += rowSize) {
		auto* src = reinterpret_cast<uint8_t*>(srcBuffer + i * varScreenInfo.xres);
		std::memcpy(fbPtr, src, varScreenInfo.xres * sizeof(RGBValue));
	}
}

void FramebufferRenderer::swapBuffers()
{
	if(!isOpen()) {
		throw RendererException("swapBuffers failed: device not open");
	}

	std::lock_guard<std::mutex> lock{mutex};

	activeBuffer ^= 1;
	bufferChanged = true;
}

bool FramebufferRenderer::isOpen()
{
	return fd != -1;
}

FramebufferRenderer::~FramebufferRenderer()
{
	close();
}

void FramebufferRenderer::readScreenInfo()
{
	if(ioctl(fd, FBIOGET_VSCREENINFO, &varScreenInfo)) {
		throw RendererException("ioctl FBIOGET_VSCREENINFO: "s + strerror(errno));
	}

	if (ioctl(fd, FBIOGET_FSCREENINFO, &fixScreenInfo)) {
		throw RendererException("ioctl FBIOGET_FSCREENINFO: "s + strerror(errno));
	}
}

void FramebufferRenderer::setScreenInfo()
{
	if(ioctl(fd, FBIOPUT_VSCREENINFO, &varScreenInfo)) {
		throw RendererException("ioctl FBIOPUT_VSCREENINFO: "s + strerror(errno));
	}
}

void FramebufferRenderer::panDisplay()
{
	if(ioctl(fd, FBIOPAN_DISPLAY, &varScreenInfo)) {
		throw RendererException("ioctl FBIOPAN_DISPLAY: "s + strerror(errno));
	}
}

void FramebufferRenderer::waitForVSync()
{
	int dummy = 0;

	if(ioctl(fd, FBIO_WAITFORVSYNC, &dummy)) {
		throw RendererException("ioctl FBIO_WAITFORVSYNC failed: "s + strerror(errno));
	}
}

void FramebufferRenderer::renderThread()
{
	while(!stop) {
		bool redraw = false;
		{
			std::lock_guard<std::mutex> lock(mutex);
			redraw = bufferChanged;
			bufferChanged = false;
			
			if(redraw) {
				bufferToFb();
			}
		}

		if(redraw) {
			swapFrameBuffer();
		}
		waitForVSync();
	}
}

void FramebufferRenderer::clearBuffer(RGBValue value)
{
	if(!isOpen()) {
		throw RendererException("device not open");
	}

	std::vector<RGBValue>* buffer = nullptr;

	{
		std::lock_guard<std::mutex> lock{mutex};
		buffer = &renderingBuffers.at(activeBuffer ^ 1);
	}

	buffer->assign(buffer->size(), value);
}

void FramebufferRenderer::swapFrameBuffer()
{
	varScreenInfo.yoffset = varScreenInfo.yres * fbIndex;
	fbIndex ^= 1;

	panDisplay();
}
