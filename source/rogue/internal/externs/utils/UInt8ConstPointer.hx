package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawConstPointer;
import cpp.UInt8;

import haxe.io.ArrayBufferView;
import haxe.io.Bytes;

extern abstract UInt8ConstPointer(RawConstPointer<UInt8>) from RawConstPointer<UInt8> to RawConstPointer<UInt8>
{
	inline function new(ptr:RawConstPointer<UInt8>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromValue(value:UInt8):UInt8ConstPointer
	{
		return new UInt8ConstPointer(Pointer.addressOf(value).constRaw);
	}

	@:from
	static inline function fromBytes(value:Bytes):UInt8ConstPointer
	{
		return new UInt8ConstPointer(Pointer.arrayElem(value.getData(), 0).constRaw);
	}

	@:from
	static inline function fromArrayBufferView(value:ArrayBufferView):UInt8ConstPointer
	{
		return new UInt8ConstPointer(Pointer.arrayElem(value.buffer.getData(), value.byteOffset).constRaw);
	}
}
