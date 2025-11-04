package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawConstPointer;

extern abstract SingleConstPointer(RawConstPointer<Single>) from RawConstPointer<Single> to RawConstPointer<Single>
{
	inline function new(ptr:RawConstPointer<Single>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromValue(value:Single):SingleConstPointer
	{
		return new SingleConstPointer(Pointer.addressOf(value).constRaw);
	}

	@:from
	static inline function fromArray(value:Array<Single>):SingleConstPointer
	{
		return new SingleConstPointer(Pointer.arrayElem(value, 0).constRaw);
	}
}
