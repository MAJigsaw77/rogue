package rogue.internal.externs;

import cpp.Int16;
import cpp.UInt8;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.CastCharStar;
import cpp.UInt32;

@:include('stb_vorbis.h')
@:structAccess
@:native('stb_vorbis_alloc')
extern class STB_Vorbis_Alloc
{
	function new():Void;

	var alloc_buffer:CastCharStar;
	var alloc_buffer_length_in_bytes:Int;
}

@:include('stb_vorbis.h')
@:native('stb_vorbis')
extern class STB_Vorbis {}

@:include('stb_vorbis.h')
@:structAccess
@:native('stb_vorbis_info')
extern class STB_Vorbis_Info
{
	function new():Void;

	var sample_rate:UInt32;
	var channels:Int;

	var setup_memory_required:UInt32;
	var setup_temp_memory_required:UInt32;
	var temp_memory_required:UInt32;

	var max_frame_size:Int;
}

@:include('stb_vorbis.h')
@:structAccess
@:native('stb_vorbis_comment')
extern class STB_Vorbis_Comment
{
	function new():Void;

	var vendor:CastCharStar;
	var comment_list_length:Int;
	var comment_list:RawPointer<CastCharStar>;
}

@:include('stb_vorbis.h')
extern class STBVorbis
{
	@:native('stb_vorbis_get_info')
	static function get_info(f:RawPointer<STB_Vorbis>):STB_Vorbis_Info;

	@:native('stb_vorbis_get_comment')
	static function get_comment(f:RawPointer<STB_Vorbis>):STB_Vorbis_Comment;

	@:native('stb_vorbis_get_error')
	static function get_error(f:RawPointer<STB_Vorbis>):Int;

	@:native('stb_vorbis_close')
	static function close(f:RawPointer<STB_Vorbis>):Void;

	@:native('stb_vorbis_open_memory')
	static function open_memory(data:RawConstPointer<UInt8>, len:Int, error:RawPointer<Int>,
		alloc_buffer:RawConstPointer<STB_Vorbis_Alloc>):RawPointer<STB_Vorbis>;

	@:native('stb_vorbis_stream_length_in_samples')
	static function stream_length_in_samples(f:RawPointer<STB_Vorbis>):UInt32;

	@:native('stb_vorbis_stream_length_in_seconds')
	static function stream_length_in_seconds(f:RawPointer<STB_Vorbis>):Single;

	@:native('stb_vorbis_get_samples_float_interleaved')
	static function get_samples_float_interleaved(f:RawPointer<STB_Vorbis>, channels:Int, buffer:RawPointer<Single>, num_floats:Int):Int;

	@:native('stb_vorbis_get_samples_short_interleaved')
	static function get_samples_short_interleaved(f:RawPointer<STB_Vorbis>, channels:Int, buffer:RawPointer<Int16>, num_shorts:Int):Int;
}
