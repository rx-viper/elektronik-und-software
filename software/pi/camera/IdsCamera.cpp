#include "IdsCamera.hpp"

#include <stdexcept>
#include <mutex>
#include <functional>
#include <algorithm>
#include <iostream>

#include "SequenceBufferLock.hpp"

constexpr std::chrono::milliseconds IdsCamera::FrameTimeout;

template<class InputIt, class OutputIt, class UnaryOperation>
OutputIt transform(InputIt first1, InputIt last1, OutputIt d_first, 
		                   UnaryOperation unary_op)
{
	while (first1 != last1) {
		*d_first++ = unary_op(*first1++);
	}
	return d_first;
}

IdsCamera::IdsCamera()
{
}

IdsCamera::~IdsCamera()
{
    close();
}

void IdsCamera::open()
{
    std::lock_guard<std::mutex> lock{mutex};

    if(cameraOpen) {
        return;
    }
    camera = 0;
    int error = is_InitCamera(&camera, 0);
    if(error != IS_SUCCESS) {
        throw std::runtime_error("Initializing camera failed");
    }

    try {
        error = is_GetSensorInfo(camera, &sensorInfo);
        if(error != IS_SUCCESS) {
            throw std::runtime_error("Could not read sensor info");
        }

        error = is_AOI(camera, IS_AOI_IMAGE_GET_AOI, &imageSize, sizeof(imageSize));
        if(error != IS_SUCCESS) {
            throw std::runtime_error("Could not read image size");
        }

        error = is_SetColorMode(camera, IS_CM_MONO8);
        if(error != IS_SUCCESS) {
            throw std::runtime_error("Setting color mode failed");
        }

        allocateImages();

        error = is_EnableEvent(camera, IS_SET_EVENT_FRAME);
        if(error != IS_SUCCESS) {
            throw std::runtime_error("Enabling frame event failed");
        }
        
        double value = 25.0f;
        is_Exposure(camera, IS_EXPOSURE_CMD_SET_EXPOSURE, &value, sizeof(value));

        double newRate = 0;
        is_SetFrameRate(camera, 10.0f, &newRate);

        is_CaptureVideo (camera, IS_DONT_WAIT);

        //double range[3];
        //is_Exposure(camera, IS_EXPOSURE_CMD_GET_EXPOSURE_RANGE, (void*)&range[0], sizeof(range[0]));

        //std::cout << range[0] << "," << range[1] << "," << range[2] << std::endl;

        cameraOpen = true;
        thread = std::thread(std::bind(&IdsCamera::run, this));
    } catch(...) {
        cameraOpen = false;
        is_ExitCamera(camera);
        throw;
    }
}

void IdsCamera::close()
{
    std::unique_lock<std::mutex> lock{mutex};
    if(cameraOpen) {
        imageReceived = false;
        cameraOpen = false;
        is_ExitCamera(camera);
        lock.release();
        exit(0);
        thread.join();
    }
}

bool IdsCamera::waitForImage(std::chrono::milliseconds timeout)
{
    std::unique_lock<std::mutex> lock{mutex};
    if(!cameraOpen) {
        return false;
    }
    auto isTimeout = condition.wait_for(lock, timeout, [this](){ return imageReceived || !cameraOpen; });
    return isTimeout && cameraOpen;
}

bool IdsCamera::hasImage() const
{
    std::lock_guard<std::mutex> lock{mutex};
    return imageReceived;
}

bool IdsCamera::readImage(std::vector<uint8_t>& destination)
{
    bool image = false;

    {
        std::lock_guard<std::mutex> lock{mutex};
        image = imageReceived;
    }

    if(image) {
        int id = 0;
        char* data = nullptr;
        int error = is_GetActSeqBuf(camera, &id, nullptr, &data);

        if(error != IS_SUCCESS) {
            return false;
        }

        {
            SequenceBufferLock bufferLock{camera, id, data};

            const auto size = imageSize.s32Width * imageSize.s32Height;
            destination.resize(size);

            std::copy_n(data, size, destination.begin());
        }

        std::lock_guard<std::mutex> lock{mutex};
        imageReceived = false;
        return true;
    } else {
        return false;
    }
}

bool IdsCamera::readImage(std::vector<uint32_t>& destination)
{
    bool image = false;

    {
        std::lock_guard<std::mutex> lock{mutex};
        image = imageReceived;
    }

    if(image) {
        int id = 0;
        char* data = nullptr;
        int error = is_GetActSeqBuf(camera, &id, nullptr, &data);

        if(error != IS_SUCCESS) {
            return false;
        }

        {
            SequenceBufferLock bufferLock{camera, id, data};

            const auto size = imageSize.s32Width * imageSize.s32Height;
            destination.resize(size);

            transform(data, data + size, destination.data(), [](uint8_t value){
	    	return value | (value << 8) | (value << 16); 
	    });
        }

        std::lock_guard<std::mutex> lock{mutex};
        imageReceived = false;
        return true;
    } else {
        return false;
    }
}

int IdsCamera::width() const
{
    return imageSize.s32Width;
}

int IdsCamera::height() const
{
    return imageSize.s32Height;
}

void IdsCamera::allocateImages()
{
    try {
        for(auto& image : bufferImages) {
            image.setCamera(camera);
            image.allocate(imageSize.s32Width, imageSize.s32Width, 8);

            error = is_AddToSequence(camera, image.getData(), image.getID());
            if(error != IS_SUCCESS) {
                throw std::runtime_error("Adding image buffer failed");
            }
        }
    } catch(...) {
        is_ClearSequence(camera);

        for(auto& image : bufferImages) {
            image.free();
        }

        throw;
    }

}

void IdsCamera::run()
{
    while(true) {
        {
            std::lock_guard<std::mutex> lock{mutex};
            if(!cameraOpen) {
                break;
            }
        }

        static_assert(FrameTimeout.count() <= std::numeric_limits<INT>().max(), "timeout out of range");

        if (is_WaitEvent(camera, IS_SET_EVENT_FRAME, FrameTimeout.count()) == IS_SUCCESS) {
            std::lock_guard<std::mutex> lock{mutex};
            imageReceived = true;
            condition.notify_one();
        }
    }
}
