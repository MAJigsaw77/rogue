package rogue.internal.externs.utils;

import cpp.Int8;
import cpp.Pointer;
import cpp.RawPointer;

extern abstract Int8Pointer(RawPointer<Int8>) from RawPointer<Int8> to RawPointer<Int8>
{
	inline function new(ptr:RawPointer<Int8>):Void
	{
		this = ptr;
	}

	@:arrayAccess
	inline function get(index:Int):Int8
	{
		return this[index];
	}

	@:arrayAccess
	inline function set(index:Int, value:Int8):Void
	{
		this[index] = value;
	}

	@:from
	static inline function fromValue(value:Int8):Int8Pointer
	{
		return new Int8Pointer(Pointer.addressOf(value).raw);
	}

	@:from
	static inline function fromArray(value:Array<Int8>):Int8Pointer
	{
		return new Int8Pointer(Pointer.arrayElem(value, 0).raw);
	}
}
