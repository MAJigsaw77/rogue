package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawPointer;

extern abstract IntPointer(RawPointer<Int>) from RawPointer<Int> to RawPointer<Int>
{
	inline function new(ptr:RawPointer<Int>):Void
	{
		this = ptr;
	}

	@:arrayAccess
	inline function get(index:Int):Int
	{
		return this[index];
	}

	@:arrayAccess
	inline function set(index:Int, value:Int):Void
	{
		this[index] = value;
	}

	@:from
	static inline function fromValue(value:Int):IntPointer
	{
		return new IntPointer(Pointer.addressOf(value).raw);
	}

	@:from
	static inline function fromArray(value:Array<Int>):IntPointer
	{
		return new IntPointer(Pointer.arrayElem(value, 0).raw);
	}
}
