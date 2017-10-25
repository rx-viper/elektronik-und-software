/* Variant.hpp
 *
 * Copyright (C) 2017 Christopher Durand
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef VIPER_VARIANT_HPP
#define VIPER_VARIANT_HPP

#include <algorithm>
#include <cstdint>

namespace viper
{

// Forward-declarations
namespace detail
{
template<typename... Ts>
struct VariantHelper;

template< typename...>
struct IsOneOf;
}

/**
 * The class template Variant represents a type-safe tagged union (like boost::variant or C++17 std::variant).
 * An instance of Variant always holds a value of one of its alternative types.
 * The first type in the parameter pack must be default-constructible.
 *
 * This implementation does not use dynamic memory; the size of a Variant object is equal to the
 * size of the largest object it can store plus a size_t type index and required alignment.
 *
 * This class will never throw exceptions as long as all used constructors and destructors
 * (including copy- or move-constructors) of alternative types do not throw.
 * A throwing constructor or destructor results in undefined behaviour.
 *
 * Usage:
 * @code
 * // Default construct a Variant that holds an instance of first type in the parameter list (here: int)
 * Variant<int, bool, std::vector<int>> exampleVariant;
 *
 * // Access value; intPtr will be nullptr if stored object is not an int
 * int* intPtr = exampleVariant.get<int>();
 * if(intPtr) {
 *  int& value = *intPtr;
 *  // Do something with value
 * }
 *
 * // Assign value, exampleVariant now holds a bool
 * exampleVariant = false;
 *
 * // in-place construct and assign object of type std::vector<int> with 5 elements
 * // Constructor arguments passed to this function will be perfectly forwarded.
 * auto& vector = exampleVariant.emplace<std::vector<int>>(5);
 *
 * struct ExampleVisitor
 * {
 *   void operator()(int& value) {
 *		  // Do something with stored int
 *   }
 *
 *   void operator()(bool& value) {
 *		  // Do something with stored bool
 *   }
 *
 *   void operator()(std::vector<int>& value) {
 *		  // Do something with stored std::vector<int>
 *   }
 * } visitor;
 *
 * // Access the stored value using a visitor pattern
 * exampleVariant.applyVisitor(visitor);
 *
 * // Generic lambda visitors are also supported
 * exampleVariant.applyVisitor([&](auto& value) {
 *   // Do something with value
 * });
 *
 * @endcode
 *
 * @tparam Types List of types that can be stored in a Variant<Types> instance.
 *
 * @copyright Christopher Durand, 2017
 */
template<typename... Types>
class Variant
{
public:
	/// The storage size of the largest type this Variant can hold
	static constexpr auto MaxSize = std::max({sizeof(Types)...});

	/// The number of different types this Variant can hold
	static constexpr size_t NumTypes = sizeof...(Types);

	/// Default-constructs a Variant holding an instance of the first type in the parameter list.
	Variant();
	~Variant();

	/// A Variant is only copy-constructible if all alternative types are copyable.
	Variant(const Variant& other);

	/// A Variant is only copy-assignable if all alternative types are copyable.
	/// @warning All references to stored values are invalidated.
	Variant& operator=(const Variant& other);

	/// A Variant is only move-constructible if all alternative types are moveable.
	Variant(Variant&& other);

	/// A Variant is only move-assignable if all alternative types are moveable.
	/// @warning All references to stored values are invalidated.
	Variant& operator=(Variant&& other);

	/// Construct a Variant from a value of a supported type.
	/// @tparam T If T is not a supported type, this triggers a static assertion failure.
	///
	/// The second default template argument can be ignored and is a
	/// measure to prevent this overload from taking precedence in overload resolution
	/// over the copy constructor for non-const lvalue reference arguments of Variant
	/// (look up SFINAE for more details).
	template<typename T,
			typename = std::enable_if_t<detail::IsOneOf<T, Types...>::value>>
	Variant(T&& element);

	/// Assign a value to the Variant instance.
	/// @warning All references to stored values are invalidated.
	/// @tparam T If T is not a supported type, this triggers a static assertion failure.
	///
	/// The second default template argument can be ignored and is a
	/// measure to prevent this overload from taking precedence in overload resolution
	/// over the copy constructor for non-const lvalue reference arguments of Variant
	/// (look up SFINAE for more details).
	template<typename T,
			typename = std::enable_if_t<detail::IsOneOf<T, Types...>::value>>
	T& operator=(T&& element);

	/// Access the value stored in the Variant instance.
	/// If T differs from current type, this function returns nullptr.
	/// @tparam T If T is not a supported type, this triggers a static assertion failure.
	template<typename T>
	T* get();

	/// Access the value stored in the Variant instance.
	/// If T differs from the current type, this function returns nullptr.
	/// @tparam T If T is not a supported type, this triggers a static assertion failure.
	template<typename T>
	const T* get() const;

	/// In-place construct and assign object of type T.
	/// Constructor arguments passed to this function will be perfectly forwarded.
	/// @warning All references to stored values are invalidated.
	/// @tparam T If T is not a supported type, this triggers a static assertion failure.
	template<typename T, typename... Args>
	T& emplace(Args&&... args);

	/// Access the stored value using a visitor.
	/// @arg visitor A function object that can take objects
	/// of all supported types as an argument or a generic lambda.
	template<typename Visitor>
	void applyVisitor(Visitor&& visitor);

	/// Access the stored value using a visitor.
	/// @arg visitor A function object that can take objects
	/// of all supported types as an argument or a generic lambda.
	/// If this member function is called on a const Variant, the visitor
	/// must take arguments by value or const reference.
	template<typename ConstVisitor>
	void applyVisitor(ConstVisitor&& visitor) const;

	/// Return true if and only if this Variant can hold instances of T
	/// @tparam T If T is not a supported type, this triggers a static assertion failure.
	template<typename T>
	static constexpr bool isElement();

	/// Return a unique index in the range of [0, sizeof...(Types)) for each supported type T.
	/// @tparam T If T is not a supported type, this triggers a static assertion failure.
	template<typename T>
	static constexpr size_t getTypeIndex();
private:
	/// Set typeIndex to the type id of T
	template<typename T>
	inline void setType();

	/// Destruct the currently stored element
	inline void destructElement();

	/// Type to store the actual data with proper alignment
	using Data = std::aligned_union_t<MaxSize, Types...>;

	using Helper = detail::VariantHelper<Types...>;

	Data data;
	size_t typeIndex;

	template<typename... Ts>
	friend
	struct detail::VariantHelper;
};

}

#include "Variant_impl.hpp"

#endif // VIPER_VARIANT_HPP
