package rogue.internal.externs.dr_libs;

import cpp.Callable;
import cpp.Float32;
import cpp.Int16;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.SizeT;
import cpp.UInt32;
import cpp.UInt64;

@:include('dr_wav.h')
@:native('drwav_int16')
@:scalar
@:coreType
@:notNull
extern abstract DrWAV_Int16 from Int16 to Int16 {}

@:include('dr_wav.h')
@:native('drwav_uint64')
@:scalar
@:coreType
@:notNull
extern abstract DrWAV_UInt64 from UInt64 to UInt64 {}

@:include('dr_wav.h')
@:unreflective
@:structAccess
@:native('drwav_allocation_callbacks')
extern class DrWAV_Allocation_Callbacks
{
	function new():Void;

	var pUserData:RawPointer<cpp.Void>;
	var onMalloc:Callable<(sz:SizeT, pUserData:RawPointer<cpp.Void>) -> RawPointer<cpp.Void>>;
	var onRealloc:Callable<(p:RawPointer<cpp.Void>, sz:SizeT, pUserData:RawPointer<cpp.Void>) -> RawPointer<cpp.Void>>;
	var onFree:Callable<(sz:SizeT, pUserData:RawPointer<cpp.Void>) -> Void>;
}

@:include('dr_wav.h')
extern class DrWAV
{
	@:native('drwav_open_memory_and_read_pcm_frames_s16')
	static function open_memory_and_read_pcm_frames_s16(data:RawConstPointer<cpp.Void>, dataSize:SizeT,
		channelsOut:RawPointer<UInt32>, sampleRateOut:RawPointer<UInt32>, totalFrameCountOut:RawPointer<DrWAV_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrWAV_Allocation_Callbacks>):RawPointer<DrWAV_Int16>;

	@:native('drwav_open_memory_and_read_pcm_frames_f32')
	static function open_memory_and_read_pcm_frames_f32(data:RawConstPointer<cpp.Void>, dataSize:SizeT,
		channelsOut:RawPointer<UInt32>, sampleRateOut:RawPointer<UInt32>, totalFrameCountOut:RawPointer<DrWAV_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrWAV_Allocation_Callbacks>):RawPointer<Float32>;

	@:native('drwav_free')
	static function free(p:RawPointer<cpp.Void>, pAllocationCallbacks:RawConstPointer<DrWAV_Allocation_Callbacks>):Void;
}
