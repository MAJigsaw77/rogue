package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.UInt8;

import haxe.io.ArrayBufferView;
import haxe.io.Bytes;

extern abstract UInt8Pointer(RawPointer<UInt8>) from RawPointer<UInt8> to RawPointer<UInt8>
{
	inline function new(ptr:RawPointer<UInt8>):Void
	{
		this = ptr;
	}

	@:arrayAccess
	inline function get(index:Int):UInt8
	{
		return this[index];
	}

	@:arrayAccess
	inline function set(index:Int, value:UInt8):Void
	{
		this[index] = value;
	}

	@:from
	static inline function fromValue(value:UInt8):UInt8Pointer
	{
		return new UInt8Pointer(Pointer.addressOf(value).raw);
	}

	@:from
	static inline function fromBytes(value:Bytes):UInt8Pointer
	{
		return new UInt8Pointer(Pointer.arrayElem(value.getData(), 0).raw);
	}

	@:from
	static inline function fromArrayBufferView(value:ArrayBufferView):UInt8Pointer
	{
		return new UInt8Pointer(Pointer.arrayElem(value.buffer.getData(), value.byteOffset).raw);
	}
}
