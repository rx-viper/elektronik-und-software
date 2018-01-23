#ifndef SEQUENCEBUFFERLOCK_H
#define SEQUENCEBUFFERLOCK_H

#include <ueye.h>

class SequenceBufferLock
{
public:
    SequenceBufferLock(HIDS camera, int bufferNumber, char* buffer)
        : camera(camera), bufferNumber(bufferNumber), buffer(buffer)
    {
        is_LockSeqBuf(camera, bufferNumber, buffer);
    }

    ~SequenceBufferLock()
    {
        is_UnlockSeqBuf(camera, bufferNumber, buffer);
    }

    SequenceBufferLock(const SequenceBufferLock&) = delete;
    SequenceBufferLock& operator=(const SequenceBufferLock&) = delete;

private:
    HIDS camera;
    int bufferNumber;
    char* buffer;
};

#endif // SEQUENCEBUFFERLOCK_H
