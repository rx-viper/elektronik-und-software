#include <string>
#include <cstring>
#include <unistd.h>
#include <iostream>
#include <mutex>
#include <sys/statvfs.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sstream>
#include <iomanip>

#include "FileUtil.hpp"

using namespace std::string_literals;

static std::mutex pathMutex;
static std::string experimentDataPath;
static std::atomic<uint32_t> fileId;

std::string createExperimentDirectory()
{
	fileId = 0;

	std::string command = "mkdir -p "s + PiDataPath;
	system(command.c_str());
	
	unsigned int i = 0;
	experimentDataPath = PiDataPath + "boot_"s + intToString(i, 4) + "/"s;
	while(directoryExists(experimentDataPath) && !isDirectoryEmpty(experimentDataPath)) {
		i++;
		experimentDataPath = PiDataPath + "boot_"s + intToString(i, 4) + "/"s;
	}

	command = "mkdir -p "s + experimentDataPath;
	system(command.c_str());
	return experimentDataPath;
}

std::string getExperimentDataPath()
{
	std::lock_guard<std::mutex> lock{pathMutex};
	return experimentDataPath;
}

bool directoryExists(std::string path)
{
	struct stat sb;

	return stat(path.c_str(), &sb) == 0 && S_ISDIR(sb.st_mode);
}

bool isDirectoryEmpty(const std::string& dirname) {
  int n = 0;
  struct dirent *d;
  DIR *dir = opendir(dirname.c_str());
  if (dir == NULL) //Not a directory or doesn't exist
    return true;
  while ((d = readdir(dir)) != NULL) {
    if(++n > 2)
      break;
  }
  closedir(dir);
  if (n <= 2) //Directory Empty
    return true;
  else
    return false;
}


std::string intToString(uint32_t intValue, unsigned numDigits)
{
	std::stringstream ss;
	ss << std::setw(numDigits) << std::setfill('0') << intValue;
	std::string s = ss.str();

	return s;
}

std::string nextFilename(const std::string& dir, const std::string& suffix)
{
	uint32_t id = fileId++;
	uint32_t expId = experimentId;
	uint32_t fileTime = onboardTime;

	std::string filename = dir + intToString(fileId, 5) + "_" + intToString(expId, 4) + "_" + intToString(fileTime, 8) + suffix;
	return filename;
}

size_t availableStorage(const char* path)
{
	struct statvfs info;
	int result = statvfs(path,  &info);
	if(result < 0) {
		return 0;
	} else {
		return info.f_bsize / 1024 * info.f_bfree;
	}
}
