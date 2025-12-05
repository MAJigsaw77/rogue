package rogue.internal.externs.dr_libs;

import cpp.Callable;
import cpp.Int16;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.SizeT;
import cpp.UInt32;
import cpp.UInt64;

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
@:native('drmp3_uint64')
@:scalar
@:coreType
@:notNull
extern abstract DrMP3_UInt64 from UInt64 to UInt64 {}

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
	@:native('drmp3_open_memory_and_read_pcm_frames_f32')
	static function open_memory_and_read_pcm_frames_f32(data:RawConstPointer<cpp.Void>, dataSize:SizeT,
		pConfig:RawPointer<DrMP3_Config>, totalPCMFrameCount:RawPointer<DrMP3_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrMP3_Allocation_Callbacks>):RawPointer<Single>;

	@:native('drmp3_open_memory_and_read_pcm_frames_s16')
	static function open_memory_and_read_pcm_frames_s16(data:RawConstPointer<cpp.Void>, dataSize:SizeT,
		pConfig:RawPointer<DrMP3_Config>, totalPCMFrameCount:RawPointer<DrMP3_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrMP3_Allocation_Callbacks>):RawPointer<DrMP3_Int16>;

	@:native('drmp3_free')
	static function free(p:RawPointer<cpp.Void>, pAllocationCallbacks:RawConstPointer<DrMP3_Allocation_Callbacks>):Void;
}
