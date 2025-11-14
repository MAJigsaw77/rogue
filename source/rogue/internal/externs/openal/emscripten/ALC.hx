package rogue.internal.externs.openal.emscripten;

import cpp.Callable;
import cpp.Char;
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

import rogue.internal.externs.openal.emscripten.AL;

@:include('AL/alc.h')
@:native('ALCdevice')
extern class ALCdevice {}

@:include('AL/alc.h')
@:native('ALCcontext')
extern class ALCcontext {}

@:include('AL/alc.h')
@:native('ALCboolean')
@:scalar
@:coreType
@:notNull
extern abstract ALCboolean from Char to Char
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCboolean)');
	}
}

@:include('AL/alc.h')
@:native('ALCchar')
@:scalar
@:coreType
@:notNull
extern abstract ALCchar from Char to Char
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCchar)');
	}
}

extern abstract ConstALCcharStar(RawConstPointer<ALCchar>) to (RawConstPointer<ALCchar>)
{
	inline function new(s:String)
		this = untyped s.__s;

	@:from
	static public inline function fromString(s:String):ConstALCcharStar
		return new ConstALCcharStar(s);

	@:to extern public inline function toString():String
		return new String(untyped this);

	@:to extern public inline function toPointer():RawConstPointer<ALCchar>
		return this;
}

extern abstract CastALCcharStar(RawPointer<ALCchar>) to (RawPointer<ALCchar>)
{
	inline function new(s:String)
		this = cast untyped s.__s;

	@:from
	static public inline function fromString(s:String):CastALCcharStar
		return new CastALCcharStar(s);

	@:to extern public inline function toPointer():RawPointer<ALCchar>
		return this;
}

@:include('AL/alc.h')
@:native('ALCbyte')
@:scalar
@:coreType
@:notNull
extern abstract ALCbyte from Int8 to Int8
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCbyte)');
	}
}

@:include('AL/alc.h')
@:native('ALCubyte')
@:scalar
@:coreType
@:notNull
extern abstract ALCubyte from UInt8 to UInt8
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCubyte)');
	}
}

@:include('AL/alc.h')
@:native('ALCshort')
@:scalar
@:coreType
@:notNull
extern abstract ALCshort from Int16 to Int16
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCshort)');
	}
}

@:include('AL/alc.h')
@:native('ALCushort')
@:scalar
@:coreType
@:notNull
extern abstract ALCushort from UInt16 to UInt16
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCushort)');
	}
}

@:include('AL/alc.h')
@:native('ALCint')
@:scalar
@:coreType
@:notNull
extern abstract ALCint from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCint)');
	}
}

@:include('AL/alc.h')
@:native('ALCuint')
@:scalar
@:coreType
@:notNull
extern abstract ALCuint from UInt32 to UInt32
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCuint)');
	}
}

@:include('AL/alc.h')
@:native('ALCsizei')
@:scalar
@:coreType
@:notNull
extern abstract ALCsizei from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCsizei)');
	}
}

@:include('AL/alc.h')
@:native('ALCenum')
@:scalar
@:coreType
@:notNull
extern abstract ALCenum from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCenum)');
	}
}

@:include('AL/alc.h')
@:native('ALCfloat')
@:scalar
@:coreType
@:notNull
extern abstract ALCfloat from Single to Single
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCfloat)');
	}
}

@:include('AL/alc.h')
@:native('ALCdouble')
@:scalar
@:coreType
@:notNull
extern abstract ALCdouble from Float to Float
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCdouble)');
	}
}

@:include('AL/alc.h')
@:native('ALCvoid')
@:scalar
@:coreType
@:notNull
extern abstract ALCvoid from cpp.Void to cpp.Void
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCvoid)');
	}
}

@:include('AL/alc.h')
@:native('ALCint64SOFT')
@:scalar
@:coreType
@:notNull
extern abstract ALCint64SOFT from Int64 to Int64
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCint64SOFT)');
	}
}

@:include('AL/alc.h')
@:native('ALCuint64SOFT')
@:scalar
@:coreType
@:notNull
extern abstract ALCuint64SOFT from UInt64 to UInt64
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(ALCuint64SOFT)');
	}
}

typedef ALCEVENTPROCTYPESOFT = Callable<(eventType:ALCenum, deviceType:ALCenum, device:RawPointer<ALCdevice>, length:ALCsizei, message:RawConstPointer<ALCchar>, userParam:RawPointer<ALCvoid>)->Void>;

@:include('AL/alc.h')
@:include('AL/alext.h')
extern class ALC
{
	@:native('ALC_INVALID')
	static var INVALID:ALCuint;

	@:native('ALC_FALSE')
	static var FALSE:ALCuint;

	@:native('ALC_TRUE')
	static var TRUE:ALCuint;

	@:native('ALC_FREQUENCY')
	static var FREQUENCY:ALCuint;

	@:native('ALC_REFRESH')
	static var REFRESH:ALCuint;

	@:native('ALC_SYNC')
	static var SYNC:ALCuint;

	@:native('ALC_NO_ERROR')
	static var NO_ERROR:ALCuint;

	@:native('ALC_INVALID_DEVICE')
	static var INVALID_DEVICE:ALCuint;

	@:native('ALC_INVALID_CONTEXT')
	static var INVALID_CONTEXT:ALCuint;

	@:native('ALC_INVALID_ENUM')
	static var INVALID_ENUM:ALCuint;

	@:native('ALC_INVALID_VALUE')
	static var INVALID_VALUE:ALCuint;

	@:native('ALC_OUT_OF_MEMORY')
	static var OUT_OF_MEMORY:ALCuint;

	@:native('ALC_MAJOR_VERSION')
	static var MAJOR_VERSION:ALCuint;

	@:native('ALC_MINOR_VERSION')
	static var MINOR_VERSION:ALCuint;

	@:native('ALC_ATTRIBUTES_SIZE')
	static var ATTRIBUTES_SIZE:ALCuint;

	@:native('ALC_ALL_ATTRIBUTES')
	static var ALL_ATTRIBUTES:ALCuint;

	@:native('ALC_DEFAULT_DEVICE_SPECIFIER')
	static var DEFAULT_DEVICE_SPECIFIER:ALCuint;

	@:native('ALC_DEVICE_SPECIFIER')
	static var DEVICE_SPECIFIER:ALCuint;

	@:native('ALC_EXTENSIONS')
	static var EXTENSIONS:ALCuint;

	@:native('ALC_MONO_SOURCES')
	static var MONO_SOURCES:ALCuint;

	@:native('ALC_STEREO_SOURCES')
	static var STEREO_SOURCES:ALCuint;

	@:native('ALC_CAPTURE_DEVICE_SPECIFIER')
	static var CAPTURE_DEVICE_SPECIFIER:ALCuint;

	@:native('ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER')
	static var CAPTURE_DEFAULT_DEVICE_SPECIFIER:ALCuint;

	@:native('ALC_CAPTURE_SAMPLES')
	static var CAPTURE_SAMPLES:ALCuint;

	@:native('ALC_DEFAULT_ALL_DEVICES_SPECIFIER')
	static var DEFAULT_ALL_DEVICES_SPECIFIER:ALCuint;

	@:native('ALC_ALL_DEVICES_SPECIFIER')
	static var ALL_DEVICES_SPECIFIER:ALCuint;

	@:native('ALC_HRTF_SOFT')
	static var HRTF_SOFT:ALCuint;

	@:native('ALC_DONT_CARE_SOFT')
	static var DONT_CARE_SOFT:ALCuint;

	@:native('ALC_HRTF_STATUS_SOFT')
	static var HRTF_STATUS_SOFT:ALCuint;

	@:native('ALC_HRTF_DISABLED_SOFT')
	static var HRTF_DISABLED_SOFT:ALCuint;

	@:native('ALC_HRTF_ENABLED_SOFT')
	static var HRTF_ENABLED_SOFT:ALCuint;

	@:native('ALC_HRTF_DENIED_SOFT')
	static var HRTF_DENIED_SOFT:ALCuint;

	@:native('ALC_HRTF_REQUIRED_SOFT')
	static var HRTF_REQUIRED_SOFT:ALCuint;

	@:native('ALC_HRTF_HEADPHONES_DETECTED_SOFT')
	static var HRTF_HEADPHONES_DETECTED_SOFT:ALCuint;

	@:native('ALC_HRTF_UNSUPPORTED_FORMAT_SOFT')
	static var HRTF_UNSUPPORTED_FORMAT_SOFT:ALCuint;

	@:native('ALC_NUM_HRTF_SPECIFIERS_SOFT')
	static var NUM_HRTF_SPECIFIERS_SOFT:ALCuint;

	@:native('ALC_HRTF_SPECIFIER_SOFT')
	static var HRTF_SPECIFIER_SOFT:ALCuint;

	@:native('ALC_HRTF_ID_SOFT')
	static var HRTF_ID_SOFT:ALCuint;

	@:native('alcCreateContext')
	static function createContext(device:RawPointer<ALCdevice>, attrlist:RawPointer<ALCint>):RawPointer<ALCcontext>;

	@:native('alcMakeContextCurrent')
	static function makeContextCurrent(context:RawPointer<ALCcontext>):ALCboolean;

	@:native('alcProcessContext')
	static function processContext(context:RawPointer<ALCcontext>):Void;

	@:native('alcSuspendContext')
	static function suspendContext(context:RawPointer<ALCcontext>):Void;

	@:native('alcDestroyContext')
	static function destroyContext(context:RawPointer<ALCcontext>):Void;

	@:native('alcGetCurrentContext')
	static function getCurrentContext():RawPointer<ALCcontext>;

	@:native('alcGetContextsDevice')
	static function getContextsDevice(context:RawPointer<ALCcontext>):RawPointer<ALCdevice>;

	@:native('alcOpenDevice')
	static function openDevice(devicename:ConstALCcharStar):RawPointer<ALCdevice>;

	@:native('alcCloseDevice')
	static function closeDevice(device:RawPointer<ALCdevice>):ALCboolean;

	@:native('alcGetError')
	static function getError(device:RawPointer<ALCdevice>):ALCenum;

	@:native('alcIsExtensionPresent')
	static function isExtensionPresent(device:RawPointer<ALCdevice>, extname:ConstALCcharStar):ALCboolean;

	@:native('alcGetProcAddress')
	static function getProcAddress(device:RawPointer<ALCdevice>, funcname:ConstALCcharStar):RawPointer<ALCvoid>;

	@:native('alcGetEnumValue')
	static function getEnumValue(device:RawPointer<ALCdevice>, enumname:ConstALCcharStar):ALCenum;

	@:native('alcGetString')
	static function getString(device:RawPointer<ALCdevice>, param:ALCenum):ConstALCcharStar;

	@:native('alcGetIntegerv')
	static function getIntegerv(device:RawPointer<ALCdevice>, param:ALCenum, size:ALCsizei, values:RawPointer<ALCint>):Void;

	@:native('alcCaptureOpenDevice')
	static function captureOpenDevice(devicename:ConstALCcharStar, frequency:ALCuint, format:ALCenum, buffersize:ALCsizei):RawPointer<ALCdevice>;

	@:native('alcCaptureCloseDevice')
	static function captureCloseDevice(device:RawPointer<ALCdevice>):ALCboolean;

	@:native('alcCaptureStart')
	static function captureStart(device:RawPointer<ALCdevice>):Void;

	@:native('alcCaptureStop')
	static function captureStop(device:RawPointer<ALCdevice>):Void;

	@:native('alcCaptureSamples')
	static function captureSamples(device:RawPointer<ALCdevice>, buffer:RawPointer<ALCvoid>, samples:ALCsizei):Void;

	@:native('alcDevicePauseSOFT')
	static function devicePauseSOFT(device:RawPointer<ALCdevice>):Void;

	@:native('alcDeviceResumeSOFT')
	static function deviceResumeSOFT(device:RawPointer<ALCdevice>):Void;

	@:native('alcGetStringiSOFT')
	static function getStringiSOFT(device:RawPointer<ALCdevice>, paramName:ALCenum, index:ALCsizei):ConstALCcharStar;

	@:native('alcResetDeviceSOFT')
	static function resetDeviceSOFT(device:RawPointer<ALCdevice>, attribs:RawPointer<ALCint>):ALCboolean;
}
