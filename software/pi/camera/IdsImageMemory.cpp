#include "IdsImageMemory.hpp"

#include <stdexcept>

IdsImageMemory::IdsImageMemory() : camera{0}, isCameraSet{false}
{
}

IdsImageMemory::IdsImageMemory(HIDS camera) : camera{camera}, isCameraSet{true}
{
}

IdsImageMemory::~IdsImageMemory()
{
    free();
}

IdsImageMemory::IdsImageMemory(IdsImageMemory&& other) : camera(other.camera),
    isCameraSet(other.isCameraSet), data(other.data), id(other.id)
{
    other.camera = 0;
    other.isCameraSet = false;
    other.data = nullptr;
    other.id = -1;
}

IdsImageMemory& IdsImageMemory::operator=(IdsImageMemory&& other)
{
    camera = other.camera;
    isCameraSet = other.isCameraSet;
    data = other.data;
    id = other.id;

    other.camera = 0;
    other.isCameraSet = false;
    other.data = nullptr;
    other.id = -1;

    return *this;
}

bool IdsImageMemory::isValid() const
{
    return data != nullptr;
}

void IdsImageMemory::allocate(int width, int height, int bitsPerPixel)
{
    if(!isCameraSet) {
        throw std::logic_error("Camera is not set!");
    }

    if(isValid()) {
        free();
    }
    auto error = is_AllocImageMem(camera, width, height, bitsPerPixel, &data, &id);
    if(error != 0) {
        data = nullptr;
        id = -1;
        throw std::bad_alloc();
    }
}

void IdsImageMemory::free()
{
    if(isValid()) {
        is_FreeImageMem(camera, data, id);
        data = nullptr;
        id = -1;
    }
}

void IdsImageMemory::setCamera(HIDS camera)
{
    if(data) {
        free();
    }

    this->camera = camera;
    isCameraSet = true;
}
