package rogue.internal.externs.opengl.gles2;

import cpp.Callable;
import cpp.ConstCharStar;
import cpp.RawPointer;

typedef GLADapiproc = Callable<Void->Void>;
typedef GLADloadfunc = Callable<(name:ConstCharStar) -> GLADapiproc>;
typedef GLADuserptrloadfunc = Callable<(voidptr:RawPointer<cpp.Void>, name:ConstCharStar) -> GLADapiproc>;

@:include('glad/gles2.h')
extern class Glad
{
	@:native('GLAD_MAKE_VERSION')
	static function MAKE_VERSION(major:Int, minor:Int):Int;

	@:native('GLAD_VERSION_MAJOR')
	static function VERSION_MAJOR(version:Int):Int;

	@:native('GLAD_VERSION_MINOR')
	static function VERSION_MINOR(version:Int):Int;

	@:native('GLAD_GENERATOR_VERSION')
	static var GENERATOR_VERSION:ConstCharStar;

	@:native('gladLoadGLES2UserPtr')
	static function loadGLES2UserPtr(load:GLADuserptrloadfunc, userptr:RawPointer<cpp.Void>):Int;

	@:native('gladLoadGLES2')
	static function loadGLES2(load:GLADloadfunc):Int;
}
