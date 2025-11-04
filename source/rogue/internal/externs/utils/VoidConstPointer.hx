package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawConstPointer;
import cpp.Void;

import haxe.io.ArrayBufferView;
import haxe.io.Bytes;

extern abstract VoidConstPointer(RawConstPointer<Void>) from RawConstPointer<Void> to RawConstPointer<Void>
{
	inline function new(ptr:RawConstPointer<Void>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromBytes(value:Bytes):VoidConstPointer
	{
		return new VoidConstPointer(cast Pointer.arrayElem(value.getData(), 0).constRaw);
	}

	@:from
	static inline function fromArrayBufferView(value:ArrayBufferView):VoidConstPointer
	{
		return new VoidConstPointer(cast Pointer.arrayElem(value.buffer.getData(), value.byteOffset).constRaw);
	}
}
