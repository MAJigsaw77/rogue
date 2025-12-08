package rogue.media.buffer;

import cpp.Callable;
import cpp.Float32;
import cpp.Int16;
import cpp.Pointer;
import cpp.RawPointer;
import cpp.SizeT;
import cpp.Stdlib;
import cpp.UInt32;
import cpp.UInt64;
import cpp.vm.Gc;

import rogue.internal.externs.SDL;
import rogue.internal.externs.STBVorbis;
import rogue.internal.externs.dr_libs.DrFLAC;
import rogue.internal.externs.dr_libs.DrMP3;
import rogue.internal.externs.dr_libs.DrWAV;
import rogue.internal.externs.openal.AL;

@:nullSafety
class AudioBuffer
{
	public var data(default, null):Null<RawPointer<cpp.Void>>;
	public var size(default, null):SizeT = 0;
	public var format(default, null):Null<AudioSampleFormat>;

	public var sampleRate(default, null):UInt = 0;
	public var channels(default, null):UInt = 0;
	public var totalFrameCount(default, null):UInt64 = 0;

	public function new():Void
	{
		Gc.setFinalizer(this, Callable.fromStaticFunction(finalize));
	}

	@:noCompletion
	@:noDebug
	@:unreflective
	static function finalize(obj:AudioBuffer):Void
	{
		obj.dispose();
	}

	public function decode(path:String, fileFormat:AudioFileFormat, sampleFormat:AudioSampleFormat = Int16):Bool
	{
		final fileSize:SizeT = 0;
		final fileData:RawPointer<cpp.Void> = SDL.LoadFile_IO(SDL.IOFromFile(path, 'rb'), Pointer.addressOf(fileSize).raw, true);

		switch (fileFormat)
		{
			case FLAC:
				final channels:UInt32 = 0;
				final sampleRate:UInt32 = 0;
				final totalFrameCount:DrFLAC_UInt64 = 0;

				switch (sampleFormat)
				{
					case Int16:
						this.data = untyped DrFLAC.open_memory_and_read_pcm_frames_s16(fileData, fileSize, Pointer.addressOf(channels).raw,
							Pointer.addressOf(sampleRate).raw, Pointer.addressOf(totalFrameCount).raw, untyped NULL);
					case Float32:
						this.data = untyped DrFLAC.open_memory_and_read_pcm_frames_f32(fileData, fileSize, Pointer.addressOf(channels).raw,
							Pointer.addressOf(sampleRate).raw, Pointer.addressOf(totalFrameCount).raw, untyped NULL);
				}

				this.sampleRate = sampleRate;
				this.channels = channels;
				this.totalFrameCount = totalFrameCount;
			case MP3:
				final config:DrMP3_Config = new DrMP3_Config();
				final totalFrameCount:DrMP3_UInt64 = 0;

				switch (sampleFormat)
				{
					case Int16:
						this.data = untyped DrMP3.open_memory_and_read_pcm_frames_s16(fileData, fileSize, Pointer.addressOf(config).raw,
							Pointer.addressOf(totalFrameCount).raw, untyped NULL);
					case Float32:
						this.data = untyped DrMP3.open_memory_and_read_pcm_frames_f32(fileData, fileSize, Pointer.addressOf(config).raw,
							Pointer.addressOf(totalFrameCount).raw, untyped NULL);
				}

				this.sampleRate = config.sampleRate;
				this.channels = config.channels;
				this.totalFrameCount = totalFrameCount;
			case OGG:
				final error:Int = 0;
				final vorbis:RawPointer<STB_Vorbis> = STBVorbis.open_memory(cast fileData, fileSize, Pointer.addressOf(error).raw, untyped NULL);

				if (vorbis != null)
				{
					final info:STB_Vorbis_Info = STBVorbis.get_info(vorbis);
					final totalFrameCount:UInt32 = STBVorbis.stream_length_in_samples(vorbis);

					switch (sampleFormat)
					{
						case Int16:
							final num_shorts:Int = totalFrameCount * info.channels;

							this.data = Stdlib.nativeMalloc(num_shorts * Stdlib.sizeof(Int16));

							STBVorbis.get_samples_short_interleaved(vorbis, info.channels, cast data, num_shorts);
						case Float32:
							final num_floats:Int = totalFrameCount * info.channels;

							this.data = Stdlib.nativeMalloc(num_floats * Stdlib.sizeof(Float32));

							STBVorbis.get_samples_float_interleaved(vorbis, info.channels, cast data, num_floats);
					}

					STBVorbis.close(vorbis);

					this.sampleRate = info.sample_rate;
					this.channels = info.channels;
					this.totalFrameCount = totalFrameCount;
				}
			case WAV:
				var channels:UInt32 = 0;
				var sampleRate:UInt32 = 0;
				var totalFrameCount:DrWAV_UInt64 = 0;

				switch (sampleFormat)
				{
					case Int16:
						this.data = untyped DrWAV.open_memory_and_read_pcm_frames_s16(fileData, fileSize, Pointer.addressOf(channels).raw,
							Pointer.addressOf(sampleRate).raw, Pointer.addressOf(totalFrameCount).raw, untyped NULL);
					case Float32:
						this.data = untyped DrWAV.open_memory_and_read_pcm_frames_f32(fileData, fileSize, Pointer.addressOf(channels).raw,
							Pointer.addressOf(sampleRate).raw, Pointer.addressOf(totalFrameCount).raw, untyped NULL);
				}

				this.sampleRate = sampleRate;
				this.channels = channels;
				this.totalFrameCount = totalFrameCount;
		}

		switch (sampleFormat)
		{
			case Int16:
				this.size = untyped __cpp__('{0} * {1} * {2}', totalFrameCount, channels, Stdlib.sizeof(Int16));
			case Float32:
				this.size = untyped __cpp__('{0} * {1} * {2}', totalFrameCount, channels, Stdlib.sizeof(Float32));
		}

		format = sampleFormat;

		if (fileData != null)
			SDL.free(untyped fileData);

		return (data != null);
	}

	public function dispose():Void
	{
		if (data != null)
		{
			Stdlib.nativeFree(untyped data);
			data = null;
		}
	}

	private function createALBuffer():ALuint
	{
		final buffer:ALuint = 0;

		AL.genBuffers(1, Pointer.addressOf(buffer).raw);

		if (data != null && format != null)
		{
			var bufferFormat:ALenum = 0;

			switch (format)
			{
				case Int16:
					bufferFormat = (channels == 1) ? AL.FORMAT_MONO16 : AL.FORMAT_STEREO16;
				case Float32:
					bufferFormat = (channels == 1) ? AL.FORMAT_MONO_FLOAT32 : AL.FORMAT_STEREO_FLOAT32;
			}

			AL.bufferData(buffer, bufferFormat, cast data, size, sampleRate);
		}

		return buffer;
	}
}
