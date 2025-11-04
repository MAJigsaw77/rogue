package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawConstPointer;
import cpp.UInt16;

extern abstract UInt16ConstPointer(RawConstPointer<UInt16>) from RawConstPointer<UInt16> to RawConstPointer<UInt16>
{
	inline function new(ptr:RawConstPointer<UInt16>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromValue(value:UInt16):UInt16ConstPointer
	{
		return new UInt16ConstPointer(Pointer.addressOf(value).constRaw);
	}

	@:from
	static inline function fromArray(value:Array<UInt16>):UInt16ConstPointer
	{
		return new UInt16ConstPointer(Pointer.arrayElem(value, 0).constRaw);
	}
}
