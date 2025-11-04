package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.UInt16;

extern abstract UInt16Pointer(RawPointer<UInt16>) from RawPointer<UInt16> to RawPointer<UInt16>
{
	inline function new(ptr:RawPointer<UInt16>):Void
	{
		this = ptr;
	}

	@:arrayAccess
	inline function get(index:Int):UInt16
	{
		return this[index];
	}

	@:arrayAccess
	inline function set(index:Int, value:UInt16):Void
	{
		this[index] = value;
	}

	@:from
	static inline function fromValue(value:UInt16):UInt16Pointer
	{
		return new UInt16Pointer(Pointer.addressOf(value).raw);
	}

	@:from
	static inline function fromArray(value:Array<UInt16>):UInt16Pointer
	{
		return new UInt16Pointer(Pointer.arrayElem(value, 0).raw);
	}
}
