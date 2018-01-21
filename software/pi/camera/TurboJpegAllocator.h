#ifndef TURBO_JPEG_ALLOCATOR_H
#define TURBO_JPEG_ALLOCATOR_H

#include <cstddef>
#include <bits/allocator.h>
#include <new>
#include <turbojpeg.h>

template<typename T>
class TurboJpegAllocator
{
public:
	typedef T value_type;
	typedef T& reference;
	typedef const T& const_reference;
	typedef T* pointer;
	typedef const T* const_pointer;
	typedef size_t size_type;
	typedef ptrdiff_t difference_type;

	template<class U>
	struct rebind
	{
		typedef TurboJpegAllocator<U> other;
	};

	TurboJpegAllocator() noexcept = default;
	TurboJpegAllocator(const TurboJpegAllocator&) noexcept = default;
	~TurboJpegAllocator() noexcept = default;

	inline pointer address(reference r) { return &r; }
	inline const_pointer address(const_reference r) const { return &r; }

	pointer allocate(size_type n)
	{
		pointer ptr = reinterpret_cast<pointer>(tjAlloc(n * sizeof(value_type)));

		if(!ptr) {
			throw std::bad_alloc();
		}

		return ptr;
	}

	void deallocate(pointer p, size_type n) noexcept
	{
		tjFree(reinterpret_cast<unsigned char*>(p));
	}

	void construct(pointer p, const_reference value)
	{
		new(p) value_type(value);
	}

	inline void destroy(pointer p)
	{
		p->~value_type();
	}

	inline size_type max_size() const noexcept
	{
		return size_type(-1) / sizeof(T);
	}
};

template<class T, class U>
bool operator==(const TurboJpegAllocator<T>&, const TurboJpegAllocator<U>&) noexcept
{
	return true;
}

template<class T, class U>
bool operator!=(const TurboJpegAllocator<T>&, const TurboJpegAllocator<U>&) noexcept
{
	return false;
}

#endif
