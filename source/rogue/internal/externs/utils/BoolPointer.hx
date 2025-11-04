package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawPointer;

extern abstract BoolPointer(RawPointer<Bool>) from RawPointer<Bool> to RawPointer<Bool>
{
	inline function new(ptr:BoolPointer):Void
	{
		this = ptr;
	}

	@:arrayAccess
	inline function get(index:Int):Bool
	{
		return this[index];
	}

	@:arrayAccess
	inline function set(index:Int, value:Bool):Void
	{
		this[index] = value;
	}

	@:from
	static inline function fromValue(value:Bool):BoolPointer
	{
		return new BoolPointer(Pointer.addressOf(value).raw);
	}

	@:from
	static inline function fromArray(value:Array<Bool>):BoolPointer
	{
		return new BoolPointer(Pointer.arrayElem(value, 0).raw);
	}
}
