package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.Int8;
import cpp.RawConstPointer;

extern abstract Int8ConstPointer(RawConstPointer<Int8>) from RawConstPointer<Int8> to RawConstPointer<Int8>
{
	inline function new(ptr:RawConstPointer<Int8>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromValue(value:Int8):Int8ConstPointer
	{
		return new Int8ConstPointer(Pointer.addressOf(value).constRaw);
	}

	@:from
	static inline function fromArray(value:Array<Int8>):Int8ConstPointer
	{
		return new Int8ConstPointer(Pointer.arrayElem(value, 0).constRaw);
	}
}
