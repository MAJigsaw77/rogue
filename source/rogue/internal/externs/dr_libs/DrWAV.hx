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

typedef DrWAV_Read_Proc = Callable<(pUserData:RawPointer<cpp.Void>, pBufferOut:RawPointer<cpp.Void>, bytesToRead:SizeT)->SizeT>;
typedef DrWAV_Seek_Proc = Callable<(pUserData:RawPointer<cpp.Void>, offset:Int, origin:DrWAV_Seek_Origin)->DrWAV_Bool32>;
typedef DrWAV_Tell_Proc = Callable<(pUserData:RawPointer<cpp.Void>, pCursor:RawPointer<DrWAV_Int64>)->DrWAV_Bool32>;

extern enum abstract DrWAV_Seek_Origin(DrWAV_Seek_Origin_Impl)
{
	@:native('DRWAV_SEEK_SET')
	var DRWAV_SEEK_SET;

	@:native('DRWAV_SEEK_CUR')
	var DRWAV_SEEK_CUR;

	@:native('DRWAV_SEEK_END')
	var DRWAV_SEEK_END;

	@:from
	static public inline function fromInt(i:Int):DrWAV_Seek_Origin
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('dr_wav.h')
@:native('drwav_seek_origin')
private extern class DrWAV_Seek_Origin_Impl {}

@:include('dr_wav.h')
@:native('drwav_int16')
@:scalar
@:coreType
@:notNull
extern abstract DrWAV_Int16 from Int16 to Int16 {}

@:include('dr_wav.h')
@:native('drwav_int32')
@:scalar
@:coreType
@:notNull
extern abstract DrWAV_Int32 from Int32 to Int32 {}

@:include('dr_wav.h')
@:native('drwav_int64')
@:scalar
@:coreType
@:notNull
extern abstract DrWAV_Int64 from Int64 to Int64 {}

@:include('dr_wav.h')
@:native('drwav_uint64')
@:scalar
@:coreType
@:notNull
extern abstract DrWAV_UInt64 from UInt64 to UInt64 {}

@:include('dr_wav.h')
@:native('drwav_bool32')
@:scalar
@:coreType
@:notNull
extern abstract DrWAV_Bool32 from UInt32 to UInt32 {}

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
	@:native('DRWAV_TRUE')
	static var TRUE:Int;

	@:native('DRWAV_FALSE')
	static var FALSE:Int;

	@:native('drwav_open_and_read_pcm_frames_s16')
	static function open_and_read_pcm_frames_s16(
		onRead:DrWAV_Read_Proc,
		onSeek:DrWAV_Seek_Proc,
		onTell:DrWAV_Tell_Proc,
		pUserData:RawPointer<cpp.Void>,
		channelsOut:RawPointer<UInt32>,
		sampleRateOut:RawPointer<UInt32>,
		totalFrameCountOut:RawPointer<DrWAV_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrWAV_Allocation_Callbacks>
	):RawPointer<DrWAV_Int16>;

	@:native('drwav_open_and_read_pcm_frames_f32')
	static function open_and_read_pcm_frames_f32(
		onRead:DrWAV_Read_Proc,
		onSeek:DrWAV_Seek_Proc,
		onTell:DrWAV_Tell_Proc,
		pUserData:RawPointer<cpp.Void>,
		channelsOut:RawPointer<UInt32>,
		sampleRateOut:RawPointer<UInt32>,
		totalFrameCountOut:RawPointer<DrWAV_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrWAV_Allocation_Callbacks>
	):RawPointer<Single>;

	@:native('drwav_open_and_read_pcm_frames_s32')
	static function open_and_read_pcm_frames_s32(
		onRead:DrWAV_Read_Proc,
		onSeek:DrWAV_Seek_Proc,
		onTell:DrWAV_Tell_Proc,
		pUserData:RawPointer<cpp.Void>,
		channelsOut:RawPointer<UInt32>,
		sampleRateOut:RawPointer<UInt32>,
		totalFrameCountOut:RawPointer<DrWAV_UInt64>,
		pAllocationCallbacks:RawConstPointer<DrWAV_Allocation_Callbacks>
	):RawPointer<DrWAV_Int32>;


	@:native('drwav_free')
	static function free(p:RawPointer<cpp.Void>, pAllocationCallbacks:RawConstPointer<DrWAV_Allocation_Callbacks>):Void;
}
