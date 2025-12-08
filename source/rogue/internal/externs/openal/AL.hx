package rogue.internal.externs.openal;

import cpp.Callable;
import cpp.Char;
import cpp.Float32;
import cpp.Int16;
import cpp.Int64;
import cpp.Int8;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.SizeT;
import cpp.UInt16;
import cpp.UInt32;
import cpp.UInt64;
import cpp.UInt8;

import rogue.internal.externs.openal.ALC;

@:include('AL/al.h')
@:native('ALboolean')
@:scalar
@:coreType
@:notNull
extern abstract ALboolean from Char to Char
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALboolean)');
	}
}

@:include('AL/al.h')
@:native('ALchar')
@:scalar
@:coreType
@:notNull
extern abstract ALchar from Char to Char
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALchar)');
	}
}

extern abstract ConstALcharStar(RawConstPointer<ALchar>) to (RawConstPointer<ALchar>)
{
	inline function new(s:String)
		this = untyped s.__s;

	@:from
	static public inline function fromString(s:String):ConstALcharStar
		return new ConstALcharStar(s);

	@:to extern public inline function toString():String
		return new String(untyped this);

	@:to extern public inline function toPointer():RawConstPointer<ALchar>
		return this;
}

abstract CastALcharStar(RawPointer<ALchar>) to (RawPointer<ALchar>)
{
	inline function new(s:String)
		this = cast untyped s.__s;

	@:from
	static public inline function fromString(s:String):CastALcharStar
		return new CastALcharStar(s);

	@:to extern public inline function toPointer():RawPointer<ALchar>
		return this;
}

@:include('AL/al.h')
@:native('ALbyte')
@:scalar
@:coreType
@:notNull
extern abstract ALbyte from Int8 to Int8
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALbyte)');
	}
}

@:include('AL/al.h')
@:native('ALubyte')
@:scalar
@:coreType
@:notNull
extern abstract ALubyte from UInt8 to UInt8
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALubyte)');
	}
}

@:include('AL/al.h')
@:native('ALshort')
@:scalar
@:coreType
@:notNull
extern abstract ALshort from Int16 to Int16
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALshort)');
	}
}

@:include('AL/al.h')
@:native('ALushort')
@:scalar
@:coreType
@:notNull
extern abstract ALushort from UInt16 to UInt16
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALushort)');
	}
}

@:include('AL/al.h')
@:native('ALint')
@:scalar
@:coreType
@:notNull
extern abstract ALint from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALint)');
	}
}

@:include('AL/al.h')
@:native('ALuint')
@:scalar
@:coreType
@:notNull
extern abstract ALuint from UInt32 to UInt32
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALuint)');
	}
}

@:include('AL/al.h')
@:native('ALsizei')
@:scalar
@:coreType
@:notNull
extern abstract ALsizei from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALsizei)');
	}
}

@:include('AL/al.h')
@:native('ALenum')
@:scalar
@:coreType
@:notNull
extern abstract ALenum from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALenum)');
	}
}

@:include('AL/al.h')
@:native('ALfloat')
@:scalar
@:coreType
@:notNull
extern abstract ALfloat from Float32 to Float32
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALfloat)');
	}
}

@:include('AL/al.h')
@:native('ALdouble')
@:scalar
@:coreType
@:notNull
extern abstract ALdouble from Float to Float
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALdouble)');
	}
}

@:include('AL/al.h')
@:native('ALvoid')
@:scalar
@:coreType
@:notNull
extern abstract ALvoid from cpp.Void to cpp.Void
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALvoid)');
	}
}

@:include('AL/al.h')
@:native('_GUID')
extern class GUID {}

@:include('AL/al.h')
@:native('ALint64SOFT')
@:scalar
@:coreType
@:notNull
extern abstract ALint64SOFT from Int64 to Int64
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALint64SOFT)');
	}
}

@:include('AL/al.h')
@:native('ALuint64SOFT')
@:scalar
@:coreType
@:notNull
extern abstract ALuint64SOFT from UInt64 to UInt64
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALuint64SOFT)');
	}
}

typedef LPALFOLDBACKCALLBACK = Callable<(param:ALenum, size:ALsizei)->Void>;

typedef ALEVENTPROCSOFT = Callable<(eventType:ALenum, object:ALuint, param:ALuint, length:ALsizei, message:ConstALcharStar, userParam:RawPointer<ALvoid>)->Void>;

typedef ALBUFFERCALLBACKTYPESOFT = Callable<(userptr:RawPointer<ALvoid>, sampledata:RawPointer<ALvoid>, numbytes:ALsizei)->ALsizei>;

typedef ALDEBUGPROCEXT = Callable<(source:ALenum, type:ALenum, id:ALuint, severity:ALenum, length:ALsizei, message:ConstALcharStar, userParam:RawPointer<ALvoid>)->Void>;

@:include('AL/al.h')
@:include('AL/alext.h')
extern class AL
{
	@:native('AL_NONE')
	static var NONE:ALuint;

	@:native('AL_FALSE')
	static var FALSE:ALuint;

	@:native('AL_TRUE')
	static var TRUE:ALuint;

	@:native('AL_SOURCE_RELATIVE')
	static var SOURCE_RELATIVE:ALuint;

	@:native('AL_CONE_INNER_ANGLE')
	static var CONE_INNER_ANGLE:ALuint;

	@:native('AL_CONE_OUTER_ANGLE')
	static var CONE_OUTER_ANGLE:ALuint;

	@:native('AL_PITCH')
	static var PITCH:ALuint;

	@:native('AL_POSITION')
	static var POSITION:ALuint;

	@:native('AL_DIRECTION')
	static var DIRECTION:ALuint;

	@:native('AL_VELOCITY')
	static var VELOCITY:ALuint;

	@:native('AL_LOOPING')
	static var LOOPING:ALuint;

	@:native('AL_BUFFER')
	static var BUFFER:ALuint;

	@:native('AL_GAIN')
	static var GAIN:ALuint;

	@:native('AL_MIN_GAIN')
	static var MIN_GAIN:ALuint;

	@:native('AL_MAX_GAIN')
	static var MAX_GAIN:ALuint;

	@:native('AL_ORIENTATION')
	static var ORIENTATION:ALuint;

	@:native('AL_SOURCE_STATE')
	static var SOURCE_STATE:ALuint;

	@:native('AL_INITIAL')
	static var INITIAL:ALuint;

	@:native('AL_PLAYING')
	static var PLAYING:ALuint;

	@:native('AL_PAUSED')
	static var PAUSED:ALuint;

	@:native('AL_STOPPED')
	static var STOPPED:ALuint;

	@:native('AL_BUFFERS_QUEUED')
	static var BUFFERS_QUEUED:ALuint;

	@:native('AL_BUFFERS_PROCESSED')
	static var BUFFERS_PROCESSED:ALuint;

	@:native('AL_REFERENCE_DISTANCE')
	static var REFERENCE_DISTANCE:ALuint;

	@:native('AL_ROLLOFF_FACTOR')
	static var ROLLOFF_FACTOR:ALuint;

	@:native('AL_CONE_OUTER_GAIN')
	static var CONE_OUTER_GAIN:ALuint;

	@:native('AL_MAX_DISTANCE')
	static var MAX_DISTANCE:ALuint;

	@:native('AL_FORMAT_MONO8')
	static var FORMAT_MONO8:ALuint;

	@:native('AL_FORMAT_MONO16')
	static var FORMAT_MONO16:ALuint;

	@:native('AL_FORMAT_STEREO8')
	static var FORMAT_STEREO8:ALuint;

	@:native('AL_FORMAT_STEREO16')
	static var FORMAT_STEREO16:ALuint;

	@:native('AL_FREQUENCY')
	static var FREQUENCY:ALuint;

	@:native('AL_SIZE')
	static var SIZE:ALuint;

	@:native('AL_UNUSED')
	static var UNUSED:ALuint;

	@:native('AL_PENDING')
	static var PENDING:ALuint;

	@:native('AL_PROCESSED')
	static var PROCESSED:ALuint;

	@:native('AL_NO_ERROR')
	static var NO_ERROR:ALuint;

	@:native('AL_INVALID_NAME')
	static var INVALID_NAME:ALuint;

	@:native('AL_INVALID_ENUM')
	static var INVALID_ENUM:ALuint;

	@:native('AL_INVALID_VALUE')
	static var INVALID_VALUE:ALuint;

	@:native('AL_INVALID_OPERATION')
	static var INVALID_OPERATION:ALuint;

	@:native('AL_OUT_OF_MEMORY')
	static var OUT_OF_MEMORY:ALuint;

	@:native('AL_VENDOR')
	static var VENDOR:ALuint;

	@:native('AL_VERSION')
	static var VERSION:ALuint;

	@:native('AL_RENDERER')
	static var RENDERER:ALuint;

	@:native('AL_EXTENSIONS')
	static var EXTENSIONS:ALuint;

	@:native('AL_DOPPLER_FACTOR')
	static var DOPPLER_FACTOR:ALuint;

	@:native('AL_DOPPLER_VELOCITY')
	static var DOPPLER_VELOCITY:ALuint;

	@:native('AL_DISTANCE_MODEL')
	static var DISTANCE_MODEL:ALuint;

	@:native('AL_INVALID')
	static var INVALID:ALuint;

	@:native('AL_ILLEGAL_ENUM')
	static var ILLEGAL_ENUM:ALuint;

	@:native('AL_ILLEGAL_COMMAND')
	static var ILLEGAL_COMMAND:ALuint;

	@:native('AL_INVERSE_DISTANCE')
	static var INVERSE_DISTANCE:ALuint;

	@:native('AL_INVERSE_DISTANCE_CLAMPED')
	static var INVERSE_DISTANCE_CLAMPED:ALuint;

	@:native('AL_SEC_OFFSET')
	static var SEC_OFFSET:ALuint;

	@:native('AL_SAMPLE_OFFSET')
	static var SAMPLE_OFFSET:ALuint;

	@:native('AL_BYTE_OFFSET')
	static var BYTE_OFFSET:ALuint;

	@:native('AL_SOURCE_TYPE')
	static var SOURCE_TYPE:ALuint;

	@:native('AL_STATIC')
	static var STATIC:ALuint;

	@:native('AL_STREAMING')
	static var STREAMING:ALuint;

	@:native('AL_UNDETERMINED')
	static var UNDETERMINED:ALuint;

	@:native('AL_BITS')
	static var BITS:ALuint;

	@:native('AL_CHANNELS')
	static var CHANNELS:ALuint;

	@:native('AL_SPEED_OF_SOUND')
	static var SPEED_OF_SOUND:ALuint;

	@:native('AL_LINEAR_DISTANCE')
	static var LINEAR_DISTANCE:ALuint;

	@:native('AL_LINEAR_DISTANCE_CLAMPED')
	static var LINEAR_DISTANCE_CLAMPED:ALuint;

	@:native('AL_EXPONENT_DISTANCE')
	static var EXPONENT_DISTANCE:ALuint;

	@:native('AL_EXPONENT_DISTANCE_CLAMPED')
	static var EXPONENT_DISTANCE_CLAMPED:ALuint;

	@:native('AL_FORMAT_IMA_ADPCM_MONO16_EXT')
	static var FORMAT_IMA_ADPCM_MONO16_EXT:ALuint;

	@:native('AL_FORMAT_IMA_ADPCM_STEREO16_EXT')
	static var FORMAT_IMA_ADPCM_STEREO16_EXT:ALuint;

	@:native('AL_FORMAT_WAVE_EXT')
	static var FORMAT_WAVE_EXT:ALuint;

	@:native('AL_FORMAT_VORBIS_EXT')
	static var FORMAT_VORBIS_EXT:ALuint;

	@:native('AL_FORMAT_QUAD8_LOKI')
	static var FORMAT_QUAD8_LOKI:ALuint;

	@:native('AL_FORMAT_QUAD16_LOKI')
	static var FORMAT_QUAD16_LOKI:ALuint;

	@:native('AL_FORMAT_MONO_FLOAT32')
	static var FORMAT_MONO_FLOAT32:ALuint;

	@:native('AL_FORMAT_STEREO_FLOAT32')
	static var FORMAT_STEREO_FLOAT32:ALuint;

	@:native('AL_FORMAT_MONO_DOUBLE_EXT')
	static var FORMAT_MONO_DOUBLE_EXT:ALuint;

	@:native('AL_FORMAT_STEREO_DOUBLE_EXT')
	static var FORMAT_STEREO_DOUBLE_EXT:ALuint;

	@:native('AL_FORMAT_MONO_MULAW_EXT')
	static var FORMAT_MONO_MULAW_EXT:ALuint;

	@:native('AL_FORMAT_STEREO_MULAW_EXT')
	static var FORMAT_STEREO_MULAW_EXT:ALuint;

	@:native('AL_FORMAT_MONO_ALAW_EXT')
	static var FORMAT_MONO_ALAW_EXT:ALuint;

	@:native('AL_FORMAT_STEREO_ALAW_EXT')
	static var FORMAT_STEREO_ALAW_EXT:ALuint;

	@:native('AL_FORMAT_QUAD8')
	static var FORMAT_QUAD8:ALuint;

	@:native('AL_FORMAT_QUAD16')
	static var FORMAT_QUAD16:ALuint;

	@:native('AL_FORMAT_QUAD32')
	static var FORMAT_QUAD32:ALuint;

	@:native('AL_FORMAT_REAR8')
	static var FORMAT_REAR8:ALuint;

	@:native('AL_FORMAT_REAR16')
	static var FORMAT_REAR16:ALuint;

	@:native('AL_FORMAT_REAR32')
	static var FORMAT_REAR32:ALuint;

	@:native('AL_FORMAT_51CHN8')
	static var FORMAT_51CHN8:ALuint;

	@:native('AL_FORMAT_51CHN16')
	static var FORMAT_51CHN16:ALuint;

	@:native('AL_FORMAT_51CHN32')
	static var FORMAT_51CHN32:ALuint;

	@:native('AL_FORMAT_61CHN8')
	static var FORMAT_61CHN8:ALuint;

	@:native('AL_FORMAT_61CHN16')
	static var FORMAT_61CHN16:ALuint;

	@:native('AL_FORMAT_61CHN32')
	static var FORMAT_61CHN32:ALuint;

	@:native('AL_FORMAT_71CHN8')
	static var FORMAT_71CHN8:ALuint;

	@:native('AL_FORMAT_71CHN16')
	static var FORMAT_71CHN16:ALuint;

	@:native('AL_FORMAT_71CHN32')
	static var FORMAT_71CHN32:ALuint;

	@:native('AL_FORMAT_MONO_MULAW')
	static var FORMAT_MONO_MULAW:ALuint;

	@:native('AL_FORMAT_STEREO_MULAW')
	static var FORMAT_STEREO_MULAW:ALuint;

	@:native('AL_FORMAT_QUAD_MULAW')
	static var FORMAT_QUAD_MULAW:ALuint;

	@:native('AL_FORMAT_REAR_MULAW')
	static var FORMAT_REAR_MULAW:ALuint;

	@:native('AL_FORMAT_51CHN_MULAW')
	static var FORMAT_51CHN_MULAW:ALuint;

	@:native('AL_FORMAT_61CHN_MULAW')
	static var FORMAT_61CHN_MULAW:ALuint;

	@:native('AL_FORMAT_71CHN_MULAW')
	static var FORMAT_71CHN_MULAW:ALuint;

	@:native('AL_FORMAT_MONO_IMA4')
	static var FORMAT_MONO_IMA4:ALuint;

	@:native('AL_FORMAT_STEREO_IMA4')
	static var FORMAT_STEREO_IMA4:ALuint;

	@:native('AL_METERS_PER_UNIT')
	static var METERS_PER_UNIT:ALuint;

	@:native('AL_DIRECT_FILTER')
	static var DIRECT_FILTER:ALuint;

	@:native('AL_AUXILIARY_SEND_FILTER')
	static var AUXILIARY_SEND_FILTER:ALuint;

	@:native('AL_AIR_ABSORPTION_FACTOR')
	static var AIR_ABSORPTION_FACTOR:ALuint;

	@:native('AL_ROOM_ROLLOFF_FACTOR')
	static var ROOM_ROLLOFF_FACTOR:ALuint;

	@:native('AL_CONE_OUTER_GAINHF')
	static var CONE_OUTER_GAINHF:ALuint;

	@:native('AL_DIRECT_FILTER_GAINHF_AUTO')
	static var DIRECT_FILTER_GAINHF_AUTO:ALuint;

	@:native('AL_AUXILIARY_SEND_FILTER_GAIN_AUTO')
	static var AUXILIARY_SEND_FILTER_GAIN_AUTO:ALuint;

	@:native('AL_AUXILIARY_SEND_FILTER_GAINHF_AUTO')
	static var AUXILIARY_SEND_FILTER_GAINHF_AUTO:ALuint;

	@:native('AL_REVERB_DENSITY')
	static var REVERB_DENSITY:ALuint;

	@:native('AL_REVERB_DIFFUSION')
	static var REVERB_DIFFUSION:ALuint;

	@:native('AL_REVERB_GAIN')
	static var REVERB_GAIN:ALuint;

	@:native('AL_REVERB_GAINHF')
	static var REVERB_GAINHF:ALuint;

	@:native('AL_REVERB_DECAY_TIME')
	static var REVERB_DECAY_TIME:ALuint;

	@:native('AL_REVERB_DECAY_HFRATIO')
	static var REVERB_DECAY_HFRATIO:ALuint;

	@:native('AL_REVERB_REFLECTIONS_GAIN')
	static var REVERB_REFLECTIONS_GAIN:ALuint;

	@:native('AL_REVERB_REFLECTIONS_DELAY')
	static var REVERB_REFLECTIONS_DELAY:ALuint;

	@:native('AL_REVERB_LATE_REVERB_GAIN')
	static var REVERB_LATE_REVERB_GAIN:ALuint;

	@:native('AL_REVERB_LATE_REVERB_DELAY')
	static var REVERB_LATE_REVERB_DELAY:ALuint;

	@:native('AL_REVERB_AIR_ABSORPTION_GAINHF')
	static var REVERB_AIR_ABSORPTION_GAINHF:ALuint;

	@:native('AL_REVERB_ROOM_ROLLOFF_FACTOR')
	static var REVERB_ROOM_ROLLOFF_FACTOR:ALuint;

	@:native('AL_REVERB_DECAY_HFLIMIT')
	static var REVERB_DECAY_HFLIMIT:ALuint;

	@:native('AL_EAXREVERB_DENSITY')
	static var EAXREVERB_DENSITY:ALuint;

	@:native('AL_EAXREVERB_DIFFUSION')
	static var EAXREVERB_DIFFUSION:ALuint;

	@:native('AL_EAXREVERB_GAIN')
	static var EAXREVERB_GAIN:ALuint;

	@:native('AL_EAXREVERB_GAINHF')
	static var EAXREVERB_GAINHF:ALuint;

	@:native('AL_EAXREVERB_GAINLF')
	static var EAXREVERB_GAINLF:ALuint;

	@:native('AL_EAXREVERB_DECAY_TIME')
	static var EAXREVERB_DECAY_TIME:ALuint;

	@:native('AL_EAXREVERB_DECAY_HFRATIO')
	static var EAXREVERB_DECAY_HFRATIO:ALuint;

	@:native('AL_EAXREVERB_DECAY_LFRATIO')
	static var EAXREVERB_DECAY_LFRATIO:ALuint;

	@:native('AL_EAXREVERB_REFLECTIONS_GAIN')
	static var EAXREVERB_REFLECTIONS_GAIN:ALuint;

	@:native('AL_EAXREVERB_REFLECTIONS_DELAY')
	static var EAXREVERB_REFLECTIONS_DELAY:ALuint;

	@:native('AL_EAXREVERB_REFLECTIONS_PAN')
	static var EAXREVERB_REFLECTIONS_PAN:ALuint;

	@:native('AL_EAXREVERB_LATE_REVERB_GAIN')
	static var EAXREVERB_LATE_REVERB_GAIN:ALuint;

	@:native('AL_EAXREVERB_LATE_REVERB_DELAY')
	static var EAXREVERB_LATE_REVERB_DELAY:ALuint;

	@:native('AL_EAXREVERB_LATE_REVERB_PAN')
	static var EAXREVERB_LATE_REVERB_PAN:ALuint;

	@:native('AL_EAXREVERB_ECHO_TIME')
	static var EAXREVERB_ECHO_TIME:ALuint;

	@:native('AL_EAXREVERB_ECHO_DEPTH')
	static var EAXREVERB_ECHO_DEPTH:ALuint;

	@:native('AL_EAXREVERB_MODULATION_TIME')
	static var EAXREVERB_MODULATION_TIME:ALuint;

	@:native('AL_EAXREVERB_MODULATION_DEPTH')
	static var EAXREVERB_MODULATION_DEPTH:ALuint;

	@:native('AL_EAXREVERB_AIR_ABSORPTION_GAINHF')
	static var EAXREVERB_AIR_ABSORPTION_GAINHF:ALuint;

	@:native('AL_EAXREVERB_HFREFERENCE')
	static var EAXREVERB_HFREFERENCE:ALuint;

	@:native('AL_EAXREVERB_LFREFERENCE')
	static var EAXREVERB_LFREFERENCE:ALuint;

	@:native('AL_EAXREVERB_ROOM_ROLLOFF_FACTOR')
	static var EAXREVERB_ROOM_ROLLOFF_FACTOR:ALuint;

	@:native('AL_EAXREVERB_DECAY_HFLIMIT')
	static var EAXREVERB_DECAY_HFLIMIT:ALuint;

	@:native('AL_CHORUS_WAVEFORM')
	static var CHORUS_WAVEFORM:ALuint;

	@:native('AL_CHORUS_PHASE')
	static var CHORUS_PHASE:ALuint;

	@:native('AL_CHORUS_RATE')
	static var CHORUS_RATE:ALuint;

	@:native('AL_CHORUS_DEPTH')
	static var CHORUS_DEPTH:ALuint;

	@:native('AL_CHORUS_FEEDBACK')
	static var CHORUS_FEEDBACK:ALuint;

	@:native('AL_CHORUS_DELAY')
	static var CHORUS_DELAY:ALuint;

	@:native('AL_DISTORTION_EDGE')
	static var DISTORTION_EDGE:ALuint;

	@:native('AL_DISTORTION_GAIN')
	static var DISTORTION_GAIN:ALuint;

	@:native('AL_DISTORTION_LOWPASS_CUTOFF')
	static var DISTORTION_LOWPASS_CUTOFF:ALuint;

	@:native('AL_DISTORTION_EQCENTER')
	static var DISTORTION_EQCENTER:ALuint;

	@:native('AL_DISTORTION_EQBANDWIDTH')
	static var DISTORTION_EQBANDWIDTH:ALuint;

	@:native('AL_ECHO_DELAY')
	static var ECHO_DELAY:ALuint;

	@:native('AL_ECHO_LRDELAY')
	static var ECHO_LRDELAY:ALuint;

	@:native('AL_ECHO_DAMPING')
	static var ECHO_DAMPING:ALuint;

	@:native('AL_ECHO_FEEDBACK')
	static var ECHO_FEEDBACK:ALuint;

	@:native('AL_ECHO_SPREAD')
	static var ECHO_SPREAD:ALuint;

	@:native('AL_FLANGER_WAVEFORM')
	static var FLANGER_WAVEFORM:ALuint;

	@:native('AL_FLANGER_PHASE')
	static var FLANGER_PHASE:ALuint;

	@:native('AL_FLANGER_RATE')
	static var FLANGER_RATE:ALuint;

	@:native('AL_FLANGER_DEPTH')
	static var FLANGER_DEPTH:ALuint;

	@:native('AL_FLANGER_FEEDBACK')
	static var FLANGER_FEEDBACK:ALuint;

	@:native('AL_FLANGER_DELAY')
	static var FLANGER_DELAY:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_FREQUENCY')
	static var FREQUENCY_SHIFTER_FREQUENCY:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_LEFT_DIRECTION')
	static var FREQUENCY_SHIFTER_LEFT_DIRECTION:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_RIGHT_DIRECTION')
	static var FREQUENCY_SHIFTER_RIGHT_DIRECTION:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEMEA')
	static var VOCAL_MORPHER_PHONEMEA:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEMEA_COARSE_TUNING')
	static var VOCAL_MORPHER_PHONEMEA_COARSE_TUNING:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEMEB')
	static var VOCAL_MORPHER_PHONEMEB:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEMEB_COARSE_TUNING')
	static var VOCAL_MORPHER_PHONEMEB_COARSE_TUNING:ALuint;

	@:native('AL_VOCAL_MORPHER_WAVEFORM')
	static var VOCAL_MORPHER_WAVEFORM:ALuint;

	@:native('AL_VOCAL_MORPHER_RATE')
	static var VOCAL_MORPHER_RATE:ALuint;

	@:native('AL_PITCH_SHIFTER_COARSE_TUNE')
	static var PITCH_SHIFTER_COARSE_TUNE:ALuint;

	@:native('AL_PITCH_SHIFTER_FINE_TUNE')
	static var PITCH_SHIFTER_FINE_TUNE:ALuint;

	@:native('AL_RING_MODULATOR_FREQUENCY')
	static var RING_MODULATOR_FREQUENCY:ALuint;

	@:native('AL_RING_MODULATOR_HIGHPASS_CUTOFF')
	static var RING_MODULATOR_HIGHPASS_CUTOFF:ALuint;

	@:native('AL_RING_MODULATOR_WAVEFORM')
	static var RING_MODULATOR_WAVEFORM:ALuint;

	@:native('AL_AUTOWAH_ATTACK_TIME')
	static var AUTOWAH_ATTACK_TIME:ALuint;

	@:native('AL_AUTOWAH_RELEASE_TIME')
	static var AUTOWAH_RELEASE_TIME:ALuint;

	@:native('AL_AUTOWAH_RESONANCE')
	static var AUTOWAH_RESONANCE:ALuint;

	@:native('AL_AUTOWAH_PEAK_GAIN')
	static var AUTOWAH_PEAK_GAIN:ALuint;

	@:native('AL_COMPRESSOR_ONOFF')
	static var COMPRESSOR_ONOFF:ALuint;

	@:native('AL_EQUALIZER_LOW_GAIN')
	static var EQUALIZER_LOW_GAIN:ALuint;

	@:native('AL_EQUALIZER_LOW_CUTOFF')
	static var EQUALIZER_LOW_CUTOFF:ALuint;

	@:native('AL_EQUALIZER_MID1_GAIN')
	static var EQUALIZER_MID1_GAIN:ALuint;

	@:native('AL_EQUALIZER_MID1_CENTER')
	static var EQUALIZER_MID1_CENTER:ALuint;

	@:native('AL_EQUALIZER_MID1_WIDTH')
	static var EQUALIZER_MID1_WIDTH:ALuint;

	@:native('AL_EQUALIZER_MID2_GAIN')
	static var EQUALIZER_MID2_GAIN:ALuint;

	@:native('AL_EQUALIZER_MID2_CENTER')
	static var EQUALIZER_MID2_CENTER:ALuint;

	@:native('AL_EQUALIZER_MID2_WIDTH')
	static var EQUALIZER_MID2_WIDTH:ALuint;

	@:native('AL_EQUALIZER_HIGH_GAIN')
	static var EQUALIZER_HIGH_GAIN:ALuint;

	@:native('AL_EQUALIZER_HIGH_CUTOFF')
	static var EQUALIZER_HIGH_CUTOFF:ALuint;

	@:native('AL_EFFECT_FIRST_PARAMETER')
	static var EFFECT_FIRST_PARAMETER:ALuint;

	@:native('AL_EFFECT_LAST_PARAMETER')
	static var EFFECT_LAST_PARAMETER:ALuint;

	@:native('AL_EFFECT_TYPE')
	static var EFFECT_TYPE:ALuint;

	@:native('AL_EFFECT_NULL')
	static var EFFECT_NULL:ALuint;

	@:native('AL_EFFECT_REVERB')
	static var EFFECT_REVERB:ALuint;

	@:native('AL_EFFECT_CHORUS')
	static var EFFECT_CHORUS:ALuint;

	@:native('AL_EFFECT_DISTORTION')
	static var EFFECT_DISTORTION:ALuint;

	@:native('AL_EFFECT_ECHO')
	static var EFFECT_ECHO:ALuint;

	@:native('AL_EFFECT_FLANGER')
	static var EFFECT_FLANGER:ALuint;

	@:native('AL_EFFECT_FREQUENCY_SHIFTER')
	static var EFFECT_FREQUENCY_SHIFTER:ALuint;

	@:native('AL_EFFECT_VOCAL_MORPHER')
	static var EFFECT_VOCAL_MORPHER:ALuint;

	@:native('AL_EFFECT_PITCH_SHIFTER')
	static var EFFECT_PITCH_SHIFTER:ALuint;

	@:native('AL_EFFECT_RING_MODULATOR')
	static var EFFECT_RING_MODULATOR:ALuint;

	@:native('AL_EFFECT_AUTOWAH')
	static var EFFECT_AUTOWAH:ALuint;

	@:native('AL_EFFECT_COMPRESSOR')
	static var EFFECT_COMPRESSOR:ALuint;

	@:native('AL_EFFECT_EQUALIZER')
	static var EFFECT_EQUALIZER:ALuint;

	@:native('AL_EFFECT_EAXREVERB')
	static var EFFECT_EAXREVERB:ALuint;

	@:native('AL_EFFECTSLOT_EFFECT')
	static var EFFECTSLOT_EFFECT:ALuint;

	@:native('AL_EFFECTSLOT_GAIN')
	static var EFFECTSLOT_GAIN:ALuint;

	@:native('AL_EFFECTSLOT_AUXILIARY_SEND_AUTO')
	static var EFFECTSLOT_AUXILIARY_SEND_AUTO:ALuint;

	@:native('AL_EFFECTSLOT_NULL')
	static var EFFECTSLOT_NULL:ALuint;

	@:native('AL_LOWPASS_GAIN')
	static var LOWPASS_GAIN:ALuint;

	@:native('AL_LOWPASS_GAINHF')
	static var LOWPASS_GAINHF:ALuint;

	@:native('AL_HIGHPASS_GAIN')
	static var HIGHPASS_GAIN:ALuint;

	@:native('AL_HIGHPASS_GAINLF')
	static var HIGHPASS_GAINLF:ALuint;

	@:native('AL_BANDPASS_GAIN')
	static var BANDPASS_GAIN:ALuint;

	@:native('AL_BANDPASS_GAINLF')
	static var BANDPASS_GAINLF:ALuint;

	@:native('AL_BANDPASS_GAINHF')
	static var BANDPASS_GAINHF:ALuint;

	@:native('AL_FILTER_FIRST_PARAMETER')
	static var FILTER_FIRST_PARAMETER:ALuint;

	@:native('AL_FILTER_LAST_PARAMETER')
	static var FILTER_LAST_PARAMETER:ALuint;

	@:native('AL_FILTER_TYPE')
	static var FILTER_TYPE:ALuint;

	@:native('AL_FILTER_NULL')
	static var FILTER_NULL:ALuint;

	@:native('AL_FILTER_LOWPASS')
	static var FILTER_LOWPASS:ALuint;

	@:native('AL_FILTER_HIGHPASS')
	static var FILTER_HIGHPASS:ALuint;

	@:native('AL_FILTER_BANDPASS')
	static var FILTER_BANDPASS:ALuint;

	@:native('AL_LOWPASS_MIN_GAIN')
	static var LOWPASS_MIN_GAIN:ALuint;

	@:native('AL_LOWPASS_MAX_GAIN')
	static var LOWPASS_MAX_GAIN:ALuint;

	@:native('AL_LOWPASS_DEFAULT_GAIN')
	static var LOWPASS_DEFAULT_GAIN:ALuint;

	@:native('AL_LOWPASS_MIN_GAINHF')
	static var LOWPASS_MIN_GAINHF:ALuint;

	@:native('AL_LOWPASS_MAX_GAINHF')
	static var LOWPASS_MAX_GAINHF:ALuint;

	@:native('AL_LOWPASS_DEFAULT_GAINHF')
	static var LOWPASS_DEFAULT_GAINHF:ALuint;

	@:native('AL_HIGHPASS_MIN_GAIN')
	static var HIGHPASS_MIN_GAIN:ALuint;

	@:native('AL_HIGHPASS_MAX_GAIN')
	static var HIGHPASS_MAX_GAIN:ALuint;

	@:native('AL_HIGHPASS_DEFAULT_GAIN')
	static var HIGHPASS_DEFAULT_GAIN:ALuint;

	@:native('AL_HIGHPASS_MIN_GAINLF')
	static var HIGHPASS_MIN_GAINLF:ALuint;

	@:native('AL_HIGHPASS_MAX_GAINLF')
	static var HIGHPASS_MAX_GAINLF:ALuint;

	@:native('AL_HIGHPASS_DEFAULT_GAINLF')
	static var HIGHPASS_DEFAULT_GAINLF:ALuint;

	@:native('AL_BANDPASS_MIN_GAIN')
	static var BANDPASS_MIN_GAIN:ALuint;

	@:native('AL_BANDPASS_MAX_GAIN')
	static var BANDPASS_MAX_GAIN:ALuint;

	@:native('AL_BANDPASS_DEFAULT_GAIN')
	static var BANDPASS_DEFAULT_GAIN:ALuint;

	@:native('AL_BANDPASS_MIN_GAINHF')
	static var BANDPASS_MIN_GAINHF:ALuint;

	@:native('AL_BANDPASS_MAX_GAINHF')
	static var BANDPASS_MAX_GAINHF:ALuint;

	@:native('AL_BANDPASS_DEFAULT_GAINHF')
	static var BANDPASS_DEFAULT_GAINHF:ALuint;

	@:native('AL_BANDPASS_MIN_GAINLF')
	static var BANDPASS_MIN_GAINLF:ALuint;

	@:native('AL_BANDPASS_MAX_GAINLF')
	static var BANDPASS_MAX_GAINLF:ALuint;

	@:native('AL_BANDPASS_DEFAULT_GAINLF')
	static var BANDPASS_DEFAULT_GAINLF:ALuint;

	@:native('AL_REVERB_MIN_DENSITY')
	static var REVERB_MIN_DENSITY:ALuint;

	@:native('AL_REVERB_MAX_DENSITY')
	static var REVERB_MAX_DENSITY:ALuint;

	@:native('AL_REVERB_DEFAULT_DENSITY')
	static var REVERB_DEFAULT_DENSITY:ALuint;

	@:native('AL_REVERB_MIN_DIFFUSION')
	static var REVERB_MIN_DIFFUSION:ALuint;

	@:native('AL_REVERB_MAX_DIFFUSION')
	static var REVERB_MAX_DIFFUSION:ALuint;

	@:native('AL_REVERB_DEFAULT_DIFFUSION')
	static var REVERB_DEFAULT_DIFFUSION:ALuint;

	@:native('AL_REVERB_MIN_GAIN')
	static var REVERB_MIN_GAIN:ALuint;

	@:native('AL_REVERB_MAX_GAIN')
	static var REVERB_MAX_GAIN:ALuint;

	@:native('AL_REVERB_DEFAULT_GAIN')
	static var REVERB_DEFAULT_GAIN:ALuint;

	@:native('AL_REVERB_MIN_GAINHF')
	static var REVERB_MIN_GAINHF:ALuint;

	@:native('AL_REVERB_MAX_GAINHF')
	static var REVERB_MAX_GAINHF:ALuint;

	@:native('AL_REVERB_DEFAULT_GAINHF')
	static var REVERB_DEFAULT_GAINHF:ALuint;

	@:native('AL_REVERB_MIN_DECAY_TIME')
	static var REVERB_MIN_DECAY_TIME:ALuint;

	@:native('AL_REVERB_MAX_DECAY_TIME')
	static var REVERB_MAX_DECAY_TIME:ALuint;

	@:native('AL_REVERB_DEFAULT_DECAY_TIME')
	static var REVERB_DEFAULT_DECAY_TIME:ALuint;

	@:native('AL_REVERB_MIN_DECAY_HFRATIO')
	static var REVERB_MIN_DECAY_HFRATIO:ALuint;

	@:native('AL_REVERB_MAX_DECAY_HFRATIO')
	static var REVERB_MAX_DECAY_HFRATIO:ALuint;

	@:native('AL_REVERB_DEFAULT_DECAY_HFRATIO')
	static var REVERB_DEFAULT_DECAY_HFRATIO:ALuint;

	@:native('AL_REVERB_MIN_REFLECTIONS_GAIN')
	static var REVERB_MIN_REFLECTIONS_GAIN:ALuint;

	@:native('AL_REVERB_MAX_REFLECTIONS_GAIN')
	static var REVERB_MAX_REFLECTIONS_GAIN:ALuint;

	@:native('AL_REVERB_DEFAULT_REFLECTIONS_GAIN')
	static var REVERB_DEFAULT_REFLECTIONS_GAIN:ALuint;

	@:native('AL_REVERB_MIN_REFLECTIONS_DELAY')
	static var REVERB_MIN_REFLECTIONS_DELAY:ALuint;

	@:native('AL_REVERB_MAX_REFLECTIONS_DELAY')
	static var REVERB_MAX_REFLECTIONS_DELAY:ALuint;

	@:native('AL_REVERB_DEFAULT_REFLECTIONS_DELAY')
	static var REVERB_DEFAULT_REFLECTIONS_DELAY:ALuint;

	@:native('AL_REVERB_MIN_LATE_REVERB_GAIN')
	static var REVERB_MIN_LATE_REVERB_GAIN:ALuint;

	@:native('AL_REVERB_MAX_LATE_REVERB_GAIN')
	static var REVERB_MAX_LATE_REVERB_GAIN:ALuint;

	@:native('AL_REVERB_DEFAULT_LATE_REVERB_GAIN')
	static var REVERB_DEFAULT_LATE_REVERB_GAIN:ALuint;

	@:native('AL_REVERB_MIN_LATE_REVERB_DELAY')
	static var REVERB_MIN_LATE_REVERB_DELAY:ALuint;

	@:native('AL_REVERB_MAX_LATE_REVERB_DELAY')
	static var REVERB_MAX_LATE_REVERB_DELAY:ALuint;

	@:native('AL_REVERB_DEFAULT_LATE_REVERB_DELAY')
	static var REVERB_DEFAULT_LATE_REVERB_DELAY:ALuint;

	@:native('AL_REVERB_MIN_AIR_ABSORPTION_GAINHF')
	static var REVERB_MIN_AIR_ABSORPTION_GAINHF:ALuint;

	@:native('AL_REVERB_MAX_AIR_ABSORPTION_GAINHF')
	static var REVERB_MAX_AIR_ABSORPTION_GAINHF:ALuint;

	@:native('AL_REVERB_DEFAULT_AIR_ABSORPTION_GAINHF')
	static var REVERB_DEFAULT_AIR_ABSORPTION_GAINHF:ALuint;

	@:native('AL_REVERB_MIN_ROOM_ROLLOFF_FACTOR')
	static var REVERB_MIN_ROOM_ROLLOFF_FACTOR:ALuint;

	@:native('AL_REVERB_MAX_ROOM_ROLLOFF_FACTOR')
	static var REVERB_MAX_ROOM_ROLLOFF_FACTOR:ALuint;

	@:native('AL_REVERB_DEFAULT_ROOM_ROLLOFF_FACTOR')
	static var REVERB_DEFAULT_ROOM_ROLLOFF_FACTOR:ALuint;

	@:native('AL_REVERB_MIN_DECAY_HFLIMIT')
	static var REVERB_MIN_DECAY_HFLIMIT:ALuint;

	@:native('AL_REVERB_MAX_DECAY_HFLIMIT')
	static var REVERB_MAX_DECAY_HFLIMIT:ALuint;

	@:native('AL_REVERB_DEFAULT_DECAY_HFLIMIT')
	static var REVERB_DEFAULT_DECAY_HFLIMIT:ALuint;

	@:native('AL_EAXREVERB_MIN_DENSITY')
	static var EAXREVERB_MIN_DENSITY:ALuint;

	@:native('AL_EAXREVERB_MAX_DENSITY')
	static var EAXREVERB_MAX_DENSITY:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_DENSITY')
	static var EAXREVERB_DEFAULT_DENSITY:ALuint;

	@:native('AL_EAXREVERB_MIN_DIFFUSION')
	static var EAXREVERB_MIN_DIFFUSION:ALuint;

	@:native('AL_EAXREVERB_MAX_DIFFUSION')
	static var EAXREVERB_MAX_DIFFUSION:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_DIFFUSION')
	static var EAXREVERB_DEFAULT_DIFFUSION:ALuint;

	@:native('AL_EAXREVERB_MIN_GAIN')
	static var EAXREVERB_MIN_GAIN:ALuint;

	@:native('AL_EAXREVERB_MAX_GAIN')
	static var EAXREVERB_MAX_GAIN:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_GAIN')
	static var EAXREVERB_DEFAULT_GAIN:ALuint;

	@:native('AL_EAXREVERB_MIN_GAINHF')
	static var EAXREVERB_MIN_GAINHF:ALuint;

	@:native('AL_EAXREVERB_MAX_GAINHF')
	static var EAXREVERB_MAX_GAINHF:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_GAINHF')
	static var EAXREVERB_DEFAULT_GAINHF:ALuint;

	@:native('AL_EAXREVERB_MIN_GAINLF')
	static var EAXREVERB_MIN_GAINLF:ALuint;

	@:native('AL_EAXREVERB_MAX_GAINLF')
	static var EAXREVERB_MAX_GAINLF:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_GAINLF')
	static var EAXREVERB_DEFAULT_GAINLF:ALuint;

	@:native('AL_EAXREVERB_MIN_DECAY_TIME')
	static var EAXREVERB_MIN_DECAY_TIME:ALuint;

	@:native('AL_EAXREVERB_MAX_DECAY_TIME')
	static var EAXREVERB_MAX_DECAY_TIME:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_DECAY_TIME')
	static var EAXREVERB_DEFAULT_DECAY_TIME:ALuint;

	@:native('AL_EAXREVERB_MIN_DECAY_HFRATIO')
	static var EAXREVERB_MIN_DECAY_HFRATIO:ALuint;

	@:native('AL_EAXREVERB_MAX_DECAY_HFRATIO')
	static var EAXREVERB_MAX_DECAY_HFRATIO:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_DECAY_HFRATIO')
	static var EAXREVERB_DEFAULT_DECAY_HFRATIO:ALuint;

	@:native('AL_EAXREVERB_MIN_DECAY_LFRATIO')
	static var EAXREVERB_MIN_DECAY_LFRATIO:ALuint;

	@:native('AL_EAXREVERB_MAX_DECAY_LFRATIO')
	static var EAXREVERB_MAX_DECAY_LFRATIO:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_DECAY_LFRATIO')
	static var EAXREVERB_DEFAULT_DECAY_LFRATIO:ALuint;

	@:native('AL_EAXREVERB_MIN_REFLECTIONS_GAIN')
	static var EAXREVERB_MIN_REFLECTIONS_GAIN:ALuint;

	@:native('AL_EAXREVERB_MAX_REFLECTIONS_GAIN')
	static var EAXREVERB_MAX_REFLECTIONS_GAIN:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_REFLECTIONS_GAIN')
	static var EAXREVERB_DEFAULT_REFLECTIONS_GAIN:ALuint;

	@:native('AL_EAXREVERB_MIN_REFLECTIONS_DELAY')
	static var EAXREVERB_MIN_REFLECTIONS_DELAY:ALuint;

	@:native('AL_EAXREVERB_MAX_REFLECTIONS_DELAY')
	static var EAXREVERB_MAX_REFLECTIONS_DELAY:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_REFLECTIONS_DELAY')
	static var EAXREVERB_DEFAULT_REFLECTIONS_DELAY:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_REFLECTIONS_PAN_XYZ')
	static var EAXREVERB_DEFAULT_REFLECTIONS_PAN_XYZ:ALuint;

	@:native('AL_EAXREVERB_MIN_LATE_REVERB_GAIN')
	static var EAXREVERB_MIN_LATE_REVERB_GAIN:ALuint;

	@:native('AL_EAXREVERB_MAX_LATE_REVERB_GAIN')
	static var EAXREVERB_MAX_LATE_REVERB_GAIN:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_LATE_REVERB_GAIN')
	static var EAXREVERB_DEFAULT_LATE_REVERB_GAIN:ALuint;

	@:native('AL_EAXREVERB_MIN_LATE_REVERB_DELAY')
	static var EAXREVERB_MIN_LATE_REVERB_DELAY:ALuint;

	@:native('AL_EAXREVERB_MAX_LATE_REVERB_DELAY')
	static var EAXREVERB_MAX_LATE_REVERB_DELAY:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_LATE_REVERB_DELAY')
	static var EAXREVERB_DEFAULT_LATE_REVERB_DELAY:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_LATE_REVERB_PAN_XYZ')
	static var EAXREVERB_DEFAULT_LATE_REVERB_PAN_XYZ:ALuint;

	@:native('AL_EAXREVERB_MIN_ECHO_TIME')
	static var EAXREVERB_MIN_ECHO_TIME:ALuint;

	@:native('AL_EAXREVERB_MAX_ECHO_TIME')
	static var EAXREVERB_MAX_ECHO_TIME:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_ECHO_TIME')
	static var EAXREVERB_DEFAULT_ECHO_TIME:ALuint;

	@:native('AL_EAXREVERB_MIN_ECHO_DEPTH')
	static var EAXREVERB_MIN_ECHO_DEPTH:ALuint;

	@:native('AL_EAXREVERB_MAX_ECHO_DEPTH')
	static var EAXREVERB_MAX_ECHO_DEPTH:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_ECHO_DEPTH')
	static var EAXREVERB_DEFAULT_ECHO_DEPTH:ALuint;

	@:native('AL_EAXREVERB_MIN_MODULATION_TIME')
	static var EAXREVERB_MIN_MODULATION_TIME:ALuint;

	@:native('AL_EAXREVERB_MAX_MODULATION_TIME')
	static var EAXREVERB_MAX_MODULATION_TIME:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_MODULATION_TIME')
	static var EAXREVERB_DEFAULT_MODULATION_TIME:ALuint;

	@:native('AL_EAXREVERB_MIN_MODULATION_DEPTH')
	static var EAXREVERB_MIN_MODULATION_DEPTH:ALuint;

	@:native('AL_EAXREVERB_MAX_MODULATION_DEPTH')
	static var EAXREVERB_MAX_MODULATION_DEPTH:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_MODULATION_DEPTH')
	static var EAXREVERB_DEFAULT_MODULATION_DEPTH:ALuint;

	@:native('AL_EAXREVERB_MIN_AIR_ABSORPTION_GAINHF')
	static var EAXREVERB_MIN_AIR_ABSORPTION_GAINHF:ALuint;

	@:native('AL_EAXREVERB_MAX_AIR_ABSORPTION_GAINHF')
	static var EAXREVERB_MAX_AIR_ABSORPTION_GAINHF:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_AIR_ABSORPTION_GAINHF')
	static var EAXREVERB_DEFAULT_AIR_ABSORPTION_GAINHF:ALuint;

	@:native('AL_EAXREVERB_MIN_HFREFERENCE')
	static var EAXREVERB_MIN_HFREFERENCE:ALuint;

	@:native('AL_EAXREVERB_MAX_HFREFERENCE')
	static var EAXREVERB_MAX_HFREFERENCE:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_HFREFERENCE')
	static var EAXREVERB_DEFAULT_HFREFERENCE:ALuint;

	@:native('AL_EAXREVERB_MIN_LFREFERENCE')
	static var EAXREVERB_MIN_LFREFERENCE:ALuint;

	@:native('AL_EAXREVERB_MAX_LFREFERENCE')
	static var EAXREVERB_MAX_LFREFERENCE:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_LFREFERENCE')
	static var EAXREVERB_DEFAULT_LFREFERENCE:ALuint;

	@:native('AL_EAXREVERB_MIN_ROOM_ROLLOFF_FACTOR')
	static var EAXREVERB_MIN_ROOM_ROLLOFF_FACTOR:ALuint;

	@:native('AL_EAXREVERB_MAX_ROOM_ROLLOFF_FACTOR')
	static var EAXREVERB_MAX_ROOM_ROLLOFF_FACTOR:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_ROOM_ROLLOFF_FACTOR')
	static var EAXREVERB_DEFAULT_ROOM_ROLLOFF_FACTOR:ALuint;

	@:native('AL_EAXREVERB_MIN_DECAY_HFLIMIT')
	static var EAXREVERB_MIN_DECAY_HFLIMIT:ALuint;

	@:native('AL_EAXREVERB_MAX_DECAY_HFLIMIT')
	static var EAXREVERB_MAX_DECAY_HFLIMIT:ALuint;

	@:native('AL_EAXREVERB_DEFAULT_DECAY_HFLIMIT')
	static var EAXREVERB_DEFAULT_DECAY_HFLIMIT:ALuint;

	@:native('AL_CHORUS_WAVEFORM_SINUSOID')
	static var CHORUS_WAVEFORM_SINUSOID:ALuint;

	@:native('AL_CHORUS_WAVEFORM_TRIANGLE')
	static var CHORUS_WAVEFORM_TRIANGLE:ALuint;

	@:native('AL_CHORUS_MIN_WAVEFORM')
	static var CHORUS_MIN_WAVEFORM:ALuint;

	@:native('AL_CHORUS_MAX_WAVEFORM')
	static var CHORUS_MAX_WAVEFORM:ALuint;

	@:native('AL_CHORUS_DEFAULT_WAVEFORM')
	static var CHORUS_DEFAULT_WAVEFORM:ALuint;

	@:native('AL_CHORUS_MIN_PHASE')
	static var CHORUS_MIN_PHASE:ALuint;

	@:native('AL_CHORUS_MAX_PHASE')
	static var CHORUS_MAX_PHASE:ALuint;

	@:native('AL_CHORUS_DEFAULT_PHASE')
	static var CHORUS_DEFAULT_PHASE:ALuint;

	@:native('AL_CHORUS_MIN_RATE')
	static var CHORUS_MIN_RATE:ALuint;

	@:native('AL_CHORUS_MAX_RATE')
	static var CHORUS_MAX_RATE:ALuint;

	@:native('AL_CHORUS_DEFAULT_RATE')
	static var CHORUS_DEFAULT_RATE:ALuint;

	@:native('AL_CHORUS_MIN_DEPTH')
	static var CHORUS_MIN_DEPTH:ALuint;

	@:native('AL_CHORUS_MAX_DEPTH')
	static var CHORUS_MAX_DEPTH:ALuint;

	@:native('AL_CHORUS_DEFAULT_DEPTH')
	static var CHORUS_DEFAULT_DEPTH:ALuint;

	@:native('AL_CHORUS_MIN_FEEDBACK')
	static var CHORUS_MIN_FEEDBACK:ALuint;

	@:native('AL_CHORUS_MAX_FEEDBACK')
	static var CHORUS_MAX_FEEDBACK:ALuint;

	@:native('AL_CHORUS_DEFAULT_FEEDBACK')
	static var CHORUS_DEFAULT_FEEDBACK:ALuint;

	@:native('AL_CHORUS_MIN_DELAY')
	static var CHORUS_MIN_DELAY:ALuint;

	@:native('AL_CHORUS_MAX_DELAY')
	static var CHORUS_MAX_DELAY:ALuint;

	@:native('AL_CHORUS_DEFAULT_DELAY')
	static var CHORUS_DEFAULT_DELAY:ALuint;

	@:native('AL_DISTORTION_MIN_EDGE')
	static var DISTORTION_MIN_EDGE:ALuint;

	@:native('AL_DISTORTION_MAX_EDGE')
	static var DISTORTION_MAX_EDGE:ALuint;

	@:native('AL_DISTORTION_DEFAULT_EDGE')
	static var DISTORTION_DEFAULT_EDGE:ALuint;

	@:native('AL_DISTORTION_MIN_GAIN')
	static var DISTORTION_MIN_GAIN:ALuint;

	@:native('AL_DISTORTION_MAX_GAIN')
	static var DISTORTION_MAX_GAIN:ALuint;

	@:native('AL_DISTORTION_DEFAULT_GAIN')
	static var DISTORTION_DEFAULT_GAIN:ALuint;

	@:native('AL_DISTORTION_MIN_LOWPASS_CUTOFF')
	static var DISTORTION_MIN_LOWPASS_CUTOFF:ALuint;

	@:native('AL_DISTORTION_MAX_LOWPASS_CUTOFF')
	static var DISTORTION_MAX_LOWPASS_CUTOFF:ALuint;

	@:native('AL_DISTORTION_DEFAULT_LOWPASS_CUTOFF')
	static var DISTORTION_DEFAULT_LOWPASS_CUTOFF:ALuint;

	@:native('AL_DISTORTION_MIN_EQCENTER')
	static var DISTORTION_MIN_EQCENTER:ALuint;

	@:native('AL_DISTORTION_MAX_EQCENTER')
	static var DISTORTION_MAX_EQCENTER:ALuint;

	@:native('AL_DISTORTION_DEFAULT_EQCENTER')
	static var DISTORTION_DEFAULT_EQCENTER:ALuint;

	@:native('AL_DISTORTION_MIN_EQBANDWIDTH')
	static var DISTORTION_MIN_EQBANDWIDTH:ALuint;

	@:native('AL_DISTORTION_MAX_EQBANDWIDTH')
	static var DISTORTION_MAX_EQBANDWIDTH:ALuint;

	@:native('AL_DISTORTION_DEFAULT_EQBANDWIDTH')
	static var DISTORTION_DEFAULT_EQBANDWIDTH:ALuint;

	@:native('AL_ECHO_MIN_DELAY')
	static var ECHO_MIN_DELAY:ALuint;

	@:native('AL_ECHO_MAX_DELAY')
	static var ECHO_MAX_DELAY:ALuint;

	@:native('AL_ECHO_DEFAULT_DELAY')
	static var ECHO_DEFAULT_DELAY:ALuint;

	@:native('AL_ECHO_MIN_LRDELAY')
	static var ECHO_MIN_LRDELAY:ALuint;

	@:native('AL_ECHO_MAX_LRDELAY')
	static var ECHO_MAX_LRDELAY:ALuint;

	@:native('AL_ECHO_DEFAULT_LRDELAY')
	static var ECHO_DEFAULT_LRDELAY:ALuint;

	@:native('AL_ECHO_MIN_DAMPING')
	static var ECHO_MIN_DAMPING:ALuint;

	@:native('AL_ECHO_MAX_DAMPING')
	static var ECHO_MAX_DAMPING:ALuint;

	@:native('AL_ECHO_DEFAULT_DAMPING')
	static var ECHO_DEFAULT_DAMPING:ALuint;

	@:native('AL_ECHO_MIN_FEEDBACK')
	static var ECHO_MIN_FEEDBACK:ALuint;

	@:native('AL_ECHO_MAX_FEEDBACK')
	static var ECHO_MAX_FEEDBACK:ALuint;

	@:native('AL_ECHO_DEFAULT_FEEDBACK')
	static var ECHO_DEFAULT_FEEDBACK:ALuint;

	@:native('AL_ECHO_MIN_SPREAD')
	static var ECHO_MIN_SPREAD:ALuint;

	@:native('AL_ECHO_MAX_SPREAD')
	static var ECHO_MAX_SPREAD:ALuint;

	@:native('AL_ECHO_DEFAULT_SPREAD')
	static var ECHO_DEFAULT_SPREAD:ALuint;

	@:native('AL_FLANGER_WAVEFORM_SINUSOID')
	static var FLANGER_WAVEFORM_SINUSOID:ALuint;

	@:native('AL_FLANGER_WAVEFORM_TRIANGLE')
	static var FLANGER_WAVEFORM_TRIANGLE:ALuint;

	@:native('AL_FLANGER_MIN_WAVEFORM')
	static var FLANGER_MIN_WAVEFORM:ALuint;

	@:native('AL_FLANGER_MAX_WAVEFORM')
	static var FLANGER_MAX_WAVEFORM:ALuint;

	@:native('AL_FLANGER_DEFAULT_WAVEFORM')
	static var FLANGER_DEFAULT_WAVEFORM:ALuint;

	@:native('AL_FLANGER_MIN_PHASE')
	static var FLANGER_MIN_PHASE:ALuint;

	@:native('AL_FLANGER_MAX_PHASE')
	static var FLANGER_MAX_PHASE:ALuint;

	@:native('AL_FLANGER_DEFAULT_PHASE')
	static var FLANGER_DEFAULT_PHASE:ALuint;

	@:native('AL_FLANGER_MIN_RATE')
	static var FLANGER_MIN_RATE:ALuint;

	@:native('AL_FLANGER_MAX_RATE')
	static var FLANGER_MAX_RATE:ALuint;

	@:native('AL_FLANGER_DEFAULT_RATE')
	static var FLANGER_DEFAULT_RATE:ALuint;

	@:native('AL_FLANGER_MIN_DEPTH')
	static var FLANGER_MIN_DEPTH:ALuint;

	@:native('AL_FLANGER_MAX_DEPTH')
	static var FLANGER_MAX_DEPTH:ALuint;

	@:native('AL_FLANGER_DEFAULT_DEPTH')
	static var FLANGER_DEFAULT_DEPTH:ALuint;

	@:native('AL_FLANGER_MIN_FEEDBACK')
	static var FLANGER_MIN_FEEDBACK:ALuint;

	@:native('AL_FLANGER_MAX_FEEDBACK')
	static var FLANGER_MAX_FEEDBACK:ALuint;

	@:native('AL_FLANGER_DEFAULT_FEEDBACK')
	static var FLANGER_DEFAULT_FEEDBACK:ALuint;

	@:native('AL_FLANGER_MIN_DELAY')
	static var FLANGER_MIN_DELAY:ALuint;

	@:native('AL_FLANGER_MAX_DELAY')
	static var FLANGER_MAX_DELAY:ALuint;

	@:native('AL_FLANGER_DEFAULT_DELAY')
	static var FLANGER_DEFAULT_DELAY:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_MIN_FREQUENCY')
	static var FREQUENCY_SHIFTER_MIN_FREQUENCY:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_MAX_FREQUENCY')
	static var FREQUENCY_SHIFTER_MAX_FREQUENCY:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_DEFAULT_FREQUENCY')
	static var FREQUENCY_SHIFTER_DEFAULT_FREQUENCY:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_MIN_LEFT_DIRECTION')
	static var FREQUENCY_SHIFTER_MIN_LEFT_DIRECTION:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_MAX_LEFT_DIRECTION')
	static var FREQUENCY_SHIFTER_MAX_LEFT_DIRECTION:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_DEFAULT_LEFT_DIRECTION')
	static var FREQUENCY_SHIFTER_DEFAULT_LEFT_DIRECTION:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_DIRECTION_DOWN')
	static var FREQUENCY_SHIFTER_DIRECTION_DOWN:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_DIRECTION_UP')
	static var FREQUENCY_SHIFTER_DIRECTION_UP:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_DIRECTION_OFF')
	static var FREQUENCY_SHIFTER_DIRECTION_OFF:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_MIN_RIGHT_DIRECTION')
	static var FREQUENCY_SHIFTER_MIN_RIGHT_DIRECTION:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_MAX_RIGHT_DIRECTION')
	static var FREQUENCY_SHIFTER_MAX_RIGHT_DIRECTION:ALuint;

	@:native('AL_FREQUENCY_SHIFTER_DEFAULT_RIGHT_DIRECTION')
	static var FREQUENCY_SHIFTER_DEFAULT_RIGHT_DIRECTION:ALuint;

	@:native('AL_VOCAL_MORPHER_MIN_PHONEMEA')
	static var VOCAL_MORPHER_MIN_PHONEMEA:ALuint;

	@:native('AL_VOCAL_MORPHER_MAX_PHONEMEA')
	static var VOCAL_MORPHER_MAX_PHONEMEA:ALuint;

	@:native('AL_VOCAL_MORPHER_DEFAULT_PHONEMEA')
	static var VOCAL_MORPHER_DEFAULT_PHONEMEA:ALuint;

	@:native('AL_VOCAL_MORPHER_MIN_PHONEMEA_COARSE_TUNING')
	static var VOCAL_MORPHER_MIN_PHONEMEA_COARSE_TUNING:ALuint;

	@:native('AL_VOCAL_MORPHER_MAX_PHONEMEA_COARSE_TUNING')
	static var VOCAL_MORPHER_MAX_PHONEMEA_COARSE_TUNING:ALuint;

	@:native('AL_VOCAL_MORPHER_DEFAULT_PHONEMEA_COARSE_TUNING')
	static var VOCAL_MORPHER_DEFAULT_PHONEMEA_COARSE_TUNING:ALuint;

	@:native('AL_VOCAL_MORPHER_MIN_PHONEMEB')
	static var VOCAL_MORPHER_MIN_PHONEMEB:ALuint;

	@:native('AL_VOCAL_MORPHER_MAX_PHONEMEB')
	static var VOCAL_MORPHER_MAX_PHONEMEB:ALuint;

	@:native('AL_VOCAL_MORPHER_DEFAULT_PHONEMEB')
	static var VOCAL_MORPHER_DEFAULT_PHONEMEB:ALuint;

	@:native('AL_VOCAL_MORPHER_MIN_PHONEMEB_COARSE_TUNING')
	static var VOCAL_MORPHER_MIN_PHONEMEB_COARSE_TUNING:ALuint;

	@:native('AL_VOCAL_MORPHER_MAX_PHONEMEB_COARSE_TUNING')
	static var VOCAL_MORPHER_MAX_PHONEMEB_COARSE_TUNING:ALuint;

	@:native('AL_VOCAL_MORPHER_DEFAULT_PHONEMEB_COARSE_TUNING')
	static var VOCAL_MORPHER_DEFAULT_PHONEMEB_COARSE_TUNING:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_A')
	static var VOCAL_MORPHER_PHONEME_A:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_E')
	static var VOCAL_MORPHER_PHONEME_E:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_I')
	static var VOCAL_MORPHER_PHONEME_I:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_O')
	static var VOCAL_MORPHER_PHONEME_O:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_U')
	static var VOCAL_MORPHER_PHONEME_U:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_AA')
	static var VOCAL_MORPHER_PHONEME_AA:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_AE')
	static var VOCAL_MORPHER_PHONEME_AE:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_AH')
	static var VOCAL_MORPHER_PHONEME_AH:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_AO')
	static var VOCAL_MORPHER_PHONEME_AO:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_EH')
	static var VOCAL_MORPHER_PHONEME_EH:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_ER')
	static var VOCAL_MORPHER_PHONEME_ER:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_IH')
	static var VOCAL_MORPHER_PHONEME_IH:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_IY')
	static var VOCAL_MORPHER_PHONEME_IY:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_UH')
	static var VOCAL_MORPHER_PHONEME_UH:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_UW')
	static var VOCAL_MORPHER_PHONEME_UW:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_B')
	static var VOCAL_MORPHER_PHONEME_B:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_D')
	static var VOCAL_MORPHER_PHONEME_D:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_F')
	static var VOCAL_MORPHER_PHONEME_F:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_G')
	static var VOCAL_MORPHER_PHONEME_G:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_J')
	static var VOCAL_MORPHER_PHONEME_J:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_K')
	static var VOCAL_MORPHER_PHONEME_K:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_L')
	static var VOCAL_MORPHER_PHONEME_L:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_M')
	static var VOCAL_MORPHER_PHONEME_M:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_N')
	static var VOCAL_MORPHER_PHONEME_N:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_P')
	static var VOCAL_MORPHER_PHONEME_P:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_R')
	static var VOCAL_MORPHER_PHONEME_R:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_S')
	static var VOCAL_MORPHER_PHONEME_S:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_T')
	static var VOCAL_MORPHER_PHONEME_T:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_V')
	static var VOCAL_MORPHER_PHONEME_V:ALuint;

	@:native('AL_VOCAL_MORPHER_PHONEME_Z')
	static var VOCAL_MORPHER_PHONEME_Z:ALuint;

	@:native('AL_VOCAL_MORPHER_WAVEFORM_SINUSOID')
	static var VOCAL_MORPHER_WAVEFORM_SINUSOID:ALuint;

	@:native('AL_VOCAL_MORPHER_WAVEFORM_TRIANGLE')
	static var VOCAL_MORPHER_WAVEFORM_TRIANGLE:ALuint;

	@:native('AL_VOCAL_MORPHER_WAVEFORM_SAWTOOTH')
	static var VOCAL_MORPHER_WAVEFORM_SAWTOOTH:ALuint;

	@:native('AL_VOCAL_MORPHER_MIN_WAVEFORM')
	static var VOCAL_MORPHER_MIN_WAVEFORM:ALuint;

	@:native('AL_VOCAL_MORPHER_MAX_WAVEFORM')
	static var VOCAL_MORPHER_MAX_WAVEFORM:ALuint;

	@:native('AL_VOCAL_MORPHER_DEFAULT_WAVEFORM')
	static var VOCAL_MORPHER_DEFAULT_WAVEFORM:ALuint;

	@:native('AL_VOCAL_MORPHER_MIN_RATE')
	static var VOCAL_MORPHER_MIN_RATE:ALuint;

	@:native('AL_VOCAL_MORPHER_MAX_RATE')
	static var VOCAL_MORPHER_MAX_RATE:ALuint;

	@:native('AL_VOCAL_MORPHER_DEFAULT_RATE')
	static var VOCAL_MORPHER_DEFAULT_RATE:ALuint;

	@:native('AL_PITCH_SHIFTER_MIN_COARSE_TUNE')
	static var PITCH_SHIFTER_MIN_COARSE_TUNE:ALuint;

	@:native('AL_PITCH_SHIFTER_MAX_COARSE_TUNE')
	static var PITCH_SHIFTER_MAX_COARSE_TUNE:ALuint;

	@:native('AL_PITCH_SHIFTER_DEFAULT_COARSE_TUNE')
	static var PITCH_SHIFTER_DEFAULT_COARSE_TUNE:ALuint;

	@:native('AL_PITCH_SHIFTER_MIN_FINE_TUNE')
	static var PITCH_SHIFTER_MIN_FINE_TUNE:ALuint;

	@:native('AL_PITCH_SHIFTER_MAX_FINE_TUNE')
	static var PITCH_SHIFTER_MAX_FINE_TUNE:ALuint;

	@:native('AL_PITCH_SHIFTER_DEFAULT_FINE_TUNE')
	static var PITCH_SHIFTER_DEFAULT_FINE_TUNE:ALuint;

	@:native('AL_RING_MODULATOR_MIN_FREQUENCY')
	static var RING_MODULATOR_MIN_FREQUENCY:ALuint;

	@:native('AL_RING_MODULATOR_MAX_FREQUENCY')
	static var RING_MODULATOR_MAX_FREQUENCY:ALuint;

	@:native('AL_RING_MODULATOR_DEFAULT_FREQUENCY')
	static var RING_MODULATOR_DEFAULT_FREQUENCY:ALuint;

	@:native('AL_RING_MODULATOR_MIN_HIGHPASS_CUTOFF')
	static var RING_MODULATOR_MIN_HIGHPASS_CUTOFF:ALuint;

	@:native('AL_RING_MODULATOR_MAX_HIGHPASS_CUTOFF')
	static var RING_MODULATOR_MAX_HIGHPASS_CUTOFF:ALuint;

	@:native('AL_RING_MODULATOR_DEFAULT_HIGHPASS_CUTOFF')
	static var RING_MODULATOR_DEFAULT_HIGHPASS_CUTOFF:ALuint;

	@:native('AL_RING_MODULATOR_SINUSOID')
	static var RING_MODULATOR_SINUSOID:ALuint;

	@:native('AL_RING_MODULATOR_SAWTOOTH')
	static var RING_MODULATOR_SAWTOOTH:ALuint;

	@:native('AL_RING_MODULATOR_SQUARE')
	static var RING_MODULATOR_SQUARE:ALuint;

	@:native('AL_RING_MODULATOR_MIN_WAVEFORM')
	static var RING_MODULATOR_MIN_WAVEFORM:ALuint;

	@:native('AL_RING_MODULATOR_MAX_WAVEFORM')
	static var RING_MODULATOR_MAX_WAVEFORM:ALuint;

	@:native('AL_RING_MODULATOR_DEFAULT_WAVEFORM')
	static var RING_MODULATOR_DEFAULT_WAVEFORM:ALuint;

	@:native('AL_AUTOWAH_MIN_ATTACK_TIME')
	static var AUTOWAH_MIN_ATTACK_TIME:ALuint;

	@:native('AL_AUTOWAH_MAX_ATTACK_TIME')
	static var AUTOWAH_MAX_ATTACK_TIME:ALuint;

	@:native('AL_AUTOWAH_DEFAULT_ATTACK_TIME')
	static var AUTOWAH_DEFAULT_ATTACK_TIME:ALuint;

	@:native('AL_AUTOWAH_MIN_RELEASE_TIME')
	static var AUTOWAH_MIN_RELEASE_TIME:ALuint;

	@:native('AL_AUTOWAH_MAX_RELEASE_TIME')
	static var AUTOWAH_MAX_RELEASE_TIME:ALuint;

	@:native('AL_AUTOWAH_DEFAULT_RELEASE_TIME')
	static var AUTOWAH_DEFAULT_RELEASE_TIME:ALuint;

	@:native('AL_AUTOWAH_MIN_RESONANCE')
	static var AUTOWAH_MIN_RESONANCE:ALuint;

	@:native('AL_AUTOWAH_MAX_RESONANCE')
	static var AUTOWAH_MAX_RESONANCE:ALuint;

	@:native('AL_AUTOWAH_DEFAULT_RESONANCE')
	static var AUTOWAH_DEFAULT_RESONANCE:ALuint;

	@:native('AL_AUTOWAH_MIN_PEAK_GAIN')
	static var AUTOWAH_MIN_PEAK_GAIN:ALuint;

	@:native('AL_AUTOWAH_MAX_PEAK_GAIN')
	static var AUTOWAH_MAX_PEAK_GAIN:ALuint;

	@:native('AL_AUTOWAH_DEFAULT_PEAK_GAIN')
	static var AUTOWAH_DEFAULT_PEAK_GAIN:ALuint;

	@:native('AL_COMPRESSOR_MIN_ONOFF')
	static var COMPRESSOR_MIN_ONOFF:ALuint;

	@:native('AL_COMPRESSOR_MAX_ONOFF')
	static var COMPRESSOR_MAX_ONOFF:ALuint;

	@:native('AL_COMPRESSOR_DEFAULT_ONOFF')
	static var COMPRESSOR_DEFAULT_ONOFF:ALuint;

	@:native('AL_EQUALIZER_MIN_LOW_GAIN')
	static var EQUALIZER_MIN_LOW_GAIN:ALuint;

	@:native('AL_EQUALIZER_MAX_LOW_GAIN')
	static var EQUALIZER_MAX_LOW_GAIN:ALuint;

	@:native('AL_EQUALIZER_DEFAULT_LOW_GAIN')
	static var EQUALIZER_DEFAULT_LOW_GAIN:ALuint;

	@:native('AL_EQUALIZER_MIN_LOW_CUTOFF')
	static var EQUALIZER_MIN_LOW_CUTOFF:ALuint;

	@:native('AL_EQUALIZER_MAX_LOW_CUTOFF')
	static var EQUALIZER_MAX_LOW_CUTOFF:ALuint;

	@:native('AL_EQUALIZER_DEFAULT_LOW_CUTOFF')
	static var EQUALIZER_DEFAULT_LOW_CUTOFF:ALuint;

	@:native('AL_EQUALIZER_MIN_MID1_GAIN')
	static var EQUALIZER_MIN_MID1_GAIN:ALuint;

	@:native('AL_EQUALIZER_MAX_MID1_GAIN')
	static var EQUALIZER_MAX_MID1_GAIN:ALuint;

	@:native('AL_EQUALIZER_DEFAULT_MID1_GAIN')
	static var EQUALIZER_DEFAULT_MID1_GAIN:ALuint;

	@:native('AL_EQUALIZER_MIN_MID1_CENTER')
	static var EQUALIZER_MIN_MID1_CENTER:ALuint;

	@:native('AL_EQUALIZER_MAX_MID1_CENTER')
	static var EQUALIZER_MAX_MID1_CENTER:ALuint;

	@:native('AL_EQUALIZER_DEFAULT_MID1_CENTER')
	static var EQUALIZER_DEFAULT_MID1_CENTER:ALuint;

	@:native('AL_EQUALIZER_MIN_MID1_WIDTH')
	static var EQUALIZER_MIN_MID1_WIDTH:ALuint;

	@:native('AL_EQUALIZER_MAX_MID1_WIDTH')
	static var EQUALIZER_MAX_MID1_WIDTH:ALuint;

	@:native('AL_EQUALIZER_DEFAULT_MID1_WIDTH')
	static var EQUALIZER_DEFAULT_MID1_WIDTH:ALuint;

	@:native('AL_EQUALIZER_MIN_MID2_GAIN')
	static var EQUALIZER_MIN_MID2_GAIN:ALuint;

	@:native('AL_EQUALIZER_MAX_MID2_GAIN')
	static var EQUALIZER_MAX_MID2_GAIN:ALuint;

	@:native('AL_EQUALIZER_DEFAULT_MID2_GAIN')
	static var EQUALIZER_DEFAULT_MID2_GAIN:ALuint;

	@:native('AL_EQUALIZER_MIN_MID2_CENTER')
	static var EQUALIZER_MIN_MID2_CENTER:ALuint;

	@:native('AL_EQUALIZER_MAX_MID2_CENTER')
	static var EQUALIZER_MAX_MID2_CENTER:ALuint;

	@:native('AL_EQUALIZER_DEFAULT_MID2_CENTER')
	static var EQUALIZER_DEFAULT_MID2_CENTER:ALuint;

	@:native('AL_EQUALIZER_MIN_MID2_WIDTH')
	static var EQUALIZER_MIN_MID2_WIDTH:ALuint;

	@:native('AL_EQUALIZER_MAX_MID2_WIDTH')
	static var EQUALIZER_MAX_MID2_WIDTH:ALuint;

	@:native('AL_EQUALIZER_DEFAULT_MID2_WIDTH')
	static var EQUALIZER_DEFAULT_MID2_WIDTH:ALuint;

	@:native('AL_EQUALIZER_MIN_HIGH_GAIN')
	static var EQUALIZER_MIN_HIGH_GAIN:ALuint;

	@:native('AL_EQUALIZER_MAX_HIGH_GAIN')
	static var EQUALIZER_MAX_HIGH_GAIN:ALuint;

	@:native('AL_EQUALIZER_DEFAULT_HIGH_GAIN')
	static var EQUALIZER_DEFAULT_HIGH_GAIN:ALuint;

	@:native('AL_EQUALIZER_MIN_HIGH_CUTOFF')
	static var EQUALIZER_MIN_HIGH_CUTOFF:ALuint;

	@:native('AL_EQUALIZER_MAX_HIGH_CUTOFF')
	static var EQUALIZER_MAX_HIGH_CUTOFF:ALuint;

	@:native('AL_EQUALIZER_DEFAULT_HIGH_CUTOFF')
	static var EQUALIZER_DEFAULT_HIGH_CUTOFF:ALuint;

	@:native('AL_MIN_AIR_ABSORPTION_FACTOR')
	static var MIN_AIR_ABSORPTION_FACTOR:ALuint;

	@:native('AL_MAX_AIR_ABSORPTION_FACTOR')
	static var MAX_AIR_ABSORPTION_FACTOR:ALuint;

	@:native('AL_DEFAULT_AIR_ABSORPTION_FACTOR')
	static var DEFAULT_AIR_ABSORPTION_FACTOR:ALuint;

	@:native('AL_MIN_ROOM_ROLLOFF_FACTOR')
	static var MIN_ROOM_ROLLOFF_FACTOR:ALuint;

	@:native('AL_MAX_ROOM_ROLLOFF_FACTOR')
	static var MAX_ROOM_ROLLOFF_FACTOR:ALuint;

	@:native('AL_DEFAULT_ROOM_ROLLOFF_FACTOR')
	static var DEFAULT_ROOM_ROLLOFF_FACTOR:ALuint;

	@:native('AL_MIN_CONE_OUTER_GAINHF')
	static var MIN_CONE_OUTER_GAINHF:ALuint;

	@:native('AL_MAX_CONE_OUTER_GAINHF')
	static var MAX_CONE_OUTER_GAINHF:ALuint;

	@:native('AL_DEFAULT_CONE_OUTER_GAINHF')
	static var DEFAULT_CONE_OUTER_GAINHF:ALuint;

	@:native('AL_MIN_DIRECT_FILTER_GAINHF_AUTO')
	static var MIN_DIRECT_FILTER_GAINHF_AUTO:ALuint;

	@:native('AL_MAX_DIRECT_FILTER_GAINHF_AUTO')
	static var MAX_DIRECT_FILTER_GAINHF_AUTO:ALuint;

	@:native('AL_DEFAULT_DIRECT_FILTER_GAINHF_AUTO')
	static var DEFAULT_DIRECT_FILTER_GAINHF_AUTO:ALuint;

	@:native('AL_MIN_AUXILIARY_SEND_FILTER_GAIN_AUTO')
	static var MIN_AUXILIARY_SEND_FILTER_GAIN_AUTO:ALuint;

	@:native('AL_MAX_AUXILIARY_SEND_FILTER_GAIN_AUTO')
	static var MAX_AUXILIARY_SEND_FILTER_GAIN_AUTO:ALuint;

	@:native('AL_DEFAULT_AUXILIARY_SEND_FILTER_GAIN_AUTO')
	static var DEFAULT_AUXILIARY_SEND_FILTER_GAIN_AUTO:ALuint;

	@:native('AL_MIN_AUXILIARY_SEND_FILTER_GAINHF_AUTO')
	static var MIN_AUXILIARY_SEND_FILTER_GAINHF_AUTO:ALuint;

	@:native('AL_MAX_AUXILIARY_SEND_FILTER_GAINHF_AUTO')
	static var MAX_AUXILIARY_SEND_FILTER_GAINHF_AUTO:ALuint;

	@:native('AL_DEFAULT_AUXILIARY_SEND_FILTER_GAINHF_AUTO')
	static var DEFAULT_AUXILIARY_SEND_FILTER_GAINHF_AUTO:ALuint;

	@:native('AL_MIN_METERS_PER_UNIT')
	static var MIN_METERS_PER_UNIT:ALuint;

	@:native('AL_MAX_METERS_PER_UNIT')
	static var MAX_METERS_PER_UNIT:ALuint;

	@:native('AL_DEFAULT_METERS_PER_UNIT')
	static var DEFAULT_METERS_PER_UNIT:ALuint;

	@:native('AL_SOURCE_DISTANCE_MODEL')
	static var SOURCE_DISTANCE_MODEL:ALuint;

	@:native('AL_BYTE_RW_OFFSETS_SOFT')
	static var BYTE_RW_OFFSETS_SOFT:ALuint;

	@:native('AL_SAMPLE_RW_OFFSETS_SOFT')
	static var SAMPLE_RW_OFFSETS_SOFT:ALuint;

	@:native('AL_LOOP_POINTS_SOFT')
	static var LOOP_POINTS_SOFT:ALuint;

	@:native('AL_FOLDBACK_EVENT_BLOCK')
	static var FOLDBACK_EVENT_BLOCK:ALuint;

	@:native('AL_FOLDBACK_EVENT_START')
	static var FOLDBACK_EVENT_START:ALuint;

	@:native('AL_FOLDBACK_EVENT_STOP')
	static var FOLDBACK_EVENT_STOP:ALuint;

	@:native('AL_FOLDBACK_MODE_MONO')
	static var FOLDBACK_MODE_MONO:ALuint;

	@:native('AL_FOLDBACK_MODE_STEREO')
	static var FOLDBACK_MODE_STEREO:ALuint;

	@:native('AL_DEDICATED_GAIN')
	static var DEDICATED_GAIN:ALuint;

	@:native('AL_EFFECT_DEDICATED_DIALOGUE')
	static var EFFECT_DEDICATED_DIALOGUE:ALuint;

	@:native('AL_EFFECT_DEDICATED_LOW_FREQUENCY_EFFECT')
	static var EFFECT_DEDICATED_LOW_FREQUENCY_EFFECT:ALuint;

	@:native('AL_MONO_SOFT')
	static var MONO_SOFT:ALuint;

	@:native('AL_STEREO_SOFT')
	static var STEREO_SOFT:ALuint;

	@:native('AL_REAR_SOFT')
	static var REAR_SOFT:ALuint;

	@:native('AL_QUAD_SOFT')
	static var QUAD_SOFT:ALuint;

	@:native('AL_5POINT1_SOFT')
	static var _5POINT1_SOFT:ALuint;

	@:native('AL_6POINT1_SOFT')
	static var _6POINT1_SOFT:ALuint;

	@:native('AL_7POINT1_SOFT')
	static var _7POINT1_SOFT:ALuint;

	@:native('AL_BYTE_SOFT')
	static var BYTE_SOFT:ALuint;

	@:native('AL_UNSIGNED_BYTE_SOFT')
	static var UNSIGNED_BYTE_SOFT:ALuint;

	@:native('AL_SHORT_SOFT')
	static var SHORT_SOFT:ALuint;

	@:native('AL_UNSIGNED_SHORT_SOFT')
	static var UNSIGNED_SHORT_SOFT:ALuint;

	@:native('AL_INT_SOFT')
	static var INT_SOFT:ALuint;

	@:native('AL_UNSIGNED_INT_SOFT')
	static var UNSIGNED_INT_SOFT:ALuint;

	@:native('AL_FLOAT_SOFT')
	static var FLOAT_SOFT:ALuint;

	@:native('AL_DOUBLE_SOFT')
	static var DOUBLE_SOFT:ALuint;

	@:native('AL_BYTE3_SOFT')
	static var BYTE3_SOFT:ALuint;

	@:native('AL_UNSIGNED_BYTE3_SOFT')
	static var UNSIGNED_BYTE3_SOFT:ALuint;

	@:native('AL_MONO8_SOFT')
	static var MONO8_SOFT:ALuint;

	@:native('AL_MONO16_SOFT')
	static var MONO16_SOFT:ALuint;

	@:native('AL_MONO32F_SOFT')
	static var MONO32F_SOFT:ALuint;

	@:native('AL_STEREO8_SOFT')
	static var STEREO8_SOFT:ALuint;

	@:native('AL_STEREO16_SOFT')
	static var STEREO16_SOFT:ALuint;

	@:native('AL_STEREO32F_SOFT')
	static var STEREO32F_SOFT:ALuint;

	@:native('AL_QUAD8_SOFT')
	static var QUAD8_SOFT:ALuint;

	@:native('AL_QUAD16_SOFT')
	static var QUAD16_SOFT:ALuint;

	@:native('AL_QUAD32F_SOFT')
	static var QUAD32F_SOFT:ALuint;

	@:native('AL_REAR8_SOFT')
	static var REAR8_SOFT:ALuint;

	@:native('AL_REAR16_SOFT')
	static var REAR16_SOFT:ALuint;

	@:native('AL_REAR32F_SOFT')
	static var REAR32F_SOFT:ALuint;

	@:native('AL_5POINT1_8_SOFT')
	static var _5POINT1_8_SOFT:ALuint;

	@:native('AL_5POINT1_16_SOFT')
	static var _5POINT1_16_SOFT:ALuint;

	@:native('AL_5POINT1_32F_SOFT')
	static var _5POINT1_32F_SOFT:ALuint;

	@:native('AL_6POINT1_8_SOFT')
	static var _6POINT1_8_SOFT:ALuint;

	@:native('AL_6POINT1_16_SOFT')
	static var _6POINT1_16_SOFT:ALuint;

	@:native('AL_6POINT1_32F_SOFT')
	static var _6POINT1_32F_SOFT:ALuint;

	@:native('AL_7POINT1_8_SOFT')
	static var _7POINT1_8_SOFT:ALuint;

	@:native('AL_7POINT1_16_SOFT')
	static var _7POINT1_16_SOFT:ALuint;

	@:native('AL_7POINT1_32F_SOFT')
	static var _7POINT1_32F_SOFT:ALuint;

	@:native('AL_INTERNAL_FORMAT_SOFT')
	static var INTERNAL_FORMAT_SOFT:ALuint;

	@:native('AL_BYTE_LENGTH_SOFT')
	static var BYTE_LENGTH_SOFT:ALuint;

	@:native('AL_SAMPLE_LENGTH_SOFT')
	static var SAMPLE_LENGTH_SOFT:ALuint;

	@:native('AL_SEC_LENGTH_SOFT')
	static var SEC_LENGTH_SOFT:ALuint;

	@:native('AL_DIRECT_CHANNELS_SOFT')
	static var DIRECT_CHANNELS_SOFT:ALuint;

	@:native('AL_STEREO_ANGLES')
	static var STEREO_ANGLES:ALuint;

	@:native('AL_SOURCE_RADIUS')
	static var SOURCE_RADIUS:ALuint;

	@:native('AL_SAMPLE_OFFSET_LATENCY_SOFT')
	static var SAMPLE_OFFSET_LATENCY_SOFT:ALuint;

	@:native('AL_SEC_OFFSET_LATENCY_SOFT')
	static var SEC_OFFSET_LATENCY_SOFT:ALuint;

	@:native('AL_DEFERRED_UPDATES_SOFT')
	static var DEFERRED_UPDATES_SOFT:ALuint;

	@:native('AL_UNPACK_BLOCK_ALIGNMENT_SOFT')
	static var UNPACK_BLOCK_ALIGNMENT_SOFT:ALuint;

	@:native('AL_PACK_BLOCK_ALIGNMENT_SOFT')
	static var PACK_BLOCK_ALIGNMENT_SOFT:ALuint;

	@:native('AL_FORMAT_MONO_MSADPCM_SOFT')
	static var FORMAT_MONO_MSADPCM_SOFT:ALuint;

	@:native('AL_FORMAT_STEREO_MSADPCM_SOFT')
	static var FORMAT_STEREO_MSADPCM_SOFT:ALuint;

	@:native('AL_FORMAT_BFORMAT2D_8')
	static var FORMAT_BFORMAT2D_8:ALuint;

	@:native('AL_FORMAT_BFORMAT2D_16')
	static var FORMAT_BFORMAT2D_16:ALuint;

	@:native('AL_FORMAT_BFORMAT2D_FLOAT32')
	static var FORMAT_BFORMAT2D_FLOAT32:ALuint;

	@:native('AL_FORMAT_BFORMAT3D_8')
	static var FORMAT_BFORMAT3D_8:ALuint;

	@:native('AL_FORMAT_BFORMAT3D_16')
	static var FORMAT_BFORMAT3D_16:ALuint;

	@:native('AL_FORMAT_BFORMAT3D_FLOAT32')
	static var FORMAT_BFORMAT3D_FLOAT32:ALuint;

	@:native('AL_FORMAT_BFORMAT2D_MULAW')
	static var FORMAT_BFORMAT2D_MULAW:ALuint;

	@:native('AL_FORMAT_BFORMAT3D_MULAW')
	static var FORMAT_BFORMAT3D_MULAW:ALuint;

	@:native('AL_GAIN_LIMIT_SOFT')
	static var GAIN_LIMIT_SOFT:ALuint;

	@:native('AL_NUM_RESAMPLERS_SOFT')
	static var NUM_RESAMPLERS_SOFT:ALuint;

	@:native('AL_DEFAULT_RESAMPLER_SOFT')
	static var DEFAULT_RESAMPLER_SOFT:ALuint;

	@:native('AL_SOURCE_RESAMPLER_SOFT')
	static var SOURCE_RESAMPLER_SOFT:ALuint;

	@:native('AL_RESAMPLER_NAME_SOFT')
	static var RESAMPLER_NAME_SOFT:ALuint;

	@:native('AL_SOURCE_SPATIALIZE_SOFT')
	static var SOURCE_SPATIALIZE_SOFT:ALuint;

	@:native('AL_AUTO_SOFT')
	static var AUTO_SOFT:ALuint;

	@:native('AL_SAMPLE_OFFSET_CLOCK_SOFT')
	static var SAMPLE_OFFSET_CLOCK_SOFT:ALuint;

	@:native('AL_SEC_OFFSET_CLOCK_SOFT')
	static var SEC_OFFSET_CLOCK_SOFT:ALuint;

	@:native('AL_DROP_UNMATCHED_SOFT')
	static var DROP_UNMATCHED_SOFT:ALuint;

	@:native('AL_REMIX_UNMATCHED_SOFT')
	static var REMIX_UNMATCHED_SOFT:ALuint;

	@:native('AL_AMBISONIC_LAYOUT_SOFT')
	static var AMBISONIC_LAYOUT_SOFT:ALuint;

	@:native('AL_AMBISONIC_SCALING_SOFT')
	static var AMBISONIC_SCALING_SOFT:ALuint;

	@:native('AL_FUMA_SOFT')
	static var FUMA_SOFT:ALuint;

	@:native('AL_ACN_SOFT')
	static var ACN_SOFT:ALuint;

	@:native('AL_SN3D_SOFT')
	static var SN3D_SOFT:ALuint;

	@:native('AL_N3D_SOFT')
	static var N3D_SOFT:ALuint;

	@:native('AL_EFFECTSLOT_TARGET_SOFT')
	static var EFFECTSLOT_TARGET_SOFT:ALuint;

	@:native('AL_EVENT_CALLBACK_FUNCTION_SOFT')
	static var EVENT_CALLBACK_FUNCTION_SOFT:ALuint;

	@:native('AL_EVENT_CALLBACK_USER_PARAM_SOFT')
	static var EVENT_CALLBACK_USER_PARAM_SOFT:ALuint;

	@:native('AL_EVENT_TYPE_BUFFER_COMPLETED_SOFT')
	static var EVENT_TYPE_BUFFER_COMPLETED_SOFT:ALuint;

	@:native('AL_EVENT_TYPE_SOURCE_STATE_CHANGED_SOFT')
	static var EVENT_TYPE_SOURCE_STATE_CHANGED_SOFT:ALuint;

	@:native('AL_EVENT_TYPE_DISCONNECTED_SOFT')
	static var EVENT_TYPE_DISCONNECTED_SOFT:ALuint;

	@:native('AL_BUFFER_CALLBACK_FUNCTION_SOFT')
	static var BUFFER_CALLBACK_FUNCTION_SOFT:ALuint;

	@:native('AL_BUFFER_CALLBACK_USER_PARAM_SOFT')
	static var BUFFER_CALLBACK_USER_PARAM_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ2CHN8_SOFT')
	static var FORMAT_UHJ2CHN8_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ2CHN16_SOFT')
	static var FORMAT_UHJ2CHN16_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ2CHN_FLOAT32_SOFT')
	static var FORMAT_UHJ2CHN_FLOAT32_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ3CHN8_SOFT')
	static var FORMAT_UHJ3CHN8_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ3CHN16_SOFT')
	static var FORMAT_UHJ3CHN16_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ3CHN_FLOAT32_SOFT')
	static var FORMAT_UHJ3CHN_FLOAT32_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ4CHN8_SOFT')
	static var FORMAT_UHJ4CHN8_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ4CHN16_SOFT')
	static var FORMAT_UHJ4CHN16_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ4CHN_FLOAT32_SOFT')
	static var FORMAT_UHJ4CHN_FLOAT32_SOFT:ALuint;

	@:native('AL_STEREO_MODE_SOFT')
	static var STEREO_MODE_SOFT:ALuint;

	@:native('AL_NORMAL_SOFT')
	static var NORMAL_SOFT:ALuint;

	@:native('AL_SUPER_STEREO_SOFT')
	static var SUPER_STEREO_SOFT:ALuint;

	@:native('AL_SUPER_STEREO_WIDTH_SOFT')
	static var SUPER_STEREO_WIDTH_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ2CHN_MULAW_SOFT')
	static var FORMAT_UHJ2CHN_MULAW_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ2CHN_ALAW_SOFT')
	static var FORMAT_UHJ2CHN_ALAW_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ2CHN_IMA4_SOFT')
	static var FORMAT_UHJ2CHN_IMA4_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ2CHN_MSADPCM_SOFT')
	static var FORMAT_UHJ2CHN_MSADPCM_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ3CHN_MULAW_SOFT')
	static var FORMAT_UHJ3CHN_MULAW_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ3CHN_ALAW_SOFT')
	static var FORMAT_UHJ3CHN_ALAW_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ4CHN_MULAW_SOFT')
	static var FORMAT_UHJ4CHN_MULAW_SOFT:ALuint;

	@:native('AL_FORMAT_UHJ4CHN_ALAW_SOFT')
	static var FORMAT_UHJ4CHN_ALAW_SOFT:ALuint;

	@:native('AL_DONT_CARE_EXT')
	static var DONT_CARE_EXT:ALuint;

	@:native('AL_DEBUG_OUTPUT_EXT')
	static var DEBUG_OUTPUT_EXT:ALuint;

	@:native('AL_DEBUG_CALLBACK_FUNCTION_EXT')
	static var DEBUG_CALLBACK_FUNCTION_EXT:ALuint;

	@:native('AL_DEBUG_CALLBACK_USER_PARAM_EXT')
	static var DEBUG_CALLBACK_USER_PARAM_EXT:ALuint;

	@:native('AL_DEBUG_SOURCE_API_EXT')
	static var DEBUG_SOURCE_API_EXT:ALuint;

	@:native('AL_DEBUG_SOURCE_AUDIO_SYSTEM_EXT')
	static var DEBUG_SOURCE_AUDIO_SYSTEM_EXT:ALuint;

	@:native('AL_DEBUG_SOURCE_THIRD_PARTY_EXT')
	static var DEBUG_SOURCE_THIRD_PARTY_EXT:ALuint;

	@:native('AL_DEBUG_SOURCE_APPLICATION_EXT')
	static var DEBUG_SOURCE_APPLICATION_EXT:ALuint;

	@:native('AL_DEBUG_SOURCE_OTHER_EXT')
	static var DEBUG_SOURCE_OTHER_EXT:ALuint;

	@:native('AL_DEBUG_TYPE_ERROR_EXT')
	static var DEBUG_TYPE_ERROR_EXT:ALuint;

	@:native('AL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_EXT')
	static var DEBUG_TYPE_DEPRECATED_BEHAVIOR_EXT:ALuint;

	@:native('AL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_EXT')
	static var DEBUG_TYPE_UNDEFINED_BEHAVIOR_EXT:ALuint;

	@:native('AL_DEBUG_TYPE_PORTABILITY_EXT')
	static var DEBUG_TYPE_PORTABILITY_EXT:ALuint;

	@:native('AL_DEBUG_TYPE_PERFORMANCE_EXT')
	static var DEBUG_TYPE_PERFORMANCE_EXT:ALuint;

	@:native('AL_DEBUG_TYPE_MARKER_EXT')
	static var DEBUG_TYPE_MARKER_EXT:ALuint;

	@:native('AL_DEBUG_TYPE_PUSH_GROUP_EXT')
	static var DEBUG_TYPE_PUSH_GROUP_EXT:ALuint;

	@:native('AL_DEBUG_TYPE_POP_GROUP_EXT')
	static var DEBUG_TYPE_POP_GROUP_EXT:ALuint;

	@:native('AL_DEBUG_TYPE_OTHER_EXT')
	static var DEBUG_TYPE_OTHER_EXT:ALuint;

	@:native('AL_DEBUG_SEVERITY_HIGH_EXT')
	static var DEBUG_SEVERITY_HIGH_EXT:ALuint;

	@:native('AL_DEBUG_SEVERITY_MEDIUM_EXT')
	static var DEBUG_SEVERITY_MEDIUM_EXT:ALuint;

	@:native('AL_DEBUG_SEVERITY_LOW_EXT')
	static var DEBUG_SEVERITY_LOW_EXT:ALuint;

	@:native('AL_DEBUG_SEVERITY_NOTIFICATION_EXT')
	static var DEBUG_SEVERITY_NOTIFICATION_EXT:ALuint;

	@:native('AL_DEBUG_LOGGED_MESSAGES_EXT')
	static var DEBUG_LOGGED_MESSAGES_EXT:ALuint;

	@:native('AL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_EXT')
	static var DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_EXT:ALuint;

	@:native('AL_MAX_DEBUG_MESSAGE_LENGTH_EXT')
	static var MAX_DEBUG_MESSAGE_LENGTH_EXT:ALuint;

	@:native('AL_MAX_DEBUG_LOGGED_MESSAGES_EXT')
	static var MAX_DEBUG_LOGGED_MESSAGES_EXT:ALuint;

	@:native('AL_MAX_DEBUG_GROUP_STACK_DEPTH_EXT')
	static var MAX_DEBUG_GROUP_STACK_DEPTH_EXT:ALuint;

	@:native('AL_MAX_LABEL_LENGTH_EXT')
	static var MAX_LABEL_LENGTH_EXT:ALuint;

	@:native('AL_STACK_OVERFLOW_EXT')
	static var STACK_OVERFLOW_EXT:ALuint;

	@:native('AL_STACK_UNDERFLOW_EXT')
	static var STACK_UNDERFLOW_EXT:ALuint;

	@:native('AL_CONTEXT_FLAGS_EXT')
	static var CONTEXT_FLAGS_EXT:ALuint;

	@:native('AL_BUFFER_EXT')
	static var BUFFER_EXT:ALuint;

	@:native('AL_SOURCE_EXT')
	static var SOURCE_EXT:ALuint;

	@:native('AL_FILTER_EXT')
	static var FILTER_EXT:ALuint;

	@:native('AL_EFFECT_EXT')
	static var EFFECT_EXT:ALuint;

	@:native('AL_AUXILIARY_EFFECT_SLOT_EXT')
	static var AUXILIARY_EFFECT_SLOT_EXT:ALuint;

	@:native('AL_UNPACK_AMBISONIC_ORDER_SOFT')
	static var UNPACK_AMBISONIC_ORDER_SOFT:ALuint;

	@:native('alEnable')
	static function enable(capability:ALenum):Void;

	@:native('alDisable')
	static function disable(capability:ALenum):Void;

	@:native('alIsEnabled')
	static function isEnabled(capability:ALenum):ALboolean;

	@:native('alDopplerFactor')
	static function dopplerFactor(value:ALfloat):Void;

	@:native('alDopplerVelocity')
	static function dopplerVelocity(value:ALfloat):Void;

	@:native('alDistanceModel')
	static function distanceModel(distanceModel:ALenum):Void;

	@:native('alGetString')
	static function getString(param:ALenum):ConstALcharStar;

	@:native('alGetBooleanv')
	static function getBooleanv(param:ALenum, values:RawPointer<ALboolean>):Void;

	@:native('alGetIntegerv')
	static function getIntegerv(param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alGetFloatv')
	static function getFloatv(param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alGetDoublev')
	static function getDoublev(param:ALenum, values:RawPointer<ALdouble>):Void;

	@:native('alGetBoolean')
	static function getBoolean(param:ALenum):ALboolean;

	@:native('alGetInteger')
	static function getInteger(param:ALenum):ALint;

	@:native('alGetFloat')
	static function getFloat(param:ALenum):ALfloat;

	@:native('alGetDouble')
	static function getDouble(param:ALenum):ALdouble;

	@:native('alGetError')
	static function getError():ALenum;

	@:native('alIsExtensionPresent')
	static function isExtensionPresent(extname:ConstALcharStar):ALboolean;

	@:native('alGetProcAddress')
	static function getProcAddress(fname:ConstALcharStar):RawPointer<cpp.Void>;

	@:native('alGetEnumValue')
	static function getEnumValue(ename:ConstALcharStar):ALenum;

	@:native('alListenerf')
	static function listenerf(param:ALenum, value:ALfloat):Void;

	@:native('alListener3f')
	static function listener3f(param:ALenum, value1:ALfloat, value2:ALfloat, value3:ALfloat):Void;

	@:native('alListenerfv')
	static function listenerfv(param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alListeneri')
	static function listeneri(param:ALenum, value:ALint):Void;

	@:native('alListener3i')
	static function listener3i(param:ALenum, value1:ALint, value2:ALint, value3:ALint):Void;

	@:native('alListeneriv')
	static function listeneriv(param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alGetListenerf')
	static function getListenerf(param:ALenum, value:RawPointer<ALfloat>):Void;

	@:native('alGetListener3f')
	static function getListener3f(param:ALenum, value1:RawPointer<ALfloat>, value2:RawPointer<ALfloat>, value3:RawPointer<ALfloat>):Void;

	@:native('alGetListenerfv')
	static function getListenerfv(param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alGetListeneri')
	static function getListeneri(param:ALenum, value:RawPointer<ALint>):Void;

	@:native('alGetListener3i')
	static function getListener3i(param:ALenum, value1:RawPointer<ALint>, value2:RawPointer<ALint>, value3:RawPointer<ALint>):Void;

	@:native('alGetListeneriv')
	static function getListeneriv(param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alGenSources')
	static function genSources(n:ALsizei, sources:RawPointer<ALuint>):Void;

	@:native('alDeleteSources')
	static function deleteSources(n:ALsizei, sources:RawPointer<ALuint>):Void;

	@:native('alIsSource')
	static function isSource(source:ALuint):ALboolean;

	@:native('alSourcef')
	static function sourcef(source:ALuint, param:ALenum, value:ALfloat):Void;

	@:native('alSource3f')
	static function source3f(source:ALuint, param:ALenum, value1:ALfloat, value2:ALfloat, value3:ALfloat):Void;

	@:native('alSourcefv')
	static function sourcefv(source:ALuint, param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alSourcei')
	static function sourcei(source:ALuint, param:ALenum, value:ALint):Void;

	@:native('alSource3i')
	static function source3i(source:ALuint, param:ALenum, value1:ALint, value2:ALint, value3:ALint):Void;

	@:native('alSourceiv')
	static function sourceiv(source:ALuint, param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alGetSourcef')
	static function getSourcef(source:ALuint, param:ALenum, value:RawPointer<ALfloat>):Void;

	@:native('alGetSource3f')
	static function getSource3f(source:ALuint, param:ALenum, value1:RawPointer<ALfloat>, value2:RawPointer<ALfloat>, value3:RawPointer<ALfloat>):Void;

	@:native('alGetSourcefv')
	static function getSourcefv(source:ALuint, param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alGetSourcei')
	static function getSourcei(source:ALuint, param:ALenum, value:RawPointer<ALint>):Void;

	@:native('alGetSource3i')
	static function getSource3i(source:ALuint, param:ALenum, value1:RawPointer<ALint>, value2:RawPointer<ALint>, value3:RawPointer<ALint>):Void;

	@:native('alGetSourceiv')
	static function getSourceiv(source:ALuint, param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alSourcePlay')
	static function sourcePlay(source:ALuint):Void;

	@:native('alSourceStop')
	static function sourceStop(source:ALuint):Void;

	@:native('alSourceRewind')
	static function sourceRewind(source:ALuint):Void;

	@:native('alSourcePause')
	static function sourcePause(source:ALuint):Void;

	@:native('alSourcePlayv')
	static function sourcePlayv(n:ALsizei, sources:RawPointer<ALuint>):Void;

	@:native('alSourceStopv')
	static function sourceStopv(n:ALsizei, sources:RawPointer<ALuint>):Void;

	@:native('alSourceRewindv')
	static function sourceRewindv(n:ALsizei, sources:RawPointer<ALuint>):Void;

	@:native('alSourcePausev')
	static function sourcePausev(n:ALsizei, sources:RawPointer<ALuint>):Void;

	@:native('alSourceQueueBuffers')
	static function sourceQueueBuffers(source:ALuint, nb:ALsizei, buffers:RawPointer<ALuint>):Void;

	@:native('alSourceUnqueueBuffers')
	static function sourceUnqueueBuffers(source:ALuint, nb:ALsizei, buffers:RawPointer<ALuint>):Void;

	@:native('alGenBuffers')
	static function genBuffers(n:ALsizei, buffers:RawPointer<ALuint>):Void;

	@:native('alDeleteBuffers')
	static function deleteBuffers(n:ALsizei, buffers:RawPointer<ALuint>):Void;

	@:native('alIsBuffer')
	static function isBuffer(buffer:ALuint):ALboolean;

	@:native('alBufferData')
	static function bufferData(buffer:ALuint, format:ALenum, data:RawPointer<ALvoid>, size:ALsizei, samplerate:ALsizei):Void;

	@:native('alBufferf')
	static function bufferf(buffer:ALuint, param:ALenum, value:ALfloat):Void;

	@:native('alBuffer3f')
	static function buffer3f(buffer:ALuint, param:ALenum, value1:ALfloat, value2:ALfloat, value3:ALfloat):Void;

	@:native('alBufferfv')
	static function bufferfv(buffer:ALuint, param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alBufferi')
	static function bufferi(buffer:ALuint, param:ALenum, value:ALint):Void;

	@:native('alBuffer3i')
	static function buffer3i(buffer:ALuint, param:ALenum, value1:ALint, value2:ALint, value3:ALint):Void;

	@:native('alBufferiv')
	static function bufferiv(buffer:ALuint, param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alGetBufferf')
	static function getBufferf(buffer:ALuint, param:ALenum, value:RawPointer<ALfloat>):Void;

	@:native('alGetBuffer3f')
	static function getBuffer3f(buffer:ALuint, param:ALenum, value1:RawPointer<ALfloat>, value2:RawPointer<ALfloat>, value3:RawPointer<ALfloat>):Void;

	@:native('alGetBufferfv')
	static function getBufferfv(buffer:ALuint, param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alGetBufferi')
	static function getBufferi(buffer:ALuint, param:ALenum, value:RawPointer<ALint>):Void;

	@:native('alGetBuffer3i')
	static function getBuffer3i(buffer:ALuint, param:ALenum, value1:RawPointer<ALint>, value2:RawPointer<ALint>, value3:RawPointer<ALint>):Void;

	@:native('alGetBufferiv')
	static function getBufferiv(buffer:ALuint, param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alSpeedOfSound')
	static function speedOfSound(value:ALfloat):Void;

	@:native('alBufferDataStatic')
	static function bufferDataStatic(buffer:ALuint, format:ALenum, data:RawPointer<ALvoid>, size:ALsizei, freq:ALsizei):Void;

	@:native('alGenEffects')
	static function genEffects(n:ALsizei, effects:RawPointer<ALuint>):Void;

	@:native('alDeleteEffects')
	static function deleteEffects(n:ALsizei, effects:RawPointer<ALuint>):Void;

	@:native('alIsEffect')
	static function isEffect(effect:ALuint):ALboolean;

	@:native('alEffecti')
	static function effecti(effect:ALuint, param:ALenum, iValue:ALint):Void;

	@:native('alEffectiv')
	static function effectiv(effect:ALuint, param:ALenum, piValues:RawPointer<ALint>):Void;

	@:native('alEffectf')
	static function effectf(effect:ALuint, param:ALenum, flValue:ALfloat):Void;

	@:native('alEffectfv')
	static function effectfv(effect:ALuint, param:ALenum, pflValues:RawPointer<ALfloat>):Void;

	@:native('alGetEffecti')
	static function getEffecti(effect:ALuint, param:ALenum, iValue:RawPointer<ALint>):Void;

	@:native('alGetEffectiv')
	static function getEffectiv(effect:ALuint, param:ALenum, piValues:RawPointer<ALint>):Void;

	@:native('alGetEffectf')
	static function getEffectf(effect:ALuint, param:ALenum, flValue:RawPointer<ALfloat>):Void;

	@:native('alGetEffectfv')
	static function getEffectfv(effect:ALuint, param:ALenum, pflValues:RawPointer<ALfloat>):Void;

	@:native('alGenFilters')
	static function genFilters(n:ALsizei, filters:RawPointer<ALuint>):Void;

	@:native('alDeleteFilters')
	static function deleteFilters(n:ALsizei, filters:RawPointer<ALuint>):Void;

	@:native('alIsFilter')
	static function isFilter(filter:ALuint):ALboolean;

	@:native('alFilteri')
	static function filteri(filter:ALuint, param:ALenum, iValue:ALint):Void;

	@:native('alFilteriv')
	static function filteriv(filter:ALuint, param:ALenum, piValues:RawPointer<ALint>):Void;

	@:native('alFilterf')
	static function filterf(filter:ALuint, param:ALenum, flValue:ALfloat):Void;

	@:native('alFilterfv')
	static function filterfv(filter:ALuint, param:ALenum, pflValues:RawPointer<ALfloat>):Void;

	@:native('alGetFilteri')
	static function getFilteri(filter:ALuint, param:ALenum, iValue:RawPointer<ALint>):Void;

	@:native('alGetFilteriv')
	static function getFilteriv(filter:ALuint, param:ALenum, piValues:RawPointer<ALint>):Void;

	@:native('alGetFilterf')
	static function getFilterf(filter:ALuint, param:ALenum, flValue:RawPointer<ALfloat>):Void;

	@:native('alGetFilterfv')
	static function getFilterfv(filter:ALuint, param:ALenum, pflValues:RawPointer<ALfloat>):Void;

	@:native('alGenAuxiliaryEffectSlots')
	static function genAuxiliaryEffectSlots(n:ALsizei, effectslots:RawPointer<ALuint>):Void;

	@:native('alDeleteAuxiliaryEffectSlots')
	static function deleteAuxiliaryEffectSlots(n:ALsizei, effectslots:RawPointer<ALuint>):Void;

	@:native('alIsAuxiliaryEffectSlot')
	static function isAuxiliaryEffectSlot(effectslot:ALuint):ALboolean;

	@:native('alAuxiliaryEffectSloti')
	static function auxiliaryEffectSloti(effectslot:ALuint, param:ALenum, iValue:ALint):Void;

	@:native('alAuxiliaryEffectSlotiv')
	static function auxiliaryEffectSlotiv(effectslot:ALuint, param:ALenum, piValues:RawPointer<ALint>):Void;

	@:native('alAuxiliaryEffectSlotf')
	static function auxiliaryEffectSlotf(effectslot:ALuint, param:ALenum, flValue:ALfloat):Void;

	@:native('alAuxiliaryEffectSlotfv')
	static function auxiliaryEffectSlotfv(effectslot:ALuint, param:ALenum, pflValues:RawPointer<ALfloat>):Void;

	@:native('alGetAuxiliaryEffectSloti')
	static function getAuxiliaryEffectSloti(effectslot:ALuint, param:ALenum, iValue:RawPointer<ALint>):Void;

	@:native('alGetAuxiliaryEffectSlotiv')
	static function getAuxiliaryEffectSlotiv(effectslot:ALuint, param:ALenum, piValues:RawPointer<ALint>):Void;

	@:native('alGetAuxiliaryEffectSlotf')
	static function getAuxiliaryEffectSlotf(effectslot:ALuint, param:ALenum, flValue:RawPointer<ALfloat>):Void;

	@:native('alGetAuxiliaryEffectSlotfv')
	static function getAuxiliaryEffectSlotfv(effectslot:ALuint, param:ALenum, pflValues:RawPointer<ALfloat>):Void;

	@:native('alBufferSubDataSOFT')
	static function bufferSubDataSOFT(buffer:ALuint, format:ALenum, data:RawPointer<ALvoid>, offset:ALsizei, length:ALsizei):Void;

	@:native('alRequestFoldbackStart')
	static function requestFoldbackStart(mode:ALenum, count:ALsizei, length:ALsizei, mem:RawPointer<ALfloat>, callback:LPALFOLDBACKCALLBACK):Void;

	@:native('alRequestFoldbackStop')
	static function requestFoldbackStop():Void;

	@:native('alBufferSamplesSOFT')
	static function bufferSamplesSOFT(buffer:ALuint, samplerate:ALuint, internalformat:ALenum, samples:ALsizei, channels:ALenum, type:ALenum, data:RawPointer<ALvoid>):Void;

	@:native('alBufferSubSamplesSOFT')
	static function bufferSubSamplesSOFT(buffer:ALuint, offset:ALsizei, samples:ALsizei, channels:ALenum, type:ALenum, data:RawPointer<ALvoid>):Void;

	@:native('alGetBufferSamplesSOFT')
	static function getBufferSamplesSOFT(buffer:ALuint, offset:ALsizei, samples:ALsizei, channels:ALenum, type:ALenum, data:RawPointer<ALvoid>):Void;

	@:native('alIsBufferFormatSupportedSOFT')
	static function isBufferFormatSupportedSOFT(format:ALenum):ALboolean;

	@:native('alSourcedSOFT')
	static function sourcedSOFT(source:ALuint, param:ALenum, value:ALdouble):Void;

	@:native('alSource3dSOFT')
	static function source3dSOFT(source:ALuint, param:ALenum, value1:ALdouble, value2:ALdouble, value3:ALdouble):Void;

	@:native('alSourcedvSOFT')
	static function sourcedvSOFT(source:ALuint, param:ALenum, values:RawPointer<ALdouble>):Void;

	@:native('alGetSourcedSOFT')
	static function getSourcedSOFT(source:ALuint, param:ALenum, value:RawPointer<ALdouble>):Void;

	@:native('alGetSource3dSOFT')
	static function getSource3dSOFT(source:ALuint, param:ALenum, value1:RawPointer<ALdouble>, value2:RawPointer<ALdouble>, value3:RawPointer<ALdouble>):Void;

	@:native('alGetSourcedvSOFT')
	static function getSourcedvSOFT(source:ALuint, param:ALenum, values:RawPointer<ALdouble>):Void;

	@:native('alSourcei64SOFT')
	static function sourcei64SOFT(source:ALuint, param:ALenum, value:ALint64SOFT):Void;

	@:native('alSource3i64SOFT')
	static function source3i64SOFT(source:ALuint, param:ALenum, value1:ALint64SOFT, value2:ALint64SOFT, value3:ALint64SOFT):Void;

	@:native('alSourcei64vSOFT')
	static function sourcei64vSOFT(source:ALuint, param:ALenum, values:RawPointer<ALint64SOFT>):Void;

	@:native('alGetSourcei64SOFT')
	static function getSourcei64SOFT(source:ALuint, param:ALenum, value:RawPointer<ALint64SOFT>):Void;

	@:native('alGetSource3i64SOFT')
	static function getSource3i64SOFT(source:ALuint, param:ALenum, value1:RawPointer<ALint64SOFT>, value2:RawPointer<ALint64SOFT>, value3:RawPointer<ALint64SOFT>):Void;

	@:native('alGetSourcei64vSOFT')
	static function getSourcei64vSOFT(source:ALuint, param:ALenum, values:RawPointer<ALint64SOFT>):Void;

	@:native('alDeferUpdatesSOFT')
	static function deferUpdatesSOFT():Void;

	@:native('alProcessUpdatesSOFT')
	static function processUpdatesSOFT():Void;

	@:native('alGetStringiSOFT')
	static function getStringiSOFT(pname:ALenum, index:ALsizei):ConstALcharStar;

	@:native('alEventControlSOFT')
	static function eventControlSOFT(count:ALsizei, types:RawPointer<ALenum>, enable:ALboolean):Void;

	@:native('alEventCallbackSOFT')
	static function eventCallbackSOFT(callback:ALEVENTPROCSOFT, userParam:RawPointer<cpp.Void>):Void;

	@:native('alGetPointerSOFT')
	static function getPointerSOFT(pname:ALenum):RawPointer<cpp.Void>;

	@:native('alGetPointervSOFT')
	static function getPointervSOFT(pname:ALenum, values:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('alBufferCallbackSOFT')
	static function bufferCallbackSOFT(buffer:ALuint, format:ALenum, freq:ALsizei, callback:ALBUFFERCALLBACKTYPESOFT, userptr:RawPointer<ALvoid>):Void;

	@:native('alGetBufferPtrSOFT')
	static function getBufferPtrSOFT(buffer:ALuint, param:ALenum, ptr:RawPointer<RawPointer<ALvoid>>):Void;

	@:native('alGetBuffer3PtrSOFT')
	static function getBuffer3PtrSOFT(buffer:ALuint, param:ALenum, ptr0:RawPointer<RawPointer<ALvoid>>, ptr1:RawPointer<RawPointer<ALvoid>>, ptr2:RawPointer<RawPointer<ALvoid>>):Void;

	@:native('alGetBufferPtrvSOFT')
	static function getBufferPtrvSOFT(buffer:ALuint, param:ALenum, ptr:RawPointer<RawPointer<ALvoid>>):Void;

	@:native('alSourcePlayAtTimeSOFT')
	static function sourcePlayAtTimeSOFT(source:ALuint, start_time:ALint64SOFT):Void;

	@:native('alSourcePlayAtTimevSOFT')
	static function sourcePlayAtTimevSOFT(n:ALsizei, sources:RawPointer<ALuint>, start_time:ALint64SOFT):Void;

	@:native('alDebugMessageCallbackEXT')
	static function debugMessageCallbackEXT(callback:ALDEBUGPROCEXT, userParam:RawPointer<cpp.Void>):Void;

	@:native('alDebugMessageInsertEXT')
	static function debugMessageInsertEXT(source:ALenum, type:ALenum, id:ALuint, severity:ALenum, length:ALsizei, message:ConstALcharStar):Void;

	@:native('alDebugMessageControlEXT')
	static function debugMessageControlEXT(source:ALenum, type:ALenum, severity:ALenum, count:ALsizei, ids:RawPointer<ALuint>, enable:ALboolean):Void;

	@:native('alPushDebugGroupEXT')
	static function pushDebugGroupEXT(source:ALenum, id:ALuint, length:ALsizei, message:ConstALcharStar):Void;

	@:native('alPopDebugGroupEXT')
	static function popDebugGroupEXT():Void;

	@:native('alGetDebugMessageLogEXT')
	static function getDebugMessageLogEXT(count:ALuint, logBufSize:ALsizei, sources:RawPointer<ALenum>, types:RawPointer<ALenum>, ids:RawPointer<ALuint>, severities:RawPointer<ALenum>, lengths:RawPointer<ALsizei>, logBuf:CastALcharStar):ALuint;

	@:native('alObjectLabelEXT')
	static function objectLabelEXT(identifier:ALenum, name:ALuint, length:ALsizei, label:ConstALcharStar):Void;

	@:native('alGetObjectLabelEXT')
	static function getObjectLabelEXT(identifier:ALenum, name:ALuint, bufSize:ALsizei, length:RawPointer<ALsizei>, label:CastALcharStar):Void;

	@:native('alGetPointerEXT')
	static function getPointerEXT(pname:ALenum):RawPointer<cpp.Void>;

	@:native('alGetPointervEXT')
	static function getPointervEXT(pname:ALenum, values:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('alEnableDirect')
	static function enableDirect(context:RawPointer<ALCcontext>, capability:ALenum):Void;

	@:native('alDisableDirect')
	static function disableDirect(context:RawPointer<ALCcontext>, capability:ALenum):Void;

	@:native('alIsEnabledDirect')
	static function isEnabledDirect(context:RawPointer<ALCcontext>, capability:ALenum):ALboolean;

	@:native('alDopplerFactorDirect')
	static function dopplerFactorDirect(context:RawPointer<ALCcontext>, value:ALfloat):Void;

	@:native('alSpeedOfSoundDirect')
	static function speedOfSoundDirect(context:RawPointer<ALCcontext>, value:ALfloat):Void;

	@:native('alDistanceModelDirect')
	static function distanceModelDirect(context:RawPointer<ALCcontext>, distanceModel:ALenum):Void;

	@:native('alGetStringDirect')
	static function getStringDirect(context:RawPointer<ALCcontext>, param:ALenum):ConstALcharStar;

	@:native('alGetBooleanvDirect')
	static function getBooleanvDirect(context:RawPointer<ALCcontext>, param:ALenum, values:RawPointer<ALboolean>):Void;

	@:native('alGetIntegervDirect')
	static function getIntegervDirect(context:RawPointer<ALCcontext>, param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alGetFloatvDirect')
	static function getFloatvDirect(context:RawPointer<ALCcontext>, param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alGetDoublevDirect')
	static function getDoublevDirect(context:RawPointer<ALCcontext>, param:ALenum, values:RawPointer<ALdouble>):Void;

	@:native('alGetBooleanDirect')
	static function getBooleanDirect(context:RawPointer<ALCcontext>, param:ALenum):ALboolean;

	@:native('alGetIntegerDirect')
	static function getIntegerDirect(context:RawPointer<ALCcontext>, param:ALenum):ALint;

	@:native('alGetFloatDirect')
	static function getFloatDirect(context:RawPointer<ALCcontext>, param:ALenum):ALfloat;

	@:native('alGetDoubleDirect')
	static function getDoubleDirect(context:RawPointer<ALCcontext>, param:ALenum):ALdouble;

	@:native('alGetErrorDirect')
	static function getErrorDirect(context:RawPointer<ALCcontext>):ALenum;

	@:native('alIsExtensionPresentDirect')
	static function isExtensionPresentDirect(context:RawPointer<ALCcontext>, extname:ConstALcharStar):ALboolean;

	@:native('alGetProcAddressDirect')
	static function getProcAddressDirect(context:RawPointer<ALCcontext>, fname:ConstALcharStar):RawPointer<cpp.Void>;

	@:native('alGetEnumValueDirect')
	static function getEnumValueDirect(context:RawPointer<ALCcontext>, ename:ConstALcharStar):ALenum;

	@:native('alListenerfDirect')
	static function listenerfDirect(context:RawPointer<ALCcontext>, param:ALenum, value:ALfloat):Void;

	@:native('alListener3fDirect')
	static function listener3fDirect(context:RawPointer<ALCcontext>, param:ALenum, value1:ALfloat, value2:ALfloat, value3:ALfloat):Void;

	@:native('alListenerfvDirect')
	static function listenerfvDirect(context:RawPointer<ALCcontext>, param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alListeneriDirect')
	static function listeneriDirect(context:RawPointer<ALCcontext>, param:ALenum, value:ALint):Void;

	@:native('alListener3iDirect')
	static function listener3iDirect(context:RawPointer<ALCcontext>, param:ALenum, value1:ALint, value2:ALint, value3:ALint):Void;

	@:native('alListenerivDirect')
	static function listenerivDirect(context:RawPointer<ALCcontext>, param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alGetListenerfDirect')
	static function getListenerfDirect(context:RawPointer<ALCcontext>, param:ALenum, value:RawPointer<ALfloat>):Void;

	@:native('alGetListener3fDirect')
	static function getListener3fDirect(context:RawPointer<ALCcontext>, param:ALenum, value1:RawPointer<ALfloat>, value2:RawPointer<ALfloat>, value3:RawPointer<ALfloat>):Void;

	@:native('alGetListenerfvDirect')
	static function getListenerfvDirect(context:RawPointer<ALCcontext>, param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alGetListeneriDirect')
	static function getListeneriDirect(context:RawPointer<ALCcontext>, param:ALenum, value:RawPointer<ALint>):Void;

	@:native('alGetListener3iDirect')
	static function getListener3iDirect(context:RawPointer<ALCcontext>, param:ALenum, value1:RawPointer<ALint>, value2:RawPointer<ALint>, value3:RawPointer<ALint>):Void;

	@:native('alGetListenerivDirect')
	static function getListenerivDirect(context:RawPointer<ALCcontext>, param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alGenSourcesDirect')
	static function genSourcesDirect(context:RawPointer<ALCcontext>, n:ALsizei, sources:RawPointer<ALuint>):Void;

	@:native('alDeleteSourcesDirect')
	static function deleteSourcesDirect(context:RawPointer<ALCcontext>, n:ALsizei, sources:RawPointer<ALuint>):Void;

	@:native('alIsSourceDirect')
	static function isSourceDirect(context:RawPointer<ALCcontext>, source:ALuint):ALboolean;

	@:native('alSourcefDirect')
	static function sourcefDirect(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value:ALfloat):Void;

	@:native('alSource3fDirect')
	static function source3fDirect(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value1:ALfloat, value2:ALfloat, value3:ALfloat):Void;

	@:native('alSourcefvDirect')
	static function sourcefvDirect(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alSourceiDirect')
	static function sourceiDirect(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value:ALint):Void;

	@:native('alSource3iDirect')
	static function source3iDirect(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value1:ALint, value2:ALint, value3:ALint):Void;

	@:native('alSourceivDirect')
	static function sourceivDirect(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alGetSourcefDirect')
	static function getSourcefDirect(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value:RawPointer<ALfloat>):Void;

	@:native('alGetSource3fDirect')
	static function getSource3fDirect(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value1:RawPointer<ALfloat>, value2:RawPointer<ALfloat>, value3:RawPointer<ALfloat>):Void;

	@:native('alGetSourcefvDirect')
	static function getSourcefvDirect(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alGetSourceiDirect')
	static function getSourceiDirect(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value:RawPointer<ALint>):Void;

	@:native('alGetSource3iDirect')
	static function getSource3iDirect(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value1:RawPointer<ALint>, value2:RawPointer<ALint>, value3:RawPointer<ALint>):Void;

	@:native('alGetSourceivDirect')
	static function getSourceivDirect(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alSourcePlayDirect')
	static function sourcePlayDirect(context:RawPointer<ALCcontext>, source:ALuint):Void;

	@:native('alSourceStopDirect')
	static function sourceStopDirect(context:RawPointer<ALCcontext>, source:ALuint):Void;

	@:native('alSourceRewindDirect')
	static function sourceRewindDirect(context:RawPointer<ALCcontext>, source:ALuint):Void;

	@:native('alSourcePauseDirect')
	static function sourcePauseDirect(context:RawPointer<ALCcontext>, source:ALuint):Void;

	@:native('alSourcePlayvDirect')
	static function sourcePlayvDirect(context:RawPointer<ALCcontext>, n:ALsizei, sources:RawPointer<ALuint>):Void;

	@:native('alSourceStopvDirect')
	static function sourceStopvDirect(context:RawPointer<ALCcontext>, n:ALsizei, sources:RawPointer<ALuint>):Void;

	@:native('alSourceRewindvDirect')
	static function sourceRewindvDirect(context:RawPointer<ALCcontext>, n:ALsizei, sources:RawPointer<ALuint>):Void;

	@:native('alSourcePausevDirect')
	static function sourcePausevDirect(context:RawPointer<ALCcontext>, n:ALsizei, sources:RawPointer<ALuint>):Void;

	@:native('alSourceQueueBuffersDirect')
	static function sourceQueueBuffersDirect(context:RawPointer<ALCcontext>, source:ALuint, nb:ALsizei, buffers:RawPointer<ALuint>):Void;

	@:native('alSourceUnqueueBuffersDirect')
	static function sourceUnqueueBuffersDirect(context:RawPointer<ALCcontext>, source:ALuint, nb:ALsizei, buffers:RawPointer<ALuint>):Void;

	@:native('alGenBuffersDirect')
	static function genBuffersDirect(context:RawPointer<ALCcontext>, n:ALsizei, buffers:RawPointer<ALuint>):Void;

	@:native('alDeleteBuffersDirect')
	static function deleteBuffersDirect(context:RawPointer<ALCcontext>, n:ALsizei, buffers:RawPointer<ALuint>):Void;

	@:native('alIsBufferDirect')
	static function isBufferDirect(context:RawPointer<ALCcontext>, buffer:ALuint):ALboolean;

	@:native('alBufferDataDirect')
	static function bufferDataDirect(context:RawPointer<ALCcontext>, buffer:ALuint, format:ALenum, data:RawPointer<ALvoid>, size:ALsizei, samplerate:ALsizei):Void;

	@:native('alBufferfDirect')
	static function bufferfDirect(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, value:ALfloat):Void;

	@:native('alBuffer3fDirect')
	static function buffer3fDirect(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, value1:ALfloat, value2:ALfloat, value3:ALfloat):Void;

	@:native('alBufferfvDirect')
	static function bufferfvDirect(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alBufferiDirect')
	static function bufferiDirect(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, value:ALint):Void;

	@:native('alBuffer3iDirect')
	static function buffer3iDirect(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, value1:ALint, value2:ALint, value3:ALint):Void;

	@:native('alBufferivDirect')
	static function bufferivDirect(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alGetBufferfDirect')
	static function getBufferfDirect(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, value:RawPointer<ALfloat>):Void;

	@:native('alGetBuffer3fDirect')
	static function getBuffer3fDirect(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, value1:RawPointer<ALfloat>, value2:RawPointer<ALfloat>, value3:RawPointer<ALfloat>):Void;

	@:native('alGetBufferfvDirect')
	static function getBufferfvDirect(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, values:RawPointer<ALfloat>):Void;

	@:native('alGetBufferiDirect')
	static function getBufferiDirect(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, value:RawPointer<ALint>):Void;

	@:native('alGetBuffer3iDirect')
	static function getBuffer3iDirect(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, value1:RawPointer<ALint>, value2:RawPointer<ALint>, value3:RawPointer<ALint>):Void;

	@:native('alGetBufferivDirect')
	static function getBufferivDirect(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, values:RawPointer<ALint>):Void;

	@:native('alGenEffectsDirect')
	static function genEffectsDirect(context:RawPointer<ALCcontext>, n:ALsizei, effects:RawPointer<ALuint>):Void;

	@:native('alDeleteEffectsDirect')
	static function deleteEffectsDirect(context:RawPointer<ALCcontext>, n:ALsizei, effects:RawPointer<ALuint>):Void;

	@:native('alIsEffectDirect')
	static function isEffectDirect(context:RawPointer<ALCcontext>, effect:ALuint):ALboolean;

	@:native('alEffectiDirect')
	static function effectiDirect(context:RawPointer<ALCcontext>, effect:ALuint, param:ALenum, iValue:ALint):Void;

	@:native('alEffectivDirect')
	static function effectivDirect(context:RawPointer<ALCcontext>, effect:ALuint, param:ALenum, piValues:RawPointer<ALint>):Void;

	@:native('alEffectfDirect')
	static function effectfDirect(context:RawPointer<ALCcontext>, effect:ALuint, param:ALenum, flValue:ALfloat):Void;

	@:native('alEffectfvDirect')
	static function effectfvDirect(context:RawPointer<ALCcontext>, effect:ALuint, param:ALenum, pflValues:RawPointer<ALfloat>):Void;

	@:native('alGetEffectiDirect')
	static function getEffectiDirect(context:RawPointer<ALCcontext>, effect:ALuint, param:ALenum, piValue:RawPointer<ALint>):Void;

	@:native('alGetEffectivDirect')
	static function getEffectivDirect(context:RawPointer<ALCcontext>, effect:ALuint, param:ALenum, piValues:RawPointer<ALint>):Void;

	@:native('alGetEffectfDirect')
	static function getEffectfDirect(context:RawPointer<ALCcontext>, effect:ALuint, param:ALenum, pflValue:RawPointer<ALfloat>):Void;

	@:native('alGetEffectfvDirect')
	static function getEffectfvDirect(context:RawPointer<ALCcontext>, effect:ALuint, param:ALenum, pflValues:RawPointer<ALfloat>):Void;

	@:native('alGenFiltersDirect')
	static function genFiltersDirect(context:RawPointer<ALCcontext>, n:ALsizei, filters:RawPointer<ALuint>):Void;

	@:native('alDeleteFiltersDirect')
	static function deleteFiltersDirect(context:RawPointer<ALCcontext>, n:ALsizei, filters:RawPointer<ALuint>):Void;

	@:native('alIsFilterDirect')
	static function isFilterDirect(context:RawPointer<ALCcontext>, filter:ALuint):ALboolean;

	@:native('alFilteriDirect')
	static function filteriDirect(context:RawPointer<ALCcontext>, filter:ALuint, param:ALenum, iValue:ALint):Void;

	@:native('alFilterivDirect')
	static function filterivDirect(context:RawPointer<ALCcontext>, filter:ALuint, param:ALenum, piValues:RawPointer<ALint>):Void;

	@:native('alFilterfDirect')
	static function filterfDirect(context:RawPointer<ALCcontext>, filter:ALuint, param:ALenum, flValue:ALfloat):Void;

	@:native('alFilterfvDirect')
	static function filterfvDirect(context:RawPointer<ALCcontext>, filter:ALuint, param:ALenum, pflValues:RawPointer<ALfloat>):Void;

	@:native('alGetFilteriDirect')
	static function getFilteriDirect(context:RawPointer<ALCcontext>, filter:ALuint, param:ALenum, piValue:RawPointer<ALint>):Void;

	@:native('alGetFilterivDirect')
	static function getFilterivDirect(context:RawPointer<ALCcontext>, filter:ALuint, param:ALenum, piValues:RawPointer<ALint>):Void;

	@:native('alGetFilterfDirect')
	static function getFilterfDirect(context:RawPointer<ALCcontext>, filter:ALuint, param:ALenum, pflValue:RawPointer<ALfloat>):Void;

	@:native('alGetFilterfvDirect')
	static function getFilterfvDirect(context:RawPointer<ALCcontext>, filter:ALuint, param:ALenum, pflValues:RawPointer<ALfloat>):Void;

	@:native('alGenAuxiliaryEffectSlotsDirect')
	static function genAuxiliaryEffectSlotsDirect(context:RawPointer<ALCcontext>, n:ALsizei, effectslots:RawPointer<ALuint>):Void;

	@:native('alDeleteAuxiliaryEffectSlotsDirect')
	static function deleteAuxiliaryEffectSlotsDirect(context:RawPointer<ALCcontext>, n:ALsizei, effectslots:RawPointer<ALuint>):Void;

	@:native('alIsAuxiliaryEffectSlotDirect')
	static function isAuxiliaryEffectSlotDirect(context:RawPointer<ALCcontext>, effectslot:ALuint):ALboolean;

	@:native('alAuxiliaryEffectSlotiDirect')
	static function auxiliaryEffectSlotiDirect(context:RawPointer<ALCcontext>, effectslot:ALuint, param:ALenum, iValue:ALint):Void;

	@:native('alAuxiliaryEffectSlotivDirect')
	static function auxiliaryEffectSlotivDirect(context:RawPointer<ALCcontext>, effectslot:ALuint, param:ALenum, piValues:RawPointer<ALint>):Void;

	@:native('alAuxiliaryEffectSlotfDirect')
	static function auxiliaryEffectSlotfDirect(context:RawPointer<ALCcontext>, effectslot:ALuint, param:ALenum, flValue:ALfloat):Void;

	@:native('alAuxiliaryEffectSlotfvDirect')
	static function auxiliaryEffectSlotfvDirect(context:RawPointer<ALCcontext>, effectslot:ALuint, param:ALenum, pflValues:RawPointer<ALfloat>):Void;

	@:native('alGetAuxiliaryEffectSlotiDirect')
	static function getAuxiliaryEffectSlotiDirect(context:RawPointer<ALCcontext>, effectslot:ALuint, param:ALenum, piValue:RawPointer<ALint>):Void;

	@:native('alGetAuxiliaryEffectSlotivDirect')
	static function getAuxiliaryEffectSlotivDirect(context:RawPointer<ALCcontext>, effectslot:ALuint, param:ALenum, piValues:RawPointer<ALint>):Void;

	@:native('alGetAuxiliaryEffectSlotfDirect')
	static function getAuxiliaryEffectSlotfDirect(context:RawPointer<ALCcontext>, effectslot:ALuint, param:ALenum, pflValue:RawPointer<ALfloat>):Void;

	@:native('alGetAuxiliaryEffectSlotfvDirect')
	static function getAuxiliaryEffectSlotfvDirect(context:RawPointer<ALCcontext>, effectslot:ALuint, param:ALenum, pflValues:RawPointer<ALfloat>):Void;

	@:native('alBufferDataStaticDirect')
	static function bufferDataStaticDirect(context:RawPointer<ALCcontext>, buffer:ALuint, format:ALenum, data:RawPointer<ALvoid>, size:ALsizei, freq:ALsizei):Void;

	@:native('alDebugMessageCallbackDirectEXT')
	static function debugMessageCallbackDirectEXT(context:RawPointer<ALCcontext>, callback:ALDEBUGPROCEXT, userParam:RawPointer<cpp.Void>):Void;

	@:native('alDebugMessageInsertDirectEXT')
	static function debugMessageInsertDirectEXT(context:RawPointer<ALCcontext>, source:ALenum, type:ALenum, id:ALuint, severity:ALenum, length:ALsizei, message:ConstALcharStar):Void;

	@:native('alDebugMessageControlDirectEXT')
	static function debugMessageControlDirectEXT(context:RawPointer<ALCcontext>, source:ALenum, type:ALenum, severity:ALenum, count:ALsizei, ids:RawPointer<ALuint>, enable:ALboolean):Void;

	@:native('alPushDebugGroupDirectEXT')
	static function pushDebugGroupDirectEXT(context:RawPointer<ALCcontext>, source:ALenum, id:ALuint, length:ALsizei, message:ConstALcharStar):Void;

	@:native('alPopDebugGroupDirectEXT')
	static function popDebugGroupDirectEXT(context:RawPointer<ALCcontext>):Void;

	@:native('alGetDebugMessageLogDirectEXT')
	static function getDebugMessageLogDirectEXT(context:RawPointer<ALCcontext>, count:ALuint, logBufSize:ALsizei, sources:RawPointer<ALenum>, types:RawPointer<ALenum>, ids:RawPointer<ALuint>, severities:RawPointer<ALenum>, lengths:RawPointer<ALsizei>, logBuf:CastALcharStar):ALuint;

	@:native('alObjectLabelDirectEXT')
	static function objectLabelDirectEXT(context:RawPointer<ALCcontext>, identifier:ALenum, name:ALuint, length:ALsizei, label:ConstALcharStar):Void;

	@:native('alGetObjectLabelDirectEXT')
	static function getObjectLabelDirectEXT(context:RawPointer<ALCcontext>, identifier:ALenum, name:ALuint, bufSize:ALsizei, length:RawPointer<ALsizei>, label:CastALcharStar):Void;

	@:native('alGetPointerDirectEXT')
	static function getPointerDirectEXT(context:RawPointer<ALCcontext>, pname:ALenum):RawPointer<cpp.Void>;

	@:native('alGetPointervDirectEXT')
	static function getPointervDirectEXT(context:RawPointer<ALCcontext>, pname:ALenum, values:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('alRequestFoldbackStartDirect')
	static function requestFoldbackStartDirect(context:RawPointer<ALCcontext>, mode:ALenum, count:ALsizei, length:ALsizei, mem:RawPointer<ALfloat>, callback:LPALFOLDBACKCALLBACK):Void;

	@:native('alRequestFoldbackStopDirect')
	static function requestFoldbackStopDirect(context:RawPointer<ALCcontext>):Void;

	@:native('alBufferSubDataDirectSOFT')
	static function bufferSubDataDirectSOFT(context:RawPointer<ALCcontext>, buffer:ALuint, format:ALenum, data:RawPointer<ALvoid>, offset:ALsizei, length:ALsizei):Void;

	@:native('alSourcedDirectSOFT')
	static function sourcedDirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value:ALdouble):Void;

	@:native('alSource3dDirectSOFT')
	static function source3dDirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value1:ALdouble, value2:ALdouble, value3:ALdouble):Void;

	@:native('alSourcedvDirectSOFT')
	static function sourcedvDirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, values:RawPointer<ALdouble>):Void;

	@:native('alGetSourcedDirectSOFT')
	static function getSourcedDirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value:RawPointer<ALdouble>):Void;

	@:native('alGetSource3dDirectSOFT')
	static function getSource3dDirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value1:RawPointer<ALdouble>, value2:RawPointer<ALdouble>, value3:RawPointer<ALdouble>):Void;

	@:native('alGetSourcedvDirectSOFT')
	static function getSourcedvDirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, values:RawPointer<ALdouble>):Void;

	@:native('alSourcei64DirectSOFT')
	static function sourcei64DirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value:ALint64SOFT):Void;

	@:native('alSource3i64DirectSOFT')
	static function source3i64DirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value1:ALint64SOFT, value2:ALint64SOFT, value3:ALint64SOFT):Void;

	@:native('alSourcei64vDirectSOFT')
	static function sourcei64vDirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, values:RawPointer<ALint64SOFT>):Void;

	@:native('alGetSourcei64DirectSOFT')
	static function getSourcei64DirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value:RawPointer<ALint64SOFT>):Void;

	@:native('alGetSource3i64DirectSOFT')
	static function getSource3i64DirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, value1:RawPointer<ALint64SOFT>, value2:RawPointer<ALint64SOFT>, value3:RawPointer<ALint64SOFT>):Void;

	@:native('alGetSourcei64vDirectSOFT')
	static function getSourcei64vDirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, param:ALenum, values:RawPointer<ALint64SOFT>):Void;

	@:native('alDeferUpdatesDirectSOFT')
	static function deferUpdatesDirectSOFT(context:RawPointer<ALCcontext>):Void;

	@:native('alProcessUpdatesDirectSOFT')
	static function processUpdatesDirectSOFT(context:RawPointer<ALCcontext>):Void;

	@:native('alGetStringiDirectSOFT')
	static function getStringiDirectSOFT(context:RawPointer<ALCcontext>, pname:ALenum, index:ALsizei):ConstALcharStar;

	@:native('alEventControlDirectSOFT')
	static function eventControlDirectSOFT(context:RawPointer<ALCcontext>, count:ALsizei, types:RawPointer<ALenum>, enable:ALboolean):Void;

	@:native('alEventCallbackDirectSOFT')
	static function eventCallbackDirectSOFT(context:RawPointer<ALCcontext>, callback:ALEVENTPROCSOFT, userParam:RawPointer<cpp.Void>):Void;

	@:native('alGetPointerDirectSOFT')
	static function getPointerDirectSOFT(context:RawPointer<ALCcontext>, pname:ALenum):RawPointer<cpp.Void>;

	@:native('alGetPointervDirectSOFT')
	static function getPointervDirectSOFT(context:RawPointer<ALCcontext>, pname:ALenum, values:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('alBufferCallbackDirectSOFT')
	static function bufferCallbackDirectSOFT(context:RawPointer<ALCcontext>, buffer:ALuint, format:ALenum, freq:ALsizei, callback:ALBUFFERCALLBACKTYPESOFT, userptr:RawPointer<ALvoid>):Void;

	@:native('alGetBufferPtrDirectSOFT')
	static function getBufferPtrDirectSOFT(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, ptr:RawPointer<RawPointer<ALvoid>>):Void;

	@:native('alGetBuffer3PtrDirectSOFT')
	static function getBuffer3PtrDirectSOFT(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, ptr0:RawPointer<RawPointer<ALvoid>>, ptr1:RawPointer<RawPointer<ALvoid>>, ptr2:RawPointer<RawPointer<ALvoid>>):Void;

	@:native('alGetBufferPtrvDirectSOFT')
	static function getBufferPtrvDirectSOFT(context:RawPointer<ALCcontext>, buffer:ALuint, param:ALenum, ptr:RawPointer<RawPointer<ALvoid>>):Void;

	@:native('alSourcePlayAtTimeDirectSOFT')
	static function sourcePlayAtTimeDirectSOFT(context:RawPointer<ALCcontext>, source:ALuint, start_time:ALint64SOFT):Void;

	@:native('alSourcePlayAtTimevDirectSOFT')
	static function sourcePlayAtTimevDirectSOFT(context:RawPointer<ALCcontext>, n:ALsizei, sources:RawPointer<ALuint>, start_time:ALint64SOFT):Void;

	@:native('EAXSetDirect')
	static function EAXSetDirect(context:RawPointer<ALCcontext>, property_set_id:RawPointer<GUID>, property_id:ALuint, source_id:ALuint, value:RawPointer<ALvoid>, value_size:ALuint):ALenum;

	@:native('EAXGetDirect')
	static function EAXGetDirect(context:RawPointer<ALCcontext>, property_set_id:RawPointer<GUID>, property_id:ALuint, source_id:ALuint, value:RawPointer<ALvoid>, value_size:ALuint):ALenum;

	@:native('EAXSetBufferModeDirect')
	static function EAXSetBufferModeDirect(context:RawPointer<ALCcontext>, n:ALsizei, buffers:RawPointer<ALuint>, value:ALint):ALboolean;

	@:native('EAXGetBufferModeDirect')
	static function EAXGetBufferModeDirect(context:RawPointer<ALCcontext>, buffer:ALuint, pReserved:RawPointer<ALint>):ALenum;
}
