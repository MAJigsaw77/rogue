package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.Int16;
import cpp.RawConstPointer;

extern abstract Int16ConstPointer(RawConstPointer<Int16>) from RawConstPointer<Int16> to RawConstPointer<Int16>
{
	inline function new(ptr:RawConstPointer<Int16>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromValue(value:Int16):Int16ConstPointer
	{
		return new Int16ConstPointer(Pointer.addressOf(value).constRaw);
	}

	@:from
	static inline function fromArray(value:Array<Int16>):Int16ConstPointer
	{
		return new Int16ConstPointer(Pointer.arrayElem(value, 0).constRaw);
	}
}
