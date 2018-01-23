#ifndef FILE_UTIL_HPP
#define FILE_UTIL_HPP

std::string nextFilename(const std::string& prefix, const std::string& suffix);

size_t availableStorage(const char* path);

#endif
