package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawConstPointer;

extern abstract IntConstPointer(RawConstPointer<Int>) from RawConstPointer<Int> to RawConstPointer<Int>
{
	inline function new(ptr:RawConstPointer<Int>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromValue(value:Int):IntConstPointer
	{
		return new IntConstPointer(Pointer.addressOf(value).constRaw);
	}

	@:from
	static inline function fromArray(value:Array<Int>):IntConstPointer
	{
		return new IntConstPointer(Pointer.arrayElem(value, 0).constRaw);
	}
}
