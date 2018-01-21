#ifndef FRAMEBUFFER_TEST_RENDERER_HPP
#define FRAMEBUFFER_TEST_RENDERER_HPP

#include <cstddef>
#include <cstdint>
#include <stdexcept>

struct RendererException : public std::runtime_error
{
	using std::runtime_error::runtime_error;
};

class Renderer
{
public:
	struct Size
	{
		size_t width;
		size_t height;
	};

	using RGBValue = uint32_t;

	virtual Size open() = 0;
	virtual void close() = 0;
	virtual bool isOpen() = 0;
	virtual void draw(RGBValue* data, Size size, size_t xOffset, size_t yOffset) = 0;
	virtual void swapBuffers() = 0;
};

#endif //FRAMEBUFFER_TEST_RENDERER_HPP
