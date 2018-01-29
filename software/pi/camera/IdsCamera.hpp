#ifndef IDSCAMERA_H
#define IDSCAMERA_H

#include <ueye.h>

#include "IdsImageMemory.hpp"

#include <thread>
#include <vector>
#include <chrono>
#include <condition_variable>

using namespace std::chrono_literals;

class IdsCamera
{
public:
    static constexpr size_t ImageBufferSize{5};
    static constexpr auto FrameTimeout = 50ms;

    IdsCamera();
    ~IdsCamera();

    IdsCamera(const IdsCamera&) = delete;
    IdsCamera& operator=(const IdsCamera&) = delete;

    void open();
    void close();

    bool waitForImage(std::chrono::milliseconds timeout = 1000ms);
    bool readImage(std::vector<uint8_t>& destination);
    bool readImage(std::vector<uint32_t>& destination);


    bool hasImage() const;
    int width() const;
    int height() const;

private:
    void allocateImages();

    void run();

    std::thread thread;
    mutable std::mutex mutex;
    std::condition_variable condition;

    bool cameraOpen = false;
    HIDS camera = 0;
    SENSORINFO sensorInfo;
    IS_RECT imageSize;

    std::array<IdsImageMemory, ImageBufferSize> bufferImages;
    bool imageReceived = false;
    bool error = false;
};

#endif // IDSCAMERA_H
