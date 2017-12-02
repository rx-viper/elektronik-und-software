/* Variant_impl.hpp
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

#include "Variant.hpp"

#ifndef DOXYGEN

namespace viper
{

namespace detail
{

/// Get first type of template parameter pack
template<typename... Ts>
struct FirstType;

template<typename T, typename... Ts>
struct FirstType<T, Ts...>
{
	using Type = T;
};

/// Type trait to check if a type T is element of a template parameter pack
template<typename...>
struct IsOneOf
{
	static constexpr bool value{false};
};

template<typename Type, typename T, typename... Ts>
struct IsOneOf<Type, T, Ts...>
{
	using CompareType = std::remove_cv_t<std::remove_reference_t<Type>>;
	static constexpr bool value{std::is_same<CompareType, T>::value || IsOneOf<Type, Ts...>::value};
};

/// Type trait to generate a unique id for each type of a template parameter pack
template<typename Type, typename... Ts>
struct TypeIndex;

template<typename Type, typename T, typename... Ts>
struct TypeIndex<Type, T, Ts...>
{
	static constexpr size_t value{std::is_same<Type,T>::value ? sizeof...(Ts) : TypeIndex<Type,Ts...>::value};
};

template<typename Type, typename T>
struct TypeIndex<Type, T>
{
	static constexpr size_t value{0};
};

/// Helper class template that recursively unpacks the
/// template parameter pack using partial template specialization.
template<typename... Ts>
struct VariantHelper;

template<typename T, typename... Ts>
struct VariantHelper<T,Ts...>
{
	/// All uses of reinterpret_cast in this file are safe according to language rules
	/// since the data pointer will never be casted to a different type than
	/// the one of the currently hold object (and thus strict-aliasing rules are not violated).
	/// Furthermore all objects are constructed in a memory region with sufficient size and alignment.
	/// Anyhow, gcc 7.1.0 (but not gcc 6 or gcc 7.1.1) will emit a warning about
	/// the violation of strict aliasing rules due to gcc bug no. 80593 that can be ignored safely.

	/// Get the type index of current T, it is equal to the count of remaining elements in Ts...
	static constexpr size_t helperIndex = sizeof...(Ts);

	/// Destruct the currently stored object
	inline static void destruct(size_t typeIndex, void* data)
	{
		if (typeIndex == helperIndex)
			reinterpret_cast<T*>(data)->~T();
		else
			VariantHelper<Ts...>::destruct(typeIndex, data);
	}

	/// Copy the currently stored object
	inline static void copy(size_t typeIndex, const void* oldData, void* newData)
	{
		if (typeIndex == helperIndex)
			new (newData) T{*reinterpret_cast<const T*>(oldData)};
		else
			VariantHelper<Ts...>::copy(typeIndex, oldData, newData);
	}

	/// Move the currently stored object
	inline static void move(size_t typeIndex, void* oldData, void* newData)
	{
		if (typeIndex == helperIndex)
			new (newData) T{std::move(*reinterpret_cast<T*>(oldData))};
		else
			VariantHelper<Ts...>::move(typeIndex, oldData, newData);
	}

	/// Call a visitor on the currently stored object
	template<typename Visitor, typename Variant>
	inline static void visit(Visitor&& visitor, Variant& variant)
	{
		if (variant.typeIndex == helperIndex)
			visitor(*reinterpret_cast<T*>(&variant.data));
		else
			VariantHelper<Ts...>::visit(visitor, variant);
	}

	/// Call a visitor on the currently stored object
	template<typename Visitor, typename Variant>
	inline static void visit(Visitor&& visitor, const Variant& variant)
	{
		if (variant.typeIndex == helperIndex)
			visitor(*reinterpret_cast<const T*>(&variant.data));
		else
			VariantHelper<Ts...>::visit(visitor, variant);
	}
};

template<>
struct VariantHelper<>
{
	inline static void destruct([[gnu::unused]] size_t typeIndex, [[gnu::unused]] void* data)  {}
	inline static void copy([[gnu::unused]] size_t typeIndex,[[gnu::unused]] const void* oldData, [[gnu::unused]]void* newData) {}
	inline static void move([[gnu::unused]] size_t typeIndex, [[gnu::unused]] void* oldData, [[gnu::unused]] void* newData) {}

	template<typename Visitor, typename Variant>
	inline static void visit([[gnu::unused]] Visitor&& visitor, [[gnu::unused]] const Variant& v) {}
};

}

using detail::TypeIndex;
using detail::FirstType;
using detail::IsOneOf;

template<typename... Types>
Variant<Types...>::Variant()
{
	// Get first type of type parameter list
	using First = typename  FirstType<Types...>::Type;

	// initialize Variant with default-constructed instance of first type in parameter pack

	setType<First>();
	// construct new First in data with placement-new
	new (&data) First();
}

template<typename... Types>
template<typename T, typename >
Variant<Types...>::Variant(T&& element)
{
	// If a non-const lvalue reference is passed to this function,
	// T will be deduced as reference type. Thus remove_reference_t
	// must be applied to T.
	using Type = std::remove_reference_t<T>;

	setType<Type>();

	// construct new T in data with placement-new
	// If element references an lvalue, T will be copy-constructed.
	// If element references an rvalue, T will be move-constructed.
	new (&data) Type(std::forward<T>(element));
}

template<typename... Types>
Variant<Types...>::~Variant()
{
	destructElement();
}

template<typename... Types>
Variant<Types...>::Variant(const Variant<Types...>& other)
{
	Helper::copy(other.typeIndex, &other.data, &data);
	typeIndex = other.typeIndex;
}

template<typename... Types>
Variant<Types...>& Variant<Types...>::operator=(const Variant<Types...>& other)
{
	if(this != &other) {
		// TODO: optimization: use copy assignment if both variants hold the same type
		destructElement();
		Helper::copy(other.typeIndex, &other.data, &data);
		typeIndex = other.typeIndex;
	}
	return *this;
}

template<typename... Types>
Variant<Types...>::Variant(Variant<Types...>&& other)
{
	Helper::move(other.typeIndex, &other.data, &data);
	typeIndex = other.typeIndex;
}

template<typename... Types>
Variant<Types...>& Variant<Types...>::operator=(Variant<Types...>&& other)
{
	if(this != &other) {
		// TODO: optimization: use move-assignment if both variants hold the same type
		destructElement();
		Helper::move(other.typeIndex, &other.data, &data);
		typeIndex = other.typeIndex;
	}

	return *this;
}

template<typename... Types>
template<typename T, typename>
T& Variant<Types...>::operator=(T&& element)
{
	// If a non-const lvalue reference is passed to this function,
	// T will be deduced as reference type. Thus remove_reference_t
	// must be applied to T.
	using Type = std::remove_reference_t<T>;

	static_assert(IsOneOf<Type, Types...>::value, "Invalid type");

	// TODO: optimization: use assignment if T is the currently stored type
	// destruct currently stored element
	destructElement();

	setType<Type>();

	// Copy-construct new element, if element references an lvalue or
	// move-construct new element, if element references an rvalue.
	new (&data) Type(std::forward<T>(element));

	return *reinterpret_cast<Type*>(&data);
}

template<typename... Types>
template<typename T, typename... Args>
T& Variant<Types...>::emplace(Args&& ... args)
{
	destructElement();
	setType<T>();

	// construct new T, perfectly forward constructor arguments
	new (&data) T(std::forward<Args>(args)...);

	return *reinterpret_cast<T*>(&data);
}

template<typename... Types>
template<typename T>
T* Variant<Types...>::get()
{
	static_assert(IsOneOf<T, Types...>::value, "Invalid type");

	const size_t indexT = TypeIndex<T, Types...>::value;
	if(indexT == this->typeIndex) {
		return reinterpret_cast<T*>(&data);
	} else {
		return nullptr;
	}
}

template<typename... Types>
template<typename T>
const T* Variant<Types...>::get() const
{
	static_assert(IsOneOf<T, Types...>::value, "Invalid type");

	const size_t indexT = TypeIndex<T, Types...>::value;
	if(indexT == this->typeIndex) {
		return reinterpret_cast<const T*>(&data);
	} else {
		return nullptr;
	}
}

template<typename... Types>
template<typename Visitor>
void Variant<Types...>::applyVisitor(Visitor&& v)
{
	Helper::visit(v, *this);
}

template<typename... Types>
template<typename ConstVisitor>
void Variant<Types...>::applyVisitor(ConstVisitor&& v) const
{
	Helper::visit(v, *this);
}

template<typename... Types>
template<typename T>
void Variant<Types...>::setType()
{
	static_assert(IsOneOf<T, Types...>::value, "Invalid type");

	typeIndex = TypeIndex<T, Types...>::value;
}

template<typename... Types>
void Variant<Types...>::destructElement()
{
	// destruct currently stored element
	Helper::destruct(typeIndex, &data);
}

template<typename... Types>
template<typename T>
constexpr bool Variant<Types...>::isElement()
{
	return IsOneOf<T, Types...>::value;
}

template<typename... Types>
template<typename T>
constexpr size_t Variant<Types...>::getTypeIndex()
{
	static_assert(IsOneOf<T, Types...>::value, "Invalid type");

	return TypeIndex<T, Types...>::value;
}

}

#endif
