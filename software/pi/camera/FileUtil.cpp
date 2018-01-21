#include <string>
#include <cstring>
#include <unistd.h>
#include <iostream>

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
