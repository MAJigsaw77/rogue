package rogue.internal.externs.dr_libs;

import cpp.Callable;
import cpp.Int16;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.SizeT;
import cpp.UInt32;
import cpp.UInt64;
import cpp.Float32;

@:include('dr_flac.h')
@:native('drflac_int16')
@:scalar
@:coreType
@:notNull
extern abstract DrFLAC_Int16 from Int16 to Int16 {}

@:include('dr_flac.h')
@:native('drflac_uint64')
@:scalar
@:coreType
@:notNull
extern abstract DrFLAC_UInt64 from UInt64 to UInt64 {}

@:include('dr_flac.h')
@:unreflective
@:structAccess
@:native('drflac_allocation_callbacks')
extern class DrFLAC_Allocation_Callbacks
{
	function new():Void;
	var pUserData:RawPointer<cpp.Void>;
	var onMalloc:Callable<(sz:SizeT, pUserData:RawPointer<cpp.Void>) -> RawPointer<cpp.Void>>;
	var onRealloc:Callable<(p:RawPointer<cpp.Void>, sz:SizeT, pUserData:RawPointer<cpp.Void>) -> RawPointer<cpp.Void>>;
	var onFree:Callable<(p:RawPointer<cpp.Void>, pUserData:RawPointer<cpp.Void>) -> Void>;
}

@:include('dr_flac.h')
extern class DrFLAC
{
	@:native('drflac_open_memory_and_read_pcm_frames_s16')
	static function open_memory_and_read_pcm_frames_s16(data:RawConstPointer<cpp.Void>, dataSize:SizeT, channelsOut:RawPointer<UInt32>,
		sampleRateOut:RawPointer<UInt32>, totalPCMFrameCount:RawPointer<DrFLAC_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrFLAC_Allocation_Callbacks>):RawPointer<DrFLAC_Int16>;

	@:native('drflac_open_memory_and_read_pcm_frames_f32')
	static function open_memory_and_read_pcm_frames_f32(data:RawConstPointer<cpp.Void>, dataSize:SizeT, channelsOut:RawPointer<UInt32>,
		sampleRateOut:RawPointer<UInt32>, totalPCMFrameCount:RawPointer<DrFLAC_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrFLAC_Allocation_Callbacks>):RawPointer<Float32>;

	@:native('drflac_free')
	static function free(p:RawPointer<cpp.Void>, pAllocationCallbacks:RawConstPointer<DrFLAC_Allocation_Callbacks>):Void;
}
