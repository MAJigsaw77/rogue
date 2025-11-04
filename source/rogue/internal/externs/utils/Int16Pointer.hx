package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.Int16;
import cpp.RawPointer;

extern abstract Int16Pointer(RawPointer<Int16>) from RawPointer<Int16> to RawPointer<Int16>
{
	inline function new(ptr:RawPointer<Int16>):Void
	{
		this = ptr;
	}

	@:arrayAccess
	inline function get(index:Int):Int16
	{
		return this[index];
	}

	@:arrayAccess
	inline function set(index:Int, value:Int16):Void
	{
		this[index] = value;
	}

	@:from
	static inline function fromValue(value:Int16):Int16Pointer
	{
		return new Int16Pointer(Pointer.addressOf(value).raw);
	}

	@:from
	static inline function fromArray(value:Array<Int16>):Int16Pointer
	{
		return new Int16Pointer(Pointer.arrayElem(value, 0).raw);
	}
}
