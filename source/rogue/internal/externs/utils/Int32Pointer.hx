package rogue.internal.externs.utils;

import cpp.Int32;
import cpp.Pointer;
import cpp.RawPointer;

extern abstract Int32Pointer(RawPointer<Int32>) from RawPointer<Int32> to RawPointer<Int32>
{
	inline function new(ptr:RawPointer<Int32>):Void
	{
		this = ptr;
	}

	@:arrayAccess
	inline function get(index:Int):Int32
	{
		return this[index];
	}

	@:arrayAccess
	inline function set(index:Int, value:Int32):Void
	{
		this[index] = value;
	}

	@:from
	static inline function fromValue(value:Int32):Int32Pointer
	{
		return new Int32Pointer(Pointer.addressOf(value).raw);
	}

	@:from
	static inline function fromArray(value:Array<Int32>):Int32Pointer
	{
		return new Int32Pointer(Pointer.arrayElem(value, 0).raw);
	}
}
