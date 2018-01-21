//
// Created by christopher on 16.01.18.
//

#ifndef FRAMEBUFFER_TEST_FRAMEBUFFERRENDERER_HPP
#define FRAMEBUFFER_TEST_FRAMEBUFFERRENDERER_HPP

#include <linux/fb.h>
#include <atomic>
#include <thread>
#include <vector>
#include <mutex>
#include "Renderer.hpp"

class FramebufferRenderer : public Renderer
{
public:
	static constexpr const char* device = "/dev/fb0";

	FramebufferRenderer() = default;
	~FramebufferRenderer();

	FramebufferRenderer(const FramebufferRenderer&) = delete;
	FramebufferRenderer& operator=(const FramebufferRenderer&) = delete;

	Size open() override;

	void close() override;

	bool isOpen() override;

	void draw(const RGBValue* data, Size size, size_t xOffset, size_t yOffset) override;

	void clearBuffer(RGBValue value);

	void swapBuffers() override;

private:
	void bufferToFb();
	void swapFrameBuffer();

	void readScreenInfo();
	void setScreenInfo();
	void panDisplay();
	void waitForVSync();

	void renderThread();

	int fd = -1;
	unsigned int xStride = 0;

	uint8_t* fbData = nullptr;
	size_t fbSize = 0;

	unsigned fbIndex = 1;

	fb_var_screeninfo varScreenInfo;
	fb_fix_screeninfo fixScreenInfo;

	std::atomic<bool> stop;

	std::mutex mutex;
	bool bufferChanged = false;
	unsigned activeBuffer = 0;

	std::array<std::vector<RGBValue>, 2> renderingBuffers;
	std::thread thread;
};


#endif //FRAMEBUFFER_TEST_FRAMEBUFFERRENDERER_HPP
