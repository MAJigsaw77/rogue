package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.UInt32;

extern abstract UInt32Pointer(RawPointer<UInt32>) from RawPointer<UInt32> to RawPointer<UInt32>
{
	inline function new(ptr:RawPointer<UInt32>):Void
	{
		this = ptr;
	}

	@:arrayAccess
	inline function get(index:Int):UInt32
	{
		return this[index];
	}

	@:arrayAccess
	inline function set(index:Int, value:UInt32):Void
	{
		this[index] = value;
	}

	@:from
	static inline function fromValue(value:UInt32):UInt32Pointer
	{
		return new UInt32Pointer(Pointer.addressOf(value).raw);
	}

	@:from
	static inline function fromArray(value:Array<UInt32>):UInt32Pointer
	{
		return new UInt32Pointer(Pointer.arrayElem(value, 0).raw);
	}
}
