// coding: utf-8
// ----------------------------------------------------------------------------
/* Copyright (c) 2009-2018, Roboterclub Aachen e.V., Raphael Lehmann
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of the Roboterclub Aachen e.V. nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY ROBOTERCLUB AACHEN E.V. ''AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL ROBOTERCLUB AACHEN E.V. BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
// ----------------------------------------------------------------------------

#ifndef XPCC__AVERAGE_VARIABLE_LENGTH_HPP
#define XPCC__AVERAGE_VARIABLE_LENGTH_HPP

#include <cstddef>
#include <stdint.h>

namespace viper
{
namespace filter
{
    /**
	 * \brief	Average filter
	 *
	 * \ingroup	filter
	 */
    template<typename T>
    class Average
	{
	public:
		Average();

		/// Append new value
		void
		update(T input);

		/// Get filtered value and reset sum
		const T
		getValueAndReset();

	private:
		std::size_t index;
		T sum;
	};
}
}

template<typename T>
viper::filter::Average<T>::Average() :
	index{0}, sum{0}
{
}

template<typename T>
void
viper::filter::Average<T>::update(T input)
{
	sum += input;
	index++;
}

template<typename T>
const T
viper::filter::Average<T>::getValueAndReset()
{
	T value = (index != 0) ? (sum / static_cast<T>(index)) : 0;
	value = 0;
	index = 0;
	return value;
}

#endif // XPCC__AVERAGE_VARIABLE_LENGTH_HPP
