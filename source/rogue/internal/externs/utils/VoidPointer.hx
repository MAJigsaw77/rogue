package rogue.internal.externs.utils;

import cpp.Pointer;
import cpp.RawPointer;
import cpp.Void;

import haxe.io.ArrayBufferView;
import haxe.io.Bytes;

extern abstract VoidPointer(RawPointer<Void>) from RawPointer<Void> to RawPointer<Void>
{
	inline function new(ptr:RawPointer<Void>):Void
	{
		this = ptr;
	}

	@:from
	static inline function fromBytes(value:Bytes):VoidPointer
	{
		return new VoidPointer(cast Pointer.arrayElem(value.getData(), 0).raw);
	}

	@:from
	static inline function fromArrayBufferView(value:ArrayBufferView):VoidPointer
	{
		return new VoidPointer(cast Pointer.arrayElem(value.buffer.getData(), value.byteOffset).raw);
	}
}
