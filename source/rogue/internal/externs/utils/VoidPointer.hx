package rogue.internal.externs.utils;

import haxe.extern.AsVar;
import cpp.Pointer;
import cpp.RawPointer;

import haxe.io.ArrayBufferView;
import haxe.io.Bytes;

extern abstract VoidPointer(RawPointer<cpp.Void>) from RawPointer<cpp.Void> to RawPointer<cpp.Void>
{
	inline function new(ptr:RawPointer<cpp.Void>):Void
	{
		this = ptr;
	}

    @:from
    overload static inline function fromValue<T>(value:AsVar<Array<T>>):VoidPointer
    {
        return new VoidPointer(cast Pointer.arrayElem(value, 0).raw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<Bytes>):VoidPointer
    {
        return new VoidPointer(cast Pointer.arrayElem(value.getData(), 0).raw);
    }

    @:from
    overload static inline function fromValue(value:AsVar<ArrayBufferView>):VoidPointer
    {
        return new VoidPointer(cast Pointer.arrayElem(value.buffer.getData(), value.byteOffset).raw);
    }

    @:from
    overload static inline function fromValue<T>(value:AsVar<T>):VoidPointer
    {
        return new VoidPointer(cast value);
    }
}
