package rogue.internal.externs.dr_libs;

import cpp.Int16;
import cpp.Int32;
import cpp.Int64;
import cpp.UInt64;
import cpp.UInt32;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.SizeT;
import cpp.Callable;

typedef DrFLAC_Read_Proc = Callable<(pUserData:RawPointer<cpp.Void>, pBufferOut:RawPointer<cpp.Void>, bytesToRead:SizeT) -> SizeT>;
typedef DrFLAC_Seek_Proc = Callable<(pUserData:RawPointer<cpp.Void>, offset:Int64, origin:DrFLAC_Seek_Origin) -> DrFLAC_Bool32>;
typedef DrFLAC_Tell_Proc = Callable<(pUserData:RawPointer<cpp.Void>, pCursor:RawPointer<DrFLAC_Int64>) -> DrFLAC_Bool32>;

extern enum abstract DrFLAC_Seek_Origin(DrFLAC_Seek_Origin_Impl)
{
	@:native('DRWAV_SEEK_SET')
	var DRWAV_SEEK_SET;

	@:native('DRWAV_SEEK_CUR')
	var DRWAV_SEEK_CUR;

	@:native('DRWAV_SEEK_END')
	var DRWAV_SEEK_END;

	@:from
	static public inline function fromInt(i:Int):DrFLAC_Seek_Origin
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('dr_flac.h')
@:native('drflac_seek_origin')
private extern class DrFLAC_Seek_Origin_Impl {}

@:include('dr_flac.h')
@:native('drflac_int16')
@:scalar
@:coreType
@:notNull
extern abstract DrFLAC_Int16 from Int16 to Int16 {}

@:include('dr_flac.h')
@:native('drflac_int32')
@:scalar
@:coreType
@:notNull
extern abstract DrFLAC_Int32 from Int32 to Int32 {}

@:include('dr_flac.h')
@:native('drflac_int64')
@:scalar
@:coreType
@:notNull
extern abstract DrFLAC_Int64 from Int64 to Int64 {}

@:include('dr_flac.h')
@:native('drflac_uint64')
@:scalar
@:coreType
@:notNull
extern abstract DrFLAC_UInt64 from UInt64 to UInt64 {}

@:include('dr_flac.h')
@:native('drflac_bool32')
@:scalar
@:coreType
@:notNull
extern abstract DrFLAC_Bool32 from UInt32 to UInt32 {}

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
	@:native('drflac_open_and_read_pcm_frames_s32')
	static function open_and_read_pcm_frames_s32(onRead:DrFLAC_Read_Proc, onSeek:DrFLAC_Seek_Proc, onTell:DrFLAC_Tell_Proc, pUserData:RawPointer<cpp.Void>,
		channelsOut:RawPointer<UInt32>, sampleRateOut:RawPointer<UInt32>, totalPCMFrameCount:RawPointer<DrFLAC_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrFLAC_Allocation_Callbacks>):RawPointer<DrFLAC_Int16>;

	@:native('drflac_open_and_read_pcm_frames_s16')
	static function open_and_read_pcm_frames_s16(onRead:DrFLAC_Read_Proc, onSeek:DrFLAC_Seek_Proc, onTell:DrFLAC_Tell_Proc, pUserData:RawPointer<cpp.Void>,
		channelsOut:RawPointer<UInt32>, sampleRateOut:RawPointer<UInt32>, totalPCMFrameCount:RawPointer<DrFLAC_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrFLAC_Allocation_Callbacks>):RawPointer<DrFLAC_Int16>;

	@:native('drflac_open_and_read_pcm_frames_f32')
	static function open_and_read_pcm_frames_f32(onRead:DrFLAC_Read_Proc, onSeek:DrFLAC_Seek_Proc, onTell:DrFLAC_Tell_Proc, pUserData:RawPointer<cpp.Void>,
		channelsOut:RawPointer<UInt32>, sampleRateOut:RawPointer<UInt32>, totalPCMFrameCount:RawPointer<DrFLAC_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrFLAC_Allocation_Callbacks>):RawPointer<Single>;

	@:native('drflac_free')
	static function free(p:RawPointer<cpp.Void>, pAllocationCallbacks:RawConstPointer<DrFLAC_Allocation_Callbacks>):Void;
}
