#include <string>
#include <cstring>
#include <unistd.h>
#include <iostream>
#include <sys/statvfs.h>

using std::string_literals;

std::string createExperimentDirectory()
{
	std::string command = "mkdir -p "s + PiDataPath;
	system(command.c_str());
	
	// TODO: implement
}

bool directoryExists(std::string path)
{
	struct stat sb;

	return stat(path.c_str(), &sb) == 0 && S_ISDIR(sb.st_mode);
}

std::string nextFilename(const std::string& prefix, const std::string& suffix)
{
	char number[7];
	int image_index = 0;
	std::string name;

	do {
		snprintf(number, sizeof(number), "%.6d", image_index);
		image_index++;
		if (image_index > 999999)
		{
				image_index = 0;
				break;
		}
		name = prefix + number + suffix;
	} while (access(name.c_str(), F_OK) == 0);

	return name;
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
