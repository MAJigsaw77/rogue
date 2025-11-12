package rogue.internal.externs.soft_oal;

import cpp.Callable;
import cpp.UInt64;
import cpp.Int64;
import cpp.UInt32;
import cpp.UInt16;
import cpp.Int16;
import cpp.UInt8;
import cpp.Int8;
import cpp.RawPointer;
import cpp.RawConstPointer;
import cpp.Char;
import cpp.SizeT;

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

extern abstract CastALcharStar(RawPointer<ALchar>) to (RawPointer<ALchar>)
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
extern abstract ALfloat from Single to Single
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
}
