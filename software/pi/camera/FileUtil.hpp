#ifndef FILE_UTIL_HPP
#define FILE_UTIL_HPP

#include <string>
#include <cstdint>
#include <atomic>
#include <dirent.h>

const std::string PiDataPath = "/home/pi/data/";

extern std::atomic<uint32_t> onboardTime;
extern std::atomic<uint32_t> experimentId;

std::string createExperimentDirectory();
std::string getExperimentDataPath();

std::string intToString(uint32_t intValue, unsigned numDigits);

bool directoryExists(std::string path);

bool isDirectoryEmpty(const std::string& dirname);

std::string nextFilename(const std::string& prefix, const std::string& suffix);

size_t availableStorage(const char* path);

#endif
