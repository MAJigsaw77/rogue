package rogue.internal.externs.utils;

import cpp.Int64;
import cpp.Pointer;
import cpp.RawConstPointer;

extern abstract Int64ConstPointer(RawConstPointer<Int64>) from RawConstPointer<Int64> to RawConstPointer<Int64>
{
	inline function new(ptr:RawConstPointer<Int64>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromValue(value:Int64):Int64ConstPointer
	{
		return new Int64ConstPointer(Pointer.addressOf(value).constRaw);
	}

	@:from
	static inline function fromArray(value:Array<Int64>):Int64ConstPointer
	{
		return new Int64ConstPointer(Pointer.arrayElem(value, 0).constRaw);
	}
}
