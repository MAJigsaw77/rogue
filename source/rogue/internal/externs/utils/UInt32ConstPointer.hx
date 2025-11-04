package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawConstPointer;
import cpp.UInt32;

extern abstract UInt32ConstPointer(RawConstPointer<UInt32>) from RawConstPointer<UInt32> to RawConstPointer<UInt32>
{
	inline function new(ptr:RawConstPointer<UInt32>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromValue(value:UInt32):UInt32ConstPointer
	{
		return new UInt32ConstPointer(Pointer.addressOf(value).constRaw);
	}

	@:from
	static inline function fromArray(value:Array<UInt32>):UInt32ConstPointer
	{
		return new UInt32ConstPointer(Pointer.arrayElem(value, 0).constRaw);
	}
}
