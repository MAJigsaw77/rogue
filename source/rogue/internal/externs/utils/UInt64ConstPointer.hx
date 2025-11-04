package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawConstPointer;
import cpp.UInt64;

extern abstract UInt64ConstPointer(RawConstPointer<UInt64>) from RawConstPointer<UInt64> to RawConstPointer<UInt64>
{
	inline function new(ptr:RawConstPointer<UInt64>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromValue(value:UInt64):UInt64ConstPointer
	{
		return new UInt64ConstPointer(Pointer.addressOf(value).constRaw);
	}

	@:from
	static inline function fromArray(value:Array<UInt64>):UInt64ConstPointer
	{
		return new UInt64ConstPointer(Pointer.arrayElem(value, 0).constRaw);
	}
}
