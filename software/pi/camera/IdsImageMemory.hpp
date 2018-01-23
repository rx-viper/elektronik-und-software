#ifndef IDSIMAGEMEMORY_H
#define IDSIMAGEMEMORY_H

#include <ueye.h>

class IdsImageMemory
{
public:
    IdsImageMemory();
    IdsImageMemory(HIDS camera);
    ~IdsImageMemory();

    IdsImageMemory(const IdsImageMemory&) = delete;
    IdsImageMemory& operator=(const IdsImageMemory&) = delete;

    IdsImageMemory(IdsImageMemory&& other);
    IdsImageMemory& operator=(IdsImageMemory&& other);

    bool isValid() const;
    void allocate(int width, int height, int bitsPerPixel);
    void free();

    char* getData() { return data; }
    int getID() { return id; }

    void setCamera(HIDS camera);
private:
    HIDS camera;
    bool isCameraSet = false;
    char* data = nullptr;
    int id = -1;

};

#endif // IDSIMAGEMEMORY_H
