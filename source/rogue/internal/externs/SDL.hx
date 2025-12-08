package rogue.internal.externs;

import cpp.Callable;
import cpp.CastCharStar;
import cpp.CastWCharTStar;
import cpp.ConstCharStar;
import cpp.ConstCharStarConstStar;
import cpp.ConstWCharTStar;
import cpp.Float32;
import cpp.Int16;
import cpp.Int32;
import cpp.Int64;
import cpp.Int8;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.Rest;
import cpp.SizeT;
import cpp.UInt16;
import cpp.UInt32;
import cpp.UInt64;
import cpp.UInt8;
import cpp.VarArg;
import cpp.VarList;

@:include('SDL3/SDL.h')
@:native('SDL_AsyncIO')
extern class SDL_AsyncIO {}

extern enum abstract SDL_AsyncIOTaskType(SDL_AsyncIOTaskType_Impl)
{
	@:native('SDL_ASYNCIO_TASK_READ')
	var SDL_ASYNCIO_TASK_READ;

	@:native('SDL_ASYNCIO_TASK_WRITE')
	var SDL_ASYNCIO_TASK_WRITE;

	@:native('SDL_ASYNCIO_TASK_CLOSE')
	var SDL_ASYNCIO_TASK_CLOSE;

	@:from
	static public inline function fromInt(i:Int):SDL_AsyncIOTaskType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_AsyncIOTaskType')
private extern class SDL_AsyncIOTaskType_Impl {}

extern enum abstract SDL_AsyncIOResult(SDL_AsyncIOResult_Impl)
{
	@:native('SDL_ASYNCIO_COMPLETE')
	var SDL_ASYNCIO_COMPLETE;

	@:native('SDL_ASYNCIO_FAILURE')
	var SDL_ASYNCIO_FAILURE;

	@:native('SDL_ASYNCIO_CANCELED')
	var SDL_ASYNCIO_CANCELED;

	@:from
	static public inline function fromInt(i:Int):SDL_AsyncIOResult
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_AsyncIOResult')
private extern class SDL_AsyncIOResult_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_AsyncIOOutcome')
extern class SDL_AsyncIOOutcome
{
	function new():Void;

	var asyncio:RawPointer<SDL_AsyncIO>;
	var type:SDL_AsyncIOTaskType;
	var result:SDL_AsyncIOResult;
	var buffer:RawPointer<cpp.Void>;
	var offset:UInt64;
	var bytes_requested:UInt64;
	var bytes_transferred:UInt64;
	var userdata:RawPointer<cpp.Void>;
}

@:include('SDL3/SDL.h')
@:native('SDL_AsyncIOQueue')
extern class SDL_AsyncIOQueue {}

@:include('SDL3/SDL.h')
@:native('SDL_SpinLock')
@:scalar
@:coreType
@:notNull
extern abstract SDL_SpinLock from Int to Int {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_AtomicInt')
extern class SDL_AtomicInt
{
	function new():Void;

	var value:Int;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_AtomicU32')
extern class SDL_AtomicU32
{
	function new():Void;

	var value:UInt32;
}

@:include('SDL3/SDL.h')
@:native('SDL_BlendMode')
@:scalar
@:coreType
@:notNull
extern abstract SDL_BlendMode from UInt32 to UInt32 {}

extern enum abstract SDL_BlendOperation(SDL_BlendOperation_Impl)
{
	@:native('SDL_BLENDOPERATION_ADD')
	var SDL_BLENDOPERATION_ADD;

	@:native('SDL_BLENDOPERATION_SUBTRACT')
	var SDL_BLENDOPERATION_SUBTRACT;

	@:native('SDL_BLENDOPERATION_REV_SUBTRACT')
	var SDL_BLENDOPERATION_REV_SUBTRACT;

	@:native('SDL_BLENDOPERATION_MINIMUM')
	var SDL_BLENDOPERATION_MINIMUM;

	@:native('SDL_BLENDOPERATION_MAXIMUM')
	var SDL_BLENDOPERATION_MAXIMUM;

	@:from
	static public inline function fromInt(i:Int):SDL_BlendOperation
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_BlendOperation')
private extern class SDL_BlendOperation_Impl {}

extern enum abstract SDL_BlendFactor(SDL_BlendFactor_Impl)
{
	@:native('SDL_BLENDFACTOR_ZERO')
	var SDL_BLENDFACTOR_ZERO;

	@:native('SDL_BLENDFACTOR_ONE')
	var SDL_BLENDFACTOR_ONE;

	@:native('SDL_BLENDFACTOR_SRC_COLOR')
	var SDL_BLENDFACTOR_SRC_COLOR;

	@:native('SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR')
	var SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR;

	@:native('SDL_BLENDFACTOR_SRC_ALPHA')
	var SDL_BLENDFACTOR_SRC_ALPHA;

	@:native('SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA')
	var SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA;

	@:native('SDL_BLENDFACTOR_DST_COLOR')
	var SDL_BLENDFACTOR_DST_COLOR;

	@:native('SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR')
	var SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR;

	@:native('SDL_BLENDFACTOR_DST_ALPHA')
	var SDL_BLENDFACTOR_DST_ALPHA;

	@:native('SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA')
	var SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA;

	@:from
	static public inline function fromInt(i:Int):SDL_BlendFactor
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_BlendFactor')
private extern class SDL_BlendFactor_Impl {}

@:include('SDL3/SDL.h')
@:native('SDL_CameraID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_CameraID from UInt32 to UInt32 {}

@:include('SDL3/SDL.h')
@:native('SDL_Camera')
extern class SDL_Camera {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_CameraSpec')
extern class SDL_CameraSpec
{
	function new():Void;

	var format:SDL_PixelFormat;
	var colorspace:SDL_Colorspace;
	var width:Int;
	var height:Int;
	var framerate_numerator:Int;
	var framerate_denominator:Int;
}

extern enum abstract SDL_CameraPosition(SDL_CameraPosition_Impl)
{
	@:native('SDL_CAMERA_POSITION_UNKNOWN')
	var SDL_CAMERA_POSITION_UNKNOWN;

	@:native('SDL_CAMERA_POSITION_FRONT_FACING')
	var SDL_CAMERA_POSITION_FRONT_FACING;

	@:native('SDL_CAMERA_POSITION_BACK_FACING')
	var SDL_CAMERA_POSITION_BACK_FACING;

	@:from
	static public inline function fromInt(i:Int):SDL_CameraPosition
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_CameraPosition')
private extern class SDL_CameraPosition_Impl {}

typedef SDL_ClipboardDataCallback = Callable<(userdata:RawPointer<cpp.Void>, mime_type:ConstCharStar, size:RawPointer<SizeT>) -> RawConstPointer<cpp.Void>>;
typedef SDL_ClipboardCleanupCallback = Callable<(userdata:RawPointer<cpp.Void>) -> Void>;

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_DialogFileFilter')
extern class SDL_DialogFileFilter
{
	function new():Void;

	var name:ConstCharStar;
	var pattern:ConstCharStar;
}

typedef SDL_DialogFileCallback = Callable<(userdata:RawPointer<cpp.Void>, filelist:ConstCharStarConstStar, filter:Int) -> Void>;

extern enum abstract SDL_FileDialogType(SDL_FileDialogType_Impl)
{
	@:native('SDL_FILEDIALOG_OPENFILE')
	var SDL_FILEDIALOG_OPENFILE;

	@:native('SDL_FILEDIALOG_SAVEFILE')
	var SDL_FILEDIALOG_SAVEFILE;

	@:native('SDL_FILEDIALOG_OPENFOLDER')
	var SDL_FILEDIALOG_OPENFOLDER;

	@:from
	static public inline function fromInt(i:Int):SDL_FileDialogType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_FileDialogType')
private extern class SDL_FileDialogType_Impl {}

extern enum abstract SDL_EventType(SDL_EventType_Impl)
{
	@:native('SDL_EVENT_FIRST')
	var SDL_EVENT_FIRST;

	@:native('SDL_EVENT_QUIT')
	var SDL_EVENT_QUIT;

	@:native('SDL_EVENT_TERMINATING')
	var SDL_EVENT_TERMINATING;

	@:native('SDL_EVENT_LOW_MEMORY')
	var SDL_EVENT_LOW_MEMORY;

	@:native('SDL_EVENT_WILL_ENTER_BACKGROUND')
	var SDL_EVENT_WILL_ENTER_BACKGROUND;

	@:native('SDL_EVENT_DID_ENTER_BACKGROUND')
	var SDL_EVENT_DID_ENTER_BACKGROUND;

	@:native('SDL_EVENT_WILL_ENTER_FOREGROUND')
	var SDL_EVENT_WILL_ENTER_FOREGROUND;

	@:native('SDL_EVENT_DID_ENTER_FOREGROUND')
	var SDL_EVENT_DID_ENTER_FOREGROUND;

	@:native('SDL_EVENT_LOCALE_CHANGED')
	var SDL_EVENT_LOCALE_CHANGED;

	@:native('SDL_EVENT_SYSTEM_THEME_CHANGED')
	var SDL_EVENT_SYSTEM_THEME_CHANGED;

	@:native('SDL_EVENT_DISPLAY_ORIENTATION')
	var SDL_EVENT_DISPLAY_ORIENTATION;

	@:native('SDL_EVENT_DISPLAY_ADDED')
	var SDL_EVENT_DISPLAY_ADDED;

	@:native('SDL_EVENT_DISPLAY_REMOVED')
	var SDL_EVENT_DISPLAY_REMOVED;

	@:native('SDL_EVENT_DISPLAY_MOVED')
	var SDL_EVENT_DISPLAY_MOVED;

	@:native('SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED')
	var SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED;

	@:native('SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED')
	var SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED;

	@:native('SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED')
	var SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED;

	@:native('SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED')
	var SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED;

	@:native('SDL_EVENT_DISPLAY_FIRST')
	var SDL_EVENT_DISPLAY_FIRST;

	@:native('SDL_EVENT_DISPLAY_LAST')
	var SDL_EVENT_DISPLAY_LAST;

	@:native('SDL_EVENT_WINDOW_SHOWN')
	var SDL_EVENT_WINDOW_SHOWN;

	@:native('SDL_EVENT_WINDOW_HIDDEN')
	var SDL_EVENT_WINDOW_HIDDEN;

	@:native('SDL_EVENT_WINDOW_EXPOSED')
	var SDL_EVENT_WINDOW_EXPOSED;

	@:native('SDL_EVENT_WINDOW_MOVED')
	var SDL_EVENT_WINDOW_MOVED;

	@:native('SDL_EVENT_WINDOW_RESIZED')
	var SDL_EVENT_WINDOW_RESIZED;

	@:native('SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED')
	var SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED;

	@:native('SDL_EVENT_WINDOW_METAL_VIEW_RESIZED')
	var SDL_EVENT_WINDOW_METAL_VIEW_RESIZED;

	@:native('SDL_EVENT_WINDOW_MINIMIZED')
	var SDL_EVENT_WINDOW_MINIMIZED;

	@:native('SDL_EVENT_WINDOW_MAXIMIZED')
	var SDL_EVENT_WINDOW_MAXIMIZED;

	@:native('SDL_EVENT_WINDOW_RESTORED')
	var SDL_EVENT_WINDOW_RESTORED;

	@:native('SDL_EVENT_WINDOW_MOUSE_ENTER')
	var SDL_EVENT_WINDOW_MOUSE_ENTER;

	@:native('SDL_EVENT_WINDOW_MOUSE_LEAVE')
	var SDL_EVENT_WINDOW_MOUSE_LEAVE;

	@:native('SDL_EVENT_WINDOW_FOCUS_GAINED')
	var SDL_EVENT_WINDOW_FOCUS_GAINED;

	@:native('SDL_EVENT_WINDOW_FOCUS_LOST')
	var SDL_EVENT_WINDOW_FOCUS_LOST;

	@:native('SDL_EVENT_WINDOW_CLOSE_REQUESTED')
	var SDL_EVENT_WINDOW_CLOSE_REQUESTED;

	@:native('SDL_EVENT_WINDOW_HIT_TEST')
	var SDL_EVENT_WINDOW_HIT_TEST;

	@:native('SDL_EVENT_WINDOW_ICCPROF_CHANGED')
	var SDL_EVENT_WINDOW_ICCPROF_CHANGED;

	@:native('SDL_EVENT_WINDOW_DISPLAY_CHANGED')
	var SDL_EVENT_WINDOW_DISPLAY_CHANGED;

	@:native('SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED')
	var SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED;

	@:native('SDL_EVENT_WINDOW_SAFE_AREA_CHANGED')
	var SDL_EVENT_WINDOW_SAFE_AREA_CHANGED;

	@:native('SDL_EVENT_WINDOW_OCCLUDED')
	var SDL_EVENT_WINDOW_OCCLUDED;

	@:native('SDL_EVENT_WINDOW_ENTER_FULLSCREEN')
	var SDL_EVENT_WINDOW_ENTER_FULLSCREEN;

	@:native('SDL_EVENT_WINDOW_LEAVE_FULLSCREEN')
	var SDL_EVENT_WINDOW_LEAVE_FULLSCREEN;

	@:native('SDL_EVENT_WINDOW_DESTROYED')
	var SDL_EVENT_WINDOW_DESTROYED;

	@:native('SDL_EVENT_WINDOW_HDR_STATE_CHANGED')
	var SDL_EVENT_WINDOW_HDR_STATE_CHANGED;

	@:native('SDL_EVENT_WINDOW_FIRST')
	var SDL_EVENT_WINDOW_FIRST;

	@:native('SDL_EVENT_WINDOW_LAST')
	var SDL_EVENT_WINDOW_LAST;

	@:native('SDL_EVENT_KEY_DOWN')
	var SDL_EVENT_KEY_DOWN;

	@:native('SDL_EVENT_KEY_UP')
	var SDL_EVENT_KEY_UP;

	@:native('SDL_EVENT_TEXT_EDITING')
	var SDL_EVENT_TEXT_EDITING;

	@:native('SDL_EVENT_TEXT_INPUT')
	var SDL_EVENT_TEXT_INPUT;

	@:native('SDL_EVENT_KEYMAP_CHANGED')
	var SDL_EVENT_KEYMAP_CHANGED;

	@:native('SDL_EVENT_KEYBOARD_ADDED')
	var SDL_EVENT_KEYBOARD_ADDED;

	@:native('SDL_EVENT_KEYBOARD_REMOVED')
	var SDL_EVENT_KEYBOARD_REMOVED;

	@:native('SDL_EVENT_TEXT_EDITING_CANDIDATES')
	var SDL_EVENT_TEXT_EDITING_CANDIDATES;

	@:native('SDL_EVENT_SCREEN_KEYBOARD_SHOWN')
	var SDL_EVENT_SCREEN_KEYBOARD_SHOWN;

	@:native('SDL_EVENT_SCREEN_KEYBOARD_HIDDEN')
	var SDL_EVENT_SCREEN_KEYBOARD_HIDDEN;

	@:native('SDL_EVENT_MOUSE_MOTION')
	var SDL_EVENT_MOUSE_MOTION;

	@:native('SDL_EVENT_MOUSE_BUTTON_DOWN')
	var SDL_EVENT_MOUSE_BUTTON_DOWN;

	@:native('SDL_EVENT_MOUSE_BUTTON_UP')
	var SDL_EVENT_MOUSE_BUTTON_UP;

	@:native('SDL_EVENT_MOUSE_WHEEL')
	var SDL_EVENT_MOUSE_WHEEL;

	@:native('SDL_EVENT_MOUSE_ADDED')
	var SDL_EVENT_MOUSE_ADDED;

	@:native('SDL_EVENT_MOUSE_REMOVED')
	var SDL_EVENT_MOUSE_REMOVED;

	@:native('SDL_EVENT_JOYSTICK_AXIS_MOTION')
	var SDL_EVENT_JOYSTICK_AXIS_MOTION;

	@:native('SDL_EVENT_JOYSTICK_BALL_MOTION')
	var SDL_EVENT_JOYSTICK_BALL_MOTION;

	@:native('SDL_EVENT_JOYSTICK_HAT_MOTION')
	var SDL_EVENT_JOYSTICK_HAT_MOTION;

	@:native('SDL_EVENT_JOYSTICK_BUTTON_DOWN')
	var SDL_EVENT_JOYSTICK_BUTTON_DOWN;

	@:native('SDL_EVENT_JOYSTICK_BUTTON_UP')
	var SDL_EVENT_JOYSTICK_BUTTON_UP;

	@:native('SDL_EVENT_JOYSTICK_ADDED')
	var SDL_EVENT_JOYSTICK_ADDED;

	@:native('SDL_EVENT_JOYSTICK_REMOVED')
	var SDL_EVENT_JOYSTICK_REMOVED;

	@:native('SDL_EVENT_JOYSTICK_BATTERY_UPDATED')
	var SDL_EVENT_JOYSTICK_BATTERY_UPDATED;

	@:native('SDL_EVENT_JOYSTICK_UPDATE_COMPLETE')
	var SDL_EVENT_JOYSTICK_UPDATE_COMPLETE;

	@:native('SDL_EVENT_GAMEPAD_AXIS_MOTION')
	var SDL_EVENT_GAMEPAD_AXIS_MOTION;

	@:native('SDL_EVENT_GAMEPAD_BUTTON_DOWN')
	var SDL_EVENT_GAMEPAD_BUTTON_DOWN;

	@:native('SDL_EVENT_GAMEPAD_BUTTON_UP')
	var SDL_EVENT_GAMEPAD_BUTTON_UP;

	@:native('SDL_EVENT_GAMEPAD_ADDED')
	var SDL_EVENT_GAMEPAD_ADDED;

	@:native('SDL_EVENT_GAMEPAD_REMOVED')
	var SDL_EVENT_GAMEPAD_REMOVED;

	@:native('SDL_EVENT_GAMEPAD_REMAPPED')
	var SDL_EVENT_GAMEPAD_REMAPPED;

	@:native('SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN')
	var SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN;

	@:native('SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION')
	var SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION;

	@:native('SDL_EVENT_GAMEPAD_TOUCHPAD_UP')
	var SDL_EVENT_GAMEPAD_TOUCHPAD_UP;

	@:native('SDL_EVENT_GAMEPAD_SENSOR_UPDATE')
	var SDL_EVENT_GAMEPAD_SENSOR_UPDATE;

	@:native('SDL_EVENT_GAMEPAD_UPDATE_COMPLETE')
	var SDL_EVENT_GAMEPAD_UPDATE_COMPLETE;

	@:native('SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED')
	var SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED;

	@:native('SDL_EVENT_FINGER_DOWN')
	var SDL_EVENT_FINGER_DOWN;

	@:native('SDL_EVENT_FINGER_UP')
	var SDL_EVENT_FINGER_UP;

	@:native('SDL_EVENT_FINGER_MOTION')
	var SDL_EVENT_FINGER_MOTION;

	@:native('SDL_EVENT_FINGER_CANCELED')
	var SDL_EVENT_FINGER_CANCELED;

	@:native('SDL_EVENT_PINCH_BEGIN')
	var SDL_EVENT_PINCH_BEGIN;

	@:native('SDL_EVENT_PINCH_UPDATE')
	var SDL_EVENT_PINCH_UPDATE;

	@:native('SDL_EVENT_PINCH_END')
	var SDL_EVENT_PINCH_END;

	@:native('SDL_EVENT_CLIPBOARD_UPDATE')
	var SDL_EVENT_CLIPBOARD_UPDATE;

	@:native('SDL_EVENT_DROP_FILE')
	var SDL_EVENT_DROP_FILE;

	@:native('SDL_EVENT_DROP_TEXT')
	var SDL_EVENT_DROP_TEXT;

	@:native('SDL_EVENT_DROP_BEGIN')
	var SDL_EVENT_DROP_BEGIN;

	@:native('SDL_EVENT_DROP_COMPLETE')
	var SDL_EVENT_DROP_COMPLETE;

	@:native('SDL_EVENT_DROP_POSITION')
	var SDL_EVENT_DROP_POSITION;

	@:native('SDL_EVENT_AUDIO_DEVICE_ADDED')
	var SDL_EVENT_AUDIO_DEVICE_ADDED;

	@:native('SDL_EVENT_AUDIO_DEVICE_REMOVED')
	var SDL_EVENT_AUDIO_DEVICE_REMOVED;

	@:native('SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED')
	var SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED;

	@:native('SDL_EVENT_SENSOR_UPDATE')
	var SDL_EVENT_SENSOR_UPDATE;

	@:native('SDL_EVENT_PEN_PROXIMITY_IN')
	var SDL_EVENT_PEN_PROXIMITY_IN;

	@:native('SDL_EVENT_PEN_PROXIMITY_OUT')
	var SDL_EVENT_PEN_PROXIMITY_OUT;

	@:native('SDL_EVENT_PEN_DOWN')
	var SDL_EVENT_PEN_DOWN;

	@:native('SDL_EVENT_PEN_UP')
	var SDL_EVENT_PEN_UP;

	@:native('SDL_EVENT_PEN_BUTTON_DOWN')
	var SDL_EVENT_PEN_BUTTON_DOWN;

	@:native('SDL_EVENT_PEN_BUTTON_UP')
	var SDL_EVENT_PEN_BUTTON_UP;

	@:native('SDL_EVENT_PEN_MOTION')
	var SDL_EVENT_PEN_MOTION;

	@:native('SDL_EVENT_PEN_AXIS')
	var SDL_EVENT_PEN_AXIS;

	@:native('SDL_EVENT_CAMERA_DEVICE_ADDED')
	var SDL_EVENT_CAMERA_DEVICE_ADDED;

	@:native('SDL_EVENT_CAMERA_DEVICE_REMOVED')
	var SDL_EVENT_CAMERA_DEVICE_REMOVED;

	@:native('SDL_EVENT_CAMERA_DEVICE_APPROVED')
	var SDL_EVENT_CAMERA_DEVICE_APPROVED;

	@:native('SDL_EVENT_CAMERA_DEVICE_DENIED')
	var SDL_EVENT_CAMERA_DEVICE_DENIED;

	@:native('SDL_EVENT_PRIVATE0')
	var SDL_EVENT_PRIVATE0;

	@:native('SDL_EVENT_PRIVATE1')
	var SDL_EVENT_PRIVATE1;

	@:native('SDL_EVENT_PRIVATE2')
	var SDL_EVENT_PRIVATE2;

	@:native('SDL_EVENT_PRIVATE3')
	var SDL_EVENT_PRIVATE3;

	@:native('SDL_EVENT_POLL_SENTINEL')
	var SDL_EVENT_POLL_SENTINEL;

	@:native('SDL_EVENT_USER')
	var SDL_EVENT_USER;

	@:native('SDL_EVENT_LAST')
	var SDL_EVENT_LAST;

	@:native('SDL_EVENT_ENUM_PADDING')
	var SDL_EVENT_ENUM_PADDING;

	@:from
	static public inline function fromInt(i:Int):SDL_EventType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_EventType')
private extern class SDL_EventType_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_CommonEvent')
extern class SDL_CommonEvent
{
	function new():Void;

	var type:UInt32;
	var reserved:UInt32;
	var timestamp:UInt64;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_DisplayEvent')
extern class SDL_DisplayEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var displayID:SDL_DisplayID;
	var data1:Int32;
	var data2:Int32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_WindowEvent')
extern class SDL_WindowEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var data1:Int32;
	var data2:Int32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_KeyboardDeviceEvent')
extern class SDL_KeyboardDeviceEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_KeyboardID;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_KeyboardEvent')
extern class SDL_KeyboardEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var which:SDL_KeyboardID;
	var scancode:SDL_Scancode;
	var key:SDL_Keycode;
	var mod:SDL_Keymod;
	var raw:UInt16;
	var down:Bool;
	var repeat:Bool;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_TextEditingEvent')
extern class SDL_TextEditingEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var text:ConstCharStar;
	var start:Int32;
	var length:Int32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_TextEditingCandidatesEvent')
extern class SDL_TextEditingCandidatesEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var candidates:RawPointer<ConstCharStar>;
	var num_candidates:Int32;
	var selected_candidate:Int32;
	var horizontal:Bool;
	var padding1:UInt8;
	var padding2:UInt8;
	var padding3:UInt8;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_TextInputEvent')
extern class SDL_TextInputEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var text:ConstCharStar;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_MouseDeviceEvent')
extern class SDL_MouseDeviceEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_MouseID;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_MouseMotionEvent')
extern class SDL_MouseMotionEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var which:SDL_MouseID;
	var state:SDL_MouseButtonFlags;
	var x:Float32;
	var y:Float32;
	var xrel:Float32;
	var yrel:Float32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_MouseButtonEvent')
extern class SDL_MouseButtonEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var which:SDL_MouseID;
	var button:UInt8;
	var down:Bool;
	var clicks:UInt8;
	var padding:UInt8;
	var x:Float32;
	var y:Float32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_MouseWheelEvent')
extern class SDL_MouseWheelEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var which:SDL_MouseID;
	var x:Float32;
	var y:Float32;
	var direction:SDL_MouseWheelDirection;
	var mouse_x:Float32;
	var mouse_y:Float32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_JoyAxisEvent')
extern class SDL_JoyAxisEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_JoystickID;
	var axis:UInt8;
	var padding1:UInt8;
	var padding2:UInt8;
	var padding3:UInt8;
	var value:Int16;
	var padding4:UInt16;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_JoyBallEvent')
extern class SDL_JoyBallEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_JoystickID;
	var ball:UInt8;
	var padding1:UInt8;
	var padding2:UInt8;
	var padding3:UInt8;
	var xrel:Int16;
	var yrel:Int16;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_JoyHatEvent')
extern class SDL_JoyHatEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_JoystickID;
	var hat:UInt8;
	var value:UInt8;
	var padding1:UInt8;
	var padding2:UInt8;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_JoyButtonEvent')
extern class SDL_JoyButtonEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_JoystickID;
	var button:UInt8;
	var down:Bool;
	var padding1:UInt8;
	var padding2:UInt8;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_JoyDeviceEvent')
extern class SDL_JoyDeviceEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_JoystickID;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_JoyBatteryEvent')
extern class SDL_JoyBatteryEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_JoystickID;
	var state:SDL_PowerState;
	var percent:Int;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_GamepadAxisEvent')
extern class SDL_GamepadAxisEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_JoystickID;
	var axis:UInt8;
	var padding1:UInt8;
	var padding2:UInt8;
	var padding3:UInt8;
	var value:Int16;
	var padding4:UInt16;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_GamepadButtonEvent')
extern class SDL_GamepadButtonEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_JoystickID;
	var button:UInt8;
	var down:Bool;
	var padding1:UInt8;
	var padding2:UInt8;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_GamepadDeviceEvent')
extern class SDL_GamepadDeviceEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_JoystickID;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_GamepadTouchpadEvent')
extern class SDL_GamepadTouchpadEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_JoystickID;
	var touchpad:Int32;
	var finger:Int32;
	var x:Float32;
	var y:Float32;
	var pressure:Float32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_GamepadSensorEvent')
extern class SDL_GamepadSensorEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_JoystickID;
	var sensor:Int32;
	var data:RawPointer<Float32>;
	var sensor_timestamp:UInt64;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_CameraDeviceEvent')
extern class SDL_CameraDeviceEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_CameraID;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_TouchFingerEvent')
extern class SDL_TouchFingerEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var touchID:SDL_TouchID;
	var fingerID:SDL_FingerID;
	var x:Float32;
	var y:Float32;
	var dx:Float32;
	var dy:Float32;
	var pressure:Float32;
	var windowID:SDL_WindowID;
}


@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_PinchFingerEvent')
extern class SDL_PinchFingerEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var scale:Float32;
	var windowID:SDL_WindowID;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_PenProximityEvent')
extern class SDL_PenProximityEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var which:SDL_PenID;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_PenMotionEvent')
extern class SDL_PenMotionEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var which:SDL_PenID;
	var pen_state:SDL_PenInputFlags;
	var x:Float32;
	var y:Float32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_PenTouchEvent')
extern class SDL_PenTouchEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var which:SDL_PenID;
	var pen_state:SDL_PenInputFlags;
	var x:Float32;
	var y:Float32;
	var eraser:Bool;
	var down:Bool;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_PenButtonEvent')
extern class SDL_PenButtonEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var which:SDL_PenID;
	var pen_state:SDL_PenInputFlags;
	var x:Float32;
	var y:Float32;
	var button:UInt8;
	var down:Bool;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_PenAxisEvent')
extern class SDL_PenAxisEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var which:SDL_PenID;
	var pen_state:SDL_PenInputFlags;
	var x:Float32;
	var y:Float32;
	var axis:SDL_PenAxis;
	var value:Float32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_DropEvent')
extern class SDL_DropEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var x:Float32;
	var y:Float32;
	var source:ConstCharStar;
	var data:ConstCharStar;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_ClipboardEvent')
extern class SDL_ClipboardEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var owner:Bool;
	var num_mime_types:Int32;
	var mime_types:RawPointer<ConstCharStar>;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_SensorEvent')
extern class SDL_SensorEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
	var which:SDL_SensorID;
	var data:RawPointer<Float32>;
	var sensor_timestamp:UInt64;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_QuitEvent')
extern class SDL_QuitEvent
{
	function new():Void;

	var type:SDL_EventType;
	var reserved:UInt32;
	var timestamp:UInt64;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_UserEvent')
extern class SDL_UserEvent
{
	function new():Void;

	var type:UInt32;
	var reserved:UInt32;
	var timestamp:UInt64;
	var windowID:SDL_WindowID;
	var code:Int32;
	var data1:RawPointer<cpp.Void>;
	var data2:RawPointer<cpp.Void>;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_Event')
extern class SDL_Event
{
	function new():Void;

	var type:UInt32;
	var common:SDL_CommonEvent;
	var display:SDL_DisplayEvent;
	var window:SDL_WindowEvent;
	var kdevice:SDL_KeyboardDeviceEvent;
	var key:SDL_KeyboardEvent;
	var edit:SDL_TextEditingEvent;
	var edit_candidates:SDL_TextEditingCandidatesEvent;
	var text:SDL_TextInputEvent;
	var mdevice:SDL_MouseDeviceEvent;
	var motion:SDL_MouseMotionEvent;
	var button:SDL_MouseButtonEvent;
	var wheel:SDL_MouseWheelEvent;
	var jdevice:SDL_JoyDeviceEvent;
	var jaxis:SDL_JoyAxisEvent;
	var jball:SDL_JoyBallEvent;
	var jhat:SDL_JoyHatEvent;
	var jbutton:SDL_JoyButtonEvent;
	var jbattery:SDL_JoyBatteryEvent;
	var gdevice:SDL_GamepadDeviceEvent;
	var gaxis:SDL_GamepadAxisEvent;
	var gbutton:SDL_GamepadButtonEvent;
	var gtouchpad:SDL_GamepadTouchpadEvent;
	var gsensor:SDL_GamepadSensorEvent;
	var cdevice:SDL_CameraDeviceEvent;
	var sensor:SDL_SensorEvent;
	var quit:SDL_QuitEvent;
	var user:SDL_UserEvent;
	var tfinger:SDL_TouchFingerEvent;
	var pinch:SDL_PinchFingerEvent;
	var pproximity:SDL_PenProximityEvent;
	var ptouch:SDL_PenTouchEvent;
	var pmotion:SDL_PenMotionEvent;
	var pbutton:SDL_PenButtonEvent;
	var paxis:SDL_PenAxisEvent;
	var drop:SDL_DropEvent;
	var clipboard:SDL_ClipboardEvent;
	var padding:RawPointer<UInt8>;
}

extern enum abstract SDL_EventAction(SDL_EventAction_Impl)
{
	@:native('SDL_ADDEVENT')
	var SDL_ADDEVENT;

	@:native('SDL_PEEKEVENT')
	var SDL_PEEKEVENT;

	@:native('SDL_GETEVENT')
	var SDL_GETEVENT;

	@:from
	static public inline function fromInt(i:Int):SDL_EventAction
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_EventAction')
private extern class SDL_EventAction_Impl {}

typedef SDL_EventFilter = Callable<(userdata:RawPointer<cpp.Void>, event:RawPointer<SDL_Event>) -> Bool>;

extern enum abstract SDL_Folder(SDL_Folder_Impl)
{
	@:native('SDL_FOLDER_HOME')
	var SDL_FOLDER_HOME;

	@:native('SDL_FOLDER_DESKTOP')
	var SDL_FOLDER_DESKTOP;

	@:native('SDL_FOLDER_DOCUMENTS')
	var SDL_FOLDER_DOCUMENTS;

	@:native('SDL_FOLDER_DOWNLOADS')
	var SDL_FOLDER_DOWNLOADS;

	@:native('SDL_FOLDER_MUSIC')
	var SDL_FOLDER_MUSIC;

	@:native('SDL_FOLDER_PICTURES')
	var SDL_FOLDER_PICTURES;

	@:native('SDL_FOLDER_PUBLICSHARE')
	var SDL_FOLDER_PUBLICSHARE;

	@:native('SDL_FOLDER_SAVEDGAMES')
	var SDL_FOLDER_SAVEDGAMES;

	@:native('SDL_FOLDER_SCREENSHOTS')
	var SDL_FOLDER_SCREENSHOTS;

	@:native('SDL_FOLDER_TEMPLATES')
	var SDL_FOLDER_TEMPLATES;

	@:native('SDL_FOLDER_VIDEOS')
	var SDL_FOLDER_VIDEOS;

	@:native('SDL_FOLDER_COUNT')
	var SDL_FOLDER_COUNT;

	@:from
	static public inline function fromInt(i:Int):SDL_Folder
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_Folder')
private extern class SDL_Folder_Impl {}

extern enum abstract SDL_PathType(SDL_PathType_Impl)
{
	@:native('SDL_PATHTYPE_NONE')
	var SDL_PATHTYPE_NONE;

	@:native('SDL_PATHTYPE_FILE')
	var SDL_PATHTYPE_FILE;

	@:native('SDL_PATHTYPE_DIRECTORY')
	var SDL_PATHTYPE_DIRECTORY;

	@:native('SDL_PATHTYPE_OTHER')
	var SDL_PATHTYPE_OTHER;

	@:from
	static public inline function fromInt(i:Int):SDL_PathType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_PathType')
private extern class SDL_PathType_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_PathInfo')
extern class SDL_PathInfo
{
	function new():Void;

	var type:SDL_PathType;
	var size:UInt64;
	var create_time:SDL_Time;
	var modify_time:SDL_Time;
	var access_time:SDL_Time;
}

@:include('SDL3/SDL.h')
@:native('SDL_GlobFlags')
@:scalar
@:coreType
@:notNull
extern abstract SDL_GlobFlags from UInt32 to UInt32 {}

extern enum abstract SDL_EnumerationResult(SDL_EnumerationResult_Impl)
{
	@:native('SDL_ENUM_CONTINUE')
	var SDL_ENUM_CONTINUE;

	@:native('SDL_ENUM_SUCCESS')
	var SDL_ENUM_SUCCESS;

	@:native('SDL_ENUM_FAILURE')
	var SDL_ENUM_FAILURE;

	@:from
	static public inline function fromInt(i:Int):SDL_EnumerationResult
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_EnumerationResult')
private extern class SDL_EnumerationResult_Impl {}

typedef SDL_EnumerateDirectoryCallback = Callable<(userdata:RawPointer<cpp.Void>, dirname:ConstCharStar, fname:ConstCharStar) -> SDL_EnumerationResult>;

@:include('SDL3/SDL.h')
@:native('SDL_Gamepad')
extern class SDL_Gamepad {}

extern enum abstract SDL_GamepadType(SDL_GamepadType_Impl)
{
	@:native('SDL_GAMEPAD_TYPE_UNKNOWN')
	var SDL_GAMEPAD_TYPE_UNKNOWN;

	@:native('SDL_GAMEPAD_TYPE_STANDARD')
	var SDL_GAMEPAD_TYPE_STANDARD;

	@:native('SDL_GAMEPAD_TYPE_XBOX360')
	var SDL_GAMEPAD_TYPE_XBOX360;

	@:native('SDL_GAMEPAD_TYPE_XBOXONE')
	var SDL_GAMEPAD_TYPE_XBOXONE;

	@:native('SDL_GAMEPAD_TYPE_PS3')
	var SDL_GAMEPAD_TYPE_PS3;

	@:native('SDL_GAMEPAD_TYPE_PS4')
	var SDL_GAMEPAD_TYPE_PS4;

	@:native('SDL_GAMEPAD_TYPE_PS5')
	var SDL_GAMEPAD_TYPE_PS5;

	@:native('SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_PRO')
	var SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_PRO;

	@:native('SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT')
	var SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT;

	@:native('SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT')
	var SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT;

	@:native('SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR')
	var SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR;

	@:native('SDL_GAMEPAD_TYPE_COUNT')
	var SDL_GAMEPAD_TYPE_COUNT;

	@:from
	static public inline function fromInt(i:Int):SDL_GamepadType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_GamepadType')
private extern class SDL_GamepadType_Impl {}

extern enum abstract SDL_GamepadButton(SDL_GamepadButton_Impl)
{
	@:native('SDL_GAMEPAD_BUTTON_INVALID')
	var SDL_GAMEPAD_BUTTON_INVALID;

	@:native('SDL_GAMEPAD_BUTTON_SOUTH')
	var SDL_GAMEPAD_BUTTON_SOUTH;

	@:native('SDL_GAMEPAD_BUTTON_EAST')
	var SDL_GAMEPAD_BUTTON_EAST;

	@:native('SDL_GAMEPAD_BUTTON_WEST')
	var SDL_GAMEPAD_BUTTON_WEST;

	@:native('SDL_GAMEPAD_BUTTON_NORTH')
	var SDL_GAMEPAD_BUTTON_NORTH;

	@:native('SDL_GAMEPAD_BUTTON_BACK')
	var SDL_GAMEPAD_BUTTON_BACK;

	@:native('SDL_GAMEPAD_BUTTON_GUIDE')
	var SDL_GAMEPAD_BUTTON_GUIDE;

	@:native('SDL_GAMEPAD_BUTTON_START')
	var SDL_GAMEPAD_BUTTON_START;

	@:native('SDL_GAMEPAD_BUTTON_LEFT_STICK')
	var SDL_GAMEPAD_BUTTON_LEFT_STICK;

	@:native('SDL_GAMEPAD_BUTTON_RIGHT_STICK')
	var SDL_GAMEPAD_BUTTON_RIGHT_STICK;

	@:native('SDL_GAMEPAD_BUTTON_LEFT_SHOULDER')
	var SDL_GAMEPAD_BUTTON_LEFT_SHOULDER;

	@:native('SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER')
	var SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER;

	@:native('SDL_GAMEPAD_BUTTON_DPAD_UP')
	var SDL_GAMEPAD_BUTTON_DPAD_UP;

	@:native('SDL_GAMEPAD_BUTTON_DPAD_DOWN')
	var SDL_GAMEPAD_BUTTON_DPAD_DOWN;

	@:native('SDL_GAMEPAD_BUTTON_DPAD_LEFT')
	var SDL_GAMEPAD_BUTTON_DPAD_LEFT;

	@:native('SDL_GAMEPAD_BUTTON_DPAD_RIGHT')
	var SDL_GAMEPAD_BUTTON_DPAD_RIGHT;

	@:native('SDL_GAMEPAD_BUTTON_MISC1')
	var SDL_GAMEPAD_BUTTON_MISC1;

	@:native('SDL_GAMEPAD_BUTTON_RIGHT_PADDLE1')
	var SDL_GAMEPAD_BUTTON_RIGHT_PADDLE1;

	@:native('SDL_GAMEPAD_BUTTON_LEFT_PADDLE1')
	var SDL_GAMEPAD_BUTTON_LEFT_PADDLE1;

	@:native('SDL_GAMEPAD_BUTTON_RIGHT_PADDLE2')
	var SDL_GAMEPAD_BUTTON_RIGHT_PADDLE2;

	@:native('SDL_GAMEPAD_BUTTON_LEFT_PADDLE2')
	var SDL_GAMEPAD_BUTTON_LEFT_PADDLE2;

	@:native('SDL_GAMEPAD_BUTTON_TOUCHPAD')
	var SDL_GAMEPAD_BUTTON_TOUCHPAD;

	@:native('SDL_GAMEPAD_BUTTON_MISC2')
	var SDL_GAMEPAD_BUTTON_MISC2;

	@:native('SDL_GAMEPAD_BUTTON_MISC3')
	var SDL_GAMEPAD_BUTTON_MISC3;

	@:native('SDL_GAMEPAD_BUTTON_MISC4')
	var SDL_GAMEPAD_BUTTON_MISC4;

	@:native('SDL_GAMEPAD_BUTTON_MISC5')
	var SDL_GAMEPAD_BUTTON_MISC5;

	@:native('SDL_GAMEPAD_BUTTON_MISC6')
	var SDL_GAMEPAD_BUTTON_MISC6;

	@:native('SDL_GAMEPAD_BUTTON_COUNT')
	var SDL_GAMEPAD_BUTTON_COUNT;

	@:from
	static public inline function fromInt(i:Int):SDL_GamepadButton
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_GamepadButton')
private extern class SDL_GamepadButton_Impl {}

extern enum abstract SDL_GamepadButtonLabel(SDL_GamepadButtonLabel_Impl)
{
	@:native('SDL_GAMEPAD_BUTTON_LABEL_UNKNOWN')
	var SDL_GAMEPAD_BUTTON_LABEL_UNKNOWN;

	@:native('SDL_GAMEPAD_BUTTON_LABEL_A')
	var SDL_GAMEPAD_BUTTON_LABEL_A;

	@:native('SDL_GAMEPAD_BUTTON_LABEL_B')
	var SDL_GAMEPAD_BUTTON_LABEL_B;

	@:native('SDL_GAMEPAD_BUTTON_LABEL_X')
	var SDL_GAMEPAD_BUTTON_LABEL_X;

	@:native('SDL_GAMEPAD_BUTTON_LABEL_Y')
	var SDL_GAMEPAD_BUTTON_LABEL_Y;

	@:native('SDL_GAMEPAD_BUTTON_LABEL_CROSS')
	var SDL_GAMEPAD_BUTTON_LABEL_CROSS;

	@:native('SDL_GAMEPAD_BUTTON_LABEL_CIRCLE')
	var SDL_GAMEPAD_BUTTON_LABEL_CIRCLE;

	@:native('SDL_GAMEPAD_BUTTON_LABEL_SQUARE')
	var SDL_GAMEPAD_BUTTON_LABEL_SQUARE;

	@:native('SDL_GAMEPAD_BUTTON_LABEL_TRIANGLE')
	var SDL_GAMEPAD_BUTTON_LABEL_TRIANGLE;

	@:from
	static public inline function fromInt(i:Int):SDL_GamepadButtonLabel
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_GamepadButtonLabel')
private extern class SDL_GamepadButtonLabel_Impl {}

extern enum abstract SDL_GamepadAxis(SDL_GamepadAxis_Impl)
{
	@:native('SDL_GAMEPAD_AXIS_INVALID')
	var SDL_GAMEPAD_AXIS_INVALID;

	@:native('SDL_GAMEPAD_AXIS_LEFTX')
	var SDL_GAMEPAD_AXIS_LEFTX;

	@:native('SDL_GAMEPAD_AXIS_LEFTY')
	var SDL_GAMEPAD_AXIS_LEFTY;

	@:native('SDL_GAMEPAD_AXIS_RIGHTX')
	var SDL_GAMEPAD_AXIS_RIGHTX;

	@:native('SDL_GAMEPAD_AXIS_RIGHTY')
	var SDL_GAMEPAD_AXIS_RIGHTY;

	@:native('SDL_GAMEPAD_AXIS_LEFT_TRIGGER')
	var SDL_GAMEPAD_AXIS_LEFT_TRIGGER;

	@:native('SDL_GAMEPAD_AXIS_RIGHT_TRIGGER')
	var SDL_GAMEPAD_AXIS_RIGHT_TRIGGER;

	@:native('SDL_GAMEPAD_AXIS_COUNT')
	var SDL_GAMEPAD_AXIS_COUNT;

	@:from
	static public inline function fromInt(i:Int):SDL_GamepadAxis
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_GamepadAxis')
private extern class SDL_GamepadAxis_Impl {}

extern enum abstract SDL_GamepadBindingType(SDL_GamepadBindingType_Impl)
{
	@:native('SDL_GAMEPAD_BINDTYPE_NONE')
	var SDL_GAMEPAD_BINDTYPE_NONE;

	@:native('SDL_GAMEPAD_BINDTYPE_BUTTON')
	var SDL_GAMEPAD_BINDTYPE_BUTTON;

	@:native('SDL_GAMEPAD_BINDTYPE_AXIS')
	var SDL_GAMEPAD_BINDTYPE_AXIS;

	@:native('SDL_GAMEPAD_BINDTYPE_HAT')
	var SDL_GAMEPAD_BINDTYPE_HAT;

	@:from
	static public inline function fromInt(i:Int):SDL_GamepadBindingType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_GamepadBindingType')
private extern class SDL_GamepadBindingType_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_GamepadBinding')
extern class SDL_GamepadBinding
{
	function new():Void;

	var input_type:SDL_GamepadBindingType;
	var input:SDL_GamepadBinding_Input;
	var output_type:SDL_GamepadBindingType;
	var output:SDL_GamepadBinding_Output;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_GamepadBinding::input')
extern class SDL_GamepadBinding_Input
{
	function new():Void;

	var button:Int;
	var axis:SDL_GamepadBinding_Input_Axis;
	var hat:SDL_GamepadBinding_Input_Hat;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_GamepadBinding::input::axis')
extern class SDL_GamepadBinding_Input_Axis
{
	function new():Void;

	var axis:Int;
	var axis_min:Int;
	var axis_max:Int;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_GamepadBinding::input::hat')
extern class SDL_GamepadBinding_Input_Hat
{
	function new():Void;

	var hat:Int;
	var hat_mask:Int;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_GamepadBinding::output')
extern class SDL_GamepadBinding_Output
{
	function new():Void;

	var button:SDL_GamepadButton;
	var axis:SDL_GamepadBinding_Input_Axis;
	var hat:SDL_GamepadBinding_Input_Hat;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_GamepadBinding::output::axis')
extern class SDL_GamepadBinding_Output_Axis
{
	function new():Void;

	var axis:SDL_GamepadAxis;
	var axis_min:Int;
	var axis_max:Int;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_GUID')
extern class SDL_GUID
{
	function new():Void;

	var data:RawPointer<UInt8>;
}

@:include('SDL3/SDL.h')
@:native('SDL_Haptic')
extern class SDL_Haptic {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_HapticDirection')
extern class SDL_HapticDirection
{
	function new():Void;

	var type:UInt8;
	var dir:RawPointer<Int32>;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_HapticConstant')
extern class SDL_HapticConstant
{
	function new():Void;

	var type:UInt16;
	var direction:SDL_HapticDirection;
	var length:UInt32;
	var delay:UInt16;
	var button:UInt16;
	var interval:UInt16;
	var level:Int16;
	var attack_length:UInt16;
	var attack_level:UInt16;
	var fade_length:UInt16;
	var fade_level:UInt16;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_HapticPeriodic')
extern class SDL_HapticPeriodic
{
	function new():Void;

	var type:UInt16;
	var direction:SDL_HapticDirection;
	var length:UInt32;
	var delay:UInt16;
	var button:UInt16;
	var interval:UInt16;
	var period:UInt16;
	var magnitude:Int16;
	var offset:Int16;
	var phase:UInt16;
	var attack_length:UInt16;
	var attack_level:UInt16;
	var fade_length:UInt16;
	var fade_level:UInt16;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_HapticCondition')
extern class SDL_HapticCondition
{
	function new():Void;

	var type:UInt16;
	var direction:SDL_HapticDirection;
	var length:UInt32;
	var delay:UInt16;
	var button:UInt16;
	var interval:UInt16;
	var right_sat:RawPointer<UInt16>;
	var left_sat:RawPointer<UInt16>;
	var right_coeff:RawPointer<Int16>;
	var left_coeff:RawPointer<Int16>;
	var deadband:RawPointer<UInt16>;
	var center:RawPointer<Int16>;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_HapticRamp')
extern class SDL_HapticRamp
{
	function new():Void;

	var type:UInt16;
	var direction:SDL_HapticDirection;
	var length:UInt32;
	var delay:UInt16;
	var button:UInt16;
	var interval:UInt16;
	var start:Int16;
	var end:Int16;
	var attack_length:UInt16;
	var attack_level:UInt16;
	var fade_length:UInt16;
	var fade_level:UInt16;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_HapticLeftRight')
extern class SDL_HapticLeftRight
{
	function new():Void;

	var type:UInt16;
	var length:UInt32;
	var large_magnitude:UInt16;
	var small_magnitude:UInt16;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_HapticCustom')
extern class SDL_HapticCustom
{
	function new():Void;

	var type:UInt16;
	var direction:SDL_HapticDirection;
	var length:UInt32;
	var delay:UInt16;
	var button:UInt16;
	var interval:UInt16;
	var channels:UInt8;
	var period:UInt16;
	var samples:UInt16;
	var data:RawPointer<UInt16>;
	var attack_length:UInt16;
	var attack_level:UInt16;
	var fade_length:UInt16;
	var fade_level:UInt16;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_HapticEffect')
extern class SDL_HapticEffect
{
	function new():Void;

	var type:UInt16;
	var constant:SDL_HapticConstant;
	var periodic:SDL_HapticPeriodic;
	var condition:SDL_HapticCondition;
	var ramp:SDL_HapticRamp;
	var leftright:SDL_HapticLeftRight;
	var custom:SDL_HapticCustom;
}

@:include('SDL3/SDL.h')
@:native('SDL_HapticID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_HapticID from UInt32 to UInt32 {}

@:include('SDL3/SDL.h')
@:native('SDL_hid_device')
extern class SDL_hid_device {}

extern enum abstract SDL_hid_bus_type(SDL_hid_bus_type_Impl)
{
	@:native('SDL_HID_API_BUS_UNKNOWN')
	var SDL_HID_API_BUS_UNKNOWN;

	@:native('SDL_HID_API_BUS_USB')
	var SDL_HID_API_BUS_USB;

	@:native('SDL_HID_API_BUS_BLUETOOTH')
	var SDL_HID_API_BUS_BLUETOOTH;

	@:native('SDL_HID_API_BUS_I2C')
	var SDL_HID_API_BUS_I2C;

	@:native('SDL_HID_API_BUS_SPI')
	var SDL_HID_API_BUS_SPI;

	@:from
	static public inline function fromInt(i:Int):SDL_hid_bus_type
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_hid_bus_type')
private extern class SDL_hid_bus_type_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_hid_device_info')
extern class SDL_hid_device_info
{
	function new():Void;

	var path:CastCharStar;
	var vendor_id:UInt16;
	var product_id:UInt16;
	var serial_number:CastWCharTStar;
	var release_number:UInt16;
	var manufacturer_string:CastWCharTStar;
	var product_string:CastWCharTStar;
	var usage_page:UInt16;
	var usage:UInt16;
	var interface_number:Int;
	var interface_class:Int;
	var interface_subclass:Int;
	var interface_protocol:Int;
	var bus_type:SDL_hid_bus_type;
	var next:RawPointer<SDL_hid_device_info>;
}

extern enum abstract SDL_HintPriority(SDL_HintPriority_Impl)
{
	@:native('SDL_HINT_DEFAULT')
	var SDL_HINT_DEFAULT;

	@:native('SDL_HINT_NORMAL')
	var SDL_HINT_NORMAL;

	@:native('SDL_HINT_OVERRIDE')
	var SDL_HINT_OVERRIDE;

	@:from
	static public inline function fromInt(i:Int):SDL_HintPriority
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_HintPriority')
private extern class SDL_HintPriority_Impl {}

typedef SDL_HintCallback = Callable<(userdata:RawPointer<cpp.Void>, name:ConstCharStar, oldValue:ConstCharStar, newValue:ConstCharStar) -> Void>;

@:include('SDL3/SDL.h')
@:native('SDL_InitFlags')
@:scalar
@:coreType
@:notNull
extern abstract SDL_InitFlags from UInt32 to UInt32 {}

typedef SDL_MainThreadCallback = Callable<(userdata:RawPointer<cpp.Void>) -> Void>;

extern enum abstract SDL_IOStatus(SDL_IOStatus_Impl)
{
	@:native('SDL_IO_STATUS_READY')
	var SDL_IO_STATUS_READY;

	@:native('SDL_IO_STATUS_ERROR')
	var SDL_IO_STATUS_ERROR;

	@:native('SDL_IO_STATUS_EOF')
	var SDL_IO_STATUS_EOF;

	@:native('SDL_IO_STATUS_NOT_READY')
	var SDL_IO_STATUS_NOT_READY;

	@:native('SDL_IO_STATUS_READONLY')
	var SDL_IO_STATUS_READONLY;

	@:native('SDL_IO_STATUS_WRITEONLY')
	var SDL_IO_STATUS_WRITEONLY;

	@:from
	static public inline function fromInt(i:Int):SDL_IOStatus
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_IOStatus')
private extern class SDL_IOStatus_Impl {}

extern enum abstract SDL_IOWhence(SDL_IOWhence_Impl)
{
	@:native('SDL_IO_SEEK_SET')
	var SDL_IO_SEEK_SET;

	@:native('SDL_IO_SEEK_CUR')
	var SDL_IO_SEEK_CUR;

	@:native('SDL_IO_SEEK_END')
	var SDL_IO_SEEK_END;

	@:from
	static public inline function fromInt(i:Int):SDL_IOWhence
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_IOWhence')
private extern class SDL_IOWhence_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_IOStreamInterface')
extern class SDL_IOStreamInterface
{
	function new():Void;

	var version:UInt32;
	var size:Callable<(userdata:RawPointer<cpp.Void>) -> Int64>;
	var seek:Callable<(userdata:RawPointer<cpp.Void>, offset:Int64, whence:SDL_IOWhence) -> Int64>;
	var read:Callable<(userdata:RawPointer<cpp.Void>, ptr:RawPointer<cpp.Void>, size:SizeT, status:RawPointer<SDL_IOStatus>) -> SizeT>;
	var write:Callable<(userdata:RawPointer<cpp.Void>, ptr:RawConstPointer<cpp.Void>, size:SizeT, status:RawPointer<SDL_IOStatus>) -> SizeT>;
	var flush:Callable<(userdata:RawPointer<cpp.Void>, status:RawPointer<SDL_IOStatus>) -> Bool>;
	var close:Callable<(userdata:RawPointer<cpp.Void>) -> Bool>;
}

@:include('SDL3/SDL.h')
@:native('SDL_IOStream')
extern class SDL_IOStream {}

@:include('SDL3/SDL.h')
@:native('SDL_Joystick')
extern class SDL_Joystick {}

@:include('SDL3/SDL.h')
@:native('SDL_JoystickID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_JoystickID from UInt32 to UInt32 {}

extern enum abstract SDL_JoystickType(SDL_JoystickType_Impl)
{
	@:native('SDL_JOYSTICK_TYPE_UNKNOWN')
	var SDL_JOYSTICK_TYPE_UNKNOWN;

	@:native('SDL_JOYSTICK_TYPE_GAMEPAD')
	var SDL_JOYSTICK_TYPE_GAMEPAD;

	@:native('SDL_JOYSTICK_TYPE_WHEEL')
	var SDL_JOYSTICK_TYPE_WHEEL;

	@:native('SDL_JOYSTICK_TYPE_ARCADE_STICK')
	var SDL_JOYSTICK_TYPE_ARCADE_STICK;

	@:native('SDL_JOYSTICK_TYPE_FLIGHT_STICK')
	var SDL_JOYSTICK_TYPE_FLIGHT_STICK;

	@:native('SDL_JOYSTICK_TYPE_DANCE_PAD')
	var SDL_JOYSTICK_TYPE_DANCE_PAD;

	@:native('SDL_JOYSTICK_TYPE_GUITAR')
	var SDL_JOYSTICK_TYPE_GUITAR;

	@:native('SDL_JOYSTICK_TYPE_DRUM_KIT')
	var SDL_JOYSTICK_TYPE_DRUM_KIT;

	@:native('SDL_JOYSTICK_TYPE_ARCADE_PAD')
	var SDL_JOYSTICK_TYPE_ARCADE_PAD;

	@:native('SDL_JOYSTICK_TYPE_THROTTLE')
	var SDL_JOYSTICK_TYPE_THROTTLE;

	@:native('SDL_JOYSTICK_TYPE_COUNT')
	var SDL_JOYSTICK_TYPE_COUNT;

	@:from
	static public inline function fromInt(i:Int):SDL_JoystickType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_JoystickType')
private extern class SDL_JoystickType_Impl {}

extern enum abstract SDL_JoystickConnectionState(SDL_JoystickConnectionState_Impl)
{
	@:native('SDL_JOYSTICK_CONNECTION_INVALID')
	var SDL_JOYSTICK_CONNECTION_INVALID;

	@:native('SDL_JOYSTICK_CONNECTION_UNKNOWN')
	var SDL_JOYSTICK_CONNECTION_UNKNOWN;

	@:native('SDL_JOYSTICK_CONNECTION_WIRED')
	var SDL_JOYSTICK_CONNECTION_WIRED;

	@:native('SDL_JOYSTICK_CONNECTION_WIRELESS')
	var SDL_JOYSTICK_CONNECTION_WIRELESS;

	@:from
	static public inline function fromInt(i:Int):SDL_JoystickConnectionState
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_JoystickConnectionState')
private extern class SDL_JoystickConnectionState_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_VirtualJoystickTouchpadDesc')
extern class SDL_VirtualJoystickTouchpadDesc
{
	function new():Void;

	var nfingers:UInt16;
	var padding:RawPointer<UInt16>;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_VirtualJoystickSensorDesc')
extern class SDL_VirtualJoystickSensorDesc
{
	function new():Void;

	var type:SDL_SensorType;
	var rate:Float32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_VirtualJoystickDesc')
extern class SDL_VirtualJoystickDesc
{
	function new():Void;

	var version:UInt32;
	var type:UInt16;
	var padding:UInt16;
	var vendor_id:UInt16;
	var product_id:UInt16;
	var naxes:UInt16;
	var nbuttons:UInt16;
	var nballs:UInt16;
	var nhats:UInt16;
	var ntouchpads:UInt16;
	var nsensors:UInt16;
	var padding2:RawPointer<UInt16>;
	var button_mask:UInt32;
	var axis_mask:UInt32;
	var name:ConstCharStar;
	var touchpads:RawConstPointer<SDL_VirtualJoystickTouchpadDesc>;
	var sensors:RawConstPointer<SDL_VirtualJoystickSensorDesc>;
	var userdata:RawPointer<cpp.Void>;
	var Update:Callable<(userdata:RawPointer<cpp.Void>) -> Void>;
	var SetPlayerIndex:Callable<(userdata:RawPointer<cpp.Void>, player_index:Int) -> Void>;
	var Rumble:Callable<(userdata:RawPointer<cpp.Void>, low:UInt16, high:UInt16) -> Bool>;
	var RumbleTriggers:Callable<(userdata:RawPointer<cpp.Void>, left:UInt16, right:UInt16) -> Bool>;
	var SetLED:Callable<(userdata:RawPointer<cpp.Void>, red:UInt8, green:UInt8, blue:UInt8) -> Bool>;
	var SendEffect:Callable<(userdata:RawPointer<cpp.Void>, data:RawConstPointer<cpp.Void>, size:Int) -> Bool>;
	var SetSensorsEnabled:Callable<(userdata:RawPointer<cpp.Void>, enabled:Bool) -> Bool>;
	var Cleanup:Callable<(userdata:RawPointer<cpp.Void>) -> Void>;
}

@:include('SDL3/SDL.h')
@:native('SDL_KeyboardID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_KeyboardID from UInt32 to UInt32 {}

extern enum abstract SDL_TextInputType(SDL_TextInputType_Impl)
{
	@:native('SDL_TEXTINPUT_TYPE_TEXT')
	var SDL_TEXTINPUT_TYPE_TEXT;

	@:native('SDL_TEXTINPUT_TYPE_TEXT_NAME')
	var SDL_TEXTINPUT_TYPE_TEXT_NAME;

	@:native('SDL_TEXTINPUT_TYPE_TEXT_EMAIL')
	var SDL_TEXTINPUT_TYPE_TEXT_EMAIL;

	@:native('SDL_TEXTINPUT_TYPE_TEXT_USERNAME')
	var SDL_TEXTINPUT_TYPE_TEXT_USERNAME;

	@:native('SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN')
	var SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN;

	@:native('SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE')
	var SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE;

	@:native('SDL_TEXTINPUT_TYPE_NUMBER')
	var SDL_TEXTINPUT_TYPE_NUMBER;

	@:native('SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN')
	var SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN;

	@:native('SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE')
	var SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE;

	@:from
	static public inline function fromInt(i:Int):SDL_TextInputType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_TextInputType')
private extern class SDL_TextInputType_Impl {}

extern enum abstract SDL_Capitalization(SDL_Capitalization_Impl)
{
	@:native('SDL_CAPITALIZE_NONE')
	var SDL_CAPITALIZE_NONE;

	@:native('SDL_CAPITALIZE_SENTENCES')
	var SDL_CAPITALIZE_SENTENCES;

	@:native('SDL_CAPITALIZE_WORDS')
	var SDL_CAPITALIZE_WORDS;

	@:native('SDL_CAPITALIZE_LETTERS')
	var SDL_CAPITALIZE_LETTERS;

	@:from
	static public inline function fromInt(i:Int):SDL_Capitalization
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_Capitalization')
private extern class SDL_Capitalization_Impl {}

@:include('SDL3/SDL.h')
@:native('SDL_Keycode')
@:scalar
@:coreType
@:notNull
extern abstract SDL_Keycode from UInt32 to UInt32 {}

@:include('SDL3/SDL.h')
@:native('SDL_Keymod')
@:scalar
@:coreType
@:notNull
extern abstract SDL_Keymod from UInt16 to UInt16 {}

@:include('SDL3/SDL.h')
@:native('SDL_SharedObject')
extern class SDL_SharedObject {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_Locale')
extern class SDL_Locale
{
	function new():Void;

	var language:ConstCharStar;
	var country:ConstCharStar;
}

extern enum abstract SDL_LogCategory(SDL_LogCategory_Impl)
{
	@:native('SDL_LOG_CATEGORY_APPLICATION')
	var SDL_LOG_CATEGORY_APPLICATION;

	@:native('SDL_LOG_CATEGORY_ERROR')
	var SDL_LOG_CATEGORY_ERROR;

	@:native('SDL_LOG_CATEGORY_ASSERT')
	var SDL_LOG_CATEGORY_ASSERT;

	@:native('SDL_LOG_CATEGORY_SYSTEM')
	var SDL_LOG_CATEGORY_SYSTEM;

	@:native('SDL_LOG_CATEGORY_AUDIO')
	var SDL_LOG_CATEGORY_AUDIO;

	@:native('SDL_LOG_CATEGORY_VIDEO')
	var SDL_LOG_CATEGORY_VIDEO;

	@:native('SDL_LOG_CATEGORY_INPUT')
	var SDL_LOG_CATEGORY_INPUT;

	@:native('SDL_LOG_CATEGORY_TEST')
	var SDL_LOG_CATEGORY_TEST;

	@:native('SDL_LOG_CATEGORY_RESERVED2')
	var SDL_LOG_CATEGORY_RESERVED2;

	@:native('SDL_LOG_CATEGORY_RESERVED3')
	var SDL_LOG_CATEGORY_RESERVED3;

	@:native('SDL_LOG_CATEGORY_RESERVED4')
	var SDL_LOG_CATEGORY_RESERVED4;

	@:native('SDL_LOG_CATEGORY_RESERVED5')
	var SDL_LOG_CATEGORY_RESERVED5;

	@:native('SDL_LOG_CATEGORY_RESERVED6')
	var SDL_LOG_CATEGORY_RESERVED6;

	@:native('SDL_LOG_CATEGORY_RESERVED7')
	var SDL_LOG_CATEGORY_RESERVED7;

	@:native('SDL_LOG_CATEGORY_RESERVED8')
	var SDL_LOG_CATEGORY_RESERVED8;

	@:native('SDL_LOG_CATEGORY_RESERVED9')
	var SDL_LOG_CATEGORY_RESERVED9;

	@:native('SDL_LOG_CATEGORY_RESERVED10')
	var SDL_LOG_CATEGORY_RESERVED10;

	@:native('SDL_LOG_CATEGORY_CUSTOM')
	var SDL_LOG_CATEGORY_CUSTOM;

	@:from
	static public inline function fromInt(i:Int):SDL_LogCategory
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_LogCategory')
private extern class SDL_LogCategory_Impl {}

extern enum abstract SDL_LogPriority(SDL_LogPriority_Impl)
{
	@:native('SDL_LOG_PRIORITY_INVALID')
	var SDL_LOG_PRIORITY_INVALID;

	@:native('SDL_LOG_PRIORITY_TRACE')
	var SDL_LOG_PRIORITY_TRACE;

	@:native('SDL_LOG_PRIORITY_VERBOSE')
	var SDL_LOG_PRIORITY_VERBOSE;

	@:native('SDL_LOG_PRIORITY_DEBUG')
	var SDL_LOG_PRIORITY_DEBUG;

	@:native('SDL_LOG_PRIORITY_INFO')
	var SDL_LOG_PRIORITY_INFO;

	@:native('SDL_LOG_PRIORITY_WARN')
	var SDL_LOG_PRIORITY_WARN;

	@:native('SDL_LOG_PRIORITY_ERROR')
	var SDL_LOG_PRIORITY_ERROR;

	@:native('SDL_LOG_PRIORITY_CRITICAL')
	var SDL_LOG_PRIORITY_CRITICAL;

	@:native('SDL_LOG_PRIORITY_COUNT')
	var SDL_LOG_PRIORITY_COUNT;

	@:from
	static public inline function fromInt(i:Int):SDL_LogPriority
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_LogPriority')
private extern class SDL_LogPriority_Impl {}

typedef SDL_LogOutputFunction = Callable<(userdata:RawPointer<cpp.Void>, category:Int, priority:SDL_LogPriority, message:ConstCharStar) -> Void>;

@:include('SDL3/SDL.h')
@:native('SDL_MessageBoxFlags')
@:scalar
@:coreType
@:notNull
extern abstract SDL_MessageBoxFlags from UInt32 to UInt32 {}

@:include('SDL3/SDL.h')
@:native('SDL_MessageBoxButtonFlags')
@:scalar
@:coreType
@:notNull
extern abstract SDL_MessageBoxButtonFlags from UInt32 to UInt32 {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_MessageBoxButtonData')
extern class SDL_MessageBoxButtonData
{
	function new():Void;

	var flags:SDL_MessageBoxButtonFlags;
	var buttonID:Int;
	var text:ConstCharStar;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_MessageBoxColor')
extern class SDL_MessageBoxColor
{
	function new():Void;

	var r:UInt8;
	var g:UInt8;
	var b:UInt8;
}

extern enum abstract SDL_MessageBoxColorType(SDL_MessageBoxColorType_Impl)
{
	@:native('SDL_MESSAGEBOX_COLOR_BACKGROUND')
	var SDL_MESSAGEBOX_COLOR_BACKGROUND;

	@:native('SDL_MESSAGEBOX_COLOR_TEXT')
	var SDL_MESSAGEBOX_COLOR_TEXT;

	@:native('SDL_MESSAGEBOX_COLOR_BUTTON_BORDER')
	var SDL_MESSAGEBOX_COLOR_BUTTON_BORDER;

	@:native('SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND')
	var SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND;

	@:native('SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED')
	var SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED;

	@:native('SDL_MESSAGEBOX_COLOR_COUNT')
	var SDL_MESSAGEBOX_COLOR_COUNT;

	@:from
	static public inline function fromInt(i:Int):SDL_MessageBoxColorType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_MessageBoxColorType')
private extern class SDL_MessageBoxColorType_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_MessageBoxColorScheme')
extern class SDL_MessageBoxColorScheme
{
	function new():Void;

	var colors:RawPointer<SDL_MessageBoxColor>;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_MessageBoxData')
extern class SDL_MessageBoxData
{
	function new():Void;

	var flags:SDL_MessageBoxFlags;
	var window:RawPointer<SDL_Window>;
	var title:ConstCharStar;
	var message:ConstCharStar;
	var numbuttons:Int;
	var buttons:RawConstPointer<SDL_MessageBoxButtonData>;
	var colorScheme:RawConstPointer<SDL_MessageBoxColorScheme>;
}

@:include('SDL3/SDL.h')
@:native('SDL_MouseID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_MouseID from UInt32 to UInt32 {}

@:include('SDL3/SDL.h')
@:native('SDL_Cursor')
extern class SDL_Cursor {}

extern enum abstract SDL_SystemCursor(SDL_SystemCursor_Impl)
{
	@:native('SDL_SYSTEM_CURSOR_DEFAULT')
	var SDL_SYSTEM_CURSOR_DEFAULT;

	@:native('SDL_SYSTEM_CURSOR_TEXT')
	var SDL_SYSTEM_CURSOR_TEXT;

	@:native('SDL_SYSTEM_CURSOR_WAIT')
	var SDL_SYSTEM_CURSOR_WAIT;

	@:native('SDL_SYSTEM_CURSOR_CROSSHAIR')
	var SDL_SYSTEM_CURSOR_CROSSHAIR;

	@:native('SDL_SYSTEM_CURSOR_PROGRESS')
	var SDL_SYSTEM_CURSOR_PROGRESS;

	@:native('SDL_SYSTEM_CURSOR_NWSE_RESIZE')
	var SDL_SYSTEM_CURSOR_NWSE_RESIZE;

	@:native('SDL_SYSTEM_CURSOR_NESW_RESIZE')
	var SDL_SYSTEM_CURSOR_NESW_RESIZE;

	@:native('SDL_SYSTEM_CURSOR_EW_RESIZE')
	var SDL_SYSTEM_CURSOR_EW_RESIZE;

	@:native('SDL_SYSTEM_CURSOR_NS_RESIZE')
	var SDL_SYSTEM_CURSOR_NS_RESIZE;

	@:native('SDL_SYSTEM_CURSOR_MOVE')
	var SDL_SYSTEM_CURSOR_MOVE;

	@:native('SDL_SYSTEM_CURSOR_NOT_ALLOWED')
	var SDL_SYSTEM_CURSOR_NOT_ALLOWED;

	@:native('SDL_SYSTEM_CURSOR_POINTER')
	var SDL_SYSTEM_CURSOR_POINTER;

	@:native('SDL_SYSTEM_CURSOR_NW_RESIZE')
	var SDL_SYSTEM_CURSOR_NW_RESIZE;

	@:native('SDL_SYSTEM_CURSOR_N_RESIZE')
	var SDL_SYSTEM_CURSOR_N_RESIZE;

	@:native('SDL_SYSTEM_CURSOR_NE_RESIZE')
	var SDL_SYSTEM_CURSOR_NE_RESIZE;

	@:native('SDL_SYSTEM_CURSOR_E_RESIZE')
	var SDL_SYSTEM_CURSOR_E_RESIZE;

	@:native('SDL_SYSTEM_CURSOR_SE_RESIZE')
	var SDL_SYSTEM_CURSOR_SE_RESIZE;

	@:native('SDL_SYSTEM_CURSOR_S_RESIZE')
	var SDL_SYSTEM_CURSOR_S_RESIZE;

	@:native('SDL_SYSTEM_CURSOR_SW_RESIZE')
	var SDL_SYSTEM_CURSOR_SW_RESIZE;

	@:native('SDL_SYSTEM_CURSOR_W_RESIZE')
	var SDL_SYSTEM_CURSOR_W_RESIZE;

	@:native('SDL_SYSTEM_CURSOR_COUNT')
	var SDL_SYSTEM_CURSOR_COUNT;

	@:from
	static public inline function fromInt(i:Int):SDL_SystemCursor
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_SystemCursor')
private extern class SDL_SystemCursor_Impl {}

extern enum abstract SDL_MouseWheelDirection(SDL_MouseWheelDirection_Impl)
{
	@:native('SDL_MOUSEWHEEL_NORMAL')
	var SDL_MOUSEWHEEL_NORMAL;

	@:native('SDL_MOUSEWHEEL_FLIPPED')
	var SDL_MOUSEWHEEL_FLIPPED;

	@:from
	static public inline function fromInt(i:Int):SDL_MouseWheelDirection
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_MouseWheelDirection')
private extern class SDL_MouseWheelDirection_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_CursorFrameInfo')
extern class SDL_CursorFrameInfo
{
	function new():Void;

	var surface:RawPointer<SDL_Surface>;
	var duration:UInt32;
}

@:include('SDL3/SDL.h')
@:native('SDL_MouseButtonFlags')
@:scalar
@:coreType
@:notNull
extern abstract SDL_MouseButtonFlags from UInt32 to UInt32 {}

@:include('SDL3/SDL.h')
@:native('SDL_Mutex')
extern class SDL_Mutex {}

@:include('SDL3/SDL.h')
@:native('SDL_RWLock')
extern class SDL_RWLock {}

@:include('SDL3/SDL.h')
@:native('SDL_Semaphore')
extern class SDL_Semaphore {}

@:include('SDL3/SDL.h')
@:native('SDL_Condition')
extern class SDL_Condition {}

extern enum abstract SDL_InitStatus(SDL_InitStatus_Impl)
{
	@:native('SDL_INIT_STATUS_UNINITIALIZED')
	var SDL_INIT_STATUS_UNINITIALIZED;

	@:native('SDL_INIT_STATUS_INITIALIZING')
	var SDL_INIT_STATUS_INITIALIZING;

	@:native('SDL_INIT_STATUS_INITIALIZED')
	var SDL_INIT_STATUS_INITIALIZED;

	@:native('SDL_INIT_STATUS_UNINITIALIZING')
	var SDL_INIT_STATUS_UNINITIALIZING;

	@:from
	static public inline function fromInt(i:Int):SDL_InitStatus
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_InitStatus')
private extern class SDL_InitStatus_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_InitState')
extern class SDL_InitState
{
	function new():Void;

	var status:SDL_AtomicInt;
	var thread:SDL_ThreadID;
	var reserved:RawPointer<cpp.Void>;
}

@:include('SDL3/SDL.h')
@:native('SDL_PenID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_PenID from UInt32 to UInt32 {}

@:include('SDL3/SDL.h')
@:native('SDL_PenInputFlags')
@:scalar
@:coreType
@:notNull
extern abstract SDL_PenInputFlags from UInt32 to UInt32 {}

extern enum abstract SDL_PenAxis(SDL_PenAxis_Impl)
{
	@:native('SDL_PEN_AXIS_PRESSURE')
	var SDL_PEN_AXIS_PRESSURE;

	@:native('SDL_PEN_AXIS_XTILT')
	var SDL_PEN_AXIS_XTILT;

	@:native('SDL_PEN_AXIS_YTILT')
	var SDL_PEN_AXIS_YTILT;

	@:native('SDL_PEN_AXIS_DISTANCE')
	var SDL_PEN_AXIS_DISTANCE;

	@:native('SDL_PEN_AXIS_ROTATION')
	var SDL_PEN_AXIS_ROTATION;

	@:native('SDL_PEN_AXIS_SLIDER')
	var SDL_PEN_AXIS_SLIDER;

	@:native('SDL_PEN_AXIS_TANGENTIAL_PRESSURE')
	var SDL_PEN_AXIS_TANGENTIAL_PRESSURE;

	@:native('SDL_PEN_AXIS_COUNT')
	var SDL_PEN_AXIS_COUNT;

	@:from
	static public inline function fromInt(i:Int):SDL_PenAxis
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_PenAxis')
private extern class SDL_PenAxis_Impl {}

extern enum abstract SDL_PenDeviceType(SDL_PenDeviceType_Impl)
{
	@:native('SDL_PEN_DEVICE_TYPE_INVALID')
	var SDL_PEN_DEVICE_TYPE_INVALID;

	@:native('SDL_PEN_DEVICE_TYPE_UNKNOWN')
	var SDL_PEN_DEVICE_TYPE_UNKNOWN;

	@:native('SDL_PEN_DEVICE_TYPE_DIRECT')
	var SDL_PEN_DEVICE_TYPE_DIRECT;

	@:native('SDL_PEN_DEVICE_TYPE_INDIRECT')
	var SDL_PEN_DEVICE_TYPE_INDIRECT;

	@:from
	static public inline function fromInt(i:Int):SDL_PenDeviceType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_PenDeviceType')
private extern class SDL_PenDeviceType_Impl {}

extern enum abstract SDL_PixelType(SDL_PixelType_Impl)
{
	@:native('SDL_PIXELTYPE_UNKNOWN')
	var SDL_PIXELTYPE_UNKNOWN;

	@:native('SDL_PIXELTYPE_INDEX1')
	var SDL_PIXELTYPE_INDEX1;

	@:native('SDL_PIXELTYPE_INDEX4')
	var SDL_PIXELTYPE_INDEX4;

	@:native('SDL_PIXELTYPE_INDEX8')
	var SDL_PIXELTYPE_INDEX8;

	@:native('SDL_PIXELTYPE_PACKED8')
	var SDL_PIXELTYPE_PACKED8;

	@:native('SDL_PIXELTYPE_PACKED16')
	var SDL_PIXELTYPE_PACKED16;

	@:native('SDL_PIXELTYPE_PACKED32')
	var SDL_PIXELTYPE_PACKED32;

	@:native('SDL_PIXELTYPE_ARRAYU8')
	var SDL_PIXELTYPE_ARRAYU8;

	@:native('SDL_PIXELTYPE_ARRAYU16')
	var SDL_PIXELTYPE_ARRAYU16;

	@:native('SDL_PIXELTYPE_ARRAYU32')
	var SDL_PIXELTYPE_ARRAYU32;

	@:native('SDL_PIXELTYPE_ARRAYF16')
	var SDL_PIXELTYPE_ARRAYF16;

	@:native('SDL_PIXELTYPE_ARRAYF32')
	var SDL_PIXELTYPE_ARRAYF32;

	@:native('SDL_PIXELTYPE_INDEX2')
	var SDL_PIXELTYPE_INDEX2;

	@:from
	static public inline function fromInt(i:Int):SDL_PixelType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_PixelType')
private extern class SDL_PixelType_Impl {}

extern enum abstract SDL_BitmapOrder(SDL_BitmapOrder_Impl)
{
	@:native('SDL_BITMAPORDER_NONE')
	var SDL_BITMAPORDER_NONE;

	@:native('SDL_BITMAPORDER_4321')
	var SDL_BITMAPORDER_4321;

	@:native('SDL_BITMAPORDER_1234')
	var SDL_BITMAPORDER_1234;

	@:from
	static public inline function fromInt(i:Int):SDL_BitmapOrder
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_BitmapOrder')
private extern class SDL_BitmapOrder_Impl {}

extern enum abstract SDL_PackedOrder(SDL_PackedOrder_Impl)
{
	@:native('SDL_PACKEDORDER_NONE')
	var SDL_PACKEDORDER_NONE;

	@:native('SDL_PACKEDORDER_XRGB')
	var SDL_PACKEDORDER_XRGB;

	@:native('SDL_PACKEDORDER_RGBX')
	var SDL_PACKEDORDER_RGBX;

	@:native('SDL_PACKEDORDER_ARGB')
	var SDL_PACKEDORDER_ARGB;

	@:native('SDL_PACKEDORDER_RGBA')
	var SDL_PACKEDORDER_RGBA;

	@:native('SDL_PACKEDORDER_XBGR')
	var SDL_PACKEDORDER_XBGR;

	@:native('SDL_PACKEDORDER_BGRX')
	var SDL_PACKEDORDER_BGRX;

	@:native('SDL_PACKEDORDER_ABGR')
	var SDL_PACKEDORDER_ABGR;

	@:native('SDL_PACKEDORDER_BGRA')
	var SDL_PACKEDORDER_BGRA;

	@:from
	static public inline function fromInt(i:Int):SDL_PackedOrder
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_PackedOrder')
private extern class SDL_PackedOrder_Impl {}

extern enum abstract SDL_ArrayOrder(SDL_ArrayOrder_Impl)
{
	@:native('SDL_ARRAYORDER_NONE')
	var SDL_ARRAYORDER_NONE;

	@:native('SDL_ARRAYORDER_RGB')
	var SDL_ARRAYORDER_RGB;

	@:native('SDL_ARRAYORDER_RGBA')
	var SDL_ARRAYORDER_RGBA;

	@:native('SDL_ARRAYORDER_ARGB')
	var SDL_ARRAYORDER_ARGB;

	@:native('SDL_ARRAYORDER_BGR')
	var SDL_ARRAYORDER_BGR;

	@:native('SDL_ARRAYORDER_BGRA')
	var SDL_ARRAYORDER_BGRA;

	@:native('SDL_ARRAYORDER_ABGR')
	var SDL_ARRAYORDER_ABGR;

	@:from
	static public inline function fromInt(i:Int):SDL_ArrayOrder
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_ArrayOrder')
private extern class SDL_ArrayOrder_Impl {}

extern enum abstract SDL_PackedLayout(SDL_PackedLayout_Impl)
{
	@:native('SDL_PACKEDLAYOUT_NONE')
	var SDL_PACKEDLAYOUT_NONE;

	@:native('SDL_PACKEDLAYOUT_332')
	var SDL_PACKEDLAYOUT_332;

	@:native('SDL_PACKEDLAYOUT_4444')
	var SDL_PACKEDLAYOUT_4444;

	@:native('SDL_PACKEDLAYOUT_1555')
	var SDL_PACKEDLAYOUT_1555;

	@:native('SDL_PACKEDLAYOUT_5551')
	var SDL_PACKEDLAYOUT_5551;

	@:native('SDL_PACKEDLAYOUT_565')
	var SDL_PACKEDLAYOUT_565;

	@:native('SDL_PACKEDLAYOUT_8888')
	var SDL_PACKEDLAYOUT_8888;

	@:native('SDL_PACKEDLAYOUT_2101010')
	var SDL_PACKEDLAYOUT_2101010;

	@:native('SDL_PACKEDLAYOUT_1010102')
	var SDL_PACKEDLAYOUT_1010102;

	@:from
	static public inline function fromInt(i:Int):SDL_PackedLayout
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_PackedLayout')
private extern class SDL_PackedLayout_Impl {}

extern enum abstract SDL_PixelFormat(SDL_PixelFormat_Impl)
{
	@:native('SDL_PIXELFORMAT_UNKNOWN')
	var SDL_PIXELFORMAT_UNKNOWN;

	@:native('SDL_PIXELFORMAT_INDEX1LSB')
	var SDL_PIXELFORMAT_INDEX1LSB;

	@:native('SDL_PIXELFORMAT_INDEX1MSB')
	var SDL_PIXELFORMAT_INDEX1MSB;

	@:native('SDL_PIXELFORMAT_INDEX2LSB')
	var SDL_PIXELFORMAT_INDEX2LSB;

	@:native('SDL_PIXELFORMAT_INDEX2MSB')
	var SDL_PIXELFORMAT_INDEX2MSB;

	@:native('SDL_PIXELFORMAT_INDEX4LSB')
	var SDL_PIXELFORMAT_INDEX4LSB;

	@:native('SDL_PIXELFORMAT_INDEX4MSB')
	var SDL_PIXELFORMAT_INDEX4MSB;

	@:native('SDL_PIXELFORMAT_INDEX8')
	var SDL_PIXELFORMAT_INDEX8;

	@:native('SDL_PIXELFORMAT_RGB332')
	var SDL_PIXELFORMAT_RGB332;

	@:native('SDL_PIXELFORMAT_XRGB4444')
	var SDL_PIXELFORMAT_XRGB4444;

	@:native('SDL_PIXELFORMAT_XBGR4444')
	var SDL_PIXELFORMAT_XBGR4444;

	@:native('SDL_PIXELFORMAT_XRGB1555')
	var SDL_PIXELFORMAT_XRGB1555;

	@:native('SDL_PIXELFORMAT_XBGR1555')
	var SDL_PIXELFORMAT_XBGR1555;

	@:native('SDL_PIXELFORMAT_ARGB4444')
	var SDL_PIXELFORMAT_ARGB4444;

	@:native('SDL_PIXELFORMAT_RGBA4444')
	var SDL_PIXELFORMAT_RGBA4444;

	@:native('SDL_PIXELFORMAT_ABGR4444')
	var SDL_PIXELFORMAT_ABGR4444;

	@:native('SDL_PIXELFORMAT_BGRA4444')
	var SDL_PIXELFORMAT_BGRA4444;

	@:native('SDL_PIXELFORMAT_ARGB1555')
	var SDL_PIXELFORMAT_ARGB1555;

	@:native('SDL_PIXELFORMAT_RGBA5551')
	var SDL_PIXELFORMAT_RGBA5551;

	@:native('SDL_PIXELFORMAT_ABGR1555')
	var SDL_PIXELFORMAT_ABGR1555;

	@:native('SDL_PIXELFORMAT_BGRA5551')
	var SDL_PIXELFORMAT_BGRA5551;

	@:native('SDL_PIXELFORMAT_RGB565')
	var SDL_PIXELFORMAT_RGB565;

	@:native('SDL_PIXELFORMAT_BGR565')
	var SDL_PIXELFORMAT_BGR565;

	@:native('SDL_PIXELFORMAT_RGB24')
	var SDL_PIXELFORMAT_RGB24;

	@:native('SDL_PIXELFORMAT_BGR24')
	var SDL_PIXELFORMAT_BGR24;

	@:native('SDL_PIXELFORMAT_XRGB8888')
	var SDL_PIXELFORMAT_XRGB8888;

	@:native('SDL_PIXELFORMAT_RGBX8888')
	var SDL_PIXELFORMAT_RGBX8888;

	@:native('SDL_PIXELFORMAT_XBGR8888')
	var SDL_PIXELFORMAT_XBGR8888;

	@:native('SDL_PIXELFORMAT_BGRX8888')
	var SDL_PIXELFORMAT_BGRX8888;

	@:native('SDL_PIXELFORMAT_ARGB8888')
	var SDL_PIXELFORMAT_ARGB8888;

	@:native('SDL_PIXELFORMAT_RGBA8888')
	var SDL_PIXELFORMAT_RGBA8888;

	@:native('SDL_PIXELFORMAT_ABGR8888')
	var SDL_PIXELFORMAT_ABGR8888;

	@:native('SDL_PIXELFORMAT_BGRA8888')
	var SDL_PIXELFORMAT_BGRA8888;

	@:native('SDL_PIXELFORMAT_XRGB2101010')
	var SDL_PIXELFORMAT_XRGB2101010;

	@:native('SDL_PIXELFORMAT_XBGR2101010')
	var SDL_PIXELFORMAT_XBGR2101010;

	@:native('SDL_PIXELFORMAT_ARGB2101010')
	var SDL_PIXELFORMAT_ARGB2101010;

	@:native('SDL_PIXELFORMAT_ABGR2101010')
	var SDL_PIXELFORMAT_ABGR2101010;

	@:native('SDL_PIXELFORMAT_RGB48')
	var SDL_PIXELFORMAT_RGB48;

	@:native('SDL_PIXELFORMAT_BGR48')
	var SDL_PIXELFORMAT_BGR48;

	@:native('SDL_PIXELFORMAT_RGBA64')
	var SDL_PIXELFORMAT_RGBA64;

	@:native('SDL_PIXELFORMAT_ARGB64')
	var SDL_PIXELFORMAT_ARGB64;

	@:native('SDL_PIXELFORMAT_BGRA64')
	var SDL_PIXELFORMAT_BGRA64;

	@:native('SDL_PIXELFORMAT_ABGR64')
	var SDL_PIXELFORMAT_ABGR64;

	@:native('SDL_PIXELFORMAT_RGB48_FLOAT')
	var SDL_PIXELFORMAT_RGB48_FLOAT;

	@:native('SDL_PIXELFORMAT_BGR48_FLOAT')
	var SDL_PIXELFORMAT_BGR48_FLOAT;

	@:native('SDL_PIXELFORMAT_RGBA64_FLOAT')
	var SDL_PIXELFORMAT_RGBA64_FLOAT;

	@:native('SDL_PIXELFORMAT_ARGB64_FLOAT')
	var SDL_PIXELFORMAT_ARGB64_FLOAT;

	@:native('SDL_PIXELFORMAT_BGRA64_FLOAT')
	var SDL_PIXELFORMAT_BGRA64_FLOAT;

	@:native('SDL_PIXELFORMAT_ABGR64_FLOAT')
	var SDL_PIXELFORMAT_ABGR64_FLOAT;

	@:native('SDL_PIXELFORMAT_RGB96_FLOAT')
	var SDL_PIXELFORMAT_RGB96_FLOAT;

	@:native('SDL_PIXELFORMAT_BGR96_FLOAT')
	var SDL_PIXELFORMAT_BGR96_FLOAT;

	@:native('SDL_PIXELFORMAT_RGBA128_FLOAT')
	var SDL_PIXELFORMAT_RGBA128_FLOAT;

	@:native('SDL_PIXELFORMAT_ARGB128_FLOAT')
	var SDL_PIXELFORMAT_ARGB128_FLOAT;

	@:native('SDL_PIXELFORMAT_BGRA128_FLOAT')
	var SDL_PIXELFORMAT_BGRA128_FLOAT;

	@:native('SDL_PIXELFORMAT_ABGR128_FLOAT')
	var SDL_PIXELFORMAT_ABGR128_FLOAT;

	@:native('SDL_PIXELFORMAT_YV12')
	var SDL_PIXELFORMAT_YV12;

	@:native('SDL_PIXELFORMAT_IYUV')
	var SDL_PIXELFORMAT_IYUV;

	@:native('SDL_PIXELFORMAT_YUY2')
	var SDL_PIXELFORMAT_YUY2;

	@:native('SDL_PIXELFORMAT_UYVY')
	var SDL_PIXELFORMAT_UYVY;

	@:native('SDL_PIXELFORMAT_YVYU')
	var SDL_PIXELFORMAT_YVYU;

	@:native('SDL_PIXELFORMAT_NV12')
	var SDL_PIXELFORMAT_NV12;

	@:native('SDL_PIXELFORMAT_NV21')
	var SDL_PIXELFORMAT_NV21;

	@:native('SDL_PIXELFORMAT_P010')
	var SDL_PIXELFORMAT_P010;

	@:native('SDL_PIXELFORMAT_EXTERNAL_OES')
	var SDL_PIXELFORMAT_EXTERNAL_OES;

	@:native('SDL_PIXELFORMAT_MJPG')
	var SDL_PIXELFORMAT_MJPG;

	@:native('SDL_PIXELFORMAT_RGBA32')
	var SDL_PIXELFORMAT_RGBA32;

	@:native('SDL_PIXELFORMAT_ARGB32')
	var SDL_PIXELFORMAT_ARGB32;

	@:native('SDL_PIXELFORMAT_BGRA32')
	var SDL_PIXELFORMAT_BGRA32;

	@:native('SDL_PIXELFORMAT_ABGR32')
	var SDL_PIXELFORMAT_ABGR32;

	@:native('SDL_PIXELFORMAT_RGBX32')
	var SDL_PIXELFORMAT_RGBX32;

	@:native('SDL_PIXELFORMAT_XRGB32')
	var SDL_PIXELFORMAT_XRGB32;

	@:native('SDL_PIXELFORMAT_BGRX32')
	var SDL_PIXELFORMAT_BGRX32;

	@:native('SDL_PIXELFORMAT_XBGR32')
	var SDL_PIXELFORMAT_XBGR32;

	@:from
	static public inline function fromInt(i:Int):SDL_PixelFormat
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_PixelFormat')
private extern class SDL_PixelFormat_Impl {}

extern enum abstract SDL_ColorType(SDL_ColorType_Impl)
{
	@:native('SDL_COLOR_TYPE_UNKNOWN')
	var SDL_COLOR_TYPE_UNKNOWN;

	@:native('SDL_COLOR_TYPE_RGB')
	var SDL_COLOR_TYPE_RGB;

	@:native('SDL_COLOR_TYPE_YCBCR')
	var SDL_COLOR_TYPE_YCBCR;

	@:from
	static public inline function fromInt(i:Int):SDL_ColorType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_ColorType')
private extern class SDL_ColorType_Impl {}

extern enum abstract SDL_ColorRange(SDL_ColorRange_Impl)
{
	@:native('SDL_COLOR_RANGE_UNKNOWN')
	var SDL_COLOR_RANGE_UNKNOWN;

	@:native('SDL_COLOR_RANGE_LIMITED')
	var SDL_COLOR_RANGE_LIMITED;

	@:native('SDL_COLOR_RANGE_FULL')
	var SDL_COLOR_RANGE_FULL;

	@:from
	static public inline function fromInt(i:Int):SDL_ColorRange
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_ColorRange')
private extern class SDL_ColorRange_Impl {}

extern enum abstract SDL_ColorPrimaries(SDL_ColorPrimaries_Impl)
{
	@:native('SDL_COLOR_PRIMARIES_UNKNOWN')
	var SDL_COLOR_PRIMARIES_UNKNOWN;

	@:native('SDL_COLOR_PRIMARIES_BT709')
	var SDL_COLOR_PRIMARIES_BT709;

	@:native('SDL_COLOR_PRIMARIES_UNSPECIFIED')
	var SDL_COLOR_PRIMARIES_UNSPECIFIED;

	@:native('SDL_COLOR_PRIMARIES_BT470M')
	var SDL_COLOR_PRIMARIES_BT470M;

	@:native('SDL_COLOR_PRIMARIES_BT470BG')
	var SDL_COLOR_PRIMARIES_BT470BG;

	@:native('SDL_COLOR_PRIMARIES_BT601')
	var SDL_COLOR_PRIMARIES_BT601;

	@:native('SDL_COLOR_PRIMARIES_SMPTE240')
	var SDL_COLOR_PRIMARIES_SMPTE240;

	@:native('SDL_COLOR_PRIMARIES_GENERIC_FILM')
	var SDL_COLOR_PRIMARIES_GENERIC_FILM;

	@:native('SDL_COLOR_PRIMARIES_BT2020')
	var SDL_COLOR_PRIMARIES_BT2020;

	@:native('SDL_COLOR_PRIMARIES_XYZ')
	var SDL_COLOR_PRIMARIES_XYZ;

	@:native('SDL_COLOR_PRIMARIES_SMPTE431')
	var SDL_COLOR_PRIMARIES_SMPTE431;

	@:native('SDL_COLOR_PRIMARIES_SMPTE432')
	var SDL_COLOR_PRIMARIES_SMPTE432;

	@:native('SDL_COLOR_PRIMARIES_EBU3213')
	var SDL_COLOR_PRIMARIES_EBU3213;

	@:native('SDL_COLOR_PRIMARIES_CUSTOM')
	var SDL_COLOR_PRIMARIES_CUSTOM;

	@:from
	static public inline function fromInt(i:Int):SDL_ColorPrimaries
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_ColorPrimaries')
private extern class SDL_ColorPrimaries_Impl {}

extern enum abstract SDL_TransferCharacteristics(SDL_TransferCharacteristics_Impl)
{
	@:native('SDL_TRANSFER_CHARACTERISTICS_UNKNOWN')
	var SDL_TRANSFER_CHARACTERISTICS_UNKNOWN;

	@:native('SDL_TRANSFER_CHARACTERISTICS_BT709')
	var SDL_TRANSFER_CHARACTERISTICS_BT709;

	@:native('SDL_TRANSFER_CHARACTERISTICS_UNSPECIFIED')
	var SDL_TRANSFER_CHARACTERISTICS_UNSPECIFIED;

	@:native('SDL_TRANSFER_CHARACTERISTICS_GAMMA22')
	var SDL_TRANSFER_CHARACTERISTICS_GAMMA22;

	@:native('SDL_TRANSFER_CHARACTERISTICS_GAMMA28')
	var SDL_TRANSFER_CHARACTERISTICS_GAMMA28;

	@:native('SDL_TRANSFER_CHARACTERISTICS_BT601')
	var SDL_TRANSFER_CHARACTERISTICS_BT601;

	@:native('SDL_TRANSFER_CHARACTERISTICS_SMPTE240')
	var SDL_TRANSFER_CHARACTERISTICS_SMPTE240;

	@:native('SDL_TRANSFER_CHARACTERISTICS_LINEAR')
	var SDL_TRANSFER_CHARACTERISTICS_LINEAR;

	@:native('SDL_TRANSFER_CHARACTERISTICS_LOG100')
	var SDL_TRANSFER_CHARACTERISTICS_LOG100;

	@:native('SDL_TRANSFER_CHARACTERISTICS_LOG100_SQRT10')
	var SDL_TRANSFER_CHARACTERISTICS_LOG100_SQRT10;

	@:native('SDL_TRANSFER_CHARACTERISTICS_IEC61966')
	var SDL_TRANSFER_CHARACTERISTICS_IEC61966;

	@:native('SDL_TRANSFER_CHARACTERISTICS_BT1361')
	var SDL_TRANSFER_CHARACTERISTICS_BT1361;

	@:native('SDL_TRANSFER_CHARACTERISTICS_SRGB')
	var SDL_TRANSFER_CHARACTERISTICS_SRGB;

	@:native('SDL_TRANSFER_CHARACTERISTICS_BT2020_10BIT')
	var SDL_TRANSFER_CHARACTERISTICS_BT2020_10BIT;

	@:native('SDL_TRANSFER_CHARACTERISTICS_BT2020_12BIT')
	var SDL_TRANSFER_CHARACTERISTICS_BT2020_12BIT;

	@:native('SDL_TRANSFER_CHARACTERISTICS_PQ')
	var SDL_TRANSFER_CHARACTERISTICS_PQ;

	@:native('SDL_TRANSFER_CHARACTERISTICS_SMPTE428')
	var SDL_TRANSFER_CHARACTERISTICS_SMPTE428;

	@:native('SDL_TRANSFER_CHARACTERISTICS_HLG')
	var SDL_TRANSFER_CHARACTERISTICS_HLG;

	@:native('SDL_TRANSFER_CHARACTERISTICS_CUSTOM')
	var SDL_TRANSFER_CHARACTERISTICS_CUSTOM;

	@:from
	static public inline function fromInt(i:Int):SDL_TransferCharacteristics
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_TransferCharacteristics')
private extern class SDL_TransferCharacteristics_Impl {}

extern enum abstract SDL_MatrixCoefficients(SDL_MatrixCoefficients_Impl)
{
	@:native('SDL_MATRIX_COEFFICIENTS_IDENTITY')
	var SDL_MATRIX_COEFFICIENTS_IDENTITY;

	@:native('SDL_MATRIX_COEFFICIENTS_BT709')
	var SDL_MATRIX_COEFFICIENTS_BT709;

	@:native('SDL_MATRIX_COEFFICIENTS_UNSPECIFIED')
	var SDL_MATRIX_COEFFICIENTS_UNSPECIFIED;

	@:native('SDL_MATRIX_COEFFICIENTS_FCC')
	var SDL_MATRIX_COEFFICIENTS_FCC;

	@:native('SDL_MATRIX_COEFFICIENTS_BT470BG')
	var SDL_MATRIX_COEFFICIENTS_BT470BG;

	@:native('SDL_MATRIX_COEFFICIENTS_BT601')
	var SDL_MATRIX_COEFFICIENTS_BT601;

	@:native('SDL_MATRIX_COEFFICIENTS_SMPTE240')
	var SDL_MATRIX_COEFFICIENTS_SMPTE240;

	@:native('SDL_MATRIX_COEFFICIENTS_YCGCO')
	var SDL_MATRIX_COEFFICIENTS_YCGCO;

	@:native('SDL_MATRIX_COEFFICIENTS_BT2020_NCL')
	var SDL_MATRIX_COEFFICIENTS_BT2020_NCL;

	@:native('SDL_MATRIX_COEFFICIENTS_BT2020_CL')
	var SDL_MATRIX_COEFFICIENTS_BT2020_CL;

	@:native('SDL_MATRIX_COEFFICIENTS_SMPTE2085')
	var SDL_MATRIX_COEFFICIENTS_SMPTE2085;

	@:native('SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_NCL')
	var SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_NCL;

	@:native('SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_CL')
	var SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_CL;

	@:native('SDL_MATRIX_COEFFICIENTS_ICTCP')
	var SDL_MATRIX_COEFFICIENTS_ICTCP;

	@:native('SDL_MATRIX_COEFFICIENTS_CUSTOM')
	var SDL_MATRIX_COEFFICIENTS_CUSTOM;

	@:from
	static public inline function fromInt(i:Int):SDL_MatrixCoefficients
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_MatrixCoefficients')
private extern class SDL_MatrixCoefficients_Impl {}

extern enum abstract SDL_ChromaLocation(SDL_ChromaLocation_Impl)
{
	@:native('SDL_CHROMA_LOCATION_NONE')
	var SDL_CHROMA_LOCATION_NONE;

	@:native('SDL_CHROMA_LOCATION_LEFT')
	var SDL_CHROMA_LOCATION_LEFT;

	@:native('SDL_CHROMA_LOCATION_CENTER')
	var SDL_CHROMA_LOCATION_CENTER;

	@:native('SDL_CHROMA_LOCATION_TOPLEFT')
	var SDL_CHROMA_LOCATION_TOPLEFT;

	@:from
	static public inline function fromInt(i:Int):SDL_ChromaLocation
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_ChromaLocation')
private extern class SDL_ChromaLocation_Impl {}

extern enum abstract SDL_Colorspace(SDL_Colorspace_Impl)
{
	@:native('SDL_COLORSPACE_UNKNOWN')
	var SDL_COLORSPACE_UNKNOWN;

	@:native('SDL_COLORSPACE_SRGB')
	var SDL_COLORSPACE_SRGB;

	@:native('SDL_COLORSPACE_SRGB_LINEAR')
	var SDL_COLORSPACE_SRGB_LINEAR;

	@:native('SDL_COLORSPACE_HDR10')
	var SDL_COLORSPACE_HDR10;

	@:native('SDL_COLORSPACE_JPEG')
	var SDL_COLORSPACE_JPEG;

	@:native('SDL_COLORSPACE_BT601_LIMITED')
	var SDL_COLORSPACE_BT601_LIMITED;

	@:native('SDL_COLORSPACE_BT601_FULL')
	var SDL_COLORSPACE_BT601_FULL;

	@:native('SDL_COLORSPACE_BT709_LIMITED')
	var SDL_COLORSPACE_BT709_LIMITED;

	@:native('SDL_COLORSPACE_BT709_FULL')
	var SDL_COLORSPACE_BT709_FULL;

	@:native('SDL_COLORSPACE_BT2020_LIMITED')
	var SDL_COLORSPACE_BT2020_LIMITED;

	@:native('SDL_COLORSPACE_BT2020_FULL')
	var SDL_COLORSPACE_BT2020_FULL;

	@:native('SDL_COLORSPACE_RGB_DEFAULT')
	var SDL_COLORSPACE_RGB_DEFAULT;

	@:native('SDL_COLORSPACE_YUV_DEFAULT')
	var SDL_COLORSPACE_YUV_DEFAULT;

	@:from
	static public inline function fromInt(i:Int):SDL_Colorspace
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_Colorspace')
private extern class SDL_Colorspace_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_Color')
extern class SDL_Color
{
	function new():Void;

	var r:UInt8;
	var g:UInt8;
	var b:UInt8;
	var a:UInt8;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_FColor')
extern class SDL_FColor
{
	function new():Void;

	var r:Float32;
	var g:Float32;
	var b:Float32;
	var a:Float32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_Palette')
extern class SDL_Palette
{
	function new():Void;

	var ncolors:Int;
	var colors:RawPointer<SDL_Color>;
	var version:UInt32;
	var refcount:Int;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_PixelFormatDetails')
extern class SDL_PixelFormatDetails
{
	function new():Void;

	var format:SDL_PixelFormat;
	var bits_per_pixel:UInt8;
	var bytes_per_pixel:UInt8;
	var padding:RawPointer<UInt8>;
	var Rmask:UInt32;
	var Gmask:UInt32;
	var Bmask:UInt32;
	var Amask:UInt32;
	var Rbits:UInt8;
	var Gbits:UInt8;
	var Bbits:UInt8;
	var Abits:UInt8;
	var Rshift:UInt8;
	var Gshift:UInt8;
	var Bshift:UInt8;
	var Ashift:UInt8;
}

extern enum abstract SDL_PowerState(SDL_PowerState_Impl)
{
	@:native('SDL_POWERSTATE_ERROR')
	var SDL_POWERSTATE_ERROR;

	@:native('SDL_POWERSTATE_UNKNOWN')
	var SDL_POWERSTATE_UNKNOWN;

	@:native('SDL_POWERSTATE_ON_BATTERY')
	var SDL_POWERSTATE_ON_BATTERY;

	@:native('SDL_POWERSTATE_NO_BATTERY')
	var SDL_POWERSTATE_NO_BATTERY;

	@:native('SDL_POWERSTATE_CHARGING')
	var SDL_POWERSTATE_CHARGING;

	@:native('SDL_POWERSTATE_CHARGED')
	var SDL_POWERSTATE_CHARGED;

	@:from
	static public inline function fromInt(i:Int):SDL_PowerState
		return cast i;

	@:to
	extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_PowerState')
private extern class SDL_PowerState_Impl {}

@:include('SDL3/SDL.h')
@:native('SDL_PropertiesID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_PropertiesID from UInt32 to UInt32 {}

extern enum abstract SDL_PropertyType(SDL_PropertyType_Impl)
{
	@:native('SDL_PROPERTY_TYPE_INVALID')
	var SDL_PROPERTY_TYPE_INVALID;

	@:native('SDL_PROPERTY_TYPE_POINTER')
	var SDL_PROPERTY_TYPE_POINTER;

	@:native('SDL_PROPERTY_TYPE_STRING')
	var SDL_PROPERTY_TYPE_STRING;

	@:native('SDL_PROPERTY_TYPE_NUMBER')
	var SDL_PROPERTY_TYPE_NUMBER;

	@:native('SDL_PROPERTY_TYPE_FLOAT')
	var SDL_PROPERTY_TYPE_FLOAT;

	@:native('SDL_PROPERTY_TYPE_BOOLEAN')
	var SDL_PROPERTY_TYPE_BOOLEAN;

	@:from
	static public inline function fromInt(i:Int):SDL_PropertyType
		return cast i;

	@:to
	extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_PropertyType')
private extern class SDL_PropertyType_Impl {}

typedef SDL_CleanupPropertyCallback = Callable<(userdata:RawPointer<cpp.Void>, value:RawPointer<cpp.Void>) -> Void>;
typedef SDL_EnumeratePropertiesCallback = Callable<(userdata:RawPointer<cpp.Void>, props:SDL_PropertiesID, name:ConstCharStar) -> Void>;

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_Point')
extern class SDL_Point
{
	function new():Void;

	var x:Int;
	var y:Int;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_FPoint')
extern class SDL_FPoint
{
	function new():Void;

	var x:Float32;
	var y:Float32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_Rect')
extern class SDL_Rect
{
	function new():Void;

	var x:Int;
	var y:Int;
	var w:Int;
	var h:Int;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_FRect')
extern class SDL_FRect
{
	function new():Void;

	var x:Float32;
	var y:Float32;
	var w:Float32;
	var h:Float32;
}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_Vertex')
extern class SDL_Vertex
{
	function new():Void;

	var position:SDL_FPoint;
	var color:SDL_FColor;
	var tex_coord:SDL_FPoint;
}

extern enum abstract SDL_TextureAccess(SDL_TextureAccess_Impl)
{
	@:native('SDL_TEXTUREACCESS_STATIC')
	var SDL_TEXTUREACCESS_STATIC;

	@:native('SDL_TEXTUREACCESS_STREAMING')
	var SDL_TEXTUREACCESS_STREAMING;

	@:native('SDL_TEXTUREACCESS_TARGET')
	var SDL_TEXTUREACCESS_TARGET;

	@:from
	static public inline function fromInt(i:Int):SDL_TextureAccess
		return cast i;

	@:to
	extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_TextureAccess')
private extern class SDL_TextureAccess_Impl {}

extern enum abstract SDL_Scancode(SDL_Scancode_Impl)
{
	@:native('SDL_SCANCODE_UNKNOWN')
	var SDL_SCANCODE_UNKNOWN;

	@:native('SDL_SCANCODE_A')
	var SDL_SCANCODE_A;

	@:native('SDL_SCANCODE_B')
	var SDL_SCANCODE_B;

	@:native('SDL_SCANCODE_C')
	var SDL_SCANCODE_C;

	@:native('SDL_SCANCODE_D')
	var SDL_SCANCODE_D;

	@:native('SDL_SCANCODE_E')
	var SDL_SCANCODE_E;

	@:native('SDL_SCANCODE_F')
	var SDL_SCANCODE_F;

	@:native('SDL_SCANCODE_G')
	var SDL_SCANCODE_G;

	@:native('SDL_SCANCODE_H')
	var SDL_SCANCODE_H;

	@:native('SDL_SCANCODE_I')
	var SDL_SCANCODE_I;

	@:native('SDL_SCANCODE_J')
	var SDL_SCANCODE_J;

	@:native('SDL_SCANCODE_K')
	var SDL_SCANCODE_K;

	@:native('SDL_SCANCODE_L')
	var SDL_SCANCODE_L;

	@:native('SDL_SCANCODE_M')
	var SDL_SCANCODE_M;

	@:native('SDL_SCANCODE_N')
	var SDL_SCANCODE_N;

	@:native('SDL_SCANCODE_O')
	var SDL_SCANCODE_O;

	@:native('SDL_SCANCODE_P')
	var SDL_SCANCODE_P;

	@:native('SDL_SCANCODE_Q')
	var SDL_SCANCODE_Q;

	@:native('SDL_SCANCODE_R')
	var SDL_SCANCODE_R;

	@:native('SDL_SCANCODE_S')
	var SDL_SCANCODE_S;

	@:native('SDL_SCANCODE_T')
	var SDL_SCANCODE_T;

	@:native('SDL_SCANCODE_U')
	var SDL_SCANCODE_U;

	@:native('SDL_SCANCODE_V')
	var SDL_SCANCODE_V;

	@:native('SDL_SCANCODE_W')
	var SDL_SCANCODE_W;

	@:native('SDL_SCANCODE_X')
	var SDL_SCANCODE_X;

	@:native('SDL_SCANCODE_Y')
	var SDL_SCANCODE_Y;

	@:native('SDL_SCANCODE_Z')
	var SDL_SCANCODE_Z;

	@:native('SDL_SCANCODE_1')
	var SDL_SCANCODE_1;

	@:native('SDL_SCANCODE_2')
	var SDL_SCANCODE_2;

	@:native('SDL_SCANCODE_3')
	var SDL_SCANCODE_3;

	@:native('SDL_SCANCODE_4')
	var SDL_SCANCODE_4;

	@:native('SDL_SCANCODE_5')
	var SDL_SCANCODE_5;

	@:native('SDL_SCANCODE_6')
	var SDL_SCANCODE_6;

	@:native('SDL_SCANCODE_7')
	var SDL_SCANCODE_7;

	@:native('SDL_SCANCODE_8')
	var SDL_SCANCODE_8;

	@:native('SDL_SCANCODE_9')
	var SDL_SCANCODE_9;

	@:native('SDL_SCANCODE_0')
	var SDL_SCANCODE_0;

	@:native('SDL_SCANCODE_RETURN')
	var SDL_SCANCODE_RETURN;

	@:native('SDL_SCANCODE_ESCAPE')
	var SDL_SCANCODE_ESCAPE;

	@:native('SDL_SCANCODE_BACKSPACE')
	var SDL_SCANCODE_BACKSPACE;

	@:native('SDL_SCANCODE_TAB')
	var SDL_SCANCODE_TAB;

	@:native('SDL_SCANCODE_SPACE')
	var SDL_SCANCODE_SPACE;

	@:native('SDL_SCANCODE_MINUS')
	var SDL_SCANCODE_MINUS;

	@:native('SDL_SCANCODE_EQUALS')
	var SDL_SCANCODE_EQUALS;

	@:native('SDL_SCANCODE_LEFTBRACKET')
	var SDL_SCANCODE_LEFTBRACKET;

	@:native('SDL_SCANCODE_RIGHTBRACKET')
	var SDL_SCANCODE_RIGHTBRACKET;

	@:native('SDL_SCANCODE_BACKSLASH')
	var SDL_SCANCODE_BACKSLASH;

	@:native('SDL_SCANCODE_NONUSHASH')
	var SDL_SCANCODE_NONUSHASH;

	@:native('SDL_SCANCODE_SEMICOLON')
	var SDL_SCANCODE_SEMICOLON;

	@:native('SDL_SCANCODE_APOSTROPHE')
	var SDL_SCANCODE_APOSTROPHE;

	@:native('SDL_SCANCODE_GRAVE')
	var SDL_SCANCODE_GRAVE;

	@:native('SDL_SCANCODE_COMMA')
	var SDL_SCANCODE_COMMA;

	@:native('SDL_SCANCODE_PERIOD')
	var SDL_SCANCODE_PERIOD;

	@:native('SDL_SCANCODE_SLASH')
	var SDL_SCANCODE_SLASH;

	@:native('SDL_SCANCODE_CAPSLOCK')
	var SDL_SCANCODE_CAPSLOCK;

	@:native('SDL_SCANCODE_F1')
	var SDL_SCANCODE_F1;

	@:native('SDL_SCANCODE_F2')
	var SDL_SCANCODE_F2;

	@:native('SDL_SCANCODE_F3')
	var SDL_SCANCODE_F3;

	@:native('SDL_SCANCODE_F4')
	var SDL_SCANCODE_F4;

	@:native('SDL_SCANCODE_F5')
	var SDL_SCANCODE_F5;

	@:native('SDL_SCANCODE_F6')
	var SDL_SCANCODE_F6;

	@:native('SDL_SCANCODE_F7')
	var SDL_SCANCODE_F7;

	@:native('SDL_SCANCODE_F8')
	var SDL_SCANCODE_F8;

	@:native('SDL_SCANCODE_F9')
	var SDL_SCANCODE_F9;

	@:native('SDL_SCANCODE_F10')
	var SDL_SCANCODE_F10;

	@:native('SDL_SCANCODE_F11')
	var SDL_SCANCODE_F11;

	@:native('SDL_SCANCODE_F12')
	var SDL_SCANCODE_F12;

	@:native('SDL_SCANCODE_PRINTSCREEN')
	var SDL_SCANCODE_PRINTSCREEN;

	@:native('SDL_SCANCODE_SCROLLLOCK')
	var SDL_SCANCODE_SCROLLLOCK;

	@:native('SDL_SCANCODE_PAUSE')
	var SDL_SCANCODE_PAUSE;

	@:native('SDL_SCANCODE_INSERT')
	var SDL_SCANCODE_INSERT;

	@:native('SDL_SCANCODE_HOME')
	var SDL_SCANCODE_HOME;

	@:native('SDL_SCANCODE_PAGEUP')
	var SDL_SCANCODE_PAGEUP;

	@:native('SDL_SCANCODE_DELETE')
	var SDL_SCANCODE_DELETE;

	@:native('SDL_SCANCODE_END')
	var SDL_SCANCODE_END;

	@:native('SDL_SCANCODE_PAGEDOWN')
	var SDL_SCANCODE_PAGEDOWN;

	@:native('SDL_SCANCODE_RIGHT')
	var SDL_SCANCODE_RIGHT;

	@:native('SDL_SCANCODE_LEFT')
	var SDL_SCANCODE_LEFT;

	@:native('SDL_SCANCODE_DOWN')
	var SDL_SCANCODE_DOWN;

	@:native('SDL_SCANCODE_UP')
	var SDL_SCANCODE_UP;

	@:native('SDL_SCANCODE_NUMLOCKCLEAR')
	var SDL_SCANCODE_NUMLOCKCLEAR;

	@:native('SDL_SCANCODE_KP_DIVIDE')
	var SDL_SCANCODE_KP_DIVIDE;

	@:native('SDL_SCANCODE_KP_MULTIPLY')
	var SDL_SCANCODE_KP_MULTIPLY;

	@:native('SDL_SCANCODE_KP_MINUS')
	var SDL_SCANCODE_KP_MINUS;

	@:native('SDL_SCANCODE_KP_PLUS')
	var SDL_SCANCODE_KP_PLUS;

	@:native('SDL_SCANCODE_KP_ENTER')
	var SDL_SCANCODE_KP_ENTER;

	@:native('SDL_SCANCODE_KP_1')
	var SDL_SCANCODE_KP_1;

	@:native('SDL_SCANCODE_KP_2')
	var SDL_SCANCODE_KP_2;

	@:native('SDL_SCANCODE_KP_3')
	var SDL_SCANCODE_KP_3;

	@:native('SDL_SCANCODE_KP_4')
	var SDL_SCANCODE_KP_4;

	@:native('SDL_SCANCODE_KP_5')
	var SDL_SCANCODE_KP_5;

	@:native('SDL_SCANCODE_KP_6')
	var SDL_SCANCODE_KP_6;

	@:native('SDL_SCANCODE_KP_7')
	var SDL_SCANCODE_KP_7;

	@:native('SDL_SCANCODE_KP_8')
	var SDL_SCANCODE_KP_8;

	@:native('SDL_SCANCODE_KP_9')
	var SDL_SCANCODE_KP_9;

	@:native('SDL_SCANCODE_KP_0')
	var SDL_SCANCODE_KP_0;

	@:native('SDL_SCANCODE_KP_PERIOD')
	var SDL_SCANCODE_KP_PERIOD;

	@:native('SDL_SCANCODE_NONUSBACKSLASH')
	var SDL_SCANCODE_NONUSBACKSLASH;

	@:native('SDL_SCANCODE_APPLICATION')
	var SDL_SCANCODE_APPLICATION;

	@:native('SDL_SCANCODE_POWER')
	var SDL_SCANCODE_POWER;

	@:native('SDL_SCANCODE_KP_EQUALS')
	var SDL_SCANCODE_KP_EQUALS;

	@:native('SDL_SCANCODE_F13')
	var SDL_SCANCODE_F13;

	@:native('SDL_SCANCODE_F14')
	var SDL_SCANCODE_F14;

	@:native('SDL_SCANCODE_F15')
	var SDL_SCANCODE_F15;

	@:native('SDL_SCANCODE_F16')
	var SDL_SCANCODE_F16;

	@:native('SDL_SCANCODE_F17')
	var SDL_SCANCODE_F17;

	@:native('SDL_SCANCODE_F18')
	var SDL_SCANCODE_F18;

	@:native('SDL_SCANCODE_F19')
	var SDL_SCANCODE_F19;

	@:native('SDL_SCANCODE_F20')
	var SDL_SCANCODE_F20;

	@:native('SDL_SCANCODE_F21')
	var SDL_SCANCODE_F21;

	@:native('SDL_SCANCODE_F22')
	var SDL_SCANCODE_F22;

	@:native('SDL_SCANCODE_F23')
	var SDL_SCANCODE_F23;

	@:native('SDL_SCANCODE_F24')
	var SDL_SCANCODE_F24;

	@:native('SDL_SCANCODE_EXECUTE')
	var SDL_SCANCODE_EXECUTE;

	@:native('SDL_SCANCODE_HELP')
	var SDL_SCANCODE_HELP;

	@:native('SDL_SCANCODE_MENU')
	var SDL_SCANCODE_MENU;

	@:native('SDL_SCANCODE_SELECT')
	var SDL_SCANCODE_SELECT;

	@:native('SDL_SCANCODE_STOP')
	var SDL_SCANCODE_STOP;

	@:native('SDL_SCANCODE_AGAIN')
	var SDL_SCANCODE_AGAIN;

	@:native('SDL_SCANCODE_UNDO')
	var SDL_SCANCODE_UNDO;

	@:native('SDL_SCANCODE_CUT')
	var SDL_SCANCODE_CUT;

	@:native('SDL_SCANCODE_COPY')
	var SDL_SCANCODE_COPY;

	@:native('SDL_SCANCODE_PASTE')
	var SDL_SCANCODE_PASTE;

	@:native('SDL_SCANCODE_FIND')
	var SDL_SCANCODE_FIND;

	@:native('SDL_SCANCODE_MUTE')
	var SDL_SCANCODE_MUTE;

	@:native('SDL_SCANCODE_VOLUMEUP')
	var SDL_SCANCODE_VOLUMEUP;

	@:native('SDL_SCANCODE_VOLUMEDOWN')
	var SDL_SCANCODE_VOLUMEDOWN;

	@:native('SDL_SCANCODE_KP_COMMA')
	var SDL_SCANCODE_KP_COMMA;

	@:native('SDL_SCANCODE_KP_EQUALSAS400')
	var SDL_SCANCODE_KP_EQUALSAS400;

	@:native('SDL_SCANCODE_INTERNATIONAL1')
	var SDL_SCANCODE_INTERNATIONAL1;

	@:native('SDL_SCANCODE_INTERNATIONAL2')
	var SDL_SCANCODE_INTERNATIONAL2;

	@:native('SDL_SCANCODE_INTERNATIONAL3')
	var SDL_SCANCODE_INTERNATIONAL3;

	@:native('SDL_SCANCODE_INTERNATIONAL4')
	var SDL_SCANCODE_INTERNATIONAL4;

	@:native('SDL_SCANCODE_INTERNATIONAL5')
	var SDL_SCANCODE_INTERNATIONAL5;

	@:native('SDL_SCANCODE_INTERNATIONAL6')
	var SDL_SCANCODE_INTERNATIONAL6;

	@:native('SDL_SCANCODE_INTERNATIONAL7')
	var SDL_SCANCODE_INTERNATIONAL7;

	@:native('SDL_SCANCODE_INTERNATIONAL8')
	var SDL_SCANCODE_INTERNATIONAL8;

	@:native('SDL_SCANCODE_INTERNATIONAL9')
	var SDL_SCANCODE_INTERNATIONAL9;

	@:native('SDL_SCANCODE_LANG1')
	var SDL_SCANCODE_LANG1;

	@:native('SDL_SCANCODE_LANG2')
	var SDL_SCANCODE_LANG2;

	@:native('SDL_SCANCODE_LANG3')
	var SDL_SCANCODE_LANG3;

	@:native('SDL_SCANCODE_LANG4')
	var SDL_SCANCODE_LANG4;

	@:native('SDL_SCANCODE_LANG5')
	var SDL_SCANCODE_LANG5;

	@:native('SDL_SCANCODE_LANG6')
	var SDL_SCANCODE_LANG6;

	@:native('SDL_SCANCODE_LANG7')
	var SDL_SCANCODE_LANG7;

	@:native('SDL_SCANCODE_LANG8')
	var SDL_SCANCODE_LANG8;

	@:native('SDL_SCANCODE_LANG9')
	var SDL_SCANCODE_LANG9;

	@:native('SDL_SCANCODE_ALTERASE')
	var SDL_SCANCODE_ALTERASE;

	@:native('SDL_SCANCODE_SYSREQ')
	var SDL_SCANCODE_SYSREQ;

	@:native('SDL_SCANCODE_CANCEL')
	var SDL_SCANCODE_CANCEL;

	@:native('SDL_SCANCODE_CLEAR')
	var SDL_SCANCODE_CLEAR;

	@:native('SDL_SCANCODE_PRIOR')
	var SDL_SCANCODE_PRIOR;

	@:native('SDL_SCANCODE_RETURN2')
	var SDL_SCANCODE_RETURN2;

	@:native('SDL_SCANCODE_SEPARATOR')
	var SDL_SCANCODE_SEPARATOR;

	@:native('SDL_SCANCODE_OUT')
	var SDL_SCANCODE_OUT;

	@:native('SDL_SCANCODE_OPER')
	var SDL_SCANCODE_OPER;

	@:native('SDL_SCANCODE_CLEARAGAIN')
	var SDL_SCANCODE_CLEARAGAIN;

	@:native('SDL_SCANCODE_CRSEL')
	var SDL_SCANCODE_CRSEL;

	@:native('SDL_SCANCODE_EXSEL')
	var SDL_SCANCODE_EXSEL;

	@:native('SDL_SCANCODE_KP_00')
	var SDL_SCANCODE_KP_00;

	@:native('SDL_SCANCODE_KP_000')
	var SDL_SCANCODE_KP_000;

	@:native('SDL_SCANCODE_THOUSANDSSEPARATOR')
	var SDL_SCANCODE_THOUSANDSSEPARATOR;

	@:native('SDL_SCANCODE_DECIMALSEPARATOR')
	var SDL_SCANCODE_DECIMALSEPARATOR;

	@:native('SDL_SCANCODE_CURRENCYUNIT')
	var SDL_SCANCODE_CURRENCYUNIT;

	@:native('SDL_SCANCODE_CURRENCYSUBUNIT')
	var SDL_SCANCODE_CURRENCYSUBUNIT;

	@:native('SDL_SCANCODE_KP_LEFTPAREN')
	var SDL_SCANCODE_KP_LEFTPAREN;

	@:native('SDL_SCANCODE_KP_RIGHTPAREN')
	var SDL_SCANCODE_KP_RIGHTPAREN;

	@:native('SDL_SCANCODE_KP_LEFTBRACE')
	var SDL_SCANCODE_KP_LEFTBRACE;

	@:native('SDL_SCANCODE_KP_RIGHTBRACE')
	var SDL_SCANCODE_KP_RIGHTBRACE;

	@:native('SDL_SCANCODE_KP_TAB')
	var SDL_SCANCODE_KP_TAB;

	@:native('SDL_SCANCODE_KP_BACKSPACE')
	var SDL_SCANCODE_KP_BACKSPACE;

	@:native('SDL_SCANCODE_KP_A')
	var SDL_SCANCODE_KP_A;

	@:native('SDL_SCANCODE_KP_B')
	var SDL_SCANCODE_KP_B;

	@:native('SDL_SCANCODE_KP_C')
	var SDL_SCANCODE_KP_C;

	@:native('SDL_SCANCODE_KP_D')
	var SDL_SCANCODE_KP_D;

	@:native('SDL_SCANCODE_KP_E')
	var SDL_SCANCODE_KP_E;

	@:native('SDL_SCANCODE_KP_F')
	var SDL_SCANCODE_KP_F;

	@:native('SDL_SCANCODE_KP_XOR')
	var SDL_SCANCODE_KP_XOR;

	@:native('SDL_SCANCODE_KP_POWER')
	var SDL_SCANCODE_KP_POWER;

	@:native('SDL_SCANCODE_KP_PERCENT')
	var SDL_SCANCODE_KP_PERCENT;

	@:native('SDL_SCANCODE_KP_LESS')
	var SDL_SCANCODE_KP_LESS;

	@:native('SDL_SCANCODE_KP_GREATER')
	var SDL_SCANCODE_KP_GREATER;

	@:native('SDL_SCANCODE_KP_AMPERSAND')
	var SDL_SCANCODE_KP_AMPERSAND;

	@:native('SDL_SCANCODE_KP_DBLAMPERSAND')
	var SDL_SCANCODE_KP_DBLAMPERSAND;

	@:native('SDL_SCANCODE_KP_VERTICALBAR')
	var SDL_SCANCODE_KP_VERTICALBAR;

	@:native('SDL_SCANCODE_KP_DBLVERTICALBAR')
	var SDL_SCANCODE_KP_DBLVERTICALBAR;

	@:native('SDL_SCANCODE_KP_COLON')
	var SDL_SCANCODE_KP_COLON;

	@:native('SDL_SCANCODE_KP_HASH')
	var SDL_SCANCODE_KP_HASH;

	@:native('SDL_SCANCODE_KP_SPACE')
	var SDL_SCANCODE_KP_SPACE;

	@:native('SDL_SCANCODE_KP_AT')
	var SDL_SCANCODE_KP_AT;

	@:native('SDL_SCANCODE_KP_EXCLAM')
	var SDL_SCANCODE_KP_EXCLAM;

	@:native('SDL_SCANCODE_KP_MEMSTORE')
	var SDL_SCANCODE_KP_MEMSTORE;

	@:native('SDL_SCANCODE_KP_MEMRECALL')
	var SDL_SCANCODE_KP_MEMRECALL;

	@:native('SDL_SCANCODE_KP_MEMCLEAR')
	var SDL_SCANCODE_KP_MEMCLEAR;

	@:native('SDL_SCANCODE_KP_MEMADD')
	var SDL_SCANCODE_KP_MEMADD;

	@:native('SDL_SCANCODE_KP_MEMSUBTRACT')
	var SDL_SCANCODE_KP_MEMSUBTRACT;

	@:native('SDL_SCANCODE_KP_MEMMULTIPLY')
	var SDL_SCANCODE_KP_MEMMULTIPLY;

	@:native('SDL_SCANCODE_KP_MEMDIVIDE')
	var SDL_SCANCODE_KP_MEMDIVIDE;

	@:native('SDL_SCANCODE_KP_PLUSMINUS')
	var SDL_SCANCODE_KP_PLUSMINUS;

	@:native('SDL_SCANCODE_KP_CLEAR')
	var SDL_SCANCODE_KP_CLEAR;

	@:native('SDL_SCANCODE_KP_CLEARENTRY')
	var SDL_SCANCODE_KP_CLEARENTRY;

	@:native('SDL_SCANCODE_KP_BINARY')
	var SDL_SCANCODE_KP_BINARY;

	@:native('SDL_SCANCODE_KP_OCTAL')
	var SDL_SCANCODE_KP_OCTAL;

	@:native('SDL_SCANCODE_KP_DECIMAL')
	var SDL_SCANCODE_KP_DECIMAL;

	@:native('SDL_SCANCODE_KP_HEXADECIMAL')
	var SDL_SCANCODE_KP_HEXADECIMAL;

	@:native('SDL_SCANCODE_LCTRL')
	var SDL_SCANCODE_LCTRL;

	@:native('SDL_SCANCODE_LSHIFT')
	var SDL_SCANCODE_LSHIFT;

	@:native('SDL_SCANCODE_LALT')
	var SDL_SCANCODE_LALT;

	@:native('SDL_SCANCODE_LGUI')
	var SDL_SCANCODE_LGUI;

	@:native('SDL_SCANCODE_RCTRL')
	var SDL_SCANCODE_RCTRL;

	@:native('SDL_SCANCODE_RSHIFT')
	var SDL_SCANCODE_RSHIFT;

	@:native('SDL_SCANCODE_RALT')
	var SDL_SCANCODE_RALT;

	@:native('SDL_SCANCODE_RGUI')
	var SDL_SCANCODE_RGUI;

	@:native('SDL_SCANCODE_MODE')
	var SDL_SCANCODE_MODE;

	@:native('SDL_SCANCODE_SLEEP')
	var SDL_SCANCODE_SLEEP;

	@:native('SDL_SCANCODE_WAKE')
	var SDL_SCANCODE_WAKE;

	@:native('SDL_SCANCODE_MEDIA_PLAY')
	var SDL_SCANCODE_MEDIA_PLAY;

	@:native('SDL_SCANCODE_MEDIA_PAUSE')
	var SDL_SCANCODE_MEDIA_PAUSE;

	@:native('SDL_SCANCODE_MEDIA_STOP')
	var SDL_SCANCODE_MEDIA_STOP;

	@:native('SDL_SCANCODE_MEDIA_NEXT_TRACK')
	var SDL_SCANCODE_MEDIA_NEXT_TRACK;

	@:native('SDL_SCANCODE_MEDIA_PREVIOUS_TRACK')
	var SDL_SCANCODE_MEDIA_PREVIOUS_TRACK;

	@:native('SDL_SCANCODE_MEDIA_SELECT')
	var SDL_SCANCODE_MEDIA_SELECT;

	@:native('SDL_SCANCODE_AC_SEARCH')
	var SDL_SCANCODE_AC_SEARCH;

	@:native('SDL_SCANCODE_AC_HOME')
	var SDL_SCANCODE_AC_HOME;

	@:native('SDL_SCANCODE_AC_BACK')
	var SDL_SCANCODE_AC_BACK;

	@:native('SDL_SCANCODE_AC_FORWARD')
	var SDL_SCANCODE_AC_FORWARD;

	@:native('SDL_SCANCODE_AC_STOP')
	var SDL_SCANCODE_AC_STOP;

	@:native('SDL_SCANCODE_AC_REFRESH')
	var SDL_SCANCODE_AC_REFRESH;

	@:native('SDL_SCANCODE_AC_BOOKMARKS')
	var SDL_SCANCODE_AC_BOOKMARKS;

	@:native('SDL_SCANCODE_SOFTLEFT')
	var SDL_SCANCODE_SOFTLEFT;

	@:native('SDL_SCANCODE_SOFTRIGHT')
	var SDL_SCANCODE_SOFTRIGHT;

	@:native('SDL_SCANCODE_CALL')
	var SDL_SCANCODE_CALL;

	@:native('SDL_SCANCODE_ENDCALL')
	var SDL_SCANCODE_ENDCALL;

	@:native('SDL_SCANCODE_RESERVED')
	var SDL_SCANCODE_RESERVED;

	@:native('SDL_SCANCODE_COUNT')
	var SDL_SCANCODE_COUNT;

	@:from
	static public inline function fromInt(i:Int):SDL_Scancode
		return cast i;

	@:to
	extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_Scancode')
private extern class SDL_Scancode_Impl {}

@:include('SDL3/SDL.h')
@:native('SDL_Sensor')
extern class SDL_Sensor {}

@:include('SDL3/SDL.h')
@:native('SDL_SensorID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_SensorID from UInt32 to UInt32 {}

extern enum abstract SDL_SensorType(SDL_SensorType_Impl)
{
	@:native('SDL_SENSOR_INVALID')
	var SDL_SENSOR_INVALID;

	@:native('SDL_SENSOR_UNKNOWN')
	var SDL_SENSOR_UNKNOWN;

	@:native('SDL_SENSOR_ACCEL')
	var SDL_SENSOR_ACCEL;

	@:native('SDL_SENSOR_GYRO')
	var SDL_SENSOR_GYRO;

	@:native('SDL_SENSOR_ACCEL_L')
	var SDL_SENSOR_ACCEL_L;

	@:native('SDL_SENSOR_GYRO_L')
	var SDL_SENSOR_GYRO_L;

	@:native('SDL_SENSOR_ACCEL_R')
	var SDL_SENSOR_ACCEL_R;

	@:native('SDL_SENSOR_GYRO_R')
	var SDL_SENSOR_GYRO_R;

	@:from
	static public inline function fromInt(i:Int):SDL_SensorType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_SensorType')
private extern class SDL_SensorType_Impl {}

@:include('SDL3/SDL.h')
@:native('SDL_Time')
@:scalar
@:coreType
@:notNull
extern abstract SDL_Time from Int64 to Int64 {}

#if ROGUE_SDL_FUNCTION_POINTER_IS_VOID_POINTER
typedef SDL_FunctionPointer = RawPointer<cpp.Void>;
#else
typedef SDL_FunctionPointer = Callable<Void->Void>;
#end

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_StorageInterface')
extern class SDL_StorageInterface
{
	function new():Void;

	var version:UInt32;
	var close:Callable<(userdata:RawPointer<cpp.Void>) -> Bool>;
	var ready:Callable<(userdata:RawPointer<cpp.Void>) -> Bool>;
	var enumerate:Callable<(userdata:RawPointer<cpp.Void>, path:ConstCharStar, callback:SDL_EnumerateDirectoryCallback, callback_userdata:RawPointer<cpp.Void>) -> Bool>;
	var info:Callable<(userdata:RawPointer<cpp.Void>, path:ConstCharStar, info:RawPointer<SDL_PathInfo>) -> Bool>;
	var read_file:Callable<(userdata:RawPointer<cpp.Void>, path:ConstCharStar, destination:RawPointer<cpp.Void>, length:UInt64) -> Bool>;
	var write_file:Callable<(userdata:RawPointer<cpp.Void>, path:ConstCharStar, source:RawConstPointer<cpp.Void>, length:UInt64) -> Bool>;
	var mkdir:Callable<(userdata:RawPointer<cpp.Void>, path:ConstCharStar) -> Bool>;
	var remove:Callable<(userdata:RawPointer<cpp.Void>, path:ConstCharStar) -> Bool>;
	var rename:Callable<(userdata:RawPointer<cpp.Void>, oldpath:ConstCharStar, newpath:ConstCharStar) -> Bool>;
	var copy:Callable<(userdata:RawPointer<cpp.Void>, oldpath:ConstCharStar, newpath:ConstCharStar) -> Bool>;
	var space_remaining:Callable<(userdata:RawPointer<cpp.Void>) -> UInt64>;
}

@:include('SDL3/SDL.h')
@:native('SDL_Storage')
extern class SDL_Storage {}

@:include('SDL3/SDL.h')
@:native('SDL_SurfaceFlags')
@:scalar
@:coreType
@:notNull
extern abstract SDL_SurfaceFlags from UInt32 to UInt32 {}

extern enum abstract SDL_ScaleMode(SDL_ScaleMode_Impl)
{
	@:native('SDL_SCALEMODE_INVALID')
	var SDL_SCALEMODE_INVALID;

	@:native('SDL_SCALEMODE_NEAREST')
	var SDL_SCALEMODE_NEAREST;

	@:native('SDL_SCALEMODE_LINEAR')
	var SDL_SCALEMODE_LINEAR;

	@:from
	static public inline function fromInt(i:Int):SDL_ScaleMode
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_ScaleMode')
private extern class SDL_ScaleMode_Impl {}

extern enum abstract SDL_FlipMode(SDL_FlipMode_Impl)
{
	@:native('SDL_FLIP_NONE')
	var SDL_FLIP_NONE;

	@:native('SDL_FLIP_HORIZONTAL')
	var SDL_FLIP_HORIZONTAL;

	@:native('SDL_FLIP_VERTICAL')
	var SDL_FLIP_VERTICAL;

	@:from
	static public inline function fromInt(i:Int):SDL_FlipMode
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_FlipMode')
private extern class SDL_FlipMode_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_Surface')
extern class SDL_Surface
{
	function new():Void;

	var flags:SDL_SurfaceFlags;
	var format:SDL_PixelFormat;
	var w:Int;
	var h:Int;
	var pitch:Int;
	var pixels:RawPointer<cpp.Void>;
	var refcount:Int;
	var reserved:RawPointer<cpp.Void>;
}

#if windows
@:include('SDL3/SDL.h')
@:native('MSG')
extern class MSG {}

typedef SDL_WindowsMessageHook = Callable<(userdata:RawPointer<cpp.Void>, msg:RawPointer<MSG>) -> Bool>;
#end

@:include('SDL3/SDL.h')
@:native('XEvent')
extern class XEvent {}

typedef SDL_X11EventHook = Callable<(userdata:RawPointer<cpp.Void>, xevent:RawPointer<XEvent>) -> Bool>;
#if iphone
typedef SDL_iOSAnimationCallback = Callable<(userdata:RawPointer<cpp.Void>) -> Void>;
#end
#if android
typedef SDL_RequestAndroidPermissionCallback = Callable<(userdata:RawPointer<cpp.Void>, permission:ConstCharStar, granted:Bool) -> Void>;
#end

extern enum abstract SDL_Sandbox(SDL_Sandbox_Impl)
{
	@:native('SDL_SANDBOX_NONE')
	var SDL_SANDBOX_NONE;

	@:native('SDL_SANDBOX_UNKNOWN_CONTAINER')
	var SDL_SANDBOX_UNKNOWN_CONTAINER;

	@:native('SDL_SANDBOX_FLATPAK')
	var SDL_SANDBOX_FLATPAK;

	@:native('SDL_SANDBOX_SNAP')
	var SDL_SANDBOX_SNAP;

	@:native('SDL_SANDBOX_MACOS')
	var SDL_SANDBOX_MACOS;

	@:from
	static public inline function fromInt(i:Int):SDL_Sandbox
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_Sandbox')
private extern class SDL_Sandbox_Impl {}

@:include('SDL3/SDL.h')
@:native('SDL_Thread')
extern class SDL_Thread {}

@:include('SDL3/SDL.h')
@:native('SDL_ThreadID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_ThreadID from UInt64 to UInt64 {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_TLSID')
extern class SDL_TLSID
{
	function new():Void;

	var value:Int;
}

extern enum abstract SDL_ThreadPriority(SDL_ThreadPriority_Impl)
{
	@:native('SDL_THREAD_PRIORITY_LOW')
	var SDL_THREAD_PRIORITY_LOW;

	@:native('SDL_THREAD_PRIORITY_NORMAL')
	var SDL_THREAD_PRIORITY_NORMAL;

	@:native('SDL_THREAD_PRIORITY_HIGH')
	var SDL_THREAD_PRIORITY_HIGH;

	@:native('SDL_THREAD_PRIORITY_TIME_CRITICAL')
	var SDL_THREAD_PRIORITY_TIME_CRITICAL;

	@:from
	static public inline function fromInt(i:Int):SDL_ThreadPriority
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_ThreadPriority')
private extern class SDL_ThreadPriority_Impl {}

extern enum abstract SDL_ThreadState(SDL_ThreadState_Impl)
{
	@:native('SDL_THREAD_UNKNOWN')
	var SDL_THREAD_UNKNOWN;

	@:native('SDL_THREAD_ALIVE')
	var SDL_THREAD_ALIVE;

	@:native('SDL_THREAD_DETACHED')
	var SDL_THREAD_DETACHED;

	@:native('SDL_THREAD_COMPLETE')
	var SDL_THREAD_COMPLETE;

	@:from
	static public inline function fromInt(i:Int):SDL_ThreadState
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_ThreadState')
private extern class SDL_ThreadState_Impl {}

typedef SDL_ThreadFunction = Callable<(data:RawPointer<cpp.Void>) -> Int>;
typedef SDL_TLSDestructorCallback = Callable<(value:RawPointer<cpp.Void>) -> Void>;

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_DateTime')
extern class SDL_DateTime
{
	function new():Void;

	var year:Int;
	var month:Int;
	var day:Int;
	var hour:Int;
	var minute:Int;
	var second:Int;
	var nanosecond:Int;
	var day_of_week:Int;
	var utc_offset:Int;
}

extern enum abstract SDL_DateFormat(SDL_DateFormat_Impl)
{
	@:native('SDL_DATE_FORMAT_YYYYMMDD')
	var SDL_DATE_FORMAT_YYYYMMDD;

	@:native('SDL_DATE_FORMAT_DDMMYYYY')
	var SDL_DATE_FORMAT_DDMMYYYY;

	@:native('SDL_DATE_FORMAT_MMDDYYYY')
	var SDL_DATE_FORMAT_MMDDYYYY;

	@:from
	static public inline function fromInt(i:Int):SDL_DateFormat
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_DateFormat')
private extern class SDL_DateFormat_Impl {}

extern enum abstract SDL_TimeFormat(SDL_TimeFormat_Impl)
{
	@:native('SDL_TIME_FORMAT_24HR')
	var SDL_TIME_FORMAT_24HR;

	@:native('SDL_TIME_FORMAT_12HR')
	var SDL_TIME_FORMAT_12HR;

	@:from
	static public inline function fromInt(i:Int):SDL_TimeFormat
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_TimeFormat')
private extern class SDL_TimeFormat_Impl {}

@:include('SDL3/SDL.h')
@:native('SDL_TimerID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_TimerID from UInt32 to UInt32 {}

typedef SDL_TimerCallback = Callable<(userdata:RawPointer<cpp.Void>, timerID:SDL_TimerID, interval:UInt32) -> UInt32>;
typedef SDL_NSTimerCallback = Callable<(userdata:RawPointer<cpp.Void>, timerID:SDL_TimerID, interval:UInt64) -> UInt64>;

@:include('SDL3/SDL.h')
@:native('SDL_TouchID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_TouchID from UInt64 to UInt64 {}

@:include('SDL3/SDL.h')
@:native('SDL_FingerID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_FingerID from UInt64 to UInt64 {}

extern enum abstract SDL_TouchDeviceType(SDL_TouchDeviceType_Impl)
{
	@:native('SDL_TOUCH_DEVICE_INVALID')
	var SDL_TOUCH_DEVICE_INVALID;

	@:native('SDL_TOUCH_DEVICE_DIRECT')
	var SDL_TOUCH_DEVICE_DIRECT;

	@:native('SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE')
	var SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE;

	@:native('SDL_TOUCH_DEVICE_INDIRECT_RELATIVE')
	var SDL_TOUCH_DEVICE_INDIRECT_RELATIVE;

	@:from
	static public inline function fromInt(i:Int):SDL_TouchDeviceType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_TouchDeviceType')
private extern class SDL_TouchDeviceType_Impl {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_Finger')
extern class SDL_Finger
{
	function new():Void;

	var id:SDL_FingerID;
	var x:Float32;
	var y:Float32;
	var pressure:Float32;
}

@:include('SDL3/SDL.h')
@:native('SDL_Tray')
extern class SDL_Tray {}

@:include('SDL3/SDL.h')
@:native('SDL_TrayMenu')
extern class SDL_TrayMenu {}

@:include('SDL3/SDL.h')
@:native('SDL_TrayEntry')
extern class SDL_TrayEntry {}

@:include('SDL3/SDL.h')
@:native('SDL_TrayEntryFlags')
@:scalar
@:coreType
@:notNull
extern abstract SDL_TrayEntryFlags from UInt32 to UInt32 {}

typedef SDL_TrayCallback = Callable<(userdata:RawPointer<cpp.Void>, entry:RawPointer<SDL_TrayEntry>) -> Void>;

@:include('SDL3/SDL.h')
@:native('SDL_DisplayID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_DisplayID from UInt32 to UInt32 {}

@:include('SDL3/SDL.h')
@:native('SDL_WindowID')
@:scalar
@:coreType
@:notNull
extern abstract SDL_WindowID from UInt32 to UInt32 {}

extern enum abstract SDL_SystemTheme(SDL_SystemTheme_Impl)
{
	@:native('SDL_SYSTEM_THEME_UNKNOWN')
	var SDL_SYSTEM_THEME_UNKNOWN;

	@:native('SDL_SYSTEM_THEME_LIGHT')
	var SDL_SYSTEM_THEME_LIGHT;

	@:native('SDL_SYSTEM_THEME_DARK')
	var SDL_SYSTEM_THEME_DARK;

	@:from
	static public inline function fromInt(i:Int):SDL_SystemTheme
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_SystemTheme')
private extern class SDL_SystemTheme_Impl {}

@:include('SDL3/SDL.h')
@:native('SDL_DisplayModeData')
extern class SDL_DisplayModeData {}

@:include('SDL3/SDL.h')
@:structAccess
@:native('SDL_DisplayMode')
extern class SDL_DisplayMode
{
	function new():Void;

	var displayID:SDL_DisplayID;
	var format:SDL_PixelFormat;
	var w:Int;
	var h:Int;
	var pixel_density:Float32;
	var refresh_rate:Float32;
	var refresh_rate_numerator:Int;
	var refresh_rate_denominator:Int;
	var internal:SDL_DisplayModeData;
}

extern enum abstract SDL_DisplayOrientation(SDL_DisplayOrientation_Impl)
{
	@:native('SDL_ORIENTATION_UNKNOWN')
	var SDL_ORIENTATION_UNKNOWN;

	@:native('SDL_ORIENTATION_LANDSCAPE')
	var SDL_ORIENTATION_LANDSCAPE;

	@:native('SDL_ORIENTATION_LANDSCAPE_FLIPPED')
	var SDL_ORIENTATION_LANDSCAPE_FLIPPED;

	@:native('SDL_ORIENTATION_PORTRAIT')
	var SDL_ORIENTATION_PORTRAIT;

	@:native('SDL_ORIENTATION_PORTRAIT_FLIPPED')
	var SDL_ORIENTATION_PORTRAIT_FLIPPED;

	@:from
	static public inline function fromInt(i:Int):SDL_DisplayOrientation
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_DisplayOrientation')
private extern class SDL_DisplayOrientation_Impl {}

@:include('SDL3/SDL.h')
@:native('SDL_Window')
extern class SDL_Window {}

@:include('SDL3/SDL.h')
@:native('SDL_WindowFlags')
@:scalar
@:coreType
@:notNull
extern abstract SDL_WindowFlags from UInt64 to UInt64 {}

extern enum abstract SDL_FlashOperation(SDL_FlashOperation_Impl)
{
	@:native('SDL_FLASH_CANCEL')
	var SDL_FLASH_CANCEL;

	@:native('SDL_FLASH_BRIEFLY')
	var SDL_FLASH_BRIEFLY;

	@:native('SDL_FLASH_UNTIL_FOCUSED')
	var SDL_FLASH_UNTIL_FOCUSED;

	@:from
	static public inline function fromInt(i:Int):SDL_FlashOperation
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_FlashOperation')
private extern class SDL_FlashOperation_Impl {}

@:include('SDL3/SDL.h')
@:native('SDL_GLContext')
@:scalar
@:coreType
extern abstract SDL_GLContext from RawPointer<cpp.Void> to RawPointer<cpp.Void> {}

extern enum abstract SDL_GLAttr(SDL_GLAttr_Impl)
{
	@:native('SDL_GL_RED_SIZE')
	var SDL_GL_RED_SIZE;

	@:native('SDL_GL_GREEN_SIZE')
	var SDL_GL_GREEN_SIZE;

	@:native('SDL_GL_BLUE_SIZE')
	var SDL_GL_BLUE_SIZE;

	@:native('SDL_GL_ALPHA_SIZE')
	var SDL_GL_ALPHA_SIZE;

	@:native('SDL_GL_BUFFER_SIZE')
	var SDL_GL_BUFFER_SIZE;

	@:native('SDL_GL_DOUBLEBUFFER')
	var SDL_GL_DOUBLEBUFFER;

	@:native('SDL_GL_DEPTH_SIZE')
	var SDL_GL_DEPTH_SIZE;

	@:native('SDL_GL_STENCIL_SIZE')
	var SDL_GL_STENCIL_SIZE;

	@:native('SDL_GL_ACCUM_RED_SIZE')
	var SDL_GL_ACCUM_RED_SIZE;

	@:native('SDL_GL_ACCUM_GREEN_SIZE')
	var SDL_GL_ACCUM_GREEN_SIZE;

	@:native('SDL_GL_ACCUM_BLUE_SIZE')
	var SDL_GL_ACCUM_BLUE_SIZE;

	@:native('SDL_GL_ACCUM_ALPHA_SIZE')
	var SDL_GL_ACCUM_ALPHA_SIZE;

	@:native('SDL_GL_STEREO')
	var SDL_GL_STEREO;

	@:native('SDL_GL_MULTISAMPLEBUFFERS')
	var SDL_GL_MULTISAMPLEBUFFERS;

	@:native('SDL_GL_MULTISAMPLESAMPLES')
	var SDL_GL_MULTISAMPLESAMPLES;

	@:native('SDL_GL_ACCELERATED_VISUAL')
	var SDL_GL_ACCELERATED_VISUAL;

	@:native('SDL_GL_RETAINED_BACKING')
	var SDL_GL_RETAINED_BACKING;

	@:native('SDL_GL_CONTEXT_MAJOR_VERSION')
	var SDL_GL_CONTEXT_MAJOR_VERSION;

	@:native('SDL_GL_CONTEXT_MINOR_VERSION')
	var SDL_GL_CONTEXT_MINOR_VERSION;

	@:native('SDL_GL_CONTEXT_FLAGS')
	var SDL_GL_CONTEXT_FLAGS;

	@:native('SDL_GL_CONTEXT_PROFILE_MASK')
	var SDL_GL_CONTEXT_PROFILE_MASK;

	@:native('SDL_GL_SHARE_WITH_CURRENT_CONTEXT')
	var SDL_GL_SHARE_WITH_CURRENT_CONTEXT;

	@:native('SDL_GL_FRAMEBUFFER_SRGB_CAPABLE')
	var SDL_GL_FRAMEBUFFER_SRGB_CAPABLE;

	@:native('SDL_GL_CONTEXT_RELEASE_BEHAVIOR')
	var SDL_GL_CONTEXT_RELEASE_BEHAVIOR;

	@:native('SDL_GL_CONTEXT_RESET_NOTIFICATION')
	var SDL_GL_CONTEXT_RESET_NOTIFICATION;

	@:native('SDL_GL_CONTEXT_NO_ERROR')
	var SDL_GL_CONTEXT_NO_ERROR;

	@:native('SDL_GL_FLOATBUFFERS')
	var SDL_GL_FLOATBUFFERS;

	@:native('SDL_GL_EGL_PLATFORM')
	var SDL_GL_EGL_PLATFORM;

	@:from
	static public inline function fromInt(i:Int):SDL_GLAttr
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL_video.h')
@:native('SDL_GLAttr')
private extern class SDL_GLAttr_Impl {}

@:include('SDL3/SDL.h')
@:native('SDL_GLProfile')
@:scalar
@:coreType
@:notNull
extern abstract SDL_GLProfile from UInt32 to UInt32 {}

@:include('SDL3/SDL.h')
@:native('SDL_GLContextFlag')
@:scalar
@:coreType
@:notNull
extern abstract SDL_GLContextFlag from UInt32 to UInt32 {}

@:include('SDL3/SDL.h')
@:native('SDL_GLContextReleaseFlag')
@:scalar
@:coreType
@:notNull
extern abstract SDL_GLContextReleaseFlag from UInt32 to UInt32 {}

@:include('SDL3/SDL.h')
@:native('SDL_GLContextResetNotification')
@:scalar
@:coreType
@:notNull
extern abstract SDL_GLContextResetNotification from UInt32 to UInt32 {}

extern enum abstract SDL_HitTestResult(SDL_HitTestResult_Impl)
{
	@:native('SDL_HITTEST_NORMAL')
	var SDL_HITTEST_NORMAL;

	@:native('SDL_HITTEST_DRAGGABLE')
	var SDL_HITTEST_DRAGGABLE;

	@:native('SDL_HITTEST_RESIZE_TOPLEFT')
	var SDL_HITTEST_RESIZE_TOPLEFT;

	@:native('SDL_HITTEST_RESIZE_TOP')
	var SDL_HITTEST_RESIZE_TOP;

	@:native('SDL_HITTEST_RESIZE_TOPRIGHT')
	var SDL_HITTEST_RESIZE_TOPRIGHT;

	@:native('SDL_HITTEST_RESIZE_RIGHT')
	var SDL_HITTEST_RESIZE_RIGHT;

	@:native('SDL_HITTEST_RESIZE_BOTTOMRIGHT')
	var SDL_HITTEST_RESIZE_BOTTOMRIGHT;

	@:native('SDL_HITTEST_RESIZE_BOTTOM')
	var SDL_HITTEST_RESIZE_BOTTOM;

	@:native('SDL_HITTEST_RESIZE_BOTTOMLEFT')
	var SDL_HITTEST_RESIZE_BOTTOMLEFT;

	@:native('SDL_HITTEST_RESIZE_LEFT')
	var SDL_HITTEST_RESIZE_LEFT;

	@:from
	static public inline function fromInt(i:Int):SDL_HitTestResult
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3/SDL.h')
@:native('SDL_HitTestResult')
private extern class SDL_HitTestResult_Impl {}

typedef SDL_HitTest = Callable<(win:RawPointer<SDL_Window>, area:RawConstPointer<SDL_Point>, data:RawPointer<cpp.Void>) -> SDL_HitTestResult>;

/**
 * This class provides static methods to interact with the `SDL` library.
 */
@:include('SDL3/SDL.h')
extern class SDL
{
	// SDL_asyncio.h
	@:native('SDL_AsyncIOFromFile')
	static function AsyncIOFromFile(file:ConstCharStar, mode:ConstCharStar):SDL_AsyncIO;

	@:native('SDL_GetAsyncIOSize')
	static function GetAsyncIOSize(asyncio:SDL_AsyncIO):Int64;

	@:native('SDL_ReadAsyncIO')
	static function ReadAsyncIO(asyncio:SDL_AsyncIO, ptr:RawPointer<cpp.Void>, offset:UInt64, size:UInt64, queue:SDL_AsyncIOQueue, userdata:RawPointer<cpp.Void>):Bool;

	@:native('SDL_WriteAsyncIO')
	static function WriteAsyncIO(asyncio:SDL_AsyncIO, ptr:RawPointer<cpp.Void>, offset:UInt64, size:UInt64, queue:SDL_AsyncIOQueue, userdata:RawPointer<cpp.Void>):Bool;

	@:native('SDL_CloseAsyncIO')
	static function CloseAsyncIO(asyncio:SDL_AsyncIO, flush:Bool, queue:SDL_AsyncIOQueue, userdata:RawPointer<cpp.Void>):Bool;

	@:native('SDL_CreateAsyncIOQueue')
	static function CreateAsyncIOQueue():SDL_AsyncIOQueue;

	@:native('SDL_DestroyAsyncIOQueue')
	static function DestroyAsyncIOQueue(queue:SDL_AsyncIOQueue):Void;

	@:native('SDL_GetAsyncIOResult')
	static function GetAsyncIOResult(queue:SDL_AsyncIOQueue, outcome:RawPointer<SDL_AsyncIOOutcome>):Bool;

	@:native('SDL_WaitAsyncIOResult')
	static function WaitAsyncIOResult(queue:SDL_AsyncIOQueue, outcome:RawPointer<SDL_AsyncIOOutcome>, timeoutMS:Int):Bool;

	@:native('SDL_SignalAsyncIOQueue')
	static function SignalAsyncIOQueue(queue:SDL_AsyncIOQueue):Void;

	@:native('SDL_LoadFileAsync')
	static function LoadFileAsync(file:ConstCharStar, queue:SDL_AsyncIOQueue, userdata:RawPointer<cpp.Void>):Bool;

	// SDL_atomic.h
	@:native('SDL_TryLockSpinlock')
	static function TryLockSpinlock(lock:RawPointer<SDL_SpinLock>):Bool;

	@:native('SDL_LockSpinlock')
	static function LockSpinlock(lock:RawPointer<SDL_SpinLock>):Void;

	@:native('SDL_UnlockSpinlock')
	static function UnlockSpinlock(lock:RawPointer<SDL_SpinLock>):Void;

	@:native('SDL_MemoryBarrierReleaseFunction')
	static function MemoryBarrierReleaseFunction():Void;

	@:native('SDL_MemoryBarrierAcquireFunction')
	static function MemoryBarrierAcquireFunction():Void;

	@:native('SDL_CompareAndSwapAtomicInt')
	static function CompareAndSwapAtomicInt(a:RawPointer<SDL_AtomicInt>, oldval:Int, newval:Int):Bool;

	@:native('SDL_SetAtomicInt')
	static function SetAtomicInt(a:RawPointer<SDL_AtomicInt>, v:Int):Int;

	@:native('SDL_GetAtomicInt')
	static function GetAtomicInt(a:RawPointer<SDL_AtomicInt>):Int;

	@:native('SDL_AddAtomicInt')
	static function AddAtomicInt(a:RawPointer<SDL_AtomicInt>, v:Int):Int;

	@:native('SDL_CompareAndSwapAtomicU32')
	static function CompareAndSwapAtomicU32(a:RawPointer<SDL_AtomicU32>, oldval:UInt32, newval:UInt32):Bool;

	@:native('SDL_SetAtomicU32')
	static function SetAtomicU32(a:RawPointer<SDL_AtomicU32>, v:UInt32):UInt32;

	@:native('SDL_GetAtomicU32')
	static function GetAtomicU32(a:RawPointer<SDL_AtomicU32>):UInt32;

	@:native('SDL_CompareAndSwapAtomicPointer')
	static function CompareAndSwapAtomicPointer(a:RawPointer<RawPointer<cpp.Void>>, oldval:RawPointer<cpp.Void>, newval:RawPointer<cpp.Void>):Bool;

	@:native('SDL_SetAtomicPointer')
	static function SetAtomicPointer(a:RawPointer<RawPointer<cpp.Void>>, v:RawPointer<cpp.Void>):RawPointer<cpp.Void>;

	@:native('SDL_GetAtomicPointer')
	static function GetAtomicPointer(a:RawPointer<RawPointer<cpp.Void>>):RawPointer<cpp.Void>;

	// SDL_bits.h
	@:native('SDL_MostSignificantBitIndex32')
	static function SDL_MostSignificantBitIndex32(x:UInt32):Int;

	@:native('SDL_HasExactlyOneBitSet32')
	static function SDL_HasExactlyOneBitSet32(x:UInt32):Bool;

	// SDL_blendmode.h
	@:native('SDL_BLENDMODE_NONE')
	static var BLENDMODE_NONE:UInt32;

	@:native('BLENDMODE_BLEND')
	static var BLENDMODE_BLEND:UInt32;

	@:native('SDL_BLENDMODE_BLEND_PREMULTIPLIED')
	static var BLENDMODE_BLEND_PREMULTIPLIED:UInt32;

	@:native('SDL_BLENDMODE_ADD')
	static var BLENDMODE_ADD:UInt32;

	@:native('SDL_BLENDMODE_ADD_PREMULTIPLIED')
	static var BLENDMODE_ADD_PREMULTIPLIED:UInt32;

	@:native('SDL_BLENDMODE_MOD')
	static var BLENDMODE_MOD:UInt32;

	@:native('SDL_BLENDMODE_MUL')
	static var BLENDMODE_MUL:UInt32;

	@:native('SDL_BLENDMODE_INVALID')
	static var BLENDMODE_INVALID:UInt32;

	@:native('SDL_ComposeCustomBlendMode')
	static function ComposeCustomBlendMode(srcColorFactor:SDL_BlendFactor, dstColorFactor:SDL_BlendFactor, colorOperation:SDL_BlendOperation,
		srcAlphaFactor:SDL_BlendFactor, dstAlphaFactor:SDL_BlendFactor, alphaOperation:SDL_BlendOperation):SDL_BlendMode;

	// SDL_camera.h
	@:native('SDL_GetNumCameraDrivers')
	static function GetNumCameraDrivers():Int;

	@:native('SDL_GetCameraDriver')
	static function GetCameraDriver(index:Int):ConstCharStar;

	@:native('SDL_GetCurrentCameraDriver')
	static function GetCurrentCameraDriver():ConstCharStar;

	@:native('SDL_GetCameras')
	static function GetCameras(count:RawPointer<Int>):RawPointer<SDL_CameraID>;

	@:native('SDL_GetCameraSupportedFormats')
	static function GetCameraSupportedFormats(instance_id:SDL_CameraID, count:RawPointer<Int>):RawPointer<RawPointer<SDL_CameraSpec>>;

	@:native('SDL_GetCameraName')
	static function GetCameraName(instance_id:SDL_CameraID):ConstCharStar;

	@:native('SDL_GetCameraPosition')
	static function GetCameraPosition(instance_id:SDL_CameraID):SDL_CameraPosition;

	@:native('SDL_OpenCamera')
	static function OpenCamera(instance_id:SDL_CameraID, spec:RawPointer<SDL_CameraSpec>):RawPointer<SDL_Camera>;

	@:native('SDL_GetCameraPermissionState')
	static function GetCameraPermissionState(camera:RawPointer<SDL_Camera>):Int;

	@:native('SDL_GetCameraID')
	static function GetCameraID(camera:RawPointer<SDL_Camera>):SDL_CameraID;

	@:native('SDL_GetCameraProperties')
	static function GetCameraProperties(camera:RawPointer<SDL_Camera>):SDL_PropertiesID;

	@:native('SDL_GetCameraFormat')
	static function GetCameraFormat(camera:RawPointer<SDL_Camera>, spec:RawPointer<SDL_CameraSpec>):Bool;

	@:native('SDL_AcquireCameraFrame')
	static function AcquireCameraFrame(camera:RawPointer<SDL_Camera>, timestampNS:RawPointer<UInt64>):RawPointer<SDL_Surface>;

	@:native('SDL_ReleaseCameraFrame')
	static function ReleaseCameraFrame(camera:RawPointer<SDL_Camera>, frame:RawPointer<SDL_Surface>):Void;

	@:native('SDL_CloseCamera')
	static function CloseCamera(camera:RawPointer<SDL_Camera>):Void;

	// SDL_clipboard.h
	@:native('SDL_SetClipboardText')
	static function SetClipboardText(text:ConstCharStar):Bool;

	@:native('SDL_GetClipboardText')
	static function GetClipboardText():CastCharStar;

	@:native('SDL_HasClipboardText')
	static function HasClipboardText():Bool;

	@:native('SDL_SetPrimarySelectionText')
	static function SetPrimarySelectionText(text:ConstCharStar):Bool;

	@:native('SDL_GetPrimarySelectionText')
	static function GetPrimarySelectionText():CastCharStar;

	@:native('SDL_HasPrimarySelectionText')
	static function HasPrimarySelectionText():Bool;

	@:native('SDL_SetClipboardData')
	static function SetClipboardData(callback:SDL_ClipboardDataCallback, cleanup:SDL_ClipboardCleanupCallback, userdata:RawPointer<cpp.Void>,
		mimeTypes:RawPointer<ConstCharStar>, numMimeTypes:Int):Bool;

	@:native('SDL_ClearClipboardData')
	static function ClearClipboardData():Bool;

	@:native('SDL_GetClipboardData')
	static function GetClipboardData(mimeType:ConstCharStar, size:RawPointer<Int>):RawPointer<cpp.Void>;

	@:native('SDL_HasClipboardData')
	static function HasClipboardData(mimeType:ConstCharStar):Bool;

	@:native('SDL_GetClipboardMimeTypes')
	static function GetClipboardMimeTypes(numMimeTypes:RawPointer<Int>):RawPointer<CastCharStar>;

	// SDL_cpuinfo.h
	@:native('SDL_CACHELINE_SIZE')
	static var CACHELINE_SIZE:UInt32;

	@:native('SDL_GetNumLogicalCPUCores')
	static function GetNumLogicalCPUCores():Int;

	@:native('SDL_GetCPUCacheLineSize')
	static function GetCPUCacheLineSize():Int;

	@:native('SDL_HasAltiVec')
	static function HasAltiVec():Bool;

	@:native('SDL_HasMMX')
	static function HasMMX():Bool;

	@:native('SDL_HasSSE')
	static function HasSSE():Bool;

	@:native('SDL_HasSSE2')
	static function HasSSE2():Bool;

	@:native('SDL_HasSSE3')
	static function HasSSE3():Bool;

	@:native('SDL_HasSSE41')
	static function HasSSE41():Bool;

	@:native('SDL_HasSSE42')
	static function HasSSE42():Bool;

	@:native('SDL_HasAVX')
	static function HasAVX():Bool;

	@:native('SDL_HasAVX2')
	static function HasAVX2():Bool;

	@:native('SDL_HasAVX512F')
	static function HasAVX512F():Bool;

	@:native('SDL_HasARMSIMD')
	static function HasARMSIMD():Bool;

	@:native('SDL_HasNEON')
	static function HasNEON():Bool;

	@:native('SDL_HasLSX')
	static function HasLSX():Bool;

	@:native('SDL_HasLASX')
	static function HasLASX():Bool;

	@:native('SDL_GetSystemRAM')
	static function GetSystemRAM():Int;

	@:native('SDL_GetSIMDAlignment')
	static function GetSIMDAlignment():Int;

	@:native('SDL_GetSystemPageSize')
	static function GetSystemPageSize():Int;

	// SDL_dialog.h
	@:native('SDL_ShowOpenFileDialog')
	static function ShowOpenFileDialog(callback:SDL_DialogFileCallback, userdata:RawPointer<cpp.Void>, window:RawPointer<SDL_Window>,
		filters:RawConstPointer<SDL_DialogFileFilter>, nfilters:Int, default_location:ConstCharStar, allow_many:Bool):Void;

	@:native('SDL_ShowSaveFileDialog')
	static function ShowSaveFileDialog(callback:SDL_DialogFileCallback, userdata:RawPointer<cpp.Void>, window:RawPointer<SDL_Window>,
		filters:RawConstPointer<SDL_DialogFileFilter>, nfilters:Int, default_location:ConstCharStar):Void;

	@:native('SDL_ShowOpenFolderDialog')
	static function ShowOpenFolderDialog(callback:SDL_DialogFileCallback, userdata:RawPointer<cpp.Void>, window:RawPointer<SDL_Window>, default_location:ConstCharStar,
		allow_many:Bool):Void;

	@:native('SDL_ShowFileDialogWithProperties')
	static function ShowFileDialogWithProperties(type:SDL_FileDialogType, callback:SDL_DialogFileCallback, userdata:RawPointer<cpp.Void>, props:SDL_PropertiesID):Void;

	@:native('SDL_PROP_FILE_DIALOG_FILTERS_POINTER')
	static var PROP_FILE_DIALOG_FILTERS_POINTER:ConstCharStar;

	@:native('SDL_PROP_FILE_DIALOG_NFILTERS_NUMBER')
	static var PROP_FILE_DIALOG_NFILTERS_NUMBER:ConstCharStar;

	@:native('SDL_PROP_FILE_DIALOG_WINDOW_POINTER')
	static var PROP_FILE_DIALOG_WINDOW_POINTER:ConstCharStar;

	@:native('SDL_PROP_FILE_DIALOG_LOCATION_STRING')
	static var PROP_FILE_DIALOG_LOCATION_STRING:ConstCharStar;

	@:native('SDL_PROP_FILE_DIALOG_MANY_BOOLEAN')
	static var PROP_FILE_DIALOG_MANY_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_FILE_DIALOG_TITLE_STRING')
	static var PROP_FILE_DIALOG_TITLE_STRING:ConstCharStar;

	@:native('SDL_PROP_FILE_DIALOG_ACCEPT_STRING')
	static var PROP_FILE_DIALOG_ACCEPT_STRING:ConstCharStar;

	@:native('SDL_PROP_FILE_DIALOG_CANCEL_STRING')
	static var PROP_FILE_DIALOG_CANCEL_STRING:ConstCharStar;

	// SDL_error.h
	@:native('SDL_SetError')
	static function SetError(fmt:ConstCharStar, args:Rest<VarArg>):Bool;

	@:native('SDL_SetErrorV')
	static function SetErrorV(fmt:ConstCharStar, ap:VarList):Bool;

	@:native('SDL_OutOfMemory')
	static function OutOfMemory():Bool;

	@:native('SDL_GetError')
	static function GetError():ConstCharStar;

	@:native('SDL_ClearError')
	static function ClearError():Bool;

	// SDL_events.h
	@:native('SDL_PumpEvents')
	static function PumpEvents():Void;

	@:native('SDL_PeepEvents')
	static function PeepEvents(events:RawPointer<SDL_Event>, numevents:Int, action:SDL_EventAction, minType:UInt32, maxType:UInt32):Int;

	@:native('SDL_HasEvent')
	static function HasEvent(type:UInt32):Bool;

	@:native('SDL_HasEvents')
	static function HasEvents(minType:UInt32, maxType:UInt32):Bool;

	@:native('SDL_FlushEvent')
	static function FlushEvent(type:UInt32):Void;

	@:native('SDL_FlushEvents')
	static function FlushEvents(minType:UInt32, maxType:UInt32):Void;

	@:native('SDL_PollEvent')
	static function PollEvent(event:RawPointer<SDL_Event>):Bool;

	@:native('SDL_WaitEvent')
	static function WaitEvent(event:RawPointer<SDL_Event>):Bool;

	@:native('SDL_WaitEventTimeout')
	static function WaitEventTimeout(event:RawPointer<SDL_Event>, timeoutMS:Int):Bool;

	@:native('SDL_PushEvent')
	static function PushEvent(event:RawPointer<SDL_Event>):Bool;

	@:native('SDL_SetEventFilter')
	static function SetEventFilter(filter:SDL_EventFilter, userdata:RawPointer<cpp.Void>):Void;

	@:native('SDL_GetEventFilter')
	static function GetEventFilter(filter:RawPointer<SDL_EventFilter>, userdata:RawPointer<RawPointer<cpp.Void>>):Bool;

	@:native('SDL_AddEventWatch')
	static function AddEventWatch(filter:SDL_EventFilter, userdata:RawPointer<cpp.Void>):Bool;

	@:native('SDL_RemoveEventWatch')
	static function RemoveEventWatch(filter:SDL_EventFilter, userdata:RawPointer<cpp.Void>):Void;

	@:native('SDL_FilterEvents')
	static function FilterEvents(filter:SDL_EventFilter, userdata:RawPointer<cpp.Void>):Void;

	@:native('SDL_SetEventEnabled')
	static function SetEventEnabled(type:UInt32, enabled:Bool):Void;

	@:native('SDL_EventEnabled')
	static function EventEnabled(type:UInt32):Bool;

	@:native('SDL_RegisterEvents')
	static function RegisterEvents(numevents:Int):UInt32;

	@:native('SDL_GetWindowFromEvent')
	static function GetWindowFromEvent(event:RawPointer<SDL_Event>):RawPointer<SDL_Window>;

	// SDL_filesystem.h
	@:native('SDL_GetBasePath')
	static function GetBasePath():ConstCharStar;

	@:native('SDL_GetPrefPath')
	static function GetPrefPath(org:ConstCharStar, app:ConstCharStar):ConstCharStar;

	@:native('SDL_GetUserFolder')
	static function GetUserFolder(folder:SDL_Folder):ConstCharStar;

	@:native('SDL_CreateDirectory')
	static function CreateDirectory(path:ConstCharStar):Bool;

	@:native('SDL_EnumerateDirectory')
	static function EnumerateDirectory(path:ConstCharStar, callback:SDL_EnumerateDirectoryCallback, userdata:RawPointer<cpp.Void>):Bool;

	@:native('SDL_RemovePath')
	static function RemovePath(path:ConstCharStar):Bool;

	@:native('SDL_RenamePath')
	static function RenamePath(oldpath:ConstCharStar, newpath:ConstCharStar):Bool;

	@:native('SDL_CopyFile')
	static function CopyFile(oldpath:ConstCharStar, newpath:ConstCharStar):Bool;

	@:native('SDL_GetPathInfo')
	static function GetPathInfo(path:ConstCharStar, info:RawPointer<SDL_PathInfo>):Bool;

	@:native('SDL_GlobDirectory')
	static function GlobDirectory(path:ConstCharStar, pattern:ConstCharStar, flags:SDL_GlobFlags, count:RawPointer<Int>):RawPointer<ConstCharStar>;

	@:native('SDL_GetCurrentDirectory')
	static function GetCurrentDirectory():ConstCharStar;

	// SDL_gamepad.h
	@:native('SDL_AddGamepadMapping')
	static function AddGamepadMapping(mapping:ConstCharStar):Int;

	@:native('SDL_AddGamepadMappingsFromIO')
	static function AddGamepadMappingsFromIO(src:RawPointer<SDL_IOStream>, closeio:Bool):Int;

	@:native('SDL_AddGamepadMappingsFromFile')
	static function AddGamepadMappingsFromFile(file:ConstCharStar):Int;

	@:native('SDL_ReloadGamepadMappings')
	static function ReloadGamepadMappings():Bool;

	@:native('SDL_GetGamepadMappings')
	static function GetGamepadMappings(count:RawPointer<Int>):RawPointer<ConstCharStar>;

	@:native('SDL_GetGamepadMappingForGUID')
	static function GetGamepadMappingForGUID(guid:SDL_GUID):ConstCharStar;

	@:native('SDL_GetGamepadMapping')
	static function GetGamepadMapping(gamepad:RawPointer<SDL_Gamepad>):ConstCharStar;

	@:native('SDL_SetGamepadMapping')
	static function SetGamepadMapping(instance_id:SDL_JoystickID, mapping:ConstCharStar):Bool;

	@:native('SDL_HasGamepad')
	static function HasGamepad():Bool;

	@:native('SDL_GetGamepads')
	static function GetGamepads(count:RawPointer<Int>):RawPointer<SDL_JoystickID>;

	@:native('SDL_IsGamepad')
	static function IsGamepad(instance_id:SDL_JoystickID):Bool;

	@:native('SDL_GetGamepadNameForID')
	static function GetGamepadNameForID(instance_id:SDL_JoystickID):ConstCharStar;

	@:native('SDL_GetGamepadPathForID')
	static function GetGamepadPathForID(instance_id:SDL_JoystickID):ConstCharStar;

	@:native('SDL_GetGamepadPlayerIndexForID')
	static function GetGamepadPlayerIndexForID(instance_id:SDL_JoystickID):Int;

	@:native('SDL_GetGamepadGUIDForID')
	static function GetGamepadGUIDForID(instance_id:SDL_JoystickID):SDL_GUID;

	@:native('SDL_GetGamepadVendorForID')
	static function GetGamepadVendorForID(instance_id:SDL_JoystickID):UInt16;

	@:native('SDL_GetGamepadProductForID')
	static function GetGamepadProductForID(instance_id:SDL_JoystickID):UInt16;

	@:native('SDL_GetGamepadProductVersionForID')
	static function GetGamepadProductVersionForID(instance_id:SDL_JoystickID):UInt16;

	@:native('SDL_GetGamepadTypeForID')
	static function GetGamepadTypeForID(instance_id:SDL_JoystickID):SDL_GamepadType;

	@:native('SDL_GetRealGamepadTypeForID')
	static function GetRealGamepadTypeForID(instance_id:SDL_JoystickID):SDL_GamepadType;

	@:native('SDL_GetGamepadMappingForID')
	static function GetGamepadMappingForID(instance_id:SDL_JoystickID):ConstCharStar;

	@:native('SDL_OpenGamepad')
	static function OpenGamepad(instance_id:SDL_JoystickID):RawPointer<SDL_Gamepad>;

	@:native('SDL_GetGamepadFromID')
	static function GetGamepadFromID(instance_id:SDL_JoystickID):RawPointer<SDL_Gamepad>;

	@:native('SDL_GetGamepadFromPlayerIndex')
	static function GetGamepadFromPlayerIndex(player_index:Int):RawPointer<SDL_Gamepad>;

	@:native('SDL_GetGamepadProperties')
	static function GetGamepadProperties(gamepad:RawPointer<SDL_Gamepad>):SDL_PropertiesID;

	@:native('SDL_PROP_GAMEPAD_CAP_MONO_LED_BOOLEAN')
	static var PROP_GAMEPAD_CAP_MONO_LED_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_GAMEPAD_CAP_RGB_LED_BOOLEAN')
	static var PROP_GAMEPAD_CAP_RGB_LED_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_GAMEPAD_CAP_PLAYER_LED_BOOLEAN')
	static var PROP_GAMEPAD_CAP_PLAYER_LED_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_GAMEPAD_CAP_RUMBLE_BOOLEAN')
	static var PROP_GAMEPAD_CAP_RUMBLE_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_GAMEPAD_CAP_TRIGGER_RUMBLE_BOOLEAN')
	static var PROP_GAMEPAD_CAP_TRIGGER_RUMBLE_BOOLEAN:ConstCharStar;

	@:native('SDL_GetGamepadID')
	static function GetGamepadID(gamepad:RawPointer<SDL_Gamepad>):SDL_JoystickID;

	@:native('SDL_GetGamepadName')
	static function GetGamepadName(gamepad:RawPointer<SDL_Gamepad>):ConstCharStar;

	@:native('SDL_GetGamepadPath')
	static function GetGamepadPath(gamepad:RawPointer<SDL_Gamepad>):ConstCharStar;

	@:native('SDL_GetGamepadType')
	static function GetGamepadType(gamepad:RawPointer<SDL_Gamepad>):SDL_GamepadType;

	@:native('SDL_GetRealGamepadType')
	static function GetRealGamepadType(gamepad:RawPointer<SDL_Gamepad>):SDL_GamepadType;

	@:native('SDL_GetGamepadPlayerIndex')
	static function GetGamepadPlayerIndex(gamepad:RawPointer<SDL_Gamepad>):Int;

	@:native('SDL_SetGamepadPlayerIndex')
	static function SetGamepadPlayerIndex(gamepad:RawPointer<SDL_Gamepad>, player_index:Int):Bool;

	@:native('SDL_GetGamepadVendor')
	static function GetGamepadVendor(gamepad:RawPointer<SDL_Gamepad>):UInt16;

	@:native('SDL_GetGamepadProduct')
	static function GetGamepadProduct(gamepad:RawPointer<SDL_Gamepad>):UInt16;

	@:native('SDL_GetGamepadProductVersion')
	static function GetGamepadProductVersion(gamepad:RawPointer<SDL_Gamepad>):UInt16;

	@:native('SDL_GetGamepadFirmwareVersion')
	static function GetGamepadFirmwareVersion(gamepad:RawPointer<SDL_Gamepad>):UInt16;

	@:native('SDL_GetGamepadSerial')
	static function GetGamepadSerial(gamepad:RawPointer<SDL_Gamepad>):ConstCharStar;

	@:native('SDL_GetGamepadSteamHandle')
	static function GetGamepadSteamHandle(gamepad:RawPointer<SDL_Gamepad>):UInt64;

	@:native('SDL_GetGamepadConnectionState')
	static function GetGamepadConnectionState(gamepad:RawPointer<SDL_Gamepad>):SDL_JoystickConnectionState;

	@:native('SDL_GetGamepadPowerInfo')
	static function GetGamepadPowerInfo(gamepad:RawPointer<SDL_Gamepad>, percent:RawPointer<Int>):SDL_PowerState;

	@:native('SDL_GamepadConnected')
	static function GamepadConnected(gamepad:RawPointer<SDL_Gamepad>):Bool;

	@:native('SDL_GetGamepadJoystick')
	static function GetGamepadJoystick(gamepad:RawPointer<SDL_Gamepad>):RawPointer<SDL_Joystick>;

	@:native('SDL_SetGamepadEventsEnabled')
	static function SetGamepadEventsEnabled(enabled:Bool):Void;

	@:native('SDL_GamepadEventsEnabled')
	static function GamepadEventsEnabled():Bool;

	@:native('SDL_GetGamepadBindings')
	static function GetGamepadBindings(gamepad:RawPointer<SDL_Gamepad>, count:RawPointer<Int>):RawPointer<RawPointer<SDL_GamepadBinding>>;

	@:native('SDL_UpdateGamepads')
	static function UpdateGamepads():Void;

	@:native('SDL_GetGamepadTypeFromString')
	static function GetGamepadTypeFromString(str:ConstCharStar):SDL_GamepadType;

	@:native('SDL_GetGamepadStringForType')
	static function GetGamepadStringForType(type:SDL_GamepadType):ConstCharStar;

	@:native('SDL_GetGamepadAxisFromString')
	static function GetGamepadAxisFromString(str:ConstCharStar):SDL_GamepadAxis;

	@:native('SDL_GetGamepadStringForAxis')
	static function GetGamepadStringForAxis(axis:SDL_GamepadAxis):ConstCharStar;

	@:native('SDL_GamepadHasAxis')
	static function GamepadHasAxis(gamepad:RawPointer<SDL_Gamepad>, axis:SDL_GamepadAxis):Bool;

	@:native('SDL_GetGamepadAxis')
	static function GetGamepadAxis(gamepad:RawPointer<SDL_Gamepad>, axis:SDL_GamepadAxis):Int16;

	@:native('SDL_GetGamepadButtonFromString')
	static function GetGamepadButtonFromString(str:ConstCharStar):SDL_GamepadButton;

	@:native('SDL_GetGamepadStringForButton')
	static function GetGamepadStringForButton(button:SDL_GamepadButton):ConstCharStar;

	@:native('SDL_GamepadHasButton')
	static function GamepadHasButton(gamepad:RawPointer<SDL_Gamepad>, button:SDL_GamepadButton):Bool;

	@:native('SDL_GetGamepadButton')
	static function GetGamepadButton(gamepad:RawPointer<SDL_Gamepad>, button:SDL_GamepadButton):Bool;

	@:native('SDL_GetGamepadButtonLabelForType')
	static function GetGamepadButtonLabelForType(type:SDL_GamepadType, button:SDL_GamepadButton):SDL_GamepadButtonLabel;

	@:native('SDL_GetGamepadButtonLabel')
	static function GetGamepadButtonLabel(gamepad:RawPointer<SDL_Gamepad>, button:SDL_GamepadButton):SDL_GamepadButtonLabel;

	@:native('SDL_GetNumGamepadTouchpads')
	static function GetNumGamepadTouchpads(gamepad:RawPointer<SDL_Gamepad>):Int;

	@:native('SDL_GetNumGamepadTouchpadFingers')
	static function GetNumGamepadTouchpadFingers(gamepad:RawPointer<SDL_Gamepad>, touchpad:Int):Int;

	@:native('SDL_GetGamepadTouchpadFinger')
	static function GetGamepadTouchpadFinger(gamepad:RawPointer<SDL_Gamepad>, touchpad:Int, finger:Int, down:RawPointer<Bool>, x:RawPointer<Float32>, y:RawPointer<Float32>,
		pressure:RawPointer<Float32>):Bool;

	@:native('SDL_GamepadHasSensor')
	static function GamepadHasSensor(gamepad:RawPointer<SDL_Gamepad>, type:SDL_SensorType):Bool;

	@:native('SDL_SetGamepadSensorEnabled')
	static function SetGamepadSensorEnabled(gamepad:RawPointer<SDL_Gamepad>, type:SDL_SensorType, enabled:Bool):Bool;

	@:native('SDL_GamepadSensorEnabled')
	static function GamepadSensorEnabled(gamepad:RawPointer<SDL_Gamepad>, type:SDL_SensorType):Bool;

	@:native('SDL_GetGamepadSensorDataRate')
	static function GetGamepadSensorDataRate(gamepad:RawPointer<SDL_Gamepad>, type:SDL_SensorType):Float32;

	@:native('SDL_GetGamepadSensorData')
	static function GetGamepadSensorData(gamepad:RawPointer<SDL_Gamepad>, type:SDL_SensorType, data:RawPointer<Float32>, num_values:Int):Bool;

	@:native('SDL_RumbleGamepad')
	static function RumbleGamepad(gamepad:RawPointer<SDL_Gamepad>, low_frequency_rumble:UInt16, high_frequency_rumble:UInt16, duration_ms:UInt32):Bool;

	@:native('SDL_RumbleGamepadTriggers')
	static function RumbleGamepadTriggers(gamepad:RawPointer<SDL_Gamepad>, left_rumble:UInt16, right_rumble:UInt16, duration_ms:UInt32):Bool;

	@:native('SDL_SetGamepadLED')
	static function SetGamepadLED(gamepad:RawPointer<SDL_Gamepad>, red:UInt8, green:UInt8, blue:UInt8):Bool;

	@:native('SDL_SendGamepadEffect')
	static function SendGamepadEffect(gamepad:RawPointer<SDL_Gamepad>, data:RawPointer<cpp.Void>, size:Int):Bool;

	@:native('SDL_CloseGamepad')
	static function CloseGamepad(gamepad:RawPointer<SDL_Gamepad>):Void;

	@:native('SDL_GetGamepadAppleSFSymbolsNameForButton')
	static function GetGamepadAppleSFSymbolsNameForButton(gamepad:RawPointer<SDL_Gamepad>, button:SDL_GamepadButton):ConstCharStar;

	@:native('SDL_GetGamepadAppleSFSymbolsNameForAxis')
	static function GetGamepadAppleSFSymbolsNameForAxis(gamepad:RawPointer<SDL_Gamepad>, axis:SDL_GamepadAxis):ConstCharStar;

	// SDL_guid.h
	@:native('SDL_GUIDToString')
	static function GUIDToString(guid:SDL_GUID, pszGUID:CastCharStar, cbGUID:Int):Void;

	@:native('SDL_StringToGUID')
	static function StringToGUID(pchGUID:ConstCharStar):SDL_GUID;

	// SDL_haptic.h
	@:native('SDL_HAPTIC_CONSTANT')
	static var HAPTIC_CONSTANT:UInt32;

	@:native('SDL_HAPTIC_SINE')
	static var HAPTIC_SINE:UInt32;

	@:native('SDL_HAPTIC_SQUARE')
	static var HAPTIC_SQUARE:UInt32;

	@:native('SDL_HAPTIC_TRIANGLE')
	static var HAPTIC_TRIANGLE:UInt32;

	@:native('SDL_HAPTIC_SAWTOOTHUP')
	static var HAPTIC_SAWTOOTHUP:UInt32;

	@:native('SDL_HAPTIC_SAWTOOTHDOWN')
	static var HAPTIC_SAWTOOTHDOWN:UInt32;

	@:native('SDL_HAPTIC_RAMP')
	static var HAPTIC_RAMP:UInt32;

	@:native('SDL_HAPTIC_SPRING')
	static var HAPTIC_SPRING:UInt32;

	@:native('SDL_HAPTIC_DAMPER')
	static var HAPTIC_DAMPER:UInt32;

	@:native('SDL_HAPTIC_INERTIA')
	static var HAPTIC_INERTIA:UInt32;

	@:native('SDL_HAPTIC_FRICTION')
	static var HAPTIC_FRICTION:UInt32;

	@:native('SDL_HAPTIC_LEFTRIGHT')
	static var HAPTIC_LEFTRIGHT:UInt32;

	@:native('SDL_HAPTIC_RESERVED1')
	static var HAPTIC_RESERVED1:UInt32;

	@:native('SDL_HAPTIC_RESERVED2')
	static var HAPTIC_RESERVED2:UInt32;

	@:native('SDL_HAPTIC_RESERVED3')
	static var HAPTIC_RESERVED3:UInt32;

	@:native('SDL_HAPTIC_CUSTOM')
	static var HAPTIC_CUSTOM:UInt32;

	@:native('SDL_HAPTIC_GAIN')
	static var HAPTIC_GAIN:UInt32;

	@:native('SDL_HAPTIC_AUTOCENTER')
	static var HAPTIC_AUTOCENTER:UInt32;

	@:native('SDL_HAPTIC_STATUS')
	static var HAPTIC_STATUS:UInt32;

	@:native('SDL_HAPTIC_PAUSE')
	static var HAPTIC_PAUSE:UInt32;

	@:native('SDL_HAPTIC_POLAR')
	static var HAPTIC_POLAR:UInt32;

	@:native('SDL_HAPTIC_CARTESIAN')
	static var HAPTIC_CARTESIAN:UInt32;

	@:native('SDL_HAPTIC_SPHERICAL')
	static var HAPTIC_SPHERICAL:UInt32;

	@:native('SDL_HAPTIC_STEERING_AXIS')
	static var HAPTIC_STEERING_AXIS:UInt32;

	@:native('SDL_HAPTIC_INFINITY')
	static var HAPTIC_INFINITY:UInt32;

	// SDL_haptic.h
	@:native('SDL_GetHaptics')
	static function GetHaptics(count:RawPointer<Int>):RawPointer<SDL_HapticID>;

	@:native('SDL_GetHapticNameForID')
	static function GetHapticNameForID(instance_id:SDL_HapticID):ConstCharStar;

	@:native('SDL_OpenHaptic')
	static function OpenHaptic(instance_id:SDL_HapticID):RawPointer<SDL_Haptic>;

	@:native('SDL_GetHapticFromID')
	static function GetHapticFromID(instance_id:SDL_HapticID):RawPointer<SDL_Haptic>;

	@:native('SDL_GetHapticID')
	static function GetHapticID(haptic:RawPointer<SDL_Haptic>):SDL_HapticID;

	@:native('SDL_GetHapticName')
	static function GetHapticName(haptic:RawPointer<SDL_Haptic>):ConstCharStar;

	@:native('SDL_IsMouseHaptic')
	static function IsMouseHaptic():Bool;

	@:native('SDL_OpenHapticFromMouse')
	static function OpenHapticFromMouse():RawPointer<SDL_Haptic>;

	@:native('SDL_IsJoystickHaptic')
	static function IsJoystickHaptic(joystick:RawPointer<SDL_Joystick>):Bool;

	@:native('SDL_OpenHapticFromJoystick')
	static function OpenHapticFromJoystick(joystick:RawPointer<SDL_Joystick>):RawPointer<SDL_Haptic>;

	@:native('SDL_CloseHaptic')
	static function CloseHaptic(haptic:RawPointer<SDL_Haptic>):Void;

	@:native('SDL_GetMaxHapticEffects')
	static function GetMaxHapticEffects(haptic:RawPointer<SDL_Haptic>):Int;

	@:native('SDL_GetMaxHapticEffectsPlaying')
	static function GetMaxHapticEffectsPlaying(haptic:RawPointer<SDL_Haptic>):Int;

	@:native('SDL_GetHapticFeatures')
	static function GetHapticFeatures(haptic:RawPointer<SDL_Haptic>):UInt32;

	@:native('SDL_GetNumHapticAxes')
	static function GetNumHapticAxes(haptic:RawPointer<SDL_Haptic>):Int;

	@:native('SDL_HapticEffectSupported')
	static function HapticEffectSupported(haptic:RawPointer<SDL_Haptic>, effect:RawPointer<SDL_HapticEffect>):Bool;

	@:native('SDL_CreateHapticEffect')
	static function CreateHapticEffect(haptic:RawPointer<SDL_Haptic>, effect:RawPointer<SDL_HapticEffect>):Int;

	@:native('SDL_UpdateHapticEffect')
	static function UpdateHapticEffect(haptic:RawPointer<SDL_Haptic>, effect:Int, data:RawPointer<SDL_HapticEffect>):Bool;

	@:native('SDL_RunHapticEffect')
	static function RunHapticEffect(haptic:RawPointer<SDL_Haptic>, effect:Int, iterations:UInt32):Bool;

	@:native('SDL_StopHapticEffect')
	static function StopHapticEffect(haptic:RawPointer<SDL_Haptic>, effect:Int):Bool;

	@:native('SDL_DestroyHapticEffect')
	static function DestroyHapticEffect(haptic:RawPointer<SDL_Haptic>, effect:Int):Void;

	@:native('SDL_GetHapticEffectStatus')
	static function GetHapticEffectStatus(haptic:RawPointer<SDL_Haptic>, effect:Int):Bool;

	@:native('SDL_SetHapticGain')
	static function SetHapticGain(haptic:RawPointer<SDL_Haptic>, gain:Int):Bool;

	@:native('SDL_SetHapticAutocenter')
	static function SetHapticAutocenter(haptic:RawPointer<SDL_Haptic>, autocenter:Int):Bool;

	@:native('SDL_PauseHaptic')
	static function PauseHaptic(haptic:RawPointer<SDL_Haptic>):Bool;

	@:native('SDL_ResumeHaptic')
	static function ResumeHaptic(haptic:RawPointer<SDL_Haptic>):Bool;

	@:native('SDL_StopHapticEffects')
	static function StopHapticEffects(haptic:RawPointer<SDL_Haptic>):Bool;

	@:native('SDL_HapticRumbleSupported')
	static function HapticRumbleSupported(haptic:RawPointer<SDL_Haptic>):Bool;

	@:native('SDL_InitHapticRumble')
	static function InitHapticRumble(haptic:RawPointer<SDL_Haptic>):Bool;

	@:native('SDL_PlayHapticRumble')
	static function PlayHapticRumble(haptic:RawPointer<SDL_Haptic>, strength:Float32, length:UInt32):Bool;

	@:native('SDL_StopHapticRumble')
	static function StopHapticRumble(haptic:RawPointer<SDL_Haptic>):Bool;

	// SDL_hidapi.h
	@:native('SDL_hid_init')
	static function HidInit():Int;

	@:native('SDL_hid_exit')
	static function HidExit():Int;

	@:native('SDL_hid_device_change_count')
	static function HidDeviceChangeCount():UInt32;

	@:native('SDL_hid_enumerate')
	static function HidEnumerate(vendor_id:UInt16, product_id:UInt16):RawPointer<SDL_hid_device_info>;

	@:native('SDL_hid_free_enumeration')
	static function HidFreeEnumeration(devs:RawPointer<SDL_hid_device_info>):Void;

	@:native('SDL_hid_open')
	static function HidOpen(vendor_id:UInt16, product_id:UInt16, serial_number:ConstWCharTStar):RawPointer<SDL_hid_device>;

	@:native('SDL_hid_open_path')
	static function HidOpenPath(path:ConstCharStar):RawPointer<SDL_hid_device>;

	@:native('SDL_hid_write')
	static function HidWrite(dev:RawPointer<SDL_hid_device>, data:RawConstPointer<UInt8>, length:SizeT):Int;

	@:native('SDL_hid_read_timeout')
	static function HidReadTimeout(dev:RawPointer<SDL_hid_device>, data:RawPointer<UInt8>, length:SizeT, milliseconds:Int):Int;

	@:native('SDL_hid_read')
	static function HidRead(dev:RawPointer<SDL_hid_device>, data:RawPointer<UInt8>, length:SizeT):Int;

	@:native('SDL_hid_set_nonblocking')
	static function HidSetNonBlocking(dev:RawPointer<SDL_hid_device>, nonblock:Int):Int;

	@:native('SDL_hid_send_feature_report')
	static function HidSendFeatureReport(dev:RawPointer<SDL_hid_device>, data:RawConstPointer<UInt8>, length:SizeT):Int;

	@:native('SDL_hid_get_feature_report')
	static function HidGetFeatureReport(dev:RawPointer<SDL_hid_device>, data:RawPointer<UInt8>, length:SizeT):Int;

	@:native('SDL_hid_get_input_report')
	static function HidGetInputReport(dev:RawPointer<SDL_hid_device>, data:RawPointer<UInt8>, length:SizeT):Int;

	@:native('SDL_hid_close')
	static function HidClose(dev:RawPointer<SDL_hid_device>):Int;

	@:native('SDL_hid_get_manufacturer_string')
	static function HidGetManufacturerString(dev:RawPointer<SDL_hid_device>, string:CastWCharTStar, maxlen:SizeT):Int;

	@:native('SDL_hid_get_product_string')
	static function HidGetProductString(dev:RawPointer<SDL_hid_device>, string:CastWCharTStar, maxlen:SizeT):Int;

	@:native('SDL_hid_get_serial_number_string')
	static function HidGetSerialNumberString(dev:RawPointer<SDL_hid_device>, string:CastWCharTStar, maxlen:SizeT):Int;

	@:native('SDL_hid_get_indexed_string')
	static function HidGetIndexedString(dev:RawPointer<SDL_hid_device>, string_index:Int, string:CastWCharTStar, maxlen:SizeT):Int;

	@:native('SDL_hid_get_device_info')
	static function HidGetDeviceInfo(dev:RawPointer<SDL_hid_device>):RawPointer<SDL_hid_device_info>;

	@:native('SDL_hid_get_report_descriptor')
	static function HidGetReportDescriptor(dev:RawPointer<SDL_hid_device>, buf:RawPointer<UInt8>, buf_size:SizeT):Int;

	@:native('SDL_hid_ble_scan')
	static function HidBleScan(active:Bool):Void;

	// SDL_hints.h
	@:native('SDL_HINT_ALLOW_ALT_TAB_WHILE_GRABBED')
	static var HINT_ALLOW_ALT_TAB_WHILE_GRABBED:ConstCharStar;

	@:native('SDL_HINT_ANDROID_ALLOW_RECREATE_ACTIVITY')
	static var HINT_ANDROID_ALLOW_RECREATE_ACTIVITY:ConstCharStar;

	@:native('SDL_HINT_ANDROID_BLOCK_ON_PAUSE')
	static var HINT_ANDROID_BLOCK_ON_PAUSE:ConstCharStar;

	@:native('SDL_HINT_ANDROID_LOW_LATENCY_AUDIO')
	static var HINT_ANDROID_LOW_LATENCY_AUDIO:ConstCharStar;

	@:native('SDL_HINT_ANDROID_TRAP_BACK_BUTTON')
	static var HINT_ANDROID_TRAP_BACK_BUTTON:ConstCharStar;

	@:native('SDL_HINT_APP_ID')
	static var HINT_APP_ID:ConstCharStar;

	@:native('SDL_HINT_APP_NAME')
	static var HINT_APP_NAME:ConstCharStar;

	@:native('SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS')
	static var HINT_APPLE_TV_CONTROLLER_UI_EVENTS:ConstCharStar;

	@:native('SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION')
	static var HINT_APPLE_TV_REMOTE_ALLOW_ROTATION:ConstCharStar;

	@:native('SDL_HINT_AUDIO_ALSA_DEFAULT_DEVICE')
	static var HINT_AUDIO_ALSA_DEFAULT_DEVICE:ConstCharStar;

	@:native('SDL_HINT_AUDIO_ALSA_DEFAULT_PLAYBACK_DEVICE')
	static var HINT_AUDIO_ALSA_DEFAULT_PLAYBACK_DEVICE:ConstCharStar;

	@:native('SDL_HINT_AUDIO_ALSA_DEFAULT_RECORDING_DEVICE')
	static var HINT_AUDIO_ALSA_DEFAULT_RECORDING_DEVICE:ConstCharStar;

	@:native('SDL_HINT_AUDIO_CATEGORY')
	static var HINT_AUDIO_CATEGORY:ConstCharStar;

	@:native('SDL_HINT_AUDIO_CHANNELS')
	static var HINT_AUDIO_CHANNELS:ConstCharStar;

	@:native('SDL_HINT_AUDIO_DEVICE_APP_ICON_NAME')
	static var HINT_AUDIO_DEVICE_APP_ICON_NAME:ConstCharStar;

	@:native('SDL_HINT_AUDIO_DEVICE_SAMPLE_FRAMES')
	static var HINT_AUDIO_DEVICE_SAMPLE_FRAMES:ConstCharStar;

	@:native('SDL_HINT_AUDIO_DEVICE_STREAM_NAME')
	static var HINT_AUDIO_DEVICE_STREAM_NAME:ConstCharStar;

	@:native('SDL_HINT_AUDIO_DEVICE_STREAM_ROLE')
	static var HINT_AUDIO_DEVICE_STREAM_ROLE:ConstCharStar;

	@:native('SDL_HINT_AUDIO_DEVICE_RAW_STREAM')
	static var HINT_AUDIO_DEVICE_RAW_STREAM:ConstCharStar;

	@:native('SDL_HINT_AUDIO_DISK_INPUT_FILE')
	static var HINT_AUDIO_DISK_INPUT_FILE:ConstCharStar;

	@:native('SDL_HINT_AUDIO_DISK_OUTPUT_FILE')
	static var HINT_AUDIO_DISK_OUTPUT_FILE:ConstCharStar;

	@:native('SDL_HINT_AUDIO_DISK_TIMESCALE')
	static var HINT_AUDIO_DISK_TIMESCALE:ConstCharStar;

	@:native('SDL_HINT_AUDIO_DRIVER')
	static var HINT_AUDIO_DRIVER:ConstCharStar;

	@:native('SDL_HINT_AUDIO_DUMMY_TIMESCALE')
	static var HINT_AUDIO_DUMMY_TIMESCALE:ConstCharStar;

	@:native('SDL_HINT_AUDIO_FORMAT')
	static var HINT_AUDIO_FORMAT:ConstCharStar;

	@:native('SDL_HINT_AUDIO_FREQUENCY')
	static var HINT_AUDIO_FREQUENCY:ConstCharStar;

	@:native('SDL_HINT_AUDIO_INCLUDE_MONITORS')
	static var HINT_AUDIO_INCLUDE_MONITORS:ConstCharStar;

	@:native('SDL_HINT_AUTO_UPDATE_JOYSTICKS')
	static var HINT_AUTO_UPDATE_JOYSTICKS:ConstCharStar;

	@:native('SDL_HINT_AUTO_UPDATE_SENSORS')
	static var HINT_AUTO_UPDATE_SENSORS:ConstCharStar;

	@:native('SDL_HINT_BMP_SAVE_LEGACY_FORMAT')
	static var HINT_BMP_SAVE_LEGACY_FORMAT:ConstCharStar;

	@:native('SDL_HINT_CAMERA_DRIVER')
	static var HINT_CAMERA_DRIVER:ConstCharStar;

	@:native('SDL_HINT_CPU_FEATURE_MASK')
	static var HINT_CPU_FEATURE_MASK:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_DIRECTINPUT')
	static var HINT_JOYSTICK_DIRECTINPUT:ConstCharStar;

	@:native('SDL_HINT_FILE_DIALOG_DRIVER')
	static var HINT_FILE_DIALOG_DRIVER:ConstCharStar;

	@:native('SDL_HINT_DISPLAY_USABLE_BOUNDS')
	static var HINT_DISPLAY_USABLE_BOUNDS:ConstCharStar;

	@:native('SDL_HINT_EMSCRIPTEN_ASYNCIFY')
	static var HINT_EMSCRIPTEN_ASYNCIFY:ConstCharStar;

	@:native('SDL_HINT_EMSCRIPTEN_CANVAS_SELECTOR')
	static var HINT_EMSCRIPTEN_CANVAS_SELECTOR:ConstCharStar;

	@:native('SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT')
	static var HINT_EMSCRIPTEN_KEYBOARD_ELEMENT:ConstCharStar;

	@:native('SDL_HINT_EMSCRIPTEN_FILL_DOCUMENT')
	static var HINT_EMSCRIPTEN_FILL_DOCUMENT:ConstCharStar;

	@:native('SDL_HINT_ENABLE_SCREEN_KEYBOARD')
	static var HINT_ENABLE_SCREEN_KEYBOARD:ConstCharStar;

	@:native('SDL_HINT_EVDEV_DEVICES')
	static var HINT_EVDEV_DEVICES:ConstCharStar;

	@:native('SDL_HINT_EVENT_LOGGING')
	static var HINT_EVENT_LOGGING:ConstCharStar;

	@:native('SDL_HINT_FORCE_RAISEWINDOW')
	static var HINT_FORCE_RAISEWINDOW:ConstCharStar;

	@:native('SDL_HINT_FRAMEBUFFER_ACCELERATION')
	static var HINT_FRAMEBUFFER_ACCELERATION:ConstCharStar;

	@:native('SDL_HINT_GAMECONTROLLERCONFIG')
	static var HINT_GAMECONTROLLERCONFIG:ConstCharStar;

	@:native('SDL_HINT_GAMECONTROLLERCONFIG_FILE')
	static var HINT_GAMECONTROLLERCONFIG_FILE:ConstCharStar;

	@:native('SDL_HINT_GAMECONTROLLERTYPE')
	static var HINT_GAMECONTROLLERTYPE:ConstCharStar;

	@:native('SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES')
	static var HINT_GAMECONTROLLER_IGNORE_DEVICES:ConstCharStar;

	@:native('SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT')
	static var HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT:ConstCharStar;

	@:native('SDL_HINT_GAMECONTROLLER_SENSOR_FUSION')
	static var HINT_GAMECONTROLLER_SENSOR_FUSION:ConstCharStar;

	@:native('SDL_HINT_GDK_TEXTINPUT_DEFAULT_TEXT')
	static var HINT_GDK_TEXTINPUT_DEFAULT_TEXT:ConstCharStar;

	@:native('SDL_HINT_GDK_TEXTINPUT_DESCRIPTION')
	static var HINT_GDK_TEXTINPUT_DESCRIPTION:ConstCharStar;

	@:native('SDL_HINT_GDK_TEXTINPUT_MAX_LENGTH')
	static var HINT_GDK_TEXTINPUT_MAX_LENGTH:ConstCharStar;

	@:native('SDL_HINT_GDK_TEXTINPUT_SCOPE')
	static var HINT_GDK_TEXTINPUT_SCOPE:ConstCharStar;

	@:native('SDL_HINT_GDK_TEXTINPUT_TITLE')
	static var HINT_GDK_TEXTINPUT_TITLE:ConstCharStar;

	@:native('SDL_HINT_HIDAPI_LIBUSB')
	static var HINT_HIDAPI_LIBUSB:ConstCharStar;

	@:native('SDL_HINT_HIDAPI_LIBUSB_WHITELIST')
	static var HINT_HIDAPI_LIBUSB_WHITELIST:ConstCharStar;

	@:native('SDL_HINT_HIDAPI_UDEV')
	static var HINT_HIDAPI_UDEV:ConstCharStar;

	@:native('SDL_HINT_HIDAPI_ENUMERATE_ONLY_CONTROLLERS')
	static var HINT_HIDAPI_ENUMERATE_ONLY_CONTROLLERS:ConstCharStar;

	@:native('SDL_HINT_HIDAPI_IGNORE_DEVICES')
	static var HINT_HIDAPI_IGNORE_DEVICES:ConstCharStar;

	@:native('SDL_HINT_IME_IMPLEMENTED_UI')
	static var HINT_IME_IMPLEMENTED_UI:ConstCharStar;

	@:native('SDL_HINT_IOS_HIDE_HOME_INDICATOR')
	static var HINT_IOS_HIDE_HOME_INDICATOR:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS')
	static var HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_ARCADESTICK_DEVICES')
	static var HINT_JOYSTICK_ARCADESTICK_DEVICES:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED')
	static var HINT_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_BLACKLIST_DEVICES')
	static var HINT_JOYSTICK_BLACKLIST_DEVICES:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED')
	static var HINT_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_DEVICE')
	static var HINT_JOYSTICK_DEVICE:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_ENHANCED_REPORTS')
	static var HINT_JOYSTICK_ENHANCED_REPORTS:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_FLIGHTSTICK_DEVICES')
	static var HINT_JOYSTICK_FLIGHTSTICK_DEVICES:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED')
	static var HINT_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_GAMEINPUT')
	static var HINT_JOYSTICK_GAMEINPUT:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_GAMECUBE_DEVICES')
	static var HINT_JOYSTICK_GAMECUBE_DEVICES:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED')
	static var HINT_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI')
	static var HINT_JOYSTICK_HIDAPI:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS')
	static var HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE')
	static var HINT_JOYSTICK_HIDAPI_GAMECUBE:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE_RUMBLE_BRAKE')
	static var HINT_JOYSTICK_HIDAPI_GAMECUBE_RUMBLE_BRAKE:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_JOY_CONS')
	static var HINT_JOYSTICK_HIDAPI_JOY_CONS:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED')
	static var HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_LUNA')
	static var HINT_JOYSTICK_HIDAPI_LUNA:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC')
	static var HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_PS3')
	static var HINT_JOYSTICK_HIDAPI_PS3:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_PS3_SIXAXIS_DRIVER')
	static var HINT_JOYSTICK_HIDAPI_PS3_SIXAXIS_DRIVER:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_PS4')
	static var HINT_JOYSTICK_HIDAPI_PS4:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_PS4_REPORT_INTERVAL')
	static var HINT_JOYSTICK_HIDAPI_PS4_REPORT_INTERVAL:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_PS5')
	static var HINT_JOYSTICK_HIDAPI_PS5:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED')
	static var HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_SHIELD')
	static var HINT_JOYSTICK_HIDAPI_SHIELD:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_STADIA')
	static var HINT_JOYSTICK_HIDAPI_STADIA:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_STEAM')
	static var HINT_JOYSTICK_HIDAPI_STEAM:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_STEAM_HOME_LED')
	static var HINT_JOYSTICK_HIDAPI_STEAM_HOME_LED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_STEAMDECK')
	static var HINT_JOYSTICK_HIDAPI_STEAMDECK:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_STEAM_HORI')
	static var HINT_JOYSTICK_HIDAPI_STEAM_HORI:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_SWITCH')
	static var HINT_JOYSTICK_HIDAPI_SWITCH:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED')
	static var HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED')
	static var HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS')
	static var HINT_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_WII')
	static var HINT_JOYSTICK_HIDAPI_WII:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_WII_PLAYER_LED')
	static var HINT_JOYSTICK_HIDAPI_WII_PLAYER_LED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_XBOX')
	static var HINT_JOYSTICK_HIDAPI_XBOX:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_XBOX_360')
	static var HINT_JOYSTICK_HIDAPI_XBOX_360:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED')
	static var HINT_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_WIRELESS')
	static var HINT_JOYSTICK_HIDAPI_XBOX_360_WIRELESS:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE')
	static var HINT_JOYSTICK_HIDAPI_XBOX_ONE:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED')
	static var HINT_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_IOKIT')
	static var HINT_JOYSTICK_IOKIT:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_LINUX_CLASSIC')
	static var HINT_JOYSTICK_LINUX_CLASSIC:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_LINUX_DEADZONES')
	static var HINT_JOYSTICK_LINUX_DEADZONES:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_LINUX_DIGITAL_HATS')
	static var HINT_JOYSTICK_LINUX_DIGITAL_HATS:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_LINUX_HAT_DEADZONES')
	static var HINT_JOYSTICK_LINUX_HAT_DEADZONES:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_MFI')
	static var HINT_JOYSTICK_MFI:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_RAWINPUT')
	static var HINT_JOYSTICK_RAWINPUT:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT')
	static var HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_ROG_CHAKRAM')
	static var HINT_JOYSTICK_ROG_CHAKRAM:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_THREAD')
	static var HINT_JOYSTICK_THREAD:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_THROTTLE_DEVICES')
	static var HINT_JOYSTICK_THROTTLE_DEVICES:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_THROTTLE_DEVICES_EXCLUDED')
	static var HINT_JOYSTICK_THROTTLE_DEVICES_EXCLUDED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_WGI')
	static var HINT_JOYSTICK_WGI:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_WHEEL_DEVICES')
	static var HINT_JOYSTICK_WHEEL_DEVICES:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_WHEEL_DEVICES_EXCLUDED')
	static var HINT_JOYSTICK_WHEEL_DEVICES_EXCLUDED:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_ZERO_CENTERED_DEVICES')
	static var HINT_JOYSTICK_ZERO_CENTERED_DEVICES:ConstCharStar;

	@:native('SDL_HINT_JOYSTICK_HAPTIC_AXES')
	static var HINT_JOYSTICK_HAPTIC_AXES:ConstCharStar;

	@:native('SDL_HINT_KEYCODE_OPTIONS')
	static var HINT_KEYCODE_OPTIONS:ConstCharStar;

	@:native('SDL_HINT_KMSDRM_DEVICE_INDEX')
	static var HINT_KMSDRM_DEVICE_INDEX:ConstCharStar;

	@:native('SDL_HINT_KMSDRM_REQUIRE_DRM_MASTER')
	static var HINT_KMSDRM_REQUIRE_DRM_MASTER:ConstCharStar;

	@:native('SDL_HINT_LOGGING')
	static var HINT_LOGGING:ConstCharStar;

	@:native('SDL_HINT_MAC_BACKGROUND_APP')
	static var HINT_MAC_BACKGROUND_APP:ConstCharStar;

	@:native('SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK')
	static var HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK:ConstCharStar;

	@:native('SDL_HINT_MAC_OPENGL_ASYNC_DISPATCH')
	static var HINT_MAC_OPENGL_ASYNC_DISPATCH:ConstCharStar;

	@:native('SDL_HINT_MAC_OPTION_AS_ALT')
	static var HINT_MAC_OPTION_AS_ALT:ConstCharStar;

	@:native('SDL_HINT_MAC_SCROLL_MOMENTUM')
	static var HINT_MAC_SCROLL_MOMENTUM:ConstCharStar;

	@:native('SDL_HINT_MAIN_CALLBACK_RATE')
	static var HINT_MAIN_CALLBACK_RATE:ConstCharStar;

	@:native('SDL_HINT_MOUSE_AUTO_CAPTURE')
	static var HINT_MOUSE_AUTO_CAPTURE:ConstCharStar;

	@:native('SDL_HINT_MOUSE_DOUBLE_CLICK_RADIUS')
	static var HINT_MOUSE_DOUBLE_CLICK_RADIUS:ConstCharStar;

	@:native('SDL_HINT_MOUSE_DOUBLE_CLICK_TIME')
	static var HINT_MOUSE_DOUBLE_CLICK_TIME:ConstCharStar;

	@:native('SDL_HINT_MOUSE_DEFAULT_SYSTEM_CURSOR')
	static var HINT_MOUSE_DEFAULT_SYSTEM_CURSOR:ConstCharStar;

	@:native('SDL_HINT_MOUSE_EMULATE_WARP_WITH_RELATIVE')
	static var HINT_MOUSE_EMULATE_WARP_WITH_RELATIVE:ConstCharStar;

	@:native('SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH')
	static var HINT_MOUSE_FOCUS_CLICKTHROUGH:ConstCharStar;

	@:native('SDL_HINT_MOUSE_NORMAL_SPEED_SCALE')
	static var HINT_MOUSE_NORMAL_SPEED_SCALE:ConstCharStar;

	@:native('SDL_HINT_MOUSE_RELATIVE_MODE_CENTER')
	static var HINT_MOUSE_RELATIVE_MODE_CENTER:ConstCharStar;

	@:native('SDL_HINT_MOUSE_RELATIVE_SPEED_SCALE')
	static var HINT_MOUSE_RELATIVE_SPEED_SCALE:ConstCharStar;

	@:native('SDL_HINT_MOUSE_RELATIVE_SYSTEM_SCALE')
	static var HINT_MOUSE_RELATIVE_SYSTEM_SCALE:ConstCharStar;

	@:native('SDL_HINT_MOUSE_RELATIVE_WARP_MOTION')
	static var HINT_MOUSE_RELATIVE_WARP_MOTION:ConstCharStar;

	@:native('SDL_HINT_MOUSE_RELATIVE_CURSOR_VISIBLE')
	static var HINT_MOUSE_RELATIVE_CURSOR_VISIBLE:ConstCharStar;

	@:native('SDL_HINT_MOUSE_TOUCH_EVENTS')
	static var HINT_MOUSE_TOUCH_EVENTS:ConstCharStar;

	@:native('SDL_HINT_MUTE_CONSOLE_KEYBOARD')
	static var HINT_MUTE_CONSOLE_KEYBOARD:ConstCharStar;

	@:native('SDL_HINT_NO_SIGNAL_HANDLERS')
	static var HINT_NO_SIGNAL_HANDLERS:ConstCharStar;

	@:native('SDL_HINT_OPENGL_LIBRARY')
	static var HINT_OPENGL_LIBRARY:ConstCharStar;

	@:native('SDL_HINT_EGL_LIBRARY')
	static var HINT_EGL_LIBRARY:ConstCharStar;

	@:native('SDL_HINT_OPENGL_ES_DRIVER')
	static var HINT_OPENGL_ES_DRIVER:ConstCharStar;

	@:native('SDL_HINT_OPENVR_LIBRARY')
	static var HINT_OPENVR_LIBRARY:ConstCharStar;

	@:native('SDL_HINT_ORIENTATIONS')
	static var HINT_ORIENTATIONS:ConstCharStar;

	@:native('SDL_HINT_POLL_SENTINEL')
	static var HINT_POLL_SENTINEL:ConstCharStar;

	@:native('SDL_HINT_PREFERRED_LOCALES')
	static var HINT_PREFERRED_LOCALES:ConstCharStar;

	@:native('SDL_HINT_QUIT_ON_LAST_WINDOW_CLOSE')
	static var HINT_QUIT_ON_LAST_WINDOW_CLOSE:ConstCharStar;

	@:native('SDL_HINT_RENDER_DIRECT3D_THREADSAFE')
	static var HINT_RENDER_DIRECT3D_THREADSAFE:ConstCharStar;

	@:native('SDL_HINT_RENDER_DIRECT3D11_DEBUG')
	static var HINT_RENDER_DIRECT3D11_DEBUG:ConstCharStar;

	@:native('SDL_HINT_RENDER_VULKAN_DEBUG')
	static var HINT_RENDER_VULKAN_DEBUG:ConstCharStar;

	@:native('SDL_HINT_RENDER_DRIVER')
	static var HINT_RENDER_DRIVER:ConstCharStar;

	@:native('SDL_HINT_RENDER_LINE_METHOD')
	static var HINT_RENDER_LINE_METHOD:ConstCharStar;

	@:native('SDL_HINT_RENDER_METAL_PREFER_LOW_POWER_DEVICE')
	static var HINT_RENDER_METAL_PREFER_LOW_POWER_DEVICE:ConstCharStar;

	@:native('SDL_HINT_RENDER_VSYNC')
	static var HINT_RENDER_VSYNC:ConstCharStar;

	@:native('SDL_HINT_RETURN_KEY_HIDES_IME')
	static var HINT_RETURN_KEY_HIDES_IME:ConstCharStar;

	@:native('SDL_HINT_ROG_GAMEPAD_MICE')
	static var HINT_ROG_GAMEPAD_MICE:ConstCharStar;

	@:native('SDL_HINT_ROG_GAMEPAD_MICE_EXCLUDED')
	static var HINT_ROG_GAMEPAD_MICE_EXCLUDED:ConstCharStar;

	@:native('SDL_HINT_RPI_VIDEO_LAYER')
	static var HINT_RPI_VIDEO_LAYER:ConstCharStar;

	@:native('SDL_HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME')
	static var HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME:ConstCharStar;

	@:native('SDL_HINT_SHUTDOWN_DBUS_ON_QUIT')
	static var HINT_SHUTDOWN_DBUS_ON_QUIT:ConstCharStar;

	@:native('SDL_HINT_STORAGE_TITLE_DRIVER')
	static var HINT_STORAGE_TITLE_DRIVER:ConstCharStar;

	@:native('SDL_HINT_STORAGE_USER_DRIVER')
	static var HINT_STORAGE_USER_DRIVER:ConstCharStar;

	@:native('SDL_HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL')
	static var HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL:ConstCharStar;

	@:native('SDL_HINT_THREAD_PRIORITY_POLICY')
	static var HINT_THREAD_PRIORITY_POLICY:ConstCharStar;

	@:native('SDL_HINT_TIMER_RESOLUTION')
	static var HINT_TIMER_RESOLUTION:ConstCharStar;

	@:native('SDL_HINT_TOUCH_MOUSE_EVENTS')
	static var HINT_TOUCH_MOUSE_EVENTS:ConstCharStar;

	@:native('SDL_HINT_TRACKPAD_IS_TOUCH_ONLY')
	static var HINT_TRACKPAD_IS_TOUCH_ONLY:ConstCharStar;

	@:native('SDL_HINT_TV_REMOTE_AS_JOYSTICK')
	static var HINT_TV_REMOTE_AS_JOYSTICK:ConstCharStar;

	@:native('SDL_HINT_VIDEO_ALLOW_SCREENSAVER')
	static var HINT_VIDEO_ALLOW_SCREENSAVER:ConstCharStar;

	@:native('SDL_HINT_VIDEO_DISPLAY_PRIORITY')
	static var HINT_VIDEO_DISPLAY_PRIORITY:ConstCharStar;

	@:native('SDL_HINT_VIDEO_DOUBLE_BUFFER')
	static var HINT_VIDEO_DOUBLE_BUFFER:ConstCharStar;

	@:native('SDL_HINT_VIDEO_DRIVER')
	static var HINT_VIDEO_DRIVER:ConstCharStar;

	@:native('SDL_HINT_VIDEO_DUMMY_SAVE_FRAMES')
	static var HINT_VIDEO_DUMMY_SAVE_FRAMES:ConstCharStar;

	@:native('SDL_HINT_VIDEO_EGL_ALLOW_GETDISPLAY_FALLBACK')
	static var HINT_VIDEO_EGL_ALLOW_GETDISPLAY_FALLBACK:ConstCharStar;

	@:native('SDL_HINT_VIDEO_FORCE_EGL')
	static var HINT_VIDEO_FORCE_EGL:ConstCharStar;

	@:native('SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES')
	static var HINT_VIDEO_MAC_FULLSCREEN_SPACES:ConstCharStar;

	@:native('SDL_HINT_VIDEO_MAC_FULLSCREEN_MENU_VISIBILITY')
	static var HINT_VIDEO_MAC_FULLSCREEN_MENU_VISIBILITY:ConstCharStar;

	@:native('SDL_HINT_VIDEO_METAL_AUTO_RESIZE_DRAWABLE')
	static var HINT_VIDEO_METAL_AUTO_RESIZE_DRAWABLE:ConstCharStar;

	@:native('SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS')
	static var HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS:ConstCharStar;

	@:native('SDL_HINT_VIDEO_OFFSCREEN_SAVE_FRAMES')
	static var HINT_VIDEO_OFFSCREEN_SAVE_FRAMES:ConstCharStar;

	@:native('SDL_HINT_VIDEO_SYNC_WINDOW_OPERATIONS')
	static var HINT_VIDEO_SYNC_WINDOW_OPERATIONS:ConstCharStar;

	@:native('SDL_HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR')
	static var HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR:ConstCharStar;

	@:native('SDL_HINT_VIDEO_WAYLAND_MODE_EMULATION')
	static var HINT_VIDEO_WAYLAND_MODE_EMULATION:ConstCharStar;

	@:native('SDL_HINT_VIDEO_WAYLAND_MODE_SCALING')
	static var HINT_VIDEO_WAYLAND_MODE_SCALING:ConstCharStar;

	@:native('SDL_HINT_VIDEO_WAYLAND_PREFER_LIBDECOR')
	static var HINT_VIDEO_WAYLAND_PREFER_LIBDECOR:ConstCharStar;

	@:native('SDL_HINT_VIDEO_WAYLAND_SCALE_TO_DISPLAY')
	static var HINT_VIDEO_WAYLAND_SCALE_TO_DISPLAY:ConstCharStar;

	@:native('SDL_HINT_VIDEO_WIN_D3DCOMPILER')
	static var HINT_VIDEO_WIN_D3DCOMPILER:ConstCharStar;

	@:native('SDL_HINT_VIDEO_X11_EXTERNAL_WINDOW_INPUT')
	static var HINT_VIDEO_X11_EXTERNAL_WINDOW_INPUT:ConstCharStar;

	@:native('SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR')
	static var HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR:ConstCharStar;

	@:native('SDL_HINT_VIDEO_X11_NET_WM_PING')
	static var HINT_VIDEO_X11_NET_WM_PING:ConstCharStar;

	@:native('SDL_HINT_VIDEO_X11_NODIRECTCOLOR')
	static var HINT_VIDEO_X11_NODIRECTCOLOR:ConstCharStar;

	@:native('SDL_HINT_VIDEO_X11_SCALING_FACTOR')
	static var HINT_VIDEO_X11_SCALING_FACTOR:ConstCharStar;

	@:native('SDL_HINT_VIDEO_X11_VISUALID')
	static var HINT_VIDEO_X11_VISUALID:ConstCharStar;

	@:native('SDL_HINT_VIDEO_X11_WINDOW_VISUALID')
	static var HINT_VIDEO_X11_WINDOW_VISUALID:ConstCharStar;

	@:native('SDL_HINT_VIDEO_X11_XRANDR')
	static var HINT_VIDEO_X11_XRANDR:ConstCharStar;

	@:native('SDL_HINT_VITA_ENABLE_BACK_TOUCH')
	static var HINT_VITA_ENABLE_BACK_TOUCH:ConstCharStar;

	@:native('SDL_HINT_VITA_ENABLE_FRONT_TOUCH')
	static var HINT_VITA_ENABLE_FRONT_TOUCH:ConstCharStar;

	@:native('SDL_HINT_VITA_MODULE_PATH')
	static var HINT_VITA_MODULE_PATH:ConstCharStar;

	@:native('SDL_HINT_VITA_PVR_INIT')
	static var HINT_VITA_PVR_INIT:ConstCharStar;

	@:native('SDL_HINT_VITA_RESOLUTION')
	static var HINT_VITA_RESOLUTION:ConstCharStar;

	@:native('SDL_HINT_VITA_PVR_OPENGL')
	static var HINT_VITA_PVR_OPENGL:ConstCharStar;

	@:native('SDL_HINT_VITA_TOUCH_MOUSE_DEVICE')
	static var HINT_VITA_TOUCH_MOUSE_DEVICE:ConstCharStar;

	@:native('SDL_HINT_VULKAN_DISPLAY')
	static var HINT_VULKAN_DISPLAY:ConstCharStar;

	@:native('SDL_HINT_VULKAN_LIBRARY')
	static var HINT_VULKAN_LIBRARY:ConstCharStar;

	@:native('SDL_HINT_WAVE_FACT_CHUNK')
	static var HINT_WAVE_FACT_CHUNK:ConstCharStar;

	@:native('SDL_HINT_WAVE_CHUNK_LIMIT')
	static var HINT_WAVE_CHUNK_LIMIT:ConstCharStar;

	@:native('SDL_HINT_WAVE_RIFF_CHUNK_SIZE')
	static var HINT_WAVE_RIFF_CHUNK_SIZE:ConstCharStar;

	@:native('SDL_HINT_WAVE_TRUNCATION')
	static var HINT_WAVE_TRUNCATION:ConstCharStar;

	@:native('SDL_HINT_WINDOW_ACTIVATE_WHEN_RAISED')
	static var HINT_WINDOW_ACTIVATE_WHEN_RAISED:ConstCharStar;

	@:native('SDL_HINT_WINDOW_ACTIVATE_WHEN_SHOWN')
	static var HINT_WINDOW_ACTIVATE_WHEN_SHOWN:ConstCharStar;

	@:native('SDL_HINT_WINDOW_ALLOW_TOPMOST')
	static var HINT_WINDOW_ALLOW_TOPMOST:ConstCharStar;

	@:native('SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN')
	static var HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN:ConstCharStar;

	@:native('SDL_HINT_WINDOWS_CLOSE_ON_ALT_F4')
	static var HINT_WINDOWS_CLOSE_ON_ALT_F4:ConstCharStar;

	@:native('SDL_HINT_WINDOWS_ENABLE_MENU_MNEMONICS')
	static var HINT_WINDOWS_ENABLE_MENU_MNEMONICS:ConstCharStar;

	@:native('SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP')
	static var HINT_WINDOWS_ENABLE_MESSAGELOOP:ConstCharStar;

	@:native('SDL_HINT_WINDOWS_GAMEINPUT')
	static var HINT_WINDOWS_GAMEINPUT:ConstCharStar;

	@:native('SDL_HINT_WINDOWS_RAW_KEYBOARD')
	static var HINT_WINDOWS_RAW_KEYBOARD:ConstCharStar;

	@:native('SDL_HINT_WINDOWS_RAW_KEYBOARD_EXCLUDE_HOTKEYS')
	static var HINT_WINDOWS_RAW_KEYBOARD_EXCLUDE_HOTKEYS:ConstCharStar;

	@:native('SDL_HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL')
	static var HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL:ConstCharStar;

	@:native('SDL_HINT_WINDOWS_INTRESOURCE_ICON')
	static var HINT_WINDOWS_INTRESOURCE_ICON:ConstCharStar;

	@:native('SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL')
	static var HINT_WINDOWS_INTRESOURCE_ICON_SMALL:ConstCharStar;

	@:native('SDL_HINT_WINDOWS_USE_D3D9EX')
	static var HINT_WINDOWS_USE_D3D9EX:ConstCharStar;

	@:native('SDL_HINT_WINDOWS_ERASE_BACKGROUND_MODE')
	static var HINT_WINDOWS_ERASE_BACKGROUND_MODE:ConstCharStar;

	@:native('SDL_HINT_X11_FORCE_OVERRIDE_REDIRECT')
	static var HINT_X11_FORCE_OVERRIDE_REDIRECT:ConstCharStar;

	@:native('SDL_HINT_X11_WINDOW_TYPE')
	static var HINT_X11_WINDOW_TYPE:ConstCharStar;

	@:native('SDL_HINT_X11_XCB_LIBRARY')
	static var HINT_X11_XCB_LIBRARY:ConstCharStar;

	@:native('SDL_HINT_XINPUT_ENABLED')
	static var HINT_XINPUT_ENABLED:ConstCharStar;

	@:native('SDL_HINT_ASSERT')
	static var HINT_ASSERT:ConstCharStar;

	@:native('SDL_HINT_PEN_MOUSE_EVENTS')
	static var HINT_PEN_MOUSE_EVENTS:ConstCharStar;

	@:native('SDL_HINT_PEN_TOUCH_EVENTS')
	static var HINT_PEN_TOUCH_EVENTS:ConstCharStar;

	@:native('SDL_SetHintWithPriority')
	static function SetHintWithPriority(name:ConstCharStar, value:ConstCharStar, priority:SDL_HintPriority):Bool;

	@:native('SDL_SetHint')
	static function SetHint(name:ConstCharStar, value:ConstCharStar):Bool;

	@:native('SDL_ResetHint')
	static function ResetHint(name:ConstCharStar):Bool;

	@:native('SDL_ResetHints')
	static function ResetHints():Void;

	@:native('SDL_GetHint')
	static function GetHint(name:ConstCharStar):ConstCharStar;

	@:native('SDL_GetHintBoolean')
	static function GetHintBoolean(name:ConstCharStar, default_value:Bool):Bool;

	@:native('SDL_AddHintCallback')
	static function AddHintCallback(name:ConstCharStar, callback:SDL_HintCallback, userdata:RawPointer<cpp.Void>):Bool;

	@:native('SDL_RemoveHintCallback')
	static function RemoveHintCallback(name:ConstCharStar, callback:SDL_HintCallback, userdata:RawPointer<cpp.Void>):Void;

	// SDL_init.h
	@:native('SDL_INIT_AUDIO')
	static var INIT_AUDIO:UInt32;

	@:native('SDL_INIT_VIDEO')
	static var INIT_VIDEO:UInt32;

	@:native('SDL_INIT_JOYSTICK')
	static var INIT_JOYSTICK:UInt32;

	@:native('SDL_INIT_HAPTIC')
	static var INIT_HAPTIC:UInt32;

	@:native('SDL_INIT_GAMEPAD')
	static var INIT_GAMEPAD:UInt32;

	@:native('SDL_INIT_EVENTS')
	static var INIT_EVENTS:UInt32;

	@:native('SDL_INIT_SENSOR')
	static var INIT_SENSOR:UInt32;

	@:native('SDL_INIT_CAMERA')
	static var INIT_CAMERA:UInt32;

	@:native('SDL_Init')
	static function Init(flags:SDL_InitFlags):Bool;

	@:native('SDL_InitSubSystem')
	static function InitSubSystem(flags:SDL_InitFlags):Bool;

	@:native('SDL_QuitSubSystem')
	static function QuitSubSystem(flags:SDL_InitFlags):Void;

	@:native('SDL_WasInit')
	static function WasInit(flags:SDL_InitFlags):SDL_InitFlags;

	@:native('SDL_Quit')
	static function Quit():Void;

	@:native('SDL_IsMainThread')
	static function IsMainThread():Bool;

	@:native('SDL_RunOnMainThread')
	static function RunOnMainThread(callback:SDL_MainThreadCallback, userdata:RawPointer<cpp.Void>, wait_complete:Bool):Bool;

	@:native('SDL_SetAppMetadata')
	static function SetAppMetadata(appname:ConstCharStar, appversion:ConstCharStar, appidentifier:ConstCharStar):Bool;

	@:native('SDL_SetAppMetadataProperty')
	static function SetAppMetadataProperty(name:ConstCharStar, value:ConstCharStar):Bool;

	@:native('SDL_PROP_APP_METADATA_NAME_STRING')
	static var PROP_APP_METADATA_NAME_STRING:ConstCharStar;

	@:native('SDL_PROP_APP_METADATA_VERSION_STRING')
	static var PROP_APP_METADATA_VERSION_STRING:ConstCharStar;

	@:native('SDL_PROP_APP_METADATA_IDENTIFIER_STRING')
	static var PROP_APP_METADATA_IDENTIFIER_STRING:ConstCharStar;

	@:native('SDL_PROP_APP_METADATA_CREATOR_STRING')
	static var PROP_APP_METADATA_CREATOR_STRING:ConstCharStar;

	@:native('SDL_PROP_APP_METADATA_COPYRIGHT_STRING')
	static var PROP_APP_METADATA_COPYRIGHT_STRING:ConstCharStar;

	@:native('SDL_PROP_APP_METADATA_URL_STRING')
	static var PROP_APP_METADATA_URL_STRING:ConstCharStar;

	@:native('SDL_PROP_APP_METADATA_TYPE_STRING')
	static var PROP_APP_METADATA_TYPE_STRING:ConstCharStar;

	@:native('SDL_GetAppMetadataProperty')
	static function GetAppMetadataProperty(name:ConstCharStar):ConstCharStar;

	// SDL_iostream.h
	@:native('SDL_IOFromFile')
	static function IOFromFile(file:ConstCharStar, mode:ConstCharStar):RawPointer<SDL_IOStream>;

	@:native('SDL_PROP_IOSTREAM_WINDOWS_HANDLE_POINTER')
	static var PROP_IOSTREAM_WINDOWS_HANDLE_POINTER:ConstCharStar;

	@:native('SDL_PROP_IOSTREAM_STDIO_FILE_POINTER')
	static var PROP_IOSTREAM_STDIO_FILE_POINTER:ConstCharStar;

	@:native('SDL_PROP_IOSTREAM_FILE_DESCRIPTOR_NUMBER')
	static var PROP_IOSTREAM_FILE_DESCRIPTOR_NUMBER:ConstCharStar;

	@:native('SDL_PROP_IOSTREAM_ANDROID_AASSET_POINTER')
	static var PROP_IOSTREAM_ANDROID_AASSET_POINTER:ConstCharStar;

	@:native('SDL_IOFromMem')
	static function IOFromMem(mem:RawPointer<cpp.Void>, size:SizeT):RawPointer<SDL_IOStream>;

	@:native('SDL_PROP_IOSTREAM_MEMORY_POINTER')
	static var PROP_IOSTREAM_MEMORY_POINTER:ConstCharStar;

	@:native('SDL_PROP_IOSTREAM_MEMORY_SIZE_NUMBER')
	static var PROP_IOSTREAM_MEMORY_SIZE_NUMBER:ConstCharStar;

	@:native('SDL_IOFromConstMem')
	static function IOFromConstMem(mem:RawConstPointer<cpp.Void>, size:SizeT):RawPointer<SDL_IOStream>;

	@:native('SDL_IOFromDynamicMem')
	static function IOFromDynamicMem():RawPointer<SDL_IOStream>;

	@:native('SDL_PROP_IOSTREAM_DYNAMIC_MEMORY_POINTER')
	static var PROP_IOSTREAM_DYNAMIC_MEMORY_POINTER:ConstCharStar;

	@:native('SDL_PROP_IOSTREAM_DYNAMIC_CHUNKSIZE_NUMBER')
	static var PROP_IOSTREAM_DYNAMIC_CHUNKSIZE_NUMBER:ConstCharStar;

	@:native('SDL_OpenIO')
	static function OpenIO(iface:RawPointer<SDL_IOStreamInterface>, userdata:RawPointer<cpp.Void>):RawPointer<SDL_IOStream>;

	@:native('SDL_CloseIO')
	static function CloseIO(context:RawPointer<SDL_IOStream>):Bool;

	@:native('SDL_GetIOProperties')
	static function GetIOProperties(context:RawPointer<SDL_IOStream>):SDL_PropertiesID;

	@:native('SDL_GetIOStatus')
	static function GetIOStatus(context:RawPointer<SDL_IOStream>):SDL_IOStatus;

	@:native('SDL_GetIOSize')
	static function GetIOSize(context:RawPointer<SDL_IOStream>):Int64;

	@:native('SDL_SeekIO')
	static function SeekIO(context:RawPointer<SDL_IOStream>, offset:Int64, whence:SDL_IOWhence):Int64;

	@:native('SDL_TellIO')
	static function TellIO(context:RawPointer<SDL_IOStream>):Int64;

	@:native('SDL_ReadIO')
	static function ReadIO(context:RawPointer<SDL_IOStream>, ptr:RawPointer<cpp.Void>, size:SizeT):SizeT;

	@:native('SDL_WriteIO')
	static function WriteIO(context:RawPointer<SDL_IOStream>, ptr:RawConstPointer<cpp.Void>, size:SizeT):SizeT;

	@:native('SDL_IOprintf')
	static function IOprintf(context:RawPointer<SDL_IOStream>, fmt:ConstCharStar, args:Rest<VarArg>):SizeT;

	@:native('SDL_IOvprintf')
	static function IOvprintf(context:RawPointer<SDL_IOStream>, fmt:ConstCharStar, ap:VarList):SizeT;

	@:native('SDL_FlushIO')
	static function FlushIO(context:RawPointer<SDL_IOStream>):Bool;

	@:native('SDL_LoadFile_IO')
	static function LoadFile_IO(src:RawPointer<SDL_IOStream>, datasize:RawPointer<SizeT>, closeio:Bool):RawPointer<cpp.Void>;

	@:native('SDL_LoadFile')
	static function LoadFile(file:ConstCharStar, datasize:RawPointer<SizeT>):RawPointer<cpp.Void>;

	@:native('SDL_SaveFile_IO')
	static function SaveFile_IO(src:RawPointer<SDL_IOStream>, data:RawConstPointer<cpp.Void>, datasize:SizeT, closeio:Bool):Bool;

	@:native('SDL_SaveFile')
	static function SaveFile(file:ConstCharStar, data:RawConstPointer<cpp.Void>, datasize:SizeT):Bool;

	@:native('SDL_ReadU8')
	static function ReadU8(src:RawPointer<SDL_IOStream>, value:RawPointer<UInt8>):Bool;

	@:native('SDL_ReadS8')
	static function ReadS8(src:RawPointer<SDL_IOStream>, value:RawPointer<Int8>):Bool;

	@:native('SDL_ReadU16LE')
	static function ReadU16LE(src:RawPointer<SDL_IOStream>, value:RawPointer<UInt16>):Bool;

	@:native('SDL_ReadS16LE')
	static function ReadS16LE(src:RawPointer<SDL_IOStream>, value:RawPointer<Int16>):Bool;

	@:native('SDL_ReadU16BE')
	static function ReadU16BE(src:RawPointer<SDL_IOStream>, value:RawPointer<UInt16>):Bool;

	@:native('SDL_ReadS16BE')
	static function ReadS16BE(src:RawPointer<SDL_IOStream>, value:RawPointer<Int16>):Bool;

	@:native('SDL_ReadU32LE')
	static function ReadU32LE(src:RawPointer<SDL_IOStream>, value:RawPointer<UInt32>):Bool;

	@:native('SDL_ReadS32LE')
	static function ReadS32LE(src:RawPointer<SDL_IOStream>, value:RawPointer<Int32>):Bool;

	@:native('SDL_ReadU32BE')
	static function ReadU32BE(src:RawPointer<SDL_IOStream>, value:RawPointer<UInt32>):Bool;

	@:native('SDL_ReadS32BE')
	static function ReadS32BE(src:RawPointer<SDL_IOStream>, value:RawPointer<Int32>):Bool;

	@:native('SDL_ReadU64LE')
	static function ReadU64LE(src:RawPointer<SDL_IOStream>, value:RawPointer<UInt64>):Bool;

	@:native('SDL_ReadS64LE')
	static function ReadS64LE(src:RawPointer<SDL_IOStream>, value:RawPointer<Int64>):Bool;

	@:native('SDL_ReadU64BE')
	static function ReadU64BE(src:RawPointer<SDL_IOStream>, value:RawPointer<UInt64>):Bool;

	@:native('SDL_ReadS64BE')
	static function ReadS64BE(src:RawPointer<SDL_IOStream>, value:RawPointer<Int64>):Bool;

	@:native('SDL_WriteU8')
	static function WriteU8(dst:RawPointer<SDL_IOStream>, value:UInt8):Bool;

	@:native('SDL_WriteS8')
	static function WriteS8(dst:RawPointer<SDL_IOStream>, value:Int8):Bool;

	@:native('SDL_WriteU16LE')
	static function WriteU16LE(dst:RawPointer<SDL_IOStream>, value:UInt16):Bool;

	@:native('SDL_WriteS16LE')
	static function WriteS16LE(dst:RawPointer<SDL_IOStream>, value:Int16):Bool;

	@:native('SDL_WriteU16BE')
	static function WriteU16BE(dst:RawPointer<SDL_IOStream>, value:UInt16):Bool;

	@:native('SDL_WriteS16BE')
	static function WriteS16BE(dst:RawPointer<SDL_IOStream>, value:Int16):Bool;

	@:native('SDL_WriteU32LE')
	static function WriteU32LE(dst:RawPointer<SDL_IOStream>, value:UInt32):Bool;

	@:native('SDL_WriteS32LE')
	static function WriteS32LE(dst:RawPointer<SDL_IOStream>, value:Int32):Bool;

	@:native('SDL_WriteU32BE')
	static function WriteU32BE(dst:RawPointer<SDL_IOStream>, value:UInt32):Bool;

	@:native('SDL_WriteS32BE')
	static function WriteS32BE(dst:RawPointer<SDL_IOStream>, value:Int32):Bool;

	@:native('SDL_WriteU64LE')
	static function WriteU64LE(dst:RawPointer<SDL_IOStream>, value:UInt64):Bool;

	@:native('SDL_WriteS64LE')
	static function WriteS64LE(dst:RawPointer<SDL_IOStream>, value:Int64):Bool;

	@:native('SDL_WriteU64BE')
	static function WriteU64BE(dst:RawPointer<SDL_IOStream>, value:UInt64):Bool;

	@:native('SDL_WriteS64BE')
	static function WriteS64BE(dst:RawPointer<SDL_IOStream>, value:Int64):Bool;

	// SDL_joystick.h
	@:native('SDL_JOYSTICK_AXIS_MAX')
	static var JOYSTICK_AXIS_MAX:UInt32;

	@:native('SDL_JOYSTICK_AXIS_MIN')
	static var JOYSTICK_AXIS_MIN:UInt32;

	@:native('SDL_LockJoysticks')
	static function LockJoysticks():Void;

	@:native('SDL_UnlockJoysticks')
	static function UnlockJoysticks():Void;

	@:native('SDL_HasJoystick')
	static function HasJoystick():Bool;

	@:native('SDL_GetJoysticks')
	static function GetJoysticks(count:RawPointer<Int>):RawPointer<SDL_JoystickID>;

	@:native('SDL_GetJoystickNameForID')
	static function GetJoystickNameForID(instance_id:SDL_JoystickID):ConstCharStar;

	@:native('SDL_GetJoystickPathForID')
	static function GetJoystickPathForID(instance_id:SDL_JoystickID):ConstCharStar;

	@:native('SDL_GetJoystickPlayerIndexForID')
	static function GetJoystickPlayerIndexForID(instance_id:SDL_JoystickID):Int;

	@:native('SDL_GetJoystickGUIDForID')
	static function GetJoystickGUIDForID(instance_id:SDL_JoystickID):SDL_GUID;

	@:native('SDL_GetJoystickVendorForID')
	static function GetJoystickVendorForID(instance_id:SDL_JoystickID):UInt16;

	@:native('SDL_GetJoystickProductForID')
	static function GetJoystickProductForID(instance_id:SDL_JoystickID):UInt16;

	@:native('SDL_GetJoystickProductVersionForID')
	static function GetJoystickProductVersionForID(instance_id:SDL_JoystickID):UInt16;

	@:native('SDL_GetJoystickTypeForID')
	static function GetJoystickTypeForID(instance_id:SDL_JoystickID):SDL_JoystickType;

	@:native('SDL_OpenJoystick')
	static function OpenJoystick(instance_id:SDL_JoystickID):RawPointer<SDL_Joystick>;

	@:native('SDL_GetJoystickFromID')
	static function GetJoystickFromID(instance_id:SDL_JoystickID):RawPointer<SDL_Joystick>;

	@:native('SDL_GetJoystickFromPlayerIndex')
	static function GetJoystickFromPlayerIndex(player_index:Int):RawPointer<SDL_Joystick>;

	@:native('SDL_AttachVirtualJoystick')
	static function AttachVirtualJoystick(desc:RawConstPointer<SDL_VirtualJoystickDesc>):SDL_JoystickID;

	@:native('SDL_DetachVirtualJoystick')
	static function DetachVirtualJoystick(instance_id:SDL_JoystickID):Bool;

	@:native('SDL_IsJoystickVirtual')
	static function IsJoystickVirtual(instance_id:SDL_JoystickID):Bool;

	@:native('SDL_SetJoystickVirtualAxis')
	static function SetJoystickVirtualAxis(joystick:RawPointer<SDL_Joystick>, axis:Int, value:Int16):Bool;

	@:native('SDL_SetJoystickVirtualBall')
	static function SetJoystickVirtualBall(joystick:RawPointer<SDL_Joystick>, ball:Int, xrel:Int16, yrel:Int16):Bool;

	@:native('SDL_SetJoystickVirtualButton')
	static function SetJoystickVirtualButton(joystick:RawPointer<SDL_Joystick>, button:Int, down:Bool):Bool;

	@:native('SDL_SetJoystickVirtualHat')
	static function SetJoystickVirtualHat(joystick:RawPointer<SDL_Joystick>, hat:Int, value:UInt8):Bool;

	@:native('SDL_SetJoystickVirtualTouchpad')
	static function SetJoystickVirtualTouchpad(joystick:RawPointer<SDL_Joystick>, touchpad:Int, finger:Int, down:Bool, x:Float32, y:Float32,
		pressure:Float32):Bool;

	@:native('SDL_SendJoystickVirtualSensorData')
	static function SendJoystickVirtualSensorData(joystick:RawPointer<SDL_Joystick>, type:SDL_SensorType, sensor_timestamp:UInt64, data:RawPointer<Float32>,
		num_values:Int):Bool;

	@:native('SDL_GetJoystickProperties')
	static function GetJoystickProperties(joystick:RawPointer<SDL_Joystick>):SDL_PropertiesID;

	@:native('SDL_PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN')
	static var PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN')
	static var PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN')
	static var PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN')
	static var PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN')
	static var PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN:ConstCharStar;

	@:native('SDL_GetJoystickName')
	static function GetJoystickName(joystick:RawPointer<SDL_Joystick>):ConstCharStar;

	@:native('SDL_GetJoystickPath')
	static function GetJoystickPath(joystick:RawPointer<SDL_Joystick>):ConstCharStar;

	@:native('SDL_GetJoystickPlayerIndex')
	static function GetJoystickPlayerIndex(joystick:RawPointer<SDL_Joystick>):Int;

	@:native('SDL_SetJoystickPlayerIndex')
	static function SetJoystickPlayerIndex(joystick:RawPointer<SDL_Joystick>, player_index:Int):Bool;

	@:native('SDL_GetJoystickGUID')
	static function GetJoystickGUID(joystick:RawPointer<SDL_Joystick>):SDL_GUID;

	@:native('SDL_GetJoystickVendor')
	static function GetJoystickVendor(joystick:RawPointer<SDL_Joystick>):UInt16;

	@:native('SDL_GetJoystickProduct')
	static function GetJoystickProduct(joystick:RawPointer<SDL_Joystick>):UInt16;

	@:native('SDL_GetJoystickProductVersion')
	static function GetJoystickProductVersion(joystick:RawPointer<SDL_Joystick>):UInt16;

	@:native('SDL_GetJoystickFirmwareVersion')
	static function GetJoystickFirmwareVersion(joystick:RawPointer<SDL_Joystick>):UInt16;

	@:native('SDL_GetJoystickSerial')
	static function GetJoystickSerial(joystick:RawPointer<SDL_Joystick>):ConstCharStar;

	@:native('SDL_GetJoystickType')
	static function GetJoystickType(joystick:RawPointer<SDL_Joystick>):SDL_JoystickType;

	@:native('SDL_GetJoystickGUIDInfo')
	static function GetJoystickGUIDInfo(guid:SDL_GUID, vendor:RawPointer<UInt16>, product:RawPointer<UInt16>, version:RawPointer<UInt16>, crc16:RawPointer<UInt16>):Void;

	@:native('SDL_JoystickConnected')
	static function JoystickConnected(joystick:RawPointer<SDL_Joystick>):Bool;

	@:native('SDL_GetJoystickID')
	static function GetJoystickID(joystick:RawPointer<SDL_Joystick>):SDL_JoystickID;

	@:native('SDL_GetNumJoystickAxes')
	static function GetNumJoystickAxes(joystick:RawPointer<SDL_Joystick>):Int;

	@:native('SDL_GetNumJoystickBalls')
	static function GetNumJoystickBalls(joystick:RawPointer<SDL_Joystick>):Int;

	@:native('SDL_GetNumJoystickHats')
	static function GetNumJoystickHats(joystick:RawPointer<SDL_Joystick>):Int;

	@:native('SDL_GetNumJoystickButtons')
	static function GetNumJoystickButtons(joystick:RawPointer<SDL_Joystick>):Int;

	@:native('SDL_SetJoystickEventsEnabled')
	static function SetJoystickEventsEnabled(enabled:Bool):Void;

	@:native('SDL_JoystickEventsEnabled')
	static function JoystickEventsEnabled():Bool;

	@:native('SDL_UpdateJoysticks')
	static function UpdateJoysticks():Void;

	@:native('SDL_GetJoystickAxis')
	static function GetJoystickAxis(joystick:RawPointer<SDL_Joystick>, axis:Int):Int16;

	@:native('SDL_GetJoystickAxisInitialState')
	static function GetJoystickAxisInitialState(joystick:RawPointer<SDL_Joystick>, axis:Int, state:RawPointer<Int16>):Bool;

	@:native('SDL_GetJoystickBall')
	static function GetJoystickBall(joystick:RawPointer<SDL_Joystick>, ball:Int, dx:RawPointer<Int>, dy:RawPointer<Int>):Bool;

	@:native('SDL_GetJoystickHat')
	static function GetJoystickHat(joystick:RawPointer<SDL_Joystick>, hat:Int):UInt8;

	@:native('SDL_HAT_CENTERED')
	static var HAT_CENTERED:UInt32;

	@:native('SDL_HAT_UP')
	static var HAT_UP:UInt32;

	@:native('SDL_HAT_RIGHT')
	static var HAT_RIGHT:UInt32;

	@:native('SDL_HAT_DOWN')
	static var HAT_DOWN:UInt32;

	@:native('SDL_HAT_LEFT')
	static var HAT_LEFT:UInt32;

	@:native('SDL_HAT_RIGHTUP')
	static var HAT_RIGHTUP:UInt32;

	@:native('SDL_HAT_RIGHTDOWN')
	static var HAT_RIGHTDOWN:UInt32;

	@:native('SDL_HAT_LEFTUP')
	static var HAT_LEFTUP:UInt32;

	@:native('SDL_HAT_LEFTDOWN')
	static var HAT_LEFTDOWN:UInt32;

	@:native('SDL_GetJoystickButton')
	static function GetJoystickButton(joystick:RawPointer<SDL_Joystick>, button:Int):Bool;

	@:native('SDL_RumbleJoystick')
	static function RumbleJoystick(joystick:RawPointer<SDL_Joystick>, low_frequency_rumble:UInt16, high_frequency_rumble:UInt16, duration_ms:UInt32):Bool;

	@:native('SDL_RumbleJoystickTriggers')
	static function RumbleJoystickTriggers(joystick:RawPointer<SDL_Joystick>, left_rumble:UInt16, right_rumble:UInt16, duration_ms:UInt32):Bool;

	@:native('SDL_SetJoystickLED')
	static function SetJoystickLED(joystick:RawPointer<SDL_Joystick>, red:UInt8, green:UInt8, blue:UInt8):Bool;

	@:native('SDL_SendJoystickEffect')
	static function SendJoystickEffect(joystick:RawPointer<SDL_Joystick>, data:RawConstPointer<cpp.Void>, size:Int):Bool;

	@:native('SDL_CloseJoystick')
	static function CloseJoystick(joystick:RawPointer<SDL_Joystick>):Void;

	@:native('SDL_GetJoystickConnectionState')
	static function GetJoystickConnectionState(joystick:RawPointer<SDL_Joystick>):SDL_JoystickConnectionState;

	@:native('SDL_GetJoystickPowerInfo')
	static function GetJoystickPowerInfo(joystick:RawPointer<SDL_Joystick>, percent:RawPointer<Int>):SDL_PowerState;

	// SDL_keyboard.h
	@:native('SDL_HasKeyboard')
	static function HasKeyboard():Bool;

	@:native('SDL_GetKeyboards')
	static function GetKeyboards(count:RawPointer<Int>):RawPointer<SDL_KeyboardID>;

	@:native('SDL_GetKeyboardNameForID')
	static function GetKeyboardNameForID(instance_id:SDL_KeyboardID):ConstCharStar;

	@:native('SDL_GetKeyboardFocus')
	static function GetKeyboardFocus():RawPointer<SDL_Window>;

	@:native('SDL_GetKeyboardState')
	static function GetKeyboardState(numkeys:RawPointer<Int>):RawConstPointer<Bool>;

	@:native('SDL_ResetKeyboard')
	static function ResetKeyboard():Void;

	@:native('SDL_GetModState')
	static function GetModState():SDL_Keymod;

	@:native('SDL_SetModState')
	static function SetModState(modstate:SDL_Keymod):Void;

	@:native('SDL_GetKeyFromScancode')
	static function GetKeyFromScancode(scancode:SDL_Scancode, modstate:SDL_Keymod, key_event:Bool):SDL_Keycode;

	@:native('SDL_GetScancodeFromKey')
	static function GetScancodeFromKey(key:SDL_Keycode, modstate:RawPointer<SDL_Keymod>):SDL_Scancode;

	@:native('SDL_SetScancodeName')
	static function SetScancodeName(scancode:SDL_Scancode, name:ConstCharStar):Bool;

	@:native('SDL_GetScancodeName')
	static function GetScancodeName(scancode:SDL_Scancode):ConstCharStar;

	@:native('SDL_GetScancodeFromName')
	static function GetScancodeFromName(name:ConstCharStar):SDL_Scancode;

	@:native('SDL_GetKeyName')
	static function GetKeyName(key:SDL_Keycode):ConstCharStar;

	@:native('SDL_GetKeyFromName')
	static function GetKeyFromName(name:ConstCharStar):SDL_Keycode;

	@:native('SDL_StartTextInput')
	static function StartTextInput(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_StartTextInputWithProperties')
	static function StartTextInputWithProperties(window:RawPointer<SDL_Window>, props:SDL_PropertiesID):Bool;

	@:native('SDL_PROP_TEXTINPUT_TYPE_NUMBER')
	static var PROP_TEXTINPUT_TYPE_NUMBER:ConstCharStar;

	@:native('SDL_PROP_TEXTINPUT_CAPITALIZATION_NUMBER')
	static var PROP_TEXTINPUT_CAPITALIZATION_NUMBER:ConstCharStar;

	@:native('SDL_PROP_TEXTINPUT_AUTOCORRECT_BOOLEAN')
	static var PROP_TEXTINPUT_AUTOCORRECT_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_TEXTINPUT_MULTILINE_BOOLEAN')
	static var PROP_TEXTINPUT_MULTILINE_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_TEXTINPUT_ANDROID_INPUTTYPE_NUMBER')
	static var PROP_TEXTINPUT_ANDROID_INPUTTYPE_NUMBER:ConstCharStar;

	@:native('SDL_TextInputActive')
	static function TextInputActive(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_StopTextInput')
	static function StopTextInput(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_ClearComposition')
	static function ClearComposition(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_SetTextInputArea')
	static function SetTextInputArea(window:RawPointer<SDL_Window>, rect:RawConstPointer<SDL_Rect>, cursor:Int):Bool;

	@:native('SDL_GetTextInputArea')
	static function GetTextInputArea(window:RawPointer<SDL_Window>, rect:RawPointer<SDL_Rect>, cursor:RawPointer<Int>):Bool;

	@:native('SDL_HasScreenKeyboardSupport')
	static function HasScreenKeyboardSupport():Bool;

	@:native('SDL_ScreenKeyboardShown')
	static function ScreenKeyboardShown(window:RawPointer<SDL_Window>):Bool;

	// SDL_keycode.h
	@:native('SDLK_EXTENDED_MASK')
	static var K_EXTENDED_MASK:UInt32;

	@:native('SDLK_SCANCODE_MASK')
	static var K_SCANCODE_MASK:UInt32;

	@:native('SDLK_UNKNOWN')
	static var K_UNKNOWN:UInt32;

	@:native('SDLK_RETURN')
	static var K_RETURN:UInt32;

	@:native('SDLK_ESCAPE')
	static var K_ESCAPE:UInt32;

	@:native('SDLK_BACKSPACE')
	static var K_BACKSPACE:UInt32;

	@:native('SDLK_TAB')
	static var K_TAB:UInt32;

	@:native('SDLK_SPACE')
	static var K_SPACE:UInt32;

	@:native('SDLK_EXCLAIM')
	static var K_EXCLAIM:UInt32;

	@:native('SDLK_DBLAPOSTROPHE')
	static var K_DBLAPOSTROPHE:UInt32;

	@:native('SDLK_HASH')
	static var K_HASH:UInt32;

	@:native('SDLK_DOLLAR')
	static var K_DOLLAR:UInt32;

	@:native('SDLK_PERCENT')
	static var K_PERCENT:UInt32;

	@:native('SDLK_AMPERSAND')
	static var K_AMPERSAND:UInt32;

	@:native('SDLK_APOSTROPHE')
	static var K_APOSTROPHE:UInt32;

	@:native('SDLK_LEFTPAREN')
	static var K_LEFTPAREN:UInt32;

	@:native('SDLK_RIGHTPAREN')
	static var K_RIGHTPAREN:UInt32;

	@:native('SDLK_ASTERISK')
	static var K_ASTERISK:UInt32;

	@:native('SDLK_PLUS')
	static var K_PLUS:UInt32;

	@:native('SDLK_COMMA')
	static var K_COMMA:UInt32;

	@:native('SDLK_MINUS')
	static var K_MINUS:UInt32;

	@:native('SDLK_PERIOD')
	static var K_PERIOD:UInt32;

	@:native('SDLK_SLASH')
	static var K_SLASH:UInt32;

	@:native('SDLK_0')
	static var K_ZERO:UInt32;

	@:native('SDLK_1')
	static var K_ONE:UInt32;

	@:native('SDLK_2')
	static var K_TWO:UInt32;

	@:native('SDLK_3')
	static var K_THREE:UInt32;

	@:native('SDLK_4')
	static var K_FOUR:UInt32;

	@:native('SDLK_5')
	static var K_FIVE:UInt32;

	@:native('SDLK_6')
	static var K_SIX:UInt32;

	@:native('SDLK_7')
	static var K_SEVEN:UInt32;

	@:native('SDLK_8')
	static var K_EIGHT:UInt32;

	@:native('SDLK_9')
	static var K_NINE:UInt32;

	@:native('SDLK_COLON')
	static var K_COLON:UInt32;

	@:native('SDLK_SEMICOLON')
	static var K_SEMICOLON:UInt32;

	@:native('SDLK_LESS')
	static var K_LESS:UInt32;

	@:native('SDLK_EQUALS')
	static var K_EQUALS:UInt32;

	@:native('SDLK_GREATER')
	static var K_GREATER:UInt32;

	@:native('SDLK_QUESTION')
	static var K_QUESTION:UInt32;

	@:native('SDLK_AT')
	static var K_AT:UInt32;

	@:native('SDLK_LEFTBRACKET')
	static var K_LEFTBRACKET:UInt32;

	@:native('SDLK_BACKSLASH')
	static var K_BACKSLASH:UInt32;

	@:native('SDLK_RIGHTBRACKET')
	static var K_RIGHTBRACKET:UInt32;

	@:native('SDLK_CARET')
	static var K_CARET:UInt32;

	@:native('SDLK_UNDERSCORE')
	static var K_UNDERSCORE:UInt32;

	@:native('SDLK_GRAVE')
	static var K_GRAVE:UInt32;

	@:native('SDLK_A')
	static var K_A:UInt32;

	@:native('SDLK_B')
	static var K_B:UInt32;

	@:native('SDLK_C')
	static var K_C:UInt32;

	@:native('SDLK_D')
	static var K_D:UInt32;

	@:native('SDLK_E')
	static var K_E:UInt32;

	@:native('SDLK_F')
	static var K_F:UInt32;

	@:native('SDLK_G')
	static var K_G:UInt32;

	@:native('SDLK_H')
	static var K_H:UInt32;

	@:native('SDLK_I')
	static var K_I:UInt32;

	@:native('SDLK_J')
	static var K_J:UInt32;

	@:native('SDLK_K')
	static var K_K:UInt32;

	@:native('SDLK_L')
	static var K_L:UInt32;

	@:native('SDLK_M')
	static var K_M:UInt32;

	@:native('SDLK_N')
	static var K_N:UInt32;

	@:native('SDLK_O')
	static var K_O:UInt32;

	@:native('SDLK_P')
	static var K_P:UInt32;

	@:native('SDLK_Q')
	static var K_Q:UInt32;

	@:native('SDLK_R')
	static var K_R:UInt32;

	@:native('SDLK_S')
	static var K_S:UInt32;

	@:native('SDLK_T')
	static var K_T:UInt32;

	@:native('SDLK_U')
	static var K_U:UInt32;

	@:native('SDLK_V')
	static var K_V:UInt32;

	@:native('SDLK_W')
	static var K_W:UInt32;

	@:native('SDLK_X')
	static var K_X:UInt32;

	@:native('SDLK_Y')
	static var K_Y:UInt32;

	@:native('SDLK_Z')
	static var K_Z:UInt32;

	@:native('SDLK_LEFTBRACE')
	static var K_LEFTBRACE:UInt32;

	@:native('SDLK_PIPE')
	static var K_PIPE:UInt32;

	@:native('SDLK_RIGHTBRACE')
	static var K_RIGHTBRACE:UInt32;

	@:native('SDLK_TILDE')
	static var K_TILDE:UInt32;

	@:native('SDLK_DELETE')
	static var K_DELETE:UInt32;

	@:native('SDLK_PLUSMINUS')
	static var K_PLUSMINUS:UInt32;

	@:native('SDLK_CAPSLOCK')
	static var K_CAPSLOCK:UInt32;

	@:native('SDLK_F1')
	static var K_F1:UInt32;

	@:native('SDLK_F2')
	static var K_F2:UInt32;

	@:native('SDLK_F3')
	static var K_F3:UInt32;

	@:native('SDLK_F4')
	static var K_F4:UInt32;

	@:native('SDLK_F5')
	static var K_F5:UInt32;

	@:native('SDLK_F6')
	static var K_F6:UInt32;

	@:native('SDLK_F7')
	static var K_F7:UInt32;

	@:native('SDLK_F8')
	static var K_F8:UInt32;

	@:native('SDLK_F9')
	static var K_F9:UInt32;

	@:native('SDLK_F10')
	static var K_F10:UInt32;

	@:native('SDLK_F11')
	static var K_F11:UInt32;

	@:native('SDLK_F12')
	static var K_F12:UInt32;

	@:native('SDLK_PRINTSCREEN')
	static var K_PRINTSCREEN:UInt32;

	@:native('SDLK_SCROLLLOCK')
	static var K_SCROLLLOCK:UInt32;

	@:native('SDLK_PAUSE')
	static var K_PAUSE:UInt32;

	@:native('SDLK_INSERT')
	static var K_INSERT:UInt32;

	@:native('SDLK_HOME')
	static var K_HOME:UInt32;

	@:native('SDLK_PAGEUP')
	static var K_PAGEUP:UInt32;

	@:native('SDLK_END')
	static var K_END:UInt32;

	@:native('SDLK_PAGEDOWN')
	static var K_PAGEDOWN:UInt32;

	@:native('SDLK_RIGHT')
	static var K_RIGHT:UInt32;

	@:native('SDLK_LEFT')
	static var K_LEFT:UInt32;

	@:native('SDLK_DOWN')
	static var K_DOWN:UInt32;

	@:native('SDLK_UP')
	static var K_UP:UInt32;

	@:native('SDLK_NUMLOCKCLEAR')
	static var K_NUMLOCKCLEAR:UInt32;

	@:native('SDLK_KP_DIVIDE')
	static var K_KP_DIVIDE:UInt32;

	@:native('SDLK_KP_MULTIPLY')
	static var K_KP_MULTIPLY:UInt32;

	@:native('SDLK_KP_MINUS')
	static var K_KP_MINUS:UInt32;

	@:native('SDLK_KP_PLUS')
	static var K_KP_PLUS:UInt32;

	@:native('SDLK_KP_ENTER')
	static var K_KP_ENTER:UInt32;

	@:native('SDLK_KP_1')
	static var K_KP_1:UInt32;

	@:native('SDLK_KP_2')
	static var K_KP_2:UInt32;

	@:native('SDLK_KP_3')
	static var K_KP_3:UInt32;

	@:native('SDLK_KP_4')
	static var K_KP_4:UInt32;

	@:native('SDLK_KP_5')
	static var K_KP_5:UInt32;

	@:native('SDLK_KP_6')
	static var K_KP_6:UInt32;

	@:native('SDLK_KP_7')
	static var K_KP_7:UInt32;

	@:native('SDLK_KP_8')
	static var K_KP_8:UInt32;

	@:native('SDLK_KP_9')
	static var K_KP_9:UInt32;

	@:native('SDLK_KP_0')
	static var K_KP_0:UInt32;

	@:native('SDLK_KP_PERIOD')
	static var K_KP_PERIOD:UInt32;

	@:native('SDLK_APPLICATION')
	static var K_APPLICATION:UInt32;

	@:native('SDLK_POWER')
	static var K_POWER:UInt32;

	@:native('SDLK_KP_EQUALS')
	static var K_KP_EQUALS:UInt32;

	@:native('SDLK_F13')
	static var K_F13:UInt32;

	@:native('SDLK_F14')
	static var K_F14:UInt32;

	@:native('SDLK_F15')
	static var K_F15:UInt32;

	@:native('SDLK_F16')
	static var K_F16:UInt32;

	@:native('SDLK_F17')
	static var K_F17:UInt32;

	@:native('SDLK_F18')
	static var K_F18:UInt32;

	@:native('SDLK_F19')
	static var K_F19:UInt32;

	@:native('SDLK_F20')
	static var K_F20:UInt32;

	@:native('SDLK_F21')
	static var K_F21:UInt32;

	@:native('SDLK_F22')
	static var K_F22:UInt32;

	@:native('SDLK_F23')
	static var K_F23:UInt32;

	@:native('SDLK_F24')
	static var K_F24:UInt32;

	@:native('SDLK_EXECUTE')
	static var K_EXECUTE:UInt32;

	@:native('SDLK_HELP')
	static var K_HELP:UInt32;

	@:native('SDLK_MENU')
	static var K_MENU:UInt32;

	@:native('SDLK_SELECT')
	static var K_SELECT:UInt32;

	@:native('SDLK_STOP')
	static var K_STOP:UInt32;

	@:native('SDLK_AGAIN')
	static var K_AGAIN:UInt32;

	@:native('SDLK_UNDO')
	static var K_UNDO:UInt32;

	@:native('SDLK_CUT')
	static var K_CUT:UInt32;

	@:native('SDLK_COPY')
	static var K_COPY:UInt32;

	@:native('SDLK_PASTE')
	static var K_PASTE:UInt32;

	@:native('SDLK_FIND')
	static var K_FIND:UInt32;

	@:native('SDLK_MUTE')
	static var K_MUTE:UInt32;

	@:native('SDLK_VOLUMEUP')
	static var K_VOLUMEUP:UInt32;

	@:native('SDLK_VOLUMEDOWN')
	static var K_VOLUMEDOWN:UInt32;

	@:native('SDLK_KP_COMMA')
	static var K_KP_COMMA:UInt32;

	@:native('SDLK_KP_EQUALSAS400')
	static var K_KP_EQUALSAS400:UInt32;

	@:native('SDLK_ALTERASE')
	static var K_ALTERASE:UInt32;

	@:native('SDLK_SYSREQ')
	static var K_SYSREQ:UInt32;

	@:native('SDLK_CANCEL')
	static var K_CANCEL:UInt32;

	@:native('SDLK_CLEAR')
	static var K_CLEAR:UInt32;

	@:native('SDLK_PRIOR')
	static var K_PRIOR:UInt32;

	@:native('SDLK_RETURN2')
	static var K_RETURN2:UInt32;

	@:native('SDLK_SEPARATOR')
	static var K_SEPARATOR:UInt32;

	@:native('SDLK_OUT')
	static var K_OUT:UInt32;

	@:native('SDLK_OPER')
	static var K_OPER:UInt32;

	@:native('SDLK_CLEARAGAIN')
	static var K_CLEARAGAIN:UInt32;

	@:native('SDLK_CRSEL')
	static var K_CRSEL:UInt32;

	@:native('SDLK_EXSEL')
	static var K_EXSEL:UInt32;

	@:native('SDLK_KP_00')
	static var K_KP_00:UInt32;

	@:native('SDLK_KP_000')
	static var K_KP_000:UInt32;

	@:native('SDLK_THOUSANDSSEPARATOR')
	static var K_THOUSANDSSEPARATOR:UInt32;

	@:native('SDLK_DECIMALSEPARATOR')
	static var K_DECIMALSEPARATOR:UInt32;

	@:native('SDLK_CURRENCYUNIT')
	static var K_CURRENCYUNIT:UInt32;

	@:native('SDLK_CURRENCYSUBUNIT')
	static var K_CURRENCYSUBUNIT:UInt32;

	@:native('SDLK_KP_LEFTPAREN')
	static var K_KP_LEFTPAREN:UInt32;

	@:native('SDLK_KP_RIGHTPAREN')
	static var K_KP_RIGHTPAREN:UInt32;

	@:native('SDLK_KP_LEFTBRACE')
	static var K_KP_LEFTBRACE:UInt32;

	@:native('SDLK_KP_RIGHTBRACE')
	static var K_KP_RIGHTBRACE:UInt32;

	@:native('SDLK_KP_TAB')
	static var K_KP_TAB:UInt32;

	@:native('SDLK_KP_BACKSPACE')
	static var K_KP_BACKSPACE:UInt32;

	@:native('SDLK_KP_A')
	static var K_KP_A:UInt32;

	@:native('SDLK_KP_B')
	static var K_KP_B:UInt32;

	@:native('SDLK_KP_C')
	static var K_KP_C:UInt32;

	@:native('SDLK_KP_D')
	static var K_KP_D:UInt32;

	@:native('SDLK_KP_E')
	static var K_KP_E:UInt32;

	@:native('SDLK_KP_F')
	static var K_KP_F:UInt32;

	@:native('SDLK_KP_XOR')
	static var K_KP_XOR:UInt32;

	@:native('SDLK_KP_POWER')
	static var K_KP_POWER:UInt32;

	@:native('SDLK_KP_PERCENT')
	static var K_KP_PERCENT:UInt32;

	@:native('SDLK_KP_LESS')
	static var K_KP_LESS:UInt32;

	@:native('SDLK_KP_GREATER')
	static var K_KP_GREATER:UInt32;

	@:native('SDLK_KP_AMPERSAND')
	static var K_KP_AMPERSAND:UInt32;

	@:native('SDLK_KP_DBLAMPERSAND')
	static var K_KP_DBLAMPERSAND:UInt32;

	@:native('SDLK_KP_VERTICALBAR')
	static var K_KP_VERTICALBAR:UInt32;

	@:native('SDLK_KP_DBLVERTICALBAR')
	static var K_KP_DBLVERTICALBAR:UInt32;

	@:native('SDLK_KP_COLON')
	static var K_KP_COLON:UInt32;

	@:native('SDLK_KP_HASH')
	static var K_KP_HASH:UInt32;

	@:native('SDLK_KP_SPACE')
	static var K_KP_SPACE:UInt32;

	@:native('SDLK_KP_AT')
	static var K_KP_AT:UInt32;

	@:native('SDLK_KP_EXCLAM')
	static var K_KP_EXCLAM:UInt32;

	@:native('SDLK_KP_MEMSTORE')
	static var K_KP_MEMSTORE:UInt32;

	@:native('SDLK_KP_MEMRECALL')
	static var K_KP_MEMRECALL:UInt32;

	@:native('SDLK_KP_MEMCLEAR')
	static var K_KP_MEMCLEAR:UInt32;

	@:native('SDLK_KP_MEMADD')
	static var K_KP_MEMADD:UInt32;

	@:native('SDLK_KP_MEMSUBTRACT')
	static var K_KP_MEMSUBTRACT:UInt32;

	@:native('SDLK_KP_MEMMULTIPLY')
	static var K_KP_MEMMULTIPLY:UInt32;

	@:native('SDLK_KP_MEMDIVIDE')
	static var K_KP_MEMDIVIDE:UInt32;

	@:native('SDLK_KP_PLUSMINUS')
	static var K_KP_PLUSMINUS:UInt32;

	@:native('SDLK_KP_CLEAR')
	static var K_KP_CLEAR:UInt32;

	@:native('SDLK_KP_CLEARENTRY')
	static var K_KP_CLEARENTRY:UInt32;

	@:native('SDLK_KP_BINARY')
	static var K_KP_BINARY:UInt32;

	@:native('SDLK_KP_OCTAL')
	static var K_KP_OCTAL:UInt32;

	@:native('SDLK_KP_DECIMAL')
	static var K_KP_DECIMAL:UInt32;

	@:native('SDLK_KP_HEXADECIMAL')
	static var K_KP_HEXADECIMAL:UInt32;

	@:native('SDLK_LCTRL')
	static var K_LCTRL:UInt32;

	@:native('SDLK_LSHIFT')
	static var K_LSHIFT:UInt32;

	@:native('SDLK_LALT')
	static var K_LALT:UInt32;

	@:native('SDLK_LGUI')
	static var K_LGUI:UInt32;

	@:native('SDLK_RCTRL')
	static var K_RCTRL:UInt32;

	@:native('SDLK_RSHIFT')
	static var K_RSHIFT:UInt32;

	@:native('SDLK_RALT')
	static var K_RALT:UInt32;

	@:native('SDLK_RGUI')
	static var K_RGUI:UInt32;

	@:native('SDLK_MODE')
	static var K_MODE:UInt32;

	@:native('SDLK_SLEEP')
	static var K_SLEEP:UInt32;

	@:native('SDLK_WAKE')
	static var K_WAKE:UInt32;

	@:native('SDLK_CHANNEL_INCREMENT')
	static var K_CHANNEL_INCREMENT:UInt32;

	@:native('SDLK_CHANNEL_DECREMENT')
	static var K_CHANNEL_DECREMENT:UInt32;

	@:native('SDLK_MEDIA_PLAY')
	static var K_MEDIA_PLAY:UInt32;

	@:native('SDLK_MEDIA_PAUSE')
	static var K_MEDIA_PAUSE:UInt32;

	@:native('SDLK_MEDIA_RECORD')
	static var K_MEDIA_RECORD:UInt32;

	@:native('SDLK_MEDIA_FAST_FORWARD')
	static var K_MEDIA_FAST_FORWARD:UInt32;

	@:native('SDLK_MEDIA_REWIND')
	static var K_MEDIA_REWIND:UInt32;

	@:native('SDLK_MEDIA_NEXT_TRACK')
	static var K_MEDIA_NEXT_TRACK:UInt32;

	@:native('SDLK_MEDIA_PREVIOUS_TRACK')
	static var K_MEDIA_PREVIOUS_TRACK:UInt32;

	@:native('SDLK_MEDIA_STOP')
	static var K_MEDIA_STOP:UInt32;

	@:native('SDLK_MEDIA_EJECT')
	static var K_MEDIA_EJECT:UInt32;

	@:native('SDLK_MEDIA_PLAY_PAUSE')
	static var K_MEDIA_PLAY_PAUSE:UInt32;

	@:native('SDLK_MEDIA_SELECT')
	static var K_MEDIA_SELECT:UInt32;

	@:native('SDLK_AC_NEW')
	static var K_AC_NEW:UInt32;

	@:native('SDLK_AC_OPEN')
	static var K_AC_OPEN:UInt32;

	@:native('SDLK_AC_CLOSE')
	static var K_AC_CLOSE:UInt32;

	@:native('SDLK_AC_EXIT')
	static var K_AC_EXIT:UInt32;

	@:native('SDLK_AC_SAVE')
	static var K_AC_SAVE:UInt32;

	@:native('SDLK_AC_PRINT')
	static var K_AC_PRINT:UInt32;

	@:native('SDLK_AC_PROPERTIES')
	static var K_AC_PROPERTIES:UInt32;

	@:native('SDLK_AC_SEARCH')
	static var K_AC_SEARCH:UInt32;

	@:native('SDLK_AC_HOME')
	static var K_AC_HOME:UInt32;

	@:native('SDLK_AC_BACK')
	static var K_AC_BACK:UInt32;

	@:native('SDLK_AC_FORWARD')
	static var K_AC_FORWARD:UInt32;

	@:native('SDLK_AC_STOP')
	static var K_AC_STOP:UInt32;

	@:native('SDLK_AC_REFRESH')
	static var K_AC_REFRESH:UInt32;

	@:native('SDLK_AC_BOOKMARKS')
	static var K_AC_BOOKMARKS:UInt32;

	@:native('SDLK_SOFTLEFT')
	static var K_SOFTLEFT:UInt32;

	@:native('SDLK_SOFTRIGHT')
	static var K_SOFTRIGHT:UInt32;

	@:native('SDLK_CALL')
	static var K_CALL:UInt32;

	@:native('SDLK_ENDCALL')
	static var K_ENDCALL:UInt32;

	@:native('SDLK_LEFT_TAB')
	static var K_LEFT_TAB:UInt32;

	@:native('SDLK_LEVEL5_SHIFT')
	static var K_LEVEL5_SHIFT:UInt32;

	@:native('SDLK_MULTI_KEY_COMPOSE')
	static var K_MULTI_KEY_COMPOSE:UInt32;

	@:native('SDLK_LMETA')
	static var K_LMETA:UInt32;

	@:native('SDLK_RMETA')
	static var K_RMETA:UInt32;

	@:native('SDLK_LHYPER')
	static var K_LHYPER:UInt32;

	@:native('SDLK_RHYPER')
	static var K_RHYPER:UInt32;

	@:native('SDL_KMOD_NONE')
	static var KMOD_NONE:UInt32;

	@:native('SDL_KMOD_LSHIFT')
	static var KMOD_LSHIFT:UInt32;

	@:native('SDL_KMOD_RSHIFT')
	static var KMOD_RSHIFT:UInt32;

	@:native('SDL_KMOD_LEVEL5')
	static var KMOD_LEVEL5:UInt32;

	@:native('SDL_KMOD_LCTRL')
	static var KMOD_LCTRL:UInt32;

	@:native('SDL_KMOD_RCTRL')
	static var KMOD_RCTRL:UInt32;

	@:native('SDL_KMOD_LALT')
	static var KMOD_LALT:UInt32;

	@:native('SDL_KMOD_RALT')
	static var KMOD_RALT:UInt32;

	@:native('SDL_KMOD_LGUI')
	static var KMOD_LGUI:UInt32;

	@:native('SDL_KMOD_RGUI')
	static var KMOD_RGUI:UInt32;

	@:native('SDL_KMOD_NUM')
	static var KMOD_NUM:UInt32;

	@:native('SDL_KMOD_CAPS')
	static var KMOD_CAPS:UInt32;

	@:native('SDL_KMOD_MODE')
	static var KMOD_MODE:UInt32;

	@:native('SDL_KMOD_SCROLL')
	static var KMOD_SCROLL:UInt32;

	@:native('SDL_KMOD_CTRL')
	static var KMOD_CTRL:UInt32;

	@:native('SDL_KMOD_SHIFT')
	static var KMOD_SHIFT:UInt32;

	@:native('SDL_KMOD_ALT')
	static var KMOD_ALT:UInt32;

	@:native('SDL_KMOD_GUI')
	static var KMOD_GUI:UInt32;

	// SDL_loadso.h
	@:native('SDL_LoadObject')
	static function LoadObject(sofile:ConstCharStar):RawPointer<SDL_SharedObject>;

	@:native('SDL_LoadFunction')
	static function LoadFunction(handle:RawPointer<SDL_SharedObject>, name:ConstCharStar):SDL_FunctionPointer;

	@:native('SDL_UnloadObject')
	static function UnloadObject(handle:RawPointer<SDL_SharedObject>):Void;

	// SDL_locale.h
	@:native('SDL_GetPreferredLocales')
	static function GetPreferredLocales(count:RawPointer<Int>):RawPointer<RawPointer<SDL_Locale>>;

	// SDL_log.h
	@:native('SDL_SetLogPriorities')
	public static function SetLogPriorities(priority:SDL_LogPriority):Void;

	@:native('SDL_SetLogPriority')
	public static function SetLogPriority(category:Int, priority:SDL_LogPriority):Void;

	@:native('SDL_GetLogPriority')
	public static function GetLogPriority(category:Int):SDL_LogPriority;

	@:native('SDL_ResetLogPriorities')
	public static function ResetLogPriorities():Void;

	@:native('SDL_SetLogPriorityPrefix')
	public static function SetLogPriorityPrefix(priority:SDL_LogPriority, prefix:ConstCharStar):Bool;

	@:native('SDL_Log')
	public static function Log(fmt:ConstCharStar, args:Rest<VarArg>):Void;

	@:native('SDL_LogTrace')
	public static function LogTrace(category:Int, fmt:ConstCharStar, args:Rest<VarArg>):Void;

	@:native('SDL_LogVerbose')
	public static function LogVerbose(category:Int, fmt:ConstCharStar, args:Rest<VarArg>):Void;

	@:native('SDL_LogDebug')
	public static function LogDebug(category:Int, fmt:ConstCharStar, args:Rest<VarArg>):Void;

	@:native('SDL_LogInfo')
	public static function LogInfo(category:Int, fmt:ConstCharStar, args:Rest<VarArg>):Void;

	@:native('SDL_LogWarn')
	public static function LogWarn(category:Int, fmt:ConstCharStar, args:Rest<VarArg>):Void;

	@:native('SDL_LogError')
	public static function LogError(category:Int, fmt:ConstCharStar, args:Rest<VarArg>):Void;

	@:native('SDL_LogCritical')
	public static function LogCritical(category:Int, fmt:ConstCharStar, args:Rest<VarArg>):Void;

	@:native('SDL_LogMessage')
	public static function LogMessage(category:Int, priority:SDL_LogPriority, fmt:ConstCharStar, args:Rest<VarArg>):Void;

	@:native('SDL_LogMessageV')
	public static function LogMessageV(category:Int, priority:SDL_LogPriority, fmt:ConstCharStar, ap:VarList):Void;

	@:native('SDL_GetDefaultLogOutputFunction')
	public static function GetDefaultLogOutputFunction():SDL_LogOutputFunction;

	@:native('SDL_GetLogOutputFunction')
	public static function GetLogOutputFunction(callback:RawPointer<SDL_LogOutputFunction>, userdata:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('SDL_SetLogOutputFunction')
	public static function SetLogOutputFunction(callback:SDL_LogOutputFunction, userdata:RawPointer<cpp.Void>):Void;

	// SDL_messagebox.h
	@:native('SDL_MESSAGEBOX_ERROR')
	static var MESSAGEBOX_ERROR:UInt32;

	@:native('SDL_MESSAGEBOX_WARNING')
	static var MESSAGEBOX_WARNING:UInt32;

	@:native('SDL_MESSAGEBOX_INFORMATION')
	static var MESSAGEBOX_INFORMATION:UInt32;

	@:native('SDL_MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT')
	static var MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT:UInt32;

	@:native('SDL_MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT')
	static var MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT:UInt32;

	@:native('SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT')
	static var MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT:UInt32;

	@:native('SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT')
	static var MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT:UInt32;

	@:native('SDL_ShowMessageBox')
	public static function ShowMessageBox(messageboxdata:RawConstPointer<SDL_MessageBoxData>, buttonid:RawPointer<Int>):Bool;

	@:native('SDL_ShowSimpleMessageBox')
	public static function ShowSimpleMessageBox(flags:SDL_MessageBoxFlags, title:ConstCharStar, message:ConstCharStar, window:RawPointer<SDL_Window>):Bool;

	// SDL_misc.h
	@:native('SDL_OpenURL')
	public static function OpenURL(url:ConstCharStar):Bool;

	// SDL_mouse.h
	@:native('SDL_BUTTON_LEFT')
	static var BUTTON_LEFT:UInt32;

	@:native('SDL_BUTTON_MIDDLE')
	static var BUTTON_MIDDLE:UInt32;

	@:native('SDL_BUTTON_RIGHT')
	static var BUTTON_RIGHT:UInt32;

	@:native('SDL_BUTTON_X1')
	static var BUTTON_X1:UInt32;

	@:native('SDL_BUTTON_X2')
	static var BUTTON_X2:UInt32;

	@:native('SDL_BUTTON_LMASK')
	static var BUTTON_LMASK:UInt32;

	@:native('SDL_BUTTON_MMASK')
	static var BUTTON_MMASK:UInt32;

	@:native('SDL_BUTTON_RMASK')
	static var BUTTON_RMASK:UInt32;

	@:native('SDL_BUTTON_X1MASK')
	static var BUTTON_X1MASK:UInt32;

	@:native('SDL_BUTTON_X2MASK')
	static var BUTTON_X2MASK:UInt32;

	@:native('SDL_HasMouse')
	public static function HasMouse():Bool;

	@:native('SDL_GetMice')
	public static function GetMice(count:RawPointer<Int>):RawPointer<SDL_MouseID>;

	@:native('SDL_GetMouseNameForID')
	public static function GetMouseNameForID(instance_id:SDL_MouseID):ConstCharStar;

	@:native('SDL_GetMouseFocus')
	public static function GetMouseFocus():RawPointer<SDL_Window>;

	@:native('SDL_GetMouseState')
	public static function GetMouseState(x:RawPointer<Float32>, y:RawPointer<Float32>):SDL_MouseButtonFlags;

	@:native('SDL_GetGlobalMouseState')
	public static function GetGlobalMouseState(x:RawPointer<Float32>, y:RawPointer<Float32>):SDL_MouseButtonFlags;

	@:native('SDL_GetRelativeMouseState')
	public static function GetRelativeMouseState(x:RawPointer<Float32>, y:RawPointer<Float32>):SDL_MouseButtonFlags;

	@:native('SDL_WarpMouseInWindow')
	public static function WarpMouseInWindow(window:RawPointer<SDL_Window>, x:Float32, y:Float32):Void;

	@:native('SDL_WarpMouseGlobal')
	public static function WarpMouseGlobal(x:Float32, y:Float32):Bool;

	@:native('SDL_SetWindowRelativeMouseMode')
	public static function SetWindowRelativeMouseMode(window:RawPointer<SDL_Window>, enabled:Bool):Bool;

	@:native('SDL_GetWindowRelativeMouseMode')
	public static function GetWindowRelativeMouseMode(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_CaptureMouse')
	public static function CaptureMouse(enabled:Bool):Bool;

	@:native('SDL_CreateCursor')
	public static function CreateCursor(data:RawConstPointer<UInt8>, mask:RawConstPointer<UInt8>, w:Int, h:Int, hot_x:Int, hot_y:Int):RawPointer<SDL_Cursor>;

	@:native('SDL_CreateColorCursor')
	public static function CreateColorCursor(surface:RawPointer<SDL_Surface>, hot_x:Int, hot_y:Int):RawPointer<SDL_Cursor>;

	@:native('SDL_CreateAnimatedCursor')
	public static function CreateAnimatedCursor(frames:RawPointer<SDL_CursorFrameInfo>, frame_count:Int, hot_x:Int, hot_y:Int):RawPointer<SDL_Cursor>;

	@:native('SDL_CreateSystemCursor')
	public static function CreateSystemCursor(id:SDL_SystemCursor):RawPointer<SDL_Cursor>;

	@:native('SDL_SetCursor')
	public static function SetCursor(cursor:RawPointer<SDL_Cursor>):Bool;

	@:native('SDL_GetCursor')
	public static function GetCursor():RawPointer<SDL_Cursor>;

	@:native('SDL_GetDefaultCursor')
	public static function GetDefaultCursor():RawPointer<SDL_Cursor>;

	@:native('SDL_DestroyCursor')
	public static function DestroyCursor(cursor:RawPointer<SDL_Cursor>):Void;

	@:native('SDL_ShowCursor')
	public static function ShowCursor():Bool;

	@:native('SDL_HideCursor')
	public static function HideCursor():Bool;

	@:native('SDL_CursorVisible')
	public static function CursorVisible():Bool;

	// SDL_mutex.h
	@:native('SDL_CreateMutex')
	public static function CreateMutex():RawPointer<SDL_Mutex>;

	@:native('SDL_LockMutex')
	public static function LockMutex(mutex:RawPointer<SDL_Mutex>):Void;

	@:native('SDL_TryLockMutex')
	public static function TryLockMutex(mutex:RawPointer<SDL_Mutex>):Bool;

	@:native('SDL_UnlockMutex')
	public static function UnlockMutex(mutex:RawPointer<SDL_Mutex>):Void;

	@:native('SDL_DestroyMutex')
	public static function DestroyMutex(mutex:RawPointer<SDL_Mutex>):Void;

	@:native('SDL_CreateRWLock')
	public static function CreateRWLock():RawPointer<SDL_RWLock>;

	@:native('SDL_LockRWLockForReading')
	public static function LockRWLockForReading(rwlock:RawPointer<SDL_RWLock>):Void;

	@:native('SDL_LockRWLockForWriting')
	public static function LockRWLockForWriting(rwlock:RawPointer<SDL_RWLock>):Void;

	@:native('SDL_TryLockRWLockForReading')
	public static function TryLockRWLockForReading(rwlock:RawPointer<SDL_RWLock>):Bool;

	@:native('SDL_TryLockRWLockForWriting')
	public static function TryLockRWLockForWriting(rwlock:RawPointer<SDL_RWLock>):Bool;

	@:native('SDL_UnlockRWLock')
	public static function UnlockRWLock(rwlock:RawPointer<SDL_RWLock>):Void;

	@:native('SDL_DestroyRWLock')
	public static function DestroyRWLock(rwlock:RawPointer<SDL_RWLock>):Void;

	@:native('SDL_CreateSemaphore')
	public static function CreateSemaphore(initial_value:UInt32):RawPointer<SDL_Semaphore>;

	@:native('SDL_DestroySemaphore')
	public static function DestroySemaphore(sem:RawPointer<SDL_Semaphore>):Void;

	@:native('SDL_WaitSemaphore')
	public static function WaitSemaphore(sem:RawPointer<SDL_Semaphore>):Void;

	@:native('SDL_TryWaitSemaphore')
	public static function TryWaitSemaphore(sem:RawPointer<SDL_Semaphore>):Bool;

	@:native('SDL_WaitSemaphoreTimeout')
	public static function WaitSemaphoreTimeout(sem:RawPointer<SDL_Semaphore>, timeoutMS:Int):Bool;

	@:native('SDL_SignalSemaphore')
	public static function SignalSemaphore(sem:RawPointer<SDL_Semaphore>):Void;

	@:native('SDL_GetSemaphoreValue')
	public static function GetSemaphoreValue(sem:RawPointer<SDL_Semaphore>):UInt32;

	@:native('SDL_CreateCondition')
	public static function CreateCondition():RawPointer<SDL_Condition>;

	@:native('SDL_DestroyCondition')
	public static function DestroyCondition(cond:RawPointer<SDL_Condition>):Void;

	@:native('SDL_SignalCondition')
	public static function SignalCondition(cond:RawPointer<SDL_Condition>):Void;

	@:native('SDL_BroadcastCondition')
	public static function BroadcastCondition(cond:RawPointer<SDL_Condition>):Void;

	@:native('SDL_WaitCondition')
	public static function WaitCondition(cond:RawPointer<SDL_Condition>, mutex:RawPointer<SDL_Mutex>):Void;

	@:native('SDL_WaitConditionTimeout')
	public static function WaitConditionTimeout(cond:RawPointer<SDL_Condition>, mutex:RawPointer<SDL_Mutex>, timeoutMS:Int):Bool;

	@:native('SDL_ShouldInit')
	public static function ShouldInit(state:RawPointer<SDL_InitState>):Bool;

	@:native('SDL_ShouldQuit')
	public static function ShouldQuit(state:RawPointer<SDL_InitState>):Bool;

	@:native('SDL_SetInitialized')
	public static function SetInitialized(state:RawPointer<SDL_InitState>, initialized:Bool):Void;

	// SDL_pen.h
	@:native('SDL_PEN_INPUT_DOWN')
	static var PEN_INPUT_DOWN:UInt32;

	@:native('SDL_PEN_INPUT_BUTTON_1')
	static var PEN_INPUT_BUTTON_1:UInt32;

	@:native('SDL_PEN_INPUT_BUTTON_2')
	static var PEN_INPUT_BUTTON_2:UInt32;

	@:native('SDL_PEN_INPUT_BUTTON_3')
	static var PEN_INPUT_BUTTON_3:UInt32;

	@:native('SDL_PEN_INPUT_BUTTON_4')
	static var PEN_INPUT_BUTTON_4:UInt32;

	@:native('SDL_PEN_INPUT_BUTTON_5')
	static var PEN_INPUT_BUTTON_5:UInt32;

	@:native('SDL_PEN_INPUT_ERASER_TIP')
	static var PEN_INPUT_ERASER_TIP:UInt32;

	@:native('SDL_GetPenDeviceType')
	static function GetPenDeviceType(instance_id:SDL_PenID):SDL_PenDeviceType;

	// SDL_pixels.h
	@:native('SDL_ALPHA_OPAQUE')
	static var ALPHA_OPAQUE:UInt8;

	@:native('SDL_ALPHA_OPAQUE_FLOAT')
	static var ALPHA_OPAQUE_FLOAT:Float32;

	@:native('SDL_ALPHA_TRANSPARENT')
	static var ALPHA_TRANSPARENT:UInt8;

	@:native('SDL_ALPHA_TRANSPARENT_FLOAT')
	static var ALPHA_TRANSPARENT_FLOAT:Float32;

	@:native('SDL_GetPixelFormatName')
	static function GetPixelFormatName(format:SDL_PixelFormat):ConstCharStar;

	@:native('SDL_GetMasksForPixelFormat')
	static function GetMasksForPixelFormat(format:SDL_PixelFormat, bpp:RawPointer<Int>, Rmask:RawPointer<UInt32>, Gmask:RawPointer<UInt32>, Bmask:RawPointer<UInt32>,
		Amask:RawPointer<UInt32>):Bool;

	@:native('SDL_GetPixelFormatForMasks')
	static function GetPixelFormatForMasks(bpp:Int, Rmask:UInt32, Gmask:UInt32, Bmask:UInt32, Amask:UInt32):SDL_PixelFormat;

	@:native('SDL_GetPixelFormatDetails')
	static function GetPixelFormatDetails(format:SDL_PixelFormat):RawPointer<SDL_PixelFormatDetails>;

	@:native('SDL_CreatePalette')
	static function CreatePalette(ncolors:Int):RawPointer<SDL_Palette>;

	@:native('SDL_SetPaletteColors')
	static function SetPaletteColors(palette:RawPointer<SDL_Palette>, colors:RawConstPointer<SDL_Color>, firstcolor:Int, ncolors:Int):Bool;

	@:native('SDL_DestroyPalette')
	static function DestroyPalette(palette:RawPointer<SDL_Palette>):Void;

	@:native('SDL_MapRGB')
	static function MapRGB(format:RawConstPointer<SDL_PixelFormatDetails>, palette:RawConstPointer<SDL_Palette>, r:UInt8, g:UInt8, b:UInt8):UInt32;

	@:native('SDL_MapRGBA')
	static function MapRGBA(format:RawConstPointer<SDL_PixelFormatDetails>, palette:RawConstPointer<SDL_Palette>, r:UInt8, g:UInt8, b:UInt8, a:UInt8):UInt32;

	@:native('SDL_GetRGB')
	static function GetRGB(pixel:UInt32, format:RawConstPointer<SDL_PixelFormatDetails>, palette:RawConstPointer<SDL_Palette>, r:RawPointer<UInt8>, g:RawPointer<UInt8>,
		b:RawPointer<UInt8>):Void;

	@:native('SDL_GetRGBA')
	static function GetRGBA(pixel:UInt32, format:RawConstPointer<SDL_PixelFormatDetails>, palette:RawConstPointer<SDL_Palette>, r:RawPointer<UInt8>,
		g:RawPointer<UInt8>, b:RawPointer<UInt8>, a:RawPointer<UInt8>):Void;

	// SDL_platform.h
	@:native('SDL_GetPlatform')
	static function GetPlatform():ConstCharStar;

	// SDL_power.h
	@:native('SDL_GetPowerInfo')
	static function GetPowerInfo(seconds:RawPointer<Int>, percent:RawPointer<Int>):SDL_PowerState;

	// SDL_properties.h
	@:native('SDL_PROP_NAME_STRING')
	static var PROP_NAME_STRING:ConstCharStar;

	@:native('SDL_GetGlobalProperties')
	static function GetGlobalProperties():SDL_PropertiesID;

	@:native('SDL_CreateProperties')
	static function CreateProperties():SDL_PropertiesID;

	@:native('SDL_CopyProperties')
	static function CopyProperties(src:SDL_PropertiesID, dst:SDL_PropertiesID):Bool;

	@:native('SDL_LockProperties')
	static function LockProperties(props:SDL_PropertiesID):Bool;

	@:native('SDL_UnlockProperties')
	static function UnlockProperties(props:SDL_PropertiesID):Void;

	@:native('SDL_SetPointerPropertyWithCleanup')
	static function SetPointerPropertyWithCleanup(props:SDL_PropertiesID, name:ConstCharStar, value:RawPointer<cpp.Void>, cleanup:SDL_CleanupPropertyCallback,
		userdata:RawPointer<cpp.Void>):Bool;

	@:native('SDL_SetPointerProperty')
	static function SetPointerProperty(props:SDL_PropertiesID, name:ConstCharStar, value:RawPointer<cpp.Void>):Bool;

	@:native('SDL_SetStringProperty')
	static function SetStringProperty(props:SDL_PropertiesID, name:ConstCharStar, value:ConstCharStar):Bool;

	@:native('SDL_SetNumberProperty')
	static function SetNumberProperty(props:SDL_PropertiesID, name:ConstCharStar, value:Int64):Bool;

	@:native('SDL_SetFloatProperty')
	static function SetFloatProperty(props:SDL_PropertiesID, name:ConstCharStar, value:Float32):Bool;

	@:native('SDL_SetBooleanProperty')
	static function SetBooleanProperty(props:SDL_PropertiesID, name:ConstCharStar, value:Bool):Bool;

	@:native('SDL_HasProperty')
	static function HasProperty(props:SDL_PropertiesID, name:ConstCharStar):Bool;

	@:native('SDL_GetPropertyType')
	static function GetPropertyType(props:SDL_PropertiesID, name:ConstCharStar):SDL_PropertyType;

	@:native('SDL_GetPointerProperty')
	static function GetPointerProperty(props:SDL_PropertiesID, name:ConstCharStar, default_value:RawPointer<cpp.Void>):RawPointer<cpp.Void>;

	@:native('SDL_GetStringProperty')
	static function GetStringProperty(props:SDL_PropertiesID, name:ConstCharStar, default_value:ConstCharStar):ConstCharStar;

	@:native('SDL_GetNumberProperty')
	static function GetNumberProperty(props:SDL_PropertiesID, name:ConstCharStar, default_value:Int64):Int64;

	@:native('SDL_GetFloatProperty')
	static function GetFloatProperty(props:SDL_PropertiesID, name:ConstCharStar, default_value:Float32):Float32;

	@:native('SDL_GetBooleanProperty')
	static function GetBooleanProperty(props:SDL_PropertiesID, name:ConstCharStar, default_value:Bool):Bool;

	@:native('SDL_ClearProperty')
	static function ClearProperty(props:SDL_PropertiesID, name:ConstCharStar):Bool;

	@:native('SDL_EnumerateProperties')
	static function EnumerateProperties(props:SDL_PropertiesID, callback:SDL_EnumeratePropertiesCallback, userdata:RawPointer<cpp.Void>):Bool;

	@:native('SDL_DestroyProperties')
	static function DestroyProperties(props:SDL_PropertiesID):Void;

	// SDL_rect.h
	@:native('SDL_RectToFRect')
	static function RectToFRect(rect:RawConstPointer<SDL_Rect>, frect:RawPointer<SDL_FRect>):Void;

	@:native('SDL_PointInRect')
	static function PointInRect(p:RawConstPointer<SDL_Point>, r:RawConstPointer<SDL_Rect>):Bool;

	@:native('SDL_RectEmpty')
	static function RectEmpty(r:RawConstPointer<SDL_Rect>):Bool;

	@:native('SDL_RectsEqual')
	static function RectsEqual(a:RawConstPointer<SDL_Rect>, b:RawConstPointer<SDL_Rect>):Bool;

	@:native('SDL_HasRectIntersection')
	static function HasRectIntersection(A:RawConstPointer<SDL_Rect>, B:RawConstPointer<SDL_Rect>):Bool;

	@:native('SDL_GetRectIntersection')
	static function GetRectIntersection(A:RawConstPointer<SDL_Rect>, B:RawConstPointer<SDL_Rect>, result:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_GetRectUnion')
	static function GetRectUnion(A:RawConstPointer<SDL_Rect>, B:RawConstPointer<SDL_Rect>, result:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_GetRectEnclosingPoints')
	static function GetRectEnclosingPoints(points:RawConstPointer<SDL_Point>, count:Int, clip:RawConstPointer<SDL_Rect>, result:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_GetRectAndLineIntersection')
	static function GetRectAndLineIntersection(rect:RawConstPointer<SDL_Rect>, X1:RawPointer<Int>, Y1:RawPointer<Int>, X2:RawPointer<Int>, Y2:RawPointer<Int>):Bool;

	@:native('SDL_PointInRectFloat')
	static function PointInRectFloat(p:RawConstPointer<SDL_FPoint>, r:RawConstPointer<SDL_FRect>):Bool;

	@:native('SDL_RectEmptyFloat')
	static function RectEmptyFloat(r:RawConstPointer<SDL_FRect>):Bool;

	@:native('SDL_RectsEqualEpsilon')
	static function RectsEqualEpsilon(a:RawConstPointer<SDL_FRect>, b:RawConstPointer<SDL_FRect>, epsilon:Float32):Bool;

	@:native('SDL_RectsEqualFloat')
	static function RectsEqualFloat(a:RawConstPointer<SDL_FRect>, b:RawConstPointer<SDL_FRect>):Bool;

	@:native('SDL_HasRectIntersectionFloat')
	static function HasRectIntersectionFloat(A:RawConstPointer<SDL_FRect>, B:RawConstPointer<SDL_FRect>):Bool;

	@:native('SDL_GetRectIntersectionFloat')
	static function GetRectIntersectionFloat(A:RawConstPointer<SDL_FRect>, B:RawConstPointer<SDL_FRect>, result:RawPointer<SDL_FRect>):Bool;

	@:native('SDL_GetRectUnionFloat')
	static function GetRectUnionFloat(A:RawConstPointer<SDL_FRect>, B:RawConstPointer<SDL_FRect>, result:RawPointer<SDL_FRect>):Bool;

	@:native('SDL_GetRectEnclosingPointsFloat')
	static function GetRectEnclosingPointsFloat(points:RawConstPointer<SDL_FPoint>, count:Int, clip:RawConstPointer<SDL_FRect>,
		result:RawPointer<SDL_FRect>):Bool;

	@:native('SDL_GetRectAndLineIntersectionFloat')
	static function GetRectAndLineIntersectionFloat(rect:RawConstPointer<SDL_FRect>, X1:RawPointer<Float32>, Y1:RawPointer<Float32>, X2:RawPointer<Float32>,
		Y2:RawPointer<Float32>):Bool;

	// SDL_sensor.h
	@:native('SDL_GetSensors')
	static function GetSensors(count:RawPointer<Int>):RawPointer<SDL_SensorID>;

	@:native('SDL_GetSensorNameForID')
	static function GetSensorNameForID(instance_id:SDL_SensorID):ConstCharStar;

	@:native('SDL_GetSensorTypeForID')
	static function GetSensorTypeForID(instance_id:SDL_SensorID):SDL_SensorType;

	@:native('SDL_GetSensorNonPortableTypeForID')
	static function GetSensorNonPortableTypeForID(instance_id:SDL_SensorID):Int;

	@:native('SDL_OpenSensor')
	static function OpenSensor(instance_id:SDL_SensorID):RawPointer<SDL_Sensor>;

	@:native('SDL_GetSensorFromID')
	static function GetSensorFromID(instance_id:SDL_SensorID):RawPointer<SDL_Sensor>;

	@:native('SDL_GetSensorProperties')
	static function GetSensorProperties(sensor:RawPointer<SDL_Sensor>):SDL_PropertiesID;

	@:native('SDL_GetSensorName')
	static function GetSensorName(sensor:RawPointer<SDL_Sensor>):ConstCharStar;

	@:native('SDL_GetSensorType')
	static function GetSensorType(sensor:RawPointer<SDL_Sensor>):SDL_SensorType;

	@:native('SDL_GetSensorNonPortableType')
	static function GetSensorNonPortableType(sensor:RawPointer<SDL_Sensor>):Int;

	@:native('SDL_GetSensorID')
	static function GetSensorID(sensor:RawPointer<SDL_Sensor>):SDL_SensorID;

	@:native('SDL_GetSensorData')
	static function GetSensorData(sensor:RawPointer<SDL_Sensor>, data:RawPointer<Float32>, num_values:Int):Bool;

	@:native('SDL_CloseSensor')
	static function CloseSensor(sensor:RawPointer<SDL_Sensor>):Void;

	@:native('SDL_UpdateSensors')
	static function UpdateSensors():Void;

	// SDL_stdinc.h
	@:native('SDL_malloc')
	static function malloc(size:SizeT):RawPointer<cpp.Void>;

	@:native('SDL_calloc')
	static function calloc(nmemb:SizeT, size:SizeT):RawPointer<cpp.Void>;

	@:native('SDL_realloc')
	static function realloc(mem:RawPointer<cpp.Void>, size:SizeT):RawPointer<cpp.Void>;

	@:native('SDL_free')
	static function free(mem:RawPointer<cpp.Void>):Void;

	// SDL_storage.h
	@:native('SDL_OpenTitleStorage')
	static function OpenTitleStorage(override_path:ConstCharStar, props:SDL_PropertiesID):RawPointer<SDL_Storage>;

	@:native('SDL_OpenUserStorage')
	static function OpenUserStorage(org:ConstCharStar, app:ConstCharStar, props:SDL_PropertiesID):RawPointer<SDL_Storage>;

	@:native('SDL_OpenFileStorage')
	static function OpenFileStorage(path:ConstCharStar):RawPointer<SDL_Storage>;

	@:native('SDL_OpenStorage')
	static function OpenStorage(iface:RawConstPointer<SDL_StorageInterface>, userdata:RawPointer<cpp.Void>):RawPointer<SDL_Storage>;

	@:native('SDL_CloseStorage')
	static function CloseStorage(storage:RawPointer<SDL_Storage>):Bool;

	@:native('SDL_StorageReady')
	static function StorageReady(storage:RawPointer<SDL_Storage>):Bool;

	@:native('SDL_GetStorageFileSize')
	static function GetStorageFileSize(storage:RawPointer<SDL_Storage>, path:ConstCharStar, length:RawPointer<UInt64>):Bool;

	@:native('SDL_ReadStorageFile')
	static function ReadStorageFile(storage:RawPointer<SDL_Storage>, path:ConstCharStar, destination:RawPointer<cpp.Void>, length:UInt64):Bool;

	@:native('SDL_WriteStorageFile')
	static function WriteStorageFile(storage:RawPointer<SDL_Storage>, path:ConstCharStar, source:RawConstPointer<cpp.Void>, length:UInt64):Bool;

	@:native('SDL_CreateStorageDirectory')
	static function CreateStorageDirectory(storage:RawPointer<SDL_Storage>, path:ConstCharStar):Bool;

	@:native('SDL_EnumerateStorageDirectory')
	static function EnumerateStorageDirectory(storage:RawPointer<SDL_Storage>, path:ConstCharStar, callback:SDL_EnumerateDirectoryCallback,
		userdata:RawPointer<cpp.Void>):Bool;

	@:native('SDL_RemoveStoragePath')
	static function RemoveStoragePath(storage:RawPointer<SDL_Storage>, path:ConstCharStar):Bool;

	@:native('SDL_RenameStoragePath')
	static function RenameStoragePath(storage:RawPointer<SDL_Storage>, oldpath:ConstCharStar, newpath:ConstCharStar):Bool;

	@:native('SDL_CopyStorageFile')
	static function CopyStorageFile(storage:RawPointer<SDL_Storage>, oldpath:ConstCharStar, newpath:ConstCharStar):Bool;

	@:native('SDL_GetStoragePathInfo')
	static function GetStoragePathInfo(storage:RawPointer<SDL_Storage>, path:ConstCharStar, info:RawPointer<SDL_PathInfo>):Bool;

	@:native('SDL_GetStorageSpaceRemaining')
	static function GetStorageSpaceRemaining(storage:RawPointer<SDL_Storage>):UInt64;

	@:native('SDL_GlobStorageDirectory')
	static function GlobStorageDirectory(storage:RawPointer<SDL_Storage>, path:ConstCharStar, pattern:ConstCharStar, flags:SDL_GlobFlags,
		count:RawPointer<Int>):RawPointer<CastCharStar>;

	// SDL_surface.h
	@:native('SDL_SURFACE_PREALLOCATED')
	static var SURFACE_PREALLOCATED:UInt32;

	@:native('SDL_SURFACE_LOCK_NEEDED')
	static var SURFACE_LOCK_NEEDED:UInt32;

	@:native('SDL_SURFACE_LOCKED')
	static var SURFACE_LOCKED:UInt32;

	@:native('SDL_SURFACE_SIMD_ALIGNED')
	static var SURFACE_SIMD_ALIGNED:UInt32;

	@:native('SDL_CreateSurface')
	static function CreateSurface(width:Int, height:Int, format:SDL_PixelFormat):RawPointer<SDL_Surface>;

	@:native('SDL_CreateSurfaceFrom')
	static function CreateSurfaceFrom(width:Int, height:Int, format:SDL_PixelFormat, pixels:RawPointer<cpp.Void>, pitch:Int):RawPointer<SDL_Surface>;

	@:native('SDL_DestroySurface')
	static function DestroySurface(surface:RawPointer<SDL_Surface>):Void;

	@:native('SDL_GetSurfaceProperties')
	static function GetSurfaceProperties(surface:RawPointer<SDL_Surface>):SDL_PropertiesID;

	@:native('SDL_PROP_SURFACE_SDR_WHITE_POINT_FLOAT')
	static var PROP_SURFACE_SDR_WHITE_POINT_FLOAT:ConstCharStar;

	@:native('SDL_PROP_SURFACE_HDR_HEADROOM_FLOAT')
	static var PROP_SURFACE_HDR_HEADROOM_FLOAT:ConstCharStar;

	@:native('SDL_PROP_SURFACE_TONEMAP_OPERATOR_STRING')
	static var PROP_SURFACE_TONEMAP_OPERATOR_STRING:ConstCharStar;

	@:native('SDL_PROP_SURFACE_HOTSPOT_X_NUMBER')
	static var PROP_SURFACE_HOTSPOT_X_NUMBER:ConstCharStar;

	@:native('SDL_PROP_SURFACE_HOTSPOT_Y_NUMBER')
	static var PROP_SURFACE_HOTSPOT_Y_NUMBER:ConstCharStar;

	@:native('SDL_SetSurfaceColorspace')
	static function SetSurfaceColorspace(surface:RawPointer<SDL_Surface>, colorspace:SDL_Colorspace):Bool;

	@:native('SDL_GetSurfaceColorspace')
	static function GetSurfaceColorspace(surface:RawPointer<SDL_Surface>):SDL_Colorspace;

	@:native('SDL_CreateSurfacePalette')
	static function CreateSurfacePalette(surface:RawPointer<SDL_Surface>):RawPointer<SDL_Palette>;

	@:native('SDL_SetSurfacePalette')
	static function SetSurfacePalette(surface:RawPointer<SDL_Surface>, palette:RawPointer<SDL_Palette>):Bool;

	@:native('SDL_GetSurfacePalette')
	static function GetSurfacePalette(surface:RawPointer<SDL_Surface>):RawPointer<SDL_Palette>;

	@:native('SDL_AddSurfaceAlternateImage')
	static function AddSurfaceAlternateImage(surface:RawPointer<SDL_Surface>, image:RawPointer<SDL_Surface>):Bool;

	@:native('SDL_SurfaceHasAlternateImages')
	static function SurfaceHasAlternateImages(surface:RawPointer<SDL_Surface>):Bool;

	@:native('SDL_GetSurfaceImages')
	static function GetSurfaceImages(surface:RawPointer<SDL_Surface>, count:RawPointer<Int>):RawPointer<RawPointer<SDL_Surface>>;

	@:native('SDL_RemoveSurfaceAlternateImages')
	static function RemoveSurfaceAlternateImages(surface:RawPointer<SDL_Surface>):Void;

	@:native('SDL_LockSurface')
	static function LockSurface(surface:RawPointer<SDL_Surface>):Bool;

	@:native('SDL_UnlockSurface')
	static function UnlockSurface(surface:RawPointer<SDL_Surface>):Void;

	@:native('SDL_LoadSurface_IO')
	static function LoadSurface_IO(src:RawPointer<SDL_IOStream>, closeio:Bool):RawPointer<SDL_Surface>;

	@:native('SDL_LoadSurface')
	static function LoadSurface(file:ConstCharStar):RawPointer<SDL_Surface>;

	@:native('SDL_LoadBMP_IO')
	static function LoadBMP_IO(src:RawPointer<SDL_IOStream>, closeio:Bool):RawPointer<SDL_Surface>;

	@:native('SDL_LoadBMP')
	static function LoadBMP(file:ConstCharStar):RawPointer<SDL_Surface>;

	@:native('SDL_SaveBMP_IO')
	static function SaveBMP_IO(surface:RawPointer<SDL_Surface>, dst:RawPointer<SDL_IOStream>, closeio:Bool):Bool;

	@:native('SDL_SaveBMP')
	static function SaveBMP(surface:RawPointer<SDL_Surface>, file:ConstCharStar):Bool;

	@:native('SDL_LoadPNG_IO')
	static function LoadPNG_IO(src:RawPointer<SDL_IOStream>, closeio:Bool):RawPointer<SDL_Surface>;

	@:native('SDL_LoadPNG')
	static function LoadPNG(file:ConstCharStar):RawPointer<SDL_Surface>;

	@:native('SDL_SavePNG_IO')
	static function SavePNG_IO(surface:RawPointer<SDL_Surface>, dst:RawPointer<SDL_IOStream>, closeio:Bool):Bool;

	@:native('SDL_SavePNG')
	static function SavePNG(surface:RawPointer<SDL_Surface>, file:ConstCharStar):Bool;

	@:native('SDL_SetSurfaceRLE')
	static function SetSurfaceRLE(surface:RawPointer<SDL_Surface>, enabled:Bool):Bool;

	@:native('SDL_SurfaceHasRLE')
	static function SurfaceHasRLE(surface:RawPointer<SDL_Surface>):Bool;

	@:native('SDL_SetSurfaceColorKey')
	static function SetSurfaceColorKey(surface:RawPointer<SDL_Surface>, enabled:Bool, key:UInt32):Bool;

	@:native('SDL_SurfaceHasColorKey')
	static function SurfaceHasColorKey(surface:RawPointer<SDL_Surface>):Bool;

	@:native('SDL_GetSurfaceColorKey')
	static function GetSurfaceColorKey(surface:RawPointer<SDL_Surface>, key:RawPointer<UInt32>):Bool;

	@:native('SDL_SetSurfaceColorMod')
	static function SetSurfaceColorMod(surface:RawPointer<SDL_Surface>, r:UInt8, g:UInt8, b:UInt8):Bool;

	@:native('SDL_GetSurfaceColorMod')
	static function GetSurfaceColorMod(surface:RawPointer<SDL_Surface>, r:RawPointer<UInt8>, g:RawPointer<UInt8>, b:RawPointer<UInt8>):Bool;

	@:native('SDL_SetSurfaceAlphaMod')
	static function SetSurfaceAlphaMod(surface:RawPointer<SDL_Surface>, alpha:UInt8):Bool;

	@:native('SDL_GetSurfaceAlphaMod')
	static function GetSurfaceAlphaMod(surface:RawPointer<SDL_Surface>, alpha:RawPointer<UInt8>):Bool;

	@:native('SDL_SetSurfaceBlendMode')
	static function SetSurfaceBlendMode(surface:RawPointer<SDL_Surface>, blendMode:SDL_BlendMode):Bool;

	@:native('SDL_GetSurfaceBlendMode')
	static function GetSurfaceBlendMode(surface:RawPointer<SDL_Surface>, blendMode:RawPointer<SDL_BlendMode>):Bool;

	@:native('SDL_SetSurfaceClipRect')
	static function SetSurfaceClipRect(surface:RawPointer<SDL_Surface>, rect:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_GetSurfaceClipRect')
	static function GetSurfaceClipRect(surface:RawPointer<SDL_Surface>, rect:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_FlipSurface')
	static function FlipSurface(surface:RawPointer<SDL_Surface>, flip:SDL_FlipMode):Bool;

	@:native('SDL_RotateSurface')
	static function RotateSurface(surface:RawPointer<SDL_Surface>, angle:Float32):Bool;

	@:native('SDL_DuplicateSurface')
	static function DuplicateSurface(surface:RawPointer<SDL_Surface>):RawPointer<SDL_Surface>;

	@:native('SDL_ScaleSurface')
	static function ScaleSurface(surface:RawPointer<SDL_Surface>, width:Int, height:Int, scaleMode:SDL_ScaleMode):RawPointer<SDL_Surface>;

	@:native('SDL_ConvertSurface')
	static function ConvertSurface(surface:RawPointer<SDL_Surface>, format:SDL_PixelFormat):RawPointer<SDL_Surface>;

	@:native('SDL_ConvertSurfaceAndColorspace')
	static function ConvertSurfaceAndColorspace(surface:RawPointer<SDL_Surface>, format:SDL_PixelFormat, palette:RawPointer<SDL_Palette>,
		colorspace:SDL_Colorspace, props:SDL_PropertiesID):RawPointer<SDL_Surface>;

	@:native('SDL_ConvertPixels')
	static function ConvertPixels(width:Int, height:Int, src_format:SDL_PixelFormat, src:RawPointer<cpp.Void>, src_pitch:Int, dst_format:SDL_PixelFormat,
		dst:RawPointer<cpp.Void>, dst_pitch:Int):Bool;

	@:native('SDL_ConvertPixelsAndColorspace')
	static function ConvertPixelsAndColorspace(width:Int, height:Int, src_format:SDL_PixelFormat, src_colorspace:SDL_Colorspace,
		src_properties:SDL_PropertiesID, src:RawPointer<cpp.Void>, src_pitch:Int, dst_format:SDL_PixelFormat, dst_colorspace:SDL_Colorspace,
		dst_properties:SDL_PropertiesID, dst:RawPointer<cpp.Void>, dst_pitch:Int):Bool;

	@:native('SDL_PremultiplyAlpha')
	static function PremultiplyAlpha(width:Int, height:Int, src_format:SDL_PixelFormat, src:RawPointer<cpp.Void>, src_pitch:Int, dst_format:SDL_PixelFormat,
		dst:RawPointer<cpp.Void>, dst_pitch:Int, linear:Bool):Bool;

	@:native('SDL_PremultiplySurfaceAlpha')
	static function PremultiplySurfaceAlpha(surface:RawPointer<SDL_Surface>, linear:Bool):Bool;

	@:native('SDL_ClearSurface')
	static function ClearSurface(surface:RawPointer<SDL_Surface>, r:Float32, g:Float32, b:Float32, a:Float32):Bool;

	@:native('SDL_FillSurfaceRect')
	static function FillSurfaceRect(dst:RawPointer<SDL_Surface>, rect:RawPointer<SDL_Rect>, color:UInt32):Bool;

	@:native('SDL_FillSurfaceRects')
	static function FillSurfaceRects(dst:RawPointer<SDL_Surface>, rects:RawPointer<SDL_Rect>, count:Int, color:UInt32):Bool;

	@:native('SDL_BlitSurface')
	static function BlitSurface(src:RawPointer<SDL_Surface>, srcrect:RawPointer<SDL_Rect>, dst:RawPointer<SDL_Surface>, dstrect:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_BlitSurfaceUnchecked')
	static function BlitSurfaceUnchecked(src:RawPointer<SDL_Surface>, srcrect:RawPointer<SDL_Rect>, dst:RawPointer<SDL_Surface>,
		dstrect:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_BlitSurfaceScaled')
	static function BlitSurfaceScaled(src:RawPointer<SDL_Surface>, srcrect:RawPointer<SDL_Rect>, dst:RawPointer<SDL_Surface>, dstrect:RawPointer<SDL_Rect>,
		scaleMode:SDL_ScaleMode):Bool;

	@:native('SDL_BlitSurfaceUncheckedScaled')
	static function BlitSurfaceUncheckedScaled(src:RawPointer<SDL_Surface>, srcrect:RawPointer<SDL_Rect>, dst:RawPointer<SDL_Surface>,
		dstrect:RawPointer<SDL_Rect>, scaleMode:SDL_ScaleMode):Bool;

	@:native('SDL_StretchSurface')
	static function StretchSurface(src:RawPointer<SDL_Surface>, srcrect:RawPointer<SDL_Rect>, dst:RawPointer<SDL_Surface>, dstrect:RawPointer<SDL_Rect>,
		scaleMode:SDL_ScaleMode):Bool;

	@:native('SDL_BlitSurfaceTiled')
	static function BlitSurfaceTiled(src:RawPointer<SDL_Surface>, srcrect:RawPointer<SDL_Rect>, dst:RawPointer<SDL_Surface>, dstrect:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_BlitSurfaceTiledWithScale')
	static function BlitSurfaceTiledWithScale(src:RawPointer<SDL_Surface>, srcrect:RawPointer<SDL_Rect>, scale:Float32, scaleMode:SDL_ScaleMode,
		dst:RawPointer<SDL_Surface>, dstrect:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_BlitSurface9Grid')
	static function BlitSurface9Grid(src:RawPointer<SDL_Surface>, srcrect:RawPointer<SDL_Rect>, left_width:Int, right_width:Int, top_height:Int,
		bottom_height:Int, scale:Float32, scaleMode:SDL_ScaleMode, dst:RawPointer<SDL_Surface>, dstrect:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_MapSurfaceRGB')
	static function MapSurfaceRGB(surface:RawPointer<SDL_Surface>, r:UInt8, g:UInt8, b:UInt8):UInt32;

	@:native('SDL_MapSurfaceRGBA')
	static function MapSurfaceRGBA(surface:RawPointer<SDL_Surface>, r:UInt8, g:UInt8, b:UInt8, a:UInt8):UInt32;

	@:native('SDL_ReadSurfacePixel')
	static function ReadSurfacePixel(surface:RawPointer<SDL_Surface>, x:Int, y:Int, r:RawPointer<UInt8>, g:RawPointer<UInt8>, b:RawPointer<UInt8>, a:RawPointer<UInt8>):Bool;

	@:native('SDL_ReadSurfacePixelFloat')
	static function ReadSurfacePixelFloat(surface:RawPointer<SDL_Surface>, x:Int, y:Int, r:RawPointer<Float32>, g:RawPointer<Float32>, b:RawPointer<Float32>,
		a:RawPointer<Float32>):Bool;

	@:native('SDL_WriteSurfacePixel')
	static function WriteSurfacePixel(surface:RawPointer<SDL_Surface>, x:Int, y:Int, r:UInt8, g:UInt8, b:UInt8, a:UInt8):Bool;

	@:native('SDL_WriteSurfacePixelFloat')
	static function WriteSurfacePixelFloat(surface:RawPointer<SDL_Surface>, x:Int, y:Int, r:Float32, g:Float32, b:Float32, a:Float32):Bool;

	// SDL_system.h
	#if windows
	@:native('SDL_SetWindowsMessageHook')
	static function SetWindowsMessageHook(callback:SDL_WindowsMessageHook, userdata:RawPointer<cpp.Void>):Void;
	#end

	@:native('SDL_SetX11EventHook')
	static function SetX11EventHook(callback:SDL_X11EventHook, userdata:RawPointer<cpp.Void>):Void;

	#if linux
	@:native('SDL_SetLinuxThreadPriority')
	static function SetLinuxThreadPriority(threadID:Int64, priority:Int):Bool;

	@:native('SDL_SetLinuxThreadPriorityAndPolicy')
	static function SetLinuxThreadPriorityAndPolicy(threadID:Int64, sdlPriority:Int, schedPolicy:Int):Bool;
	#end

	#if iphone
	@:native('SDL_SetiOSAnimationCallback')
	static function SetiOSAnimationCallback(window:RawPointer<SDL_Window>, interval:Int, callback:SDL_iOSAnimationCallback, callbackParam:RawPointer<cpp.Void>):Void;

	@:native('SDL_SetiOSEventPump')
	static function SetiOSEventPump(enabled:Bool):Void;
	#end

	#if android
	@:native('SDL_GetAndroidJNIEnv')
	static function GetAndroidJNIEnv():RawPointer<cpp.Void>;

	@:native('SDL_GetAndroidActivity')
	static function GetAndroidActivity():RawPointer<cpp.Void>;

	@:native('SDL_GetAndroidSDKVersion')
	static function GetAndroidSDKVersion():Int;

	@:native('SDL_IsChromebook')
	static function IsChromebook():Bool;

	@:native('SDL_IsDeXMode')
	static function IsDeXMode():Bool;

	@:native('SDL_SendAndroidBackButton')
	static function SendAndroidBackButton():Void;

	@:native('SDL_ANDROID_EXTERNAL_STORAGE_READ')
	static var ANDROID_EXTERNAL_STORAGE_READ:UInt32;

	@:native('SDL_ANDROID_EXTERNAL_STORAGE_WRITE')
	static var ANDROID_EXTERNAL_STORAGE_WRITE:UInt32;

	@:native('SDL_GetAndroidInternalStoragePath')
	static function GetAndroidInternalStoragePath():ConstCharStar;

	@:native('SDL_GetAndroidExternalStorageState')
	static function GetAndroidExternalStorageState():UInt32;

	@:native('SDL_GetAndroidExternalStoragePath')
	static function GetAndroidExternalStoragePath():ConstCharStar;

	@:native('SDL_GetAndroidCachePath')
	static function GetAndroidCachePath():ConstCharStar;

	@:native('SDL_RequestAndroidPermission')
	static function RequestAndroidPermission(permission:ConstCharStar, cb:SDL_RequestAndroidPermissionCallback, userdata:RawPointer<cpp.Void>):Bool;

	@:native('SDL_ShowAndroidToast')
	static function ShowAndroidToast(message:ConstCharStar, duration:Int, gravity:Int, xoffset:Int, yoffset:Int):Bool;

	@:native('SDL_SendAndroidMessage')
	static function SendAndroidMessage(command:UInt32, param:Int):Bool;
	#end

	@:native('SDL_IsTablet')
	static function IsTablet():Bool;

	@:native('SDL_IsTV')
	static function IsTV():Bool;

	@:native('SDL_GetSandbox')
	static function GetSandbox():SDL_Sandbox;

	// SDL_thread.h
	@:native('SDL_CreateThread')
	static function CreateThread(fn:SDL_ThreadFunction, name:ConstCharStar, data:RawPointer<cpp.Void>):RawPointer<SDL_Thread>;

	@:native('SDL_CreateThreadWithProperties')
	static function CreateThreadWithProperties(props:SDL_PropertiesID):RawPointer<SDL_Thread>;

	@:native('SDL_PROP_THREAD_CREATE_ENTRY_FUNCTION_POINTER')
	static var PROP_THREAD_CREATE_ENTRY_FUNCTION_POINTER:ConstCharStar;

	@:native('SDL_PROP_THREAD_CREATE_NAME_STRING')
	static var PROP_THREAD_CREATE_NAME_STRING:ConstCharStar;

	@:native('SDL_PROP_THREAD_CREATE_USERDATA_POINTER')
	static var PROP_THREAD_CREATE_USERDATA_POINTER:ConstCharStar;

	@:native('SDL_PROP_THREAD_CREATE_STACKSIZE_NUMBER')
	static var PROP_THREAD_CREATE_STACKSIZE_NUMBER:ConstCharStar;

	@:native('SDL_GetThreadName')
	static function GetThreadName(thread:RawPointer<SDL_Thread>):ConstCharStar;

	@:native('SDL_GetCurrentThreadID')
	static function GetCurrentThreadID():SDL_ThreadID;

	@:native('SDL_GetThreadID')
	static function GetThreadID(thread:RawPointer<SDL_Thread>):SDL_ThreadID;

	@:native('SDL_SetCurrentThreadPriority')
	static function SetCurrentThreadPriority(priority:SDL_ThreadPriority):Bool;

	@:native('SDL_WaitThread')
	static function WaitThread(thread:RawPointer<SDL_Thread>, status:RawPointer<Int>):Void;

	@:native('SDL_GetThreadState')
	static function GetThreadState(thread:RawPointer<SDL_Thread>):SDL_ThreadState;

	@:native('SDL_DetachThread')
	static function DetachThread(thread:RawPointer<SDL_Thread>):Void;

	@:native('SDL_GetTLS')
	static function GetTLS(id:RawPointer<SDL_TLSID>):RawPointer<cpp.Void>;

	@:native('SDL_SetTLS')
	static function SetTLS(id:RawPointer<SDL_TLSID>, value:RawPointer<cpp.Void>, destructor:SDL_TLSDestructorCallback):Bool;

	@:native('SDL_CleanupTLS')
	static function CleanupTLS():Void;

	// SDL_time.h
	@:native('SDL_GetDateTimeLocalePreferences')
	static function GetDateTimeLocalePreferences(dateFormat:RawPointer<SDL_DateFormat>, timeFormat:RawPointer<SDL_TimeFormat>):Bool;

	@:native('SDL_GetCurrentTime')
	static function GetCurrentTime(ticks:RawPointer<SDL_Time>):Bool;

	@:native('SDL_TimeToDateTime')
	static function TimeToDateTime(ticks:SDL_Time, dt:RawPointer<SDL_DateTime>, localTime:Bool):Bool;

	@:native('SDL_DateTimeToTime')
	static function DateTimeToTime(dt:RawConstPointer<SDL_DateTime>, ticks:RawPointer<SDL_Time>):Bool;

	@:native('SDL_TimeToWindows')
	static function TimeToWindows(ticks:SDL_Time, dwLowDateTime:RawPointer<UInt32>, dwHighDateTime:RawPointer<UInt32>):Void;

	@:native('SDL_TimeFromWindows')
	static function TimeFromWindows(dwLowDateTime:UInt32, dwHighDateTime:UInt32):SDL_Time;

	@:native('SDL_GetDaysInMonth')
	static function GetDaysInMonth(year:Int, month:Int):Int;

	@:native('SDL_GetDayOfYear')
	static function GetDayOfYear(year:Int, month:Int, day:Int):Int;

	@:native('SDL_GetDayOfWeek')
	static function GetDayOfWeek(year:Int, month:Int, day:Int):Int;

	// SDL_timer.h
	@:native('SDL_GetTicks')
	static function GetTicks():UInt64;

	@:native('SDL_GetTicksNS')
	static function GetTicksNS():UInt64;

	@:native('SDL_GetPerformanceCounter')
	static function GetPerformanceCounter():UInt64;

	@:native('SDL_GetPerformanceFrequency')
	static function GetPerformanceFrequency():UInt64;

	@:native('SDL_Delay')
	static function Delay(ms:UInt32):Void;

	@:native('SDL_DelayNS')
	static function DelayNS(ns:UInt64):Void;

	@:native('SDL_DelayPrecise')
	static function DelayPrecise(ns:UInt64):Void;

	@:native('SDL_AddTimer')
	static function AddTimer(interval:UInt32, callback:SDL_TimerCallback, userdata:RawPointer<cpp.Void>):SDL_TimerID;

	@:native('SDL_AddTimerNS')
	static function AddTimerNS(interval:UInt64, callback:SDL_NSTimerCallback, userdata:RawPointer<cpp.Void>):SDL_TimerID;

	@:native('SDL_RemoveTimer')
	static function RemoveTimer(id:SDL_TimerID):Bool;

	// SDL_touch.h
	@:native('SDL_GetTouchDevices')
	static function GetTouchDevices(count:RawPointer<Int>):RawPointer<SDL_TouchID>;

	@:native('SDL_GetTouchDeviceName')
	static function GetTouchDeviceName(touchID:SDL_TouchID):ConstCharStar;

	@:native('SDL_GetTouchDeviceType')
	static function GetTouchDeviceType(touchID:SDL_TouchID):SDL_TouchDeviceType;

	@:native('SDL_GetTouchFingers')
	static function GetTouchFingers(touchID:SDL_TouchID, count:RawPointer<Int>):RawPointer<RawPointer<SDL_Finger>>;

	// SDL_tray.h
	@:native('SDL_TRAYENTRY_BUTTON')
	static var TRAYENTRY_BUTTON:UInt32;

	@:native('SDL_TRAYENTRY_CHECKBOX')
	static var TRAYENTRY_CHECKBOX:UInt32;

	@:native('SDL_TRAYENTRY_SUBMENU')
	static var TRAYENTRY_SUBMENU:UInt32;

	@:native('SDL_TRAYENTRY_DISABLED')
	static var TRAYENTRY_DISABLED:UInt32;

	@:native('SDL_TRAYENTRY_CHECKED')
	static var TRAYENTRY_CHECKED:UInt32;

	// SDL_tray.h
	@:native('SDL_CreateTray')
	static function CreateTray(icon:RawPointer<SDL_Surface>, tooltip:ConstCharStar):RawPointer<SDL_Tray>;

	@:native('SDL_SetTrayIcon')
	static function SetTrayIcon(tray:RawPointer<SDL_Tray>, icon:RawPointer<SDL_Surface>):Void;

	@:native('SDL_SetTrayTooltip')
	static function SetTrayTooltip(tray:RawPointer<SDL_Tray>, tooltip:ConstCharStar):Void;

	@:native('SDL_CreateTrayMenu')
	static function CreateTrayMenu(tray:RawPointer<SDL_Tray>):RawPointer<SDL_TrayMenu>;

	@:native('SDL_CreateTraySubmenu')
	static function CreateTraySubmenu(entry:RawPointer<SDL_TrayEntry>):RawPointer<SDL_TrayMenu>;

	@:native('SDL_GetTrayMenu')
	static function GetTrayMenu(tray:RawPointer<SDL_Tray>):RawPointer<SDL_TrayMenu>;

	@:native('SDL_GetTraySubmenu')
	static function GetTraySubmenu(entry:RawPointer<SDL_TrayEntry>):RawPointer<SDL_TrayMenu>;

	@:native('SDL_GetTrayEntries')
	static function GetTrayEntries(menu:RawPointer<SDL_TrayMenu>, count:RawPointer<Int>):RawPointer<RawPointer<SDL_TrayEntry>>;

	@:native('SDL_RemoveTrayEntry')
	static function RemoveTrayEntry(entry:RawPointer<SDL_TrayEntry>):Void;

	@:native('SDL_InsertTrayEntryAt')
	static function InsertTrayEntryAt(menu:RawPointer<SDL_TrayMenu>, pos:Int, label:ConstCharStar, flags:SDL_TrayEntryFlags):RawPointer<SDL_TrayEntry>;

	@:native('SDL_SetTrayEntryLabel')
	static function SetTrayEntryLabel(entry:RawPointer<SDL_TrayEntry>, label:ConstCharStar):Void;

	@:native('SDL_GetTrayEntryLabel')
	static function GetTrayEntryLabel(entry:RawPointer<SDL_TrayEntry>):ConstCharStar;

	@:native('SDL_SetTrayEntryChecked')
	static function SetTrayEntryChecked(entry:RawPointer<SDL_TrayEntry>, checked:Bool):Void;

	@:native('SDL_GetTrayEntryChecked')
	static function GetTrayEntryChecked(entry:RawPointer<SDL_TrayEntry>):Bool;

	@:native('SDL_SetTrayEntryEnabled')
	static function SetTrayEntryEnabled(entry:RawPointer<SDL_TrayEntry>, enabled:Bool):Void;

	@:native('SDL_GetTrayEntryEnabled')
	static function GetTrayEntryEnabled(entry:RawPointer<SDL_TrayEntry>):Bool;

	@:native('SDL_SetTrayEntryCallback')
	static function SetTrayEntryCallback(entry:RawPointer<SDL_TrayEntry>, callback:SDL_TrayCallback, userdata:RawPointer<cpp.Void>):Void;

	@:native('SDL_ClickTrayEntry')
	static function ClickTrayEntry(entry:RawPointer<SDL_TrayEntry>):Void;

	@:native('SDL_DestroyTray')
	static function DestroyTray(tray:RawPointer<SDL_Tray>):Void;

	@:native('SDL_GetTrayEntryParent')
	static function GetTrayEntryParent(entry:RawPointer<SDL_TrayEntry>):RawPointer<SDL_TrayMenu>;

	@:native('SDL_GetTrayMenuParentEntry')
	static function GetTrayMenuParentEntry(menu:RawPointer<SDL_TrayMenu>):RawPointer<SDL_TrayEntry>;

	@:native('SDL_GetTrayMenuParentTray')
	static function GetTrayMenuParentTray(menu:RawPointer<SDL_TrayMenu>):RawPointer<SDL_Tray>;

	@:native('SDL_UpdateTrays')
	static function UpdateTrays():Void;

	// SDL_version.h
	@:native('SDL_GetVersion')
	static function GetVersion():Int;

	@:native('SDL_GetRevision')
	static function GetRevision():ConstCharStar;

	// SDL_video.h
	@:native('SDL_PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER')
	static var PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER:ConstCharStar;

	@:native('SDL_WINDOW_FULLSCREEN')
	static var WINDOW_FULLSCREEN:UInt64;

	@:native('SDL_WINDOW_OPENGL')
	static var WINDOW_OPENGL:UInt64;

	@:native('SDL_WINDOW_OCCLUDED')
	static var WINDOW_OCCLUDED:UInt64;

	@:native('SDL_WINDOW_HIDDEN')
	static var WINDOW_HIDDEN:UInt64;

	@:native('SDL_WINDOW_BORDERLESS')
	static var WINDOW_BORDERLESS:UInt64;

	@:native('SDL_WINDOW_RESIZABLE')
	static var WINDOW_RESIZABLE:UInt64;

	@:native('SDL_WINDOW_MINIMIZED')
	static var WINDOW_MINIMIZED:UInt64;

	@:native('SDL_WINDOW_MAXIMIZED')
	static var WINDOW_MAXIMIZED:UInt64;

	@:native('SDL_WINDOW_MOUSE_GRABBED')
	static var WINDOW_MOUSE_GRABBED:UInt64;

	@:native('SDL_WINDOW_INPUT_FOCUS')
	static var WINDOW_INPUT_FOCUS:UInt64;

	@:native('SDL_WINDOW_MOUSE_FOCUS')
	static var WINDOW_MOUSE_FOCUS:UInt64;

	@:native('SDL_WINDOW_EXTERNAL')
	static var WINDOW_EXTERNAL:UInt64;

	@:native('SDL_WINDOW_MODAL')
	static var WINDOW_MODAL:UInt64;

	@:native('SDL_WINDOW_HIGH_PIXEL_DENSITY')
	static var WINDOW_HIGH_PIXEL_DENSITY:UInt64;

	@:native('SDL_WINDOW_MOUSE_CAPTURE')
	static var WINDOW_MOUSE_CAPTURE:UInt64;

	@:native('SDL_WINDOW_MOUSE_RELATIVE_MODE')
	static var WINDOW_MOUSE_RELATIVE_MODE:UInt64;

	@:native('SDL_WINDOW_ALWAYS_ON_TOP')
	static var WINDOW_ALWAYS_ON_TOP:UInt64;

	@:native('SDL_WINDOW_UTILITY')
	static var WINDOW_UTILITY:UInt64;

	@:native('SDL_WINDOW_TOOLTIP')
	static var WINDOW_TOOLTIP:UInt64;

	@:native('SDL_WINDOW_POPUP_MENU')
	static var WINDOW_POPUP_MENU:UInt64;

	@:native('SDL_WINDOW_KEYBOARD_GRABBED')
	static var WINDOW_KEYBOARD_GRABBED:UInt64;

	@:native('SDL_WINDOW_VULKAN')
	static var WINDOW_VULKAN:UInt64;

	@:native('SDL_WINDOW_METAL')
	static var WINDOW_METAL:UInt64;

	@:native('SDL_WINDOW_TRANSPARENT')
	static var WINDOW_TRANSPARENT:UInt64;

	@:native('SDL_WINDOW_NOT_FOCUSABLE')
	static var WINDOW_NOT_FOCUSABLE:UInt64;

	@:native('SDL_WINDOWPOS_UNDEFINED')
	static var WINDOWPOS_UNDEFINED:UInt32;

	@:native('SDL_WINDOWPOS_CENTERED')
	static var WINDOWPOS_CENTERED:UInt32;

	@:native('SDL_GL_CONTEXT_PROFILE_CORE')
	static var GL_CONTEXT_PROFILE_CORE:UInt32;

	@:native('SDL_GL_CONTEXT_PROFILE_COMPATIBILITY')
	static var GL_CONTEXT_PROFILE_COMPATIBILITY:UInt32;

	@:native('SDL_GL_CONTEXT_PROFILE_ES')
	static var GL_CONTEXT_PROFILE_ES:UInt32;

	@:native('SDL_GL_CONTEXT_DEBUG_FLAG')
	static var GL_CONTEXT_DEBUG_FLAG:UInt32;

	@:native('SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG')
	static var GL_CONTEXT_FORWARD_COMPATIBLE_FLAG:UInt32;

	@:native('SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG')
	static var GL_CONTEXT_ROBUST_ACCESS_FLAG:UInt32;

	@:native('SDL_GL_CONTEXT_RESET_ISOLATION_FLAG')
	static var GL_CONTEXT_RESET_ISOLATION_FLAG:UInt32;

	@:native('SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE')
	static var GL_CONTEXT_RELEASE_BEHAVIOR_NONE:UInt32;

	@:native('SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH')
	static var GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH:UInt32;

	@:native('SDL_GL_CONTEXT_RESET_NO_NOTIFICATION')
	static var GL_CONTEXT_RESET_NO_NOTIFICATION:UInt32;

	@:native('SDL_GL_CONTEXT_RESET_LOSE_CONTEXT')
	static var GL_CONTEXT_RESET_LOSE_CONTEXT:UInt32;

	@:native('SDL_GetNumVideoDrivers')
	static function GetNumVideoDrivers():Int;

	@:native('SDL_GetVideoDriver')
	static function GetVideoDriver(index:Int):ConstCharStar;

	@:native('SDL_GetCurrentVideoDriver')
	static function GetCurrentVideoDriver():ConstCharStar;

	@:native('SDL_GetSystemTheme')
	static function GetSystemTheme():SDL_SystemTheme;

	@:native('SDL_GetDisplays')
	static function GetDisplays(count:RawPointer<Int>):RawPointer<SDL_DisplayID>;

	@:native('SDL_GetPrimaryDisplay')
	static function GetPrimaryDisplay():SDL_DisplayID;

	@:native('SDL_GetDisplayProperties')
	static function GetDisplayProperties(displayID:SDL_DisplayID):SDL_PropertiesID;

	@:native('SDL_PROP_DISPLAY_HDR_ENABLED_BOOLEAN')
	static var PROP_DISPLAY_HDR_ENABLED_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_DISPLAY_KMSDRM_PANEL_ORIENTATION_NUMBER')
	static var PROP_DISPLAY_KMSDRM_PANEL_ORIENTATION_NUMBER:ConstCharStar;

	@:native('SDL_GetDisplayName')
	static function GetDisplayName(displayID:SDL_DisplayID):ConstCharStar;

	@:native('SDL_GetDisplayBounds')
	static function GetDisplayBounds(displayID:SDL_DisplayID, rect:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_GetDisplayUsableBounds')
	static function GetDisplayUsableBounds(displayID:SDL_DisplayID, rect:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_GetNaturalDisplayOrientation')
	static function GetNaturalDisplayOrientation(displayID:SDL_DisplayID):SDL_DisplayOrientation;

	@:native('SDL_GetCurrentDisplayOrientation')
	static function GetCurrentDisplayOrientation(displayID:SDL_DisplayID):SDL_DisplayOrientation;

	@:native('SDL_GetDisplayContentScale')
	static function GetDisplayContentScale(displayID:SDL_DisplayID):Float32;

	@:native('SDL_GetFullscreenDisplayModes')
	static function GetFullscreenDisplayModes(displayID:SDL_DisplayID, count:RawPointer<Int>):RawPointer<RawPointer<SDL_DisplayMode>>;

	@:native('SDL_GetClosestFullscreenDisplayMode')
	static function GetClosestFullscreenDisplayMode(displayID:SDL_DisplayID, w:Int, h:Int, refresh_rate:Float32, include_high_density_modes:Bool,
		closest:RawPointer<SDL_DisplayMode>):Bool;

	@:native('SDL_GetDesktopDisplayMode')
	static function GetDesktopDisplayMode(displayID:SDL_DisplayID):RawPointer<SDL_DisplayMode>;

	@:native('SDL_GetCurrentDisplayMode')
	static function GetCurrentDisplayMode(displayID:SDL_DisplayID):RawPointer<SDL_DisplayMode>;

	@:native('SDL_GetDisplayForPoint')
	static function GetDisplayForPoint(point:RawPointer<SDL_Point>):SDL_DisplayID;

	@:native('SDL_GetDisplayForRect')
	static function GetDisplayForRect(rect:RawPointer<SDL_Rect>):SDL_DisplayID;

	@:native('SDL_GetDisplayForWindow')
	static function GetDisplayForWindow(window:RawPointer<SDL_Window>):SDL_DisplayID;

	@:native('SDL_GetWindowPixelDensity')
	static function GetWindowPixelDensity(window:RawPointer<SDL_Window>):Float32;

	@:native('SDL_GetWindowDisplayScale')
	static function GetWindowDisplayScale(window:RawPointer<SDL_Window>):Float32;

	@:native('SDL_SetWindowFullscreenMode')
	static function SetWindowFullscreenMode(window:RawPointer<SDL_Window>, mode:RawConstPointer<SDL_DisplayMode>):Bool;

	@:native('SDL_GetWindowFullscreenMode')
	static function GetWindowFullscreenMode(window:RawPointer<SDL_Window>):RawConstPointer<SDL_DisplayMode>;

	@:native('SDL_GetWindowICCProfile')
	static function GetWindowICCProfile(window:RawPointer<SDL_Window>, size:RawPointer<SizeT>):RawPointer<cpp.Void>;

	@:native('SDL_GetWindowPixelFormat')
	static function GetWindowPixelFormat(window:RawPointer<SDL_Window>):SDL_PixelFormat;

	@:native('SDL_GetWindows')
	static function GetWindows(count:RawPointer<Int>):RawPointer<RawPointer<SDL_Window>>;

	@:native('SDL_CreateWindow')
	static function CreateWindow(title:ConstCharStar, w:Int, h:Int, flags:SDL_WindowFlags):RawPointer<SDL_Window>;

	@:native('SDL_CreatePopupWindow')
	static function CreatePopupWindow(parent:RawPointer<SDL_Window>, offset_x:Int, offset_y:Int, w:Int, h:Int, flags:SDL_WindowFlags):RawPointer<SDL_Window>;

	@:native('SDL_CreateWindowWithProperties')
	static function CreateWindowWithProperties(props:SDL_PropertiesID):RawPointer<SDL_Window>;

	@:native('SDL_PROP_WINDOW_CREATE_ALWAYS_ON_TOP_BOOLEAN')
	static var PROP_WINDOW_CREATE_ALWAYS_ON_TOP_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_BORDERLESS_BOOLEAN')
	static var PROP_WINDOW_CREATE_BORDERLESS_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_FOCUSABLE_BOOLEAN')
	static var PROP_WINDOW_CREATE_FOCUSABLE_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_EXTERNAL_GRAPHICS_CONTEXT_BOOLEAN')
	static var PROP_WINDOW_CREATE_EXTERNAL_GRAPHICS_CONTEXT_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_FLAGS_NUMBER')
	static var PROP_WINDOW_CREATE_FLAGS_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_FULLSCREEN_BOOLEAN')
	static var PROP_WINDOW_CREATE_FULLSCREEN_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_HEIGHT_NUMBER')
	static var PROP_WINDOW_CREATE_HEIGHT_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_HIDDEN_BOOLEAN')
	static var PROP_WINDOW_CREATE_HIDDEN_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_HIGH_PIXEL_DENSITY_BOOLEAN')
	static var PROP_WINDOW_CREATE_HIGH_PIXEL_DENSITY_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_MAXIMIZED_BOOLEAN')
	static var PROP_WINDOW_CREATE_MAXIMIZED_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_MENU_BOOLEAN')
	static var PROP_WINDOW_CREATE_MENU_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_METAL_BOOLEAN')
	static var PROP_WINDOW_CREATE_METAL_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_MINIMIZED_BOOLEAN')
	static var PROP_WINDOW_CREATE_MINIMIZED_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_MODAL_BOOLEAN')
	static var PROP_WINDOW_CREATE_MODAL_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_MOUSE_GRABBED_BOOLEAN')
	static var PROP_WINDOW_CREATE_MOUSE_GRABBED_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_OPENGL_BOOLEAN')
	static var PROP_WINDOW_CREATE_OPENGL_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_PARENT_POINTER')
	static var PROP_WINDOW_CREATE_PARENT_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_RESIZABLE_BOOLEAN')
	static var PROP_WINDOW_CREATE_RESIZABLE_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_TITLE_STRING')
	static var PROP_WINDOW_CREATE_TITLE_STRING:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_TRANSPARENT_BOOLEAN')
	static var PROP_WINDOW_CREATE_TRANSPARENT_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_TOOLTIP_BOOLEAN')
	static var PROP_WINDOW_CREATE_TOOLTIP_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_UTILITY_BOOLEAN')
	static var PROP_WINDOW_CREATE_UTILITY_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_VULKAN_BOOLEAN')
	static var PROP_WINDOW_CREATE_VULKAN_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_WIDTH_NUMBER')
	static var PROP_WINDOW_CREATE_WIDTH_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_X_NUMBER')
	static var PROP_WINDOW_CREATE_X_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_Y_NUMBER')
	static var PROP_WINDOW_CREATE_Y_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_COCOA_WINDOW_POINTER')
	static var PROP_WINDOW_CREATE_COCOA_WINDOW_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_COCOA_VIEW_POINTER')
	static var PROP_WINDOW_CREATE_COCOA_VIEW_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_WAYLAND_SURFACE_ROLE_CUSTOM_BOOLEAN')
	static var PROP_WINDOW_CREATE_WAYLAND_SURFACE_ROLE_CUSTOM_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_WAYLAND_CREATE_EGL_WINDOW_BOOLEAN')
	static var PROP_WINDOW_CREATE_WAYLAND_CREATE_EGL_WINDOW_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_WAYLAND_WL_SURFACE_POINTER')
	static var PROP_WINDOW_CREATE_WAYLAND_WL_SURFACE_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_WIN32_HWND_POINTER')
	static var PROP_WINDOW_CREATE_WIN32_HWND_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_WIN32_PIXEL_FORMAT_HWND_POINTER')
	static var PROP_WINDOW_CREATE_WIN32_PIXEL_FORMAT_HWND_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_X11_WINDOW_NUMBER')
	static var PROP_WINDOW_CREATE_X11_WINDOW_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_EMSCRIPTEN_CANVAS_ID_STRING')
	static var PROP_WINDOW_CREATE_EMSCRIPTEN_CANVAS_ID_STRING:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_EMSCRIPTEN_FILL_DOCUMENT_BOOLEAN')
	static var PROP_WINDOW_CREATE_EMSCRIPTEN_FILL_DOCUMENT_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_CREATE_EMSCRIPTEN_KEYBOARD_ELEMENT_STRING')
	static var PROP_WINDOW_CREATE_EMSCRIPTEN_KEYBOARD_ELEMENT_STRING:ConstCharStar;

	@:native('SDL_GetWindowID')
	static function GetWindowID(window:RawPointer<SDL_Window>):SDL_WindowID;

	@:native('SDL_GetWindowFromID')
	static function GetWindowFromID(id:SDL_WindowID):RawPointer<SDL_Window>;

	@:native('SDL_GetWindowParent')
	static function GetWindowParent(window:RawPointer<SDL_Window>):RawPointer<SDL_Window>;

	@:native('SDL_GetWindowProperties')
	static function GetWindowProperties(window:RawPointer<SDL_Window>):SDL_PropertiesID;

	@:native('SDL_PROP_WINDOW_SHAPE_POINTER')
	static var PROP_WINDOW_SHAPE_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_HDR_ENABLED_BOOLEAN')
	static var PROP_WINDOW_HDR_ENABLED_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_SDR_WHITE_LEVEL_FLOAT')
	static var PROP_WINDOW_SDR_WHITE_LEVEL_FLOAT:ConstCharStar;

	@:native('SDL_PROP_WINDOW_HDR_HEADROOM_FLOAT')
	static var PROP_WINDOW_HDR_HEADROOM_FLOAT:ConstCharStar;

	@:native('SDL_PROP_WINDOW_ANDROID_WINDOW_POINTER')
	static var PROP_WINDOW_ANDROID_WINDOW_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_ANDROID_SURFACE_POINTER')
	static var PROP_WINDOW_ANDROID_SURFACE_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_UIKIT_WINDOW_POINTER')
	static var PROP_WINDOW_UIKIT_WINDOW_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_UIKIT_METAL_VIEW_TAG_NUMBER')
	static var PROP_WINDOW_UIKIT_METAL_VIEW_TAG_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_UIKIT_OPENGL_FRAMEBUFFER_NUMBER')
	static var PROP_WINDOW_UIKIT_OPENGL_FRAMEBUFFER_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_UIKIT_OPENGL_RENDERBUFFER_NUMBER')
	static var PROP_WINDOW_UIKIT_OPENGL_RENDERBUFFER_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_UIKIT_OPENGL_RESOLVE_FRAMEBUFFER_NUMBER')
	static var PROP_WINDOW_UIKIT_OPENGL_RESOLVE_FRAMEBUFFER_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_KMSDRM_DEVICE_INDEX_NUMBER')
	static var PROP_WINDOW_KMSDRM_DEVICE_INDEX_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_KMSDRM_DRM_FD_NUMBER')
	static var PROP_WINDOW_KMSDRM_DRM_FD_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_KMSDRM_GBM_DEVICE_POINTER')
	static var PROP_WINDOW_KMSDRM_GBM_DEVICE_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_COCOA_WINDOW_POINTER')
	static var PROP_WINDOW_COCOA_WINDOW_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_COCOA_METAL_VIEW_TAG_NUMBER')
	static var PROP_WINDOW_COCOA_METAL_VIEW_TAG_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_OPENVR_OVERLAY_ID')
	static var PROP_WINDOW_OPENVR_OVERLAY_ID:ConstCharStar;

	@:native('SDL_PROP_WINDOW_VIVANTE_DISPLAY_POINTER')
	static var PROP_WINDOW_VIVANTE_DISPLAY_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_VIVANTE_WINDOW_POINTER')
	static var PROP_WINDOW_VIVANTE_WINDOW_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_VIVANTE_SURFACE_POINTER')
	static var PROP_WINDOW_VIVANTE_SURFACE_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_WIN32_HWND_POINTER')
	static var PROP_WINDOW_WIN32_HWND_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_WIN32_HDC_POINTER')
	static var PROP_WINDOW_WIN32_HDC_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_WIN32_INSTANCE_POINTER')
	static var PROP_WINDOW_WIN32_INSTANCE_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_WAYLAND_DISPLAY_POINTER')
	static var PROP_WINDOW_WAYLAND_DISPLAY_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_WAYLAND_SURFACE_POINTER')
	static var PROP_WINDOW_WAYLAND_SURFACE_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_WAYLAND_VIEWPORT_POINTER')
	static var PROP_WINDOW_WAYLAND_VIEWPORT_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_WAYLAND_EGL_WINDOW_POINTER')
	static var PROP_WINDOW_WAYLAND_EGL_WINDOW_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_WAYLAND_XDG_SURFACE_POINTER')
	static var PROP_WINDOW_WAYLAND_XDG_SURFACE_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_POINTER')
	static var PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_EXPORT_HANDLE_STRING')
	static var PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_EXPORT_HANDLE_STRING:ConstCharStar;

	@:native('SDL_PROP_WINDOW_WAYLAND_XDG_POPUP_POINTER')
	static var PROP_WINDOW_WAYLAND_XDG_POPUP_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_WAYLAND_XDG_POSITIONER_POINTER')
	static var PROP_WINDOW_WAYLAND_XDG_POSITIONER_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_X11_DISPLAY_POINTER')
	static var PROP_WINDOW_X11_DISPLAY_POINTER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_X11_SCREEN_NUMBER')
	static var PROP_WINDOW_X11_SCREEN_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_X11_WINDOW_NUMBER')
	static var PROP_WINDOW_X11_WINDOW_NUMBER:ConstCharStar;

	@:native('SDL_PROP_WINDOW_EMSCRIPTEN_CANVAS_ID_STRING')
	static var PROP_WINDOW_EMSCRIPTEN_CANVAS_ID_STRING:ConstCharStar;

	@:native('SDL_PROP_WINDOW_EMSCRIPTEN_FILL_DOCUMENT_BOOLEAN')
	static var PROP_WINDOW_EMSCRIPTEN_FILL_DOCUMENT_BOOLEAN:ConstCharStar;

	@:native('SDL_PROP_WINDOW_EMSCRIPTEN_KEYBOARD_ELEMENT_STRING')
	static var PROP_WINDOW_EMSCRIPTEN_KEYBOARD_ELEMENT_STRING:ConstCharStar;

	@:native('SDL_GetWindowFlags')
	static function GetWindowFlags(window:RawPointer<SDL_Window>):SDL_WindowFlags;

	@:native('SDL_SetWindowTitle')
	static function SetWindowTitle(window:RawPointer<SDL_Window>, title:ConstCharStar):Bool;

	@:native('SDL_GetWindowTitle')
	static function GetWindowTitle(window:RawPointer<SDL_Window>):ConstCharStar;

	@:native('SDL_SetWindowIcon')
	static function SetWindowIcon(window:RawPointer<SDL_Window>, icon:RawPointer<SDL_Surface>):Bool;

	@:native('SDL_SetWindowPosition')
	static function SetWindowPosition(window:RawPointer<SDL_Window>, x:Int, y:Int):Bool;

	@:native('SDL_GetWindowPosition')
	static function GetWindowPosition(window:RawPointer<SDL_Window>, x:RawPointer<Int>, y:RawPointer<Int>):Bool;

	@:native('SDL_SetWindowSize')
	static function SetWindowSize(window:RawPointer<SDL_Window>, w:Int, h:Int):Bool;

	@:native('SDL_GetWindowSize')
	static function GetWindowSize(window:RawPointer<SDL_Window>, w:RawPointer<Int>, h:RawPointer<Int>):Bool;

	@:native('SDL_GetWindowSafeArea')
	static function GetWindowSafeArea(window:RawPointer<SDL_Window>, rect:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_SetWindowAspectRatio')
	static function SetWindowAspectRatio(window:RawPointer<SDL_Window>, min_aspect:Float32, max_aspect:Float32):Bool;

	@:native('SDL_GetWindowAspectRatio')
	static function GetWindowAspectRatio(window:RawPointer<SDL_Window>, min_aspect:RawPointer<Float32>, max_aspect:RawPointer<Float32>):Bool;

	@:native('SDL_GetWindowBordersSize')
	static function GetWindowBordersSize(window:RawPointer<SDL_Window>, top:RawPointer<Int>, left:RawPointer<Int>, bottom:RawPointer<Int>, right:RawPointer<Int>):Bool;

	@:native('SDL_GetWindowSizeInPixels')
	static function GetWindowSizeInPixels(window:RawPointer<SDL_Window>, w:RawPointer<Int>, h:RawPointer<Int>):Bool;

	@:native('SDL_SetWindowMinimumSize')
	static function SetWindowMinimumSize(window:RawPointer<SDL_Window>, min_w:Int, min_h:Int):Bool;

	@:native('SDL_GetWindowMinimumSize')
	static function GetWindowMinimumSize(window:RawPointer<SDL_Window>, w:RawPointer<Int>, h:RawPointer<Int>):Bool;

	@:native('SDL_SetWindowMaximumSize')
	static function SetWindowMaximumSize(window:RawPointer<SDL_Window>, max_w:Int, max_h:Int):Bool;

	@:native('SDL_GetWindowMaximumSize')
	static function GetWindowMaximumSize(window:RawPointer<SDL_Window>, w:RawPointer<Int>, h:RawPointer<Int>):Bool;

	@:native('SDL_SetWindowBordered')
	static function SetWindowBordered(window:RawPointer<SDL_Window>, bordered:Bool):Bool;

	@:native('SDL_SetWindowResizable')
	static function SetWindowResizable(window:RawPointer<SDL_Window>, resizable:Bool):Bool;

	@:native('SDL_SetWindowAlwaysOnTop')
	static function SetWindowAlwaysOnTop(window:RawPointer<SDL_Window>, on_top:Bool):Bool;

	@:native('SDL_ShowWindow')
	static function ShowWindow(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_HideWindow')
	static function HideWindow(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_RaiseWindow')
	static function RaiseWindow(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_MaximizeWindow')
	static function MaximizeWindow(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_MinimizeWindow')
	static function MinimizeWindow(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_RestoreWindow')
	static function RestoreWindow(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_SetWindowFullscreen')
	static function SetWindowFullscreen(window:RawPointer<SDL_Window>, fullscreen:Bool):Bool;

	@:native('SDL_SyncWindow')
	static function SyncWindow(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_WindowHasSurface')
	static function WindowHasSurface(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_GetWindowSurface')
	static function GetWindowSurface(window:RawPointer<SDL_Window>):RawPointer<SDL_Surface>;

	@:native('SDL_SetWindowSurfaceVSync')
	static function SetWindowSurfaceVSync(window:RawPointer<SDL_Window>, vsync:Int):Bool;

	@:native('SDL_WINDOW_SURFACE_VSYNC_DISABLED')
	static var WINDOW_SURFACE_VSYNC_DISABLED:Int;

	@:native('SDL_WINDOW_SURFACE_VSYNC_ADAPTIVE')
	static var WINDOW_SURFACE_VSYNC_ADAPTIVE:Int;

	@:native('SDL_GetWindowSurfaceVSync')
	static function GetWindowSurfaceVSync(window:RawPointer<SDL_Window>, vsync:RawPointer<Int>):Bool;

	@:native('SDL_UpdateWindowSurface')
	static function UpdateWindowSurface(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_UpdateWindowSurfaceRects')
	static function UpdateWindowSurfaceRects(window:RawPointer<SDL_Window>, rects:RawPointer<SDL_Rect>, numrects:Int):Bool;

	@:native('SDL_DestroyWindowSurface')
	static function DestroyWindowSurface(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_SetWindowKeyboardGrab')
	static function SetWindowKeyboardGrab(window:RawPointer<SDL_Window>, grabbed:Bool):Bool;

	@:native('SDL_SetWindowMouseGrab')
	static function SetWindowMouseGrab(window:RawPointer<SDL_Window>, grabbed:Bool):Bool;

	@:native('SDL_GetWindowKeyboardGrab')
	static function GetWindowKeyboardGrab(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_GetWindowMouseGrab')
	static function GetWindowMouseGrab(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_GetGrabbedWindow')
	static function GetGrabbedWindow():RawPointer<SDL_Window>;

	@:native('SDL_SetWindowMouseRect')
	static function SetWindowMouseRect(window:RawPointer<SDL_Window>, rect:RawPointer<SDL_Rect>):Bool;

	@:native('SDL_GetWindowMouseRect')
	static function GetWindowMouseRect(window:RawPointer<SDL_Window>):RawPointer<SDL_Rect>;

	@:native('SDL_SetWindowOpacity')
	static function SetWindowOpacity(window:RawPointer<SDL_Window>, opacity:Float32):Bool;

	@:native('SDL_GetWindowOpacity')
	static function GetWindowOpacity(window:RawPointer<SDL_Window>):Float32;

	@:native('SDL_SetWindowParent')
	static function SetWindowParent(window:RawPointer<SDL_Window>, parent:RawPointer<SDL_Window>):Bool;

	@:native('SDL_SetWindowModal')
	static function SetWindowModal(window:RawPointer<SDL_Window>, modal:Bool):Bool;

	@:native('SDL_SetWindowFocusable')
	static function SetWindowFocusable(window:RawPointer<SDL_Window>, focusable:Bool):Bool;

	@:native('SDL_ShowWindowSystemMenu')
	static function ShowWindowSystemMenu(window:RawPointer<SDL_Window>, x:Int, y:Int):Bool;

	@:native('SDL_SetWindowHitTest')
	static function SetWindowHitTest(window:RawPointer<SDL_Window>, callback:SDL_HitTest, callback_data:RawPointer<cpp.Void>):Bool;

	@:native('SDL_SetWindowShape')
	static function SetWindowShape(window:RawPointer<SDL_Window>, shape:RawPointer<SDL_Surface>):Bool;

	@:native('SDL_FlashWindow')
	static function FlashWindow(window:RawPointer<SDL_Window>, operation:SDL_FlashOperation):Bool;

	@:native('SDL_DestroyWindow')
	static function DestroyWindow(window:RawPointer<SDL_Window>):Void;

	@:native('SDL_ScreenSaverEnabled')
	static function ScreenSaverEnabled():Bool;

	@:native('SDL_EnableScreenSaver')
	static function EnableScreenSaver():Bool;

	@:native('SDL_DisableScreenSaver')
	static function DisableScreenSaver():Bool;

	@:native('SDL_GL_LoadLibrary')
	static function GL_LoadLibrary(path:ConstCharStar):Bool;

	@:native('SDL_GL_GetProcAddress')
	static function GL_GetProcAddress(proc:ConstCharStar):SDL_FunctionPointer;

	@:native('SDL_GL_UnloadLibrary')
	static function GL_UnloadLibrary():Void;

	@:native('SDL_GL_ExtensionSupported')
	static function GL_ExtensionSupported(extension:ConstCharStar):Bool;

	@:native('SDL_GL_ResetAttributes')
	static function GL_ResetAttributes():Void;

	@:native('SDL_GL_SetAttribute')
	static function GL_SetAttribute(attr:SDL_GLAttr, value:Int):Bool;

	@:native('SDL_GL_GetAttribute')
	static function GL_GetAttribute(attr:SDL_GLAttr, value:RawPointer<Int>):Bool;

	@:native('SDL_GL_CreateContext')
	static function GL_CreateContext(window:RawPointer<SDL_Window>):SDL_GLContext;

	@:native('SDL_GL_MakeCurrent')
	static function GL_MakeCurrent(window:RawPointer<SDL_Window>, context:SDL_GLContext):Bool;

	@:native('SDL_GL_GetCurrentWindow')
	static function GL_GetCurrentWindow():RawPointer<SDL_Window>;

	@:native('SDL_GL_GetCurrentContext')
	static function GL_GetCurrentContext():SDL_GLContext;

	@:native('SDL_GL_SetSwapInterval')
	static function GL_SetSwapInterval(interval:Int):Bool;

	@:native('SDL_GL_GetSwapInterval')
	static function GL_GetSwapInterval(interval:RawPointer<Int>):Bool;

	@:native('SDL_GL_SwapWindow')
	static function GL_SwapWindow(window:RawPointer<SDL_Window>):Bool;

	@:native('SDL_GL_DestroyContext')
	static function GL_DestroyContext(context:SDL_GLContext):Bool;
}
