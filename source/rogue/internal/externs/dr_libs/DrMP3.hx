package rogue.internal.externs.dr_libs;

import cpp.Callable;
import cpp.Int16;
import cpp.Int64;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.SizeT;
import cpp.UInt32;
import cpp.UInt64;

typedef DrMP3_Read_Proc = Callable<(pUserData:RawPointer<cpp.Void>, pBufferOut:RawPointer<cpp.Void>, bytesToRead:SizeT) -> SizeT>;
typedef DrMP3_Seek_Proc = Callable<(pUserData:RawPointer<cpp.Void>, offset:Int64, origin:DrMP3_Seek_Origin) -> DrMP3_Bool32>;
typedef DrMP3_Tell_Proc = Callable<(pUserData:RawPointer<cpp.Void>, pCursor:RawPointer<DrMP3_Int64>) -> DrMP3_Bool32>;

extern enum abstract DrMP3_Seek_Origin(DrMP3_Seek_Origin_Impl)
{
	@:native('DRMP3_SEEK_SET')
	var DRMP3_SEEK_SET;

	@:native('DRMP3_SEEK_CUR')
	var DRMP3_SEEK_CUR;

	@:native('DRMP3_SEEK_END')
	var DRMP3_SEEK_END;

	@:from
	static public inline function fromInt(i:Int):DrMP3_Seek_Origin
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('dr_wav.h')
@:native('drmp3_seek_origin')
private extern class DrMP3_Seek_Origin_Impl {}

@:include('dr_mp3.h')
@:native('drmp3_int16')
@:scalar
@:coreType
@:notNull
extern abstract DrMP3_Int16 from Int16 to Int16 {}

@:include('dr_mp3.h')
@:native('drmp3_uint32')
@:scalar
@:coreType
@:notNull
extern abstract DrMP3_UInt32 from UInt32 to UInt32 {}

@:include('dr_mp3.h')
@:native('drmp3_int64')
@:scalar
@:coreType
@:notNull
extern abstract DrMP3_Int64 from Int64 to Int64 {}

@:include('dr_mp3.h')
@:native('drmp3_uint64')
@:scalar
@:coreType
@:notNull
extern abstract DrMP3_UInt64 from UInt64 to UInt64 {}

@:include('dr_mp3.h')
@:native('drmp3_bool32')
@:scalar
@:coreType
@:notNull
extern abstract DrMP3_Bool32 from UInt32 to UInt32 {}

@:include('dr_mp3.h')
@:unreflective
@:structAccess
@:native('drmp3_allocation_callbacks')
extern class DrMP3_Allocation_Callbacks
{
	function new():Void;
	var pUserData:RawPointer<cpp.Void>;
	var onMalloc:Callable<(sz:SizeT, pUserData:RawPointer<cpp.Void>) -> RawPointer<cpp.Void>>;
	var onRealloc:Callable<(p:RawPointer<cpp.Void>, sz:SizeT, pUserData:RawPointer<cpp.Void>) -> RawPointer<cpp.Void>>;
	var onFree:Callable<(p:RawPointer<cpp.Void>, pUserData:RawPointer<cpp.Void>) -> Void>;
}

@:include('dr_mp3.h')
@:unreflective
@:structAccess
@:native('drmp3_config')
extern class DrMP3_Config
{
	function new():Void;

	var channels:DrMP3_UInt32;
	var sampleRate:DrMP3_UInt32;
}

@:include('dr_mp3.h')
extern class DrMP3
{
	@:native('drmp3_open_and_read_pcm_frames_f32')
	static function open_and_read_pcm_frames_f32(onRead:DrMP3_Read_Proc, onSeek:DrMP3_Seek_Proc, onTell:DrMP3_Tell_Proc, pUserData:RawPointer<cpp.Void>,
		pConfig:RawPointer<DrMP3_Config>, totalPCMFrameCount:RawPointer<DrMP3_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrMP3_Allocation_Callbacks>):RawPointer<Single>;

	@:native('drmp3_open_and_read_pcm_frames_s16')
	static function open_and_read_pcm_frames_s16(onRead:DrMP3_Read_Proc, onSeek:DrMP3_Seek_Proc, onTell:DrMP3_Tell_Proc, pUserData:RawPointer<cpp.Void>,
		pConfig:RawPointer<DrMP3_Config>, totalPCMFrameCount:RawPointer<DrMP3_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrMP3_Allocation_Callbacks>):RawPointer<DrMP3_Int16>;

	@:native('drmp3_free')
	static function free(p:RawPointer<cpp.Void>, pAllocationCallbacks:RawConstPointer<DrMP3_Allocation_Callbacks>):Void;
}
