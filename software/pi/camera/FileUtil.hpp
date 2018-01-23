#ifndef FILE_UTIL_HPP
#define FILE_UTIL_HPP

#include <string>
#include <cstdint>

const std::string PiDataPath = "/home/pi/data/";

std::string createExperimentDirectory();

bool directoryExists(std::string path);

std::string nextFilename(const std::string& prefix, const std::string& suffix);

size_t availableStorage(const char* path);

#endif
