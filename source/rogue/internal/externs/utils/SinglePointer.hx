package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawPointer;

extern abstract SinglePointer(RawPointer<Single>) from RawPointer<Single> to RawPointer<Single>
{
	inline function new(ptr:RawPointer<Single>):Void
	{
		this = ptr;
	}

	@:arrayAccess
	inline function get(index:Int):Single
	{
		return this[index];
	}

	@:arrayAccess
	inline function set(index:Int, value:Single):Void
	{
		this[index] = value;
	}

	@:from
	static inline function fromValue(value:Single):SinglePointer
	{
		return new SinglePointer(Pointer.addressOf(value).raw);
	}

	@:from
	static inline function fromArray(value:Array<Single>):SinglePointer
	{
		return new SinglePointer(Pointer.arrayElem(value, 0).raw);
	}
}
