package rogue.internal;

import cpp.UInt64;

import rogue.internal.externs.sdl.SDL;

class MainLoop
{
	public static var deltaTime(default, null):Float = 0;

	@:noCompletion
	static var nFrameStart(default, null):UInt64 = 0;

	@:noCompletion
	static var nFrameEnd(default, null):UInt64 = 0;

	@:noCompletion
	static var nFrameTime(default, null):UInt64 = 0;

	@:noCompletion
	static var targetFrameTime(default, null):UInt64 = 0;

	static function setTargetFPS(fps:Int):Void
	{
		if (fps < 1)
			targetFrameTime = 0;
		else
			targetFrameTime = Math.round(1e+9 / fps);
	}

	static function frameStart():Void
	{
		nFrameStart = SDL.GetTicksNS();
	}

	static function frameEnd():Void
	{
		nFrameEnd = SDL.GetTicksNS();

		nFrameTime = untyped __cpp__('{0} - {1}', nFrameEnd, nFrameStart);

		if (untyped __cpp__('{0} > {1}', targetFrameTime, 0) && untyped __cpp__('{0} < {1}', nFrameTime, targetFrameTime))
			SDL.DelayPrecise(untyped targetFrameTime - nFrameTime);

		deltaTime = untyped __cpp__('(Float)({0} - {1})', SDL.GetTicksNS(), nFrameStart) / 1e+6;
	}
}
