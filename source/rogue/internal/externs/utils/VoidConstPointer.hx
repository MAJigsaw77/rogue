package rogue.internal.externs.utils;

import haxe.extern.AsVar;
import cpp.Pointer;
import cpp.RawConstPointer;

import haxe.io.ArrayBufferView;
import haxe.io.Bytes;

extern abstract VoidConstPointer(RawConstPointer<cpp.Void>) from RawConstPointer<cpp.Void> to RawConstPointer<cpp.Void>
{
	inline function new(ptr:RawConstPointer<cpp.Void>):Void
	{
		this = ptr;
	}

    @:from
    overload static inline function fromValue<T>(value:AsVar<Array<T>>):VoidConstPointer
    {
        return new VoidConstPointer(cast Pointer.arrayElem(value, 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Bytes>):VoidConstPointer
    {
        return new VoidConstPointer(cast Pointer.arrayElem(value.getData(), 0).constRaw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<ArrayBufferView>):VoidConstPointer
    {
        return new VoidConstPointer(cast Pointer.arrayElem(value.buffer.getData(), value.byteOffset).constRaw);
    }

    @:from
    overload static inline function fromValue<T>(value:AsVar<T>):VoidConstPointer
    {
        return new VoidConstPointer(cast value);
    }
}
