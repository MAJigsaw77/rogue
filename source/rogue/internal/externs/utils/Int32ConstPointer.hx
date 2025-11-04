package rogue.internal.externs.utils;

import cpp.Int32;
import cpp.Pointer;
import cpp.RawConstPointer;

extern abstract Int32ConstPointer(RawConstPointer<Int32>) from RawConstPointer<Int32> to RawConstPointer<Int32>
{
	inline function new(ptr:RawConstPointer<Int32>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromValue(value:Int32):Int32ConstPointer
	{
		return new Int32ConstPointer(Pointer.addressOf(value).constRaw);
	}

	@:from
	static inline function fromArray(value:Array<Int32>):Int32ConstPointer
	{
		return new Int32ConstPointer(Pointer.arrayElem(value, 0).constRaw);
	}
}
