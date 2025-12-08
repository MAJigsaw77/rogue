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

import rogue.internal.externs.openal.AL;

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

abstract CastALCcharStar(RawPointer<ALCchar>) to (RawPointer<ALCchar>)
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
extern abstract ALCfloat from Float32 to Float32
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

typedef ALCEVENTPROCTYPESOFT = Callable<(eventType:ALCenum, deviceType:ALCenum, device:RawPointer<ALCdevice>, length:ALCsizei, message:ConstALCcharStar, userParam:RawPointer<ALCvoid>)->Void>;

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

	@:native('ALC_CHAN_MAIN_LOKI')
	static var CHAN_MAIN_LOKI:ALCuint;

	@:native('ALC_CHAN_PCM_LOKI')
	static var CHAN_PCM_LOKI:ALCuint;

	@:native('ALC_CHAN_CD_LOKI')
	static var CHAN_CD_LOKI:ALCuint;

	@:native('ALC_EFX_MAJOR_VERSION')
	static var EFX_MAJOR_VERSION:ALCuint;

	@:native('ALC_EFX_MINOR_VERSION')
	static var EFX_MINOR_VERSION:ALCuint;

	@:native('ALC_MAX_AUXILIARY_SENDS')
	static var MAX_AUXILIARY_SENDS:ALCuint;

	@:native('ALC_CONNECTED')
	static var CONNECTED:ALCuint;

	@:native('ALC_FORMAT_CHANNELS_SOFT')
	static var FORMAT_CHANNELS_SOFT:ALCuint;

	@:native('ALC_FORMAT_TYPE_SOFT')
	static var FORMAT_TYPE_SOFT:ALCuint;

	@:native('ALC_BYTE_SOFT')
	static var BYTE_SOFT:ALCuint;

	@:native('ALC_UNSIGNED_BYTE_SOFT')
	static var UNSIGNED_BYTE_SOFT:ALCuint;

	@:native('ALC_SHORT_SOFT')
	static var SHORT_SOFT:ALCuint;

	@:native('ALC_UNSIGNED_SHORT_SOFT')
	static var UNSIGNED_SHORT_SOFT:ALCuint;

	@:native('ALC_INT_SOFT')
	static var INT_SOFT:ALCuint;

	@:native('ALC_UNSIGNED_INT_SOFT')
	static var UNSIGNED_INT_SOFT:ALCuint;

	@:native('ALC_FLOAT_SOFT')
	static var FLOAT_SOFT:ALCuint;

	@:native('ALC_MONO_SOFT')
	static var MONO_SOFT:ALCuint;

	@:native('ALC_STEREO_SOFT')
	static var STEREO_SOFT:ALCuint;

	@:native('ALC_QUAD_SOFT')
	static var QUAD_SOFT:ALCuint;

	@:native('ALC_5POINT1_SOFT')
	static var _5POINT1_SOFT:ALCuint;

	@:native('ALC_6POINT1_SOFT')
	static var _6POINT1_SOFT:ALCuint;

	@:native('ALC_7POINT1_SOFT')
	static var _7POINT1_SOFT:ALCuint;

	@:native('ALC_DEFAULT_FILTER_ORDER')
	static var DEFAULT_FILTER_ORDER:ALCuint;

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

	@:native('ALC_OUTPUT_LIMITER_SOFT')
	static var OUTPUT_LIMITER_SOFT:ALCuint;

	@:native('ALC_DEVICE_CLOCK_SOFT')
	static var DEVICE_CLOCK_SOFT:ALCuint;

	@:native('ALC_DEVICE_LATENCY_SOFT')
	static var DEVICE_LATENCY_SOFT:ALCuint;

	@:native('ALC_DEVICE_CLOCK_LATENCY_SOFT')
	static var DEVICE_CLOCK_LATENCY_SOFT:ALCuint;

	@:native('ALC_AMBISONIC_LAYOUT_SOFT')
	static var AMBISONIC_LAYOUT_SOFT:ALCuint;

	@:native('ALC_AMBISONIC_SCALING_SOFT')
	static var AMBISONIC_SCALING_SOFT:ALCuint;

	@:native('ALC_AMBISONIC_ORDER_SOFT')
	static var AMBISONIC_ORDER_SOFT:ALCuint;

	@:native('ALC_MAX_AMBISONIC_ORDER_SOFT')
	static var MAX_AMBISONIC_ORDER_SOFT:ALCuint;

	@:native('ALC_BFORMAT3D_SOFT')
	static var BFORMAT3D_SOFT:ALCuint;

	@:native('ALC_FUMA_SOFT')
	static var FUMA_SOFT:ALCuint;

	@:native('ALC_ACN_SOFT')
	static var ACN_SOFT:ALCuint;

	@:native('ALC_SN3D_SOFT')
	static var SN3D_SOFT:ALCuint;

	@:native('ALC_N3D_SOFT')
	static var N3D_SOFT:ALCuint;

	@:native('ALC_OUTPUT_MODE_SOFT')
	static var OUTPUT_MODE_SOFT:ALCuint;

	@:native('ALC_ANY_SOFT')
	static var ANY_SOFT:ALCuint;

	@:native('ALC_STEREO_BASIC_SOFT')
	static var STEREO_BASIC_SOFT:ALCuint;

	@:native('ALC_STEREO_UHJ_SOFT')
	static var STEREO_UHJ_SOFT:ALCuint;

	@:native('ALC_STEREO_HRTF_SOFT')
	static var STEREO_HRTF_SOFT:ALCuint;

	@:native('ALC_SURROUND_5_1_SOFT')
	static var SURROUND_5_1_SOFT:ALCuint;

	@:native('ALC_SURROUND_6_1_SOFT')
	static var SURROUND_6_1_SOFT:ALCuint;

	@:native('ALC_SURROUND_7_1_SOFT')
	static var SURROUND_7_1_SOFT:ALCuint;

	@:native('ALC_CONTEXT_FLAGS_EXT')
	static var CONTEXT_FLAGS_EXT:ALCuint;

	@:native('ALC_CONTEXT_DEBUG_BIT_EXT')
	static var CONTEXT_DEBUG_BIT_EXT:ALCuint;

	@:native('ALC_PLAYBACK_DEVICE_SOFT')
	static var PLAYBACK_DEVICE_SOFT:ALCuint;

	@:native('ALC_CAPTURE_DEVICE_SOFT')
	static var CAPTURE_DEVICE_SOFT:ALCuint;

	@:native('ALC_EVENT_TYPE_DEFAULT_DEVICE_CHANGED_SOFT')
	static var EVENT_TYPE_DEFAULT_DEVICE_CHANGED_SOFT:ALCuint;

	@:native('ALC_EVENT_TYPE_DEVICE_ADDED_SOFT')
	static var EVENT_TYPE_DEVICE_ADDED_SOFT:ALCuint;

	@:native('ALC_EVENT_TYPE_DEVICE_REMOVED_SOFT')
	static var EVENT_TYPE_DEVICE_REMOVED_SOFT:ALCuint;

	@:native('ALC_EVENT_SUPPORTED_SOFT')
	static var EVENT_SUPPORTED_SOFT:ALCuint;

	@:native('ALC_EVENT_NOT_SUPPORTED_SOFT')
	static var EVENT_NOT_SUPPORTED_SOFT:ALCuint;

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

	@:native('alcSetThreadContext')
	static function setThreadContext(context:RawPointer<ALCcontext>):ALCboolean;

	@:native('alcGetThreadContext')
	static function getThreadContext():RawPointer<ALCcontext>;

	@:native('alcLoopbackOpenDeviceSOFT')
	static function loopbackOpenDeviceSOFT(deviceName:ConstALCcharStar):RawPointer<ALCdevice>;

	@:native('alcIsRenderFormatSupportedSOFT')
	static function isRenderFormatSupportedSOFT(device:RawPointer<ALCdevice>, freq:ALCsizei, channels:ALCenum, type:ALCenum):ALCboolean;

	@:native('alcRenderSamplesSOFT')
	static function renderSamplesSOFT(device:RawPointer<ALCdevice>, buffer:RawPointer<ALCvoid>, samples:ALCsizei):Void;

	@:native('alcDevicePauseSOFT')
	static function devicePauseSOFT(device:RawPointer<ALCdevice>):Void;

	@:native('alcDeviceResumeSOFT')
	static function deviceResumeSOFT(device:RawPointer<ALCdevice>):Void;

	@:native('alcGetStringiSOFT')
	static function getStringiSOFT(device:RawPointer<ALCdevice>, paramName:ALCenum, index:ALCsizei):ConstALCcharStar;

	@:native('alcResetDeviceSOFT')
	static function resetDeviceSOFT(device:RawPointer<ALCdevice>, attribs:RawPointer<ALCint>):ALCboolean;

	@:native('alcGetInteger64vSOFT')
	static function getInteger64vSOFT(device:RawPointer<ALCdevice>, pname:ALCenum, size:ALsizei, values:RawPointer<ALCint64SOFT>):Void;

	@:native('alcReopenDeviceSOFT')
	static function reopenDeviceSOFT(device:RawPointer<ALCdevice>, deviceName:ConstALCcharStar, attribs:RawPointer<ALCint>):ALCboolean;

	@:native('alcEventIsSupportedSOFT')
	static function eventIsSupportedSOFT(eventType:ALCenum, deviceType:ALCenum):ALCenum;

	@:native('alcEventControlSOFT')
	static function eventControlSOFT(count:ALCsizei, events:RawPointer<ALCenum>, enable:ALCboolean):ALCboolean;

	@:native('alcEventCallbackSOFT')
	static function eventCallbackSOFT(callback:ALCEVENTPROCTYPESOFT, userParam:RawPointer<cpp.Void>):Void;

	@:native('alcGetProcAddress2')
	static function getProcAddress2(device:RawPointer<ALCdevice>, funcName:ConstALCcharStar):RawPointer<ALCvoid>;
}
