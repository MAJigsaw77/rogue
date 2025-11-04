package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawConstPointer;

extern abstract BoolConstPointer(RawConstPointer<Bool>) from RawConstPointer<Bool> to RawConstPointer<Bool>
{
	inline function new(ptr:RawConstPointer<Bool>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromValue(value:Bool):BoolConstPointer
	{
		return new BoolConstPointer(Pointer.addressOf(value).constRaw);
	}

	@:from
	static inline function fromArray(value:Array<Bool>):BoolConstPointer
	{
		return new BoolConstPointer(Pointer.arrayElem(value, 0).constRaw);
	}
}
