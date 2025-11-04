package rogue.internal.externs.utils;

import cpp.Int64;
import cpp.Pointer;
import cpp.RawPointer;

extern abstract Int64Pointer(RawPointer<Int64>) from RawPointer<Int64> to RawPointer<Int64>
{
	inline function new(ptr:RawPointer<Int64>):Void
	{
		this = ptr;
	}

	@:arrayAccess
	inline function get(index:Int):Int64
	{
		return this[index];
	}

	@:arrayAccess
	inline function set(index:Int, value:Int64):Void
	{
		this[index] = value;
	}

	@:from
	static inline function fromValue(value:Int64):Int64Pointer
	{
		return new Int64Pointer(Pointer.addressOf(value).raw);
	}

	@:from
	static inline function fromArray(value:Array<Int64>):Int64Pointer
	{
		return new Int64Pointer(Pointer.arrayElem(value, 0).raw);
	}
}
