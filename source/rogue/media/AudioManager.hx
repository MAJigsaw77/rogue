package rogue.media;

import cpp.StdVector;
import cpp.RawPointer;

import rogue.internal.externs.openal.AL;
import rogue.internal.externs.openal.ALC;

// @:cppNamespaceCode('static void event_callback(ALCenum eventType, ALCenum deviceType, ALCdevice *device, ALCsizei length, const ALCchar *message, void *userParam)
// {
// 	hx::SetTopOfStack((int *)99, true);

// 	AudioManager_obj::eventCallback(eventType, deviceType, device, length, message, userParam);

// 	hx::SetTopOfStack((int *)0, true);
// }')
class AudioManager
{
	@:unreflective
	static var device:Null<RawPointer<ALCdevice>> = null;

	@:unreflective
	static var context:Null<RawPointer<ALCcontext>> = null;

	static function init():Void
	{
		if (context == null)
		{
			device = ALC.openDevice(null);

			if (device == null)
			{
				Sys.println('Failed to open OpenAL device.');
				return;
			}

			final attrlist:StdVector<ALCint> = new StdVector<ALCint>();

			attrlist.push_back(ALC.HRTF_SOFT);
			attrlist.push_back(ALC.FALSE);
			attrlist.push_back(0);

			context = ALC.createContext(device, attrlist.data());

			if (context == null || ALC.makeContextCurrent(context) == ALC.FALSE)
			{
				if (context != null)
				{
					ALC.destroyContext(context);
					context = null;
				}

				if (device != null)
				{
					ALC.closeDevice(device);
					device = null;
				}

				Sys.println('Failed to create OpenAL context.');

				return;
			}

			// if (ALC.isExtensionPresent(device, 'ALC_SOFT_system_events') == ALC.TRUE && ALC.isExtensionPresent(device, 'ALC_SOFT_reopen_device') == ALC.TRUE)
			// {
			// 	AL.disable(0x19AB /* AL_STOP_SOURCES_ON_DISCONNECT_SOFT */);

			// 	{
			// 		final events:StdVector<ALCenum> = new StdVector<ALCenum>();

			// 		events.push_back(ALC.EVENT_TYPE_DEFAULT_DEVICE_CHANGED_SOFT);
			// 		events.push_back(ALC.EVENT_TYPE_DEVICE_ADDED_SOFT);
			// 		events.push_back(ALC.EVENT_TYPE_DEVICE_REMOVED_SOFT);

			// 		ALC.eventControlSOFT(events.size(), events.data(), ALC.TRUE);
			// 	}

			// 	ALC.eventCallbackSOFT(untyped event_callback, null);
			// }
		}
	}

	static function shutdown():Void
	{
		ALC.makeContextCurrent(null);

		if (context != null)
		{
			ALC.destroyContext(context);
			context = null;
		}

		if (device != null)
		{
			ALC.closeDevice(device);
			device = null;
		}
	}

	// @:noDebug
	// static function eventCallback(eventType:ALCenum, deviceType:ALCenum, device:RawPointer<ALCdevice>, length:ALCsizei, message:ConstALCcharStar, userParam:RawPointer<ALCvoid>):Void
	// {
	// 	Sys.println('$eventType, $deviceType, $length, ${message.toString()}');

	// 	if (eventType == ALC.EVENT_TYPE_DEFAULT_DEVICE_CHANGED_SOFT && deviceType == ALC.PLAYBACK_DEVICE_SOFT)
	// 	{
	// 		if (device != null)
	// 			ALC.reopenDeviceSOFT(device, null, null);
	// 		else if (AudioManager.device != null)
	// 			ALC.reopenDeviceSOFT(AudioManager.device, null, null);
	// 	}
	// }
}
