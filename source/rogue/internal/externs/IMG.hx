package rogue.internal.externs;

import cpp.CastCharStar;
import cpp.ConstCharStar;
import cpp.RawPointer;

import rogue.internal.externs.SDL;

@:include('SDL3_image/SDL_image.h')
@:structAccess
@:native('IMG_Animation')
extern class IMG_Animation
{
	function new():Void;

	var w:Int;
	var h:Int;
	var frames:RawPointer<RawPointer<SDL_Surface>>;
	var delays:RawPointer<Int>;
}

/**
 * This class provides static methods to interact with the `SDL_image` library.
 */
@:include('SDL3_image/SDL_image.h')
extern class IMG
{
	@:native('IMG_Version')
	static function Version():Int;

	@:native('IMG_Load')
	static function Load(file:ConstCharStar):RawPointer<SDL_Surface>;

	@:native('IMG_Load_IO')
	static function Load_IO(src:RawPointer<SDL_IOStream>, closeio:Bool):RawPointer<SDL_Surface>;

	@:native('IMG_LoadTyped_IO')
	static function LoadTyped_IO(src:RawPointer<SDL_IOStream>, closeio:Bool, type:ConstCharStar):RawPointer<SDL_Surface>;

	@:native('IMG_isAVIF')
	static function isAVIF(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isICO')
	static function isICO(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isCUR')
	static function isCUR(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isBMP')
	static function isBMP(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isGIF')
	static function isGIF(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isJPG')
	static function isJPG(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isJXL')
	static function isJXL(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isLBM')
	static function isLBM(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isPCX')
	static function isPCX(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isPNG')
	static function isPNG(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isPNM')
	static function isPNM(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isSVG')
	static function isSVG(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isQOI')
	static function isQOI(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isTIF')
	static function isTIF(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isXCF')
	static function isXCF(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isXPM')
	static function isXPM(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isXV')
	static function isXV(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_isWEBP')
	static function isWEBP(src:RawPointer<SDL_IOStream>):Bool;

	@:native('IMG_LoadAVIF_IO')
	static function LoadAVIF_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadICO_IO')
	static function LoadICO_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadCUR_IO')
	static function LoadCUR_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadBMP_IO')
	static function LoadBMP_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadGIF_IO')
	static function LoadGIF_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadJPG_IO')
	static function LoadJPG_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadJXL_IO')
	static function LoadJXL_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadLBM_IO')
	static function LoadLBM_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadPCX_IO')
	static function LoadPCX_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadPNG_IO')
	static function LoadPNG_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadPNM_IO')
	static function LoadPNM_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadSVG_IO')
	static function LoadSVG_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadQOI_IO')
	static function LoadQOI_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadTGA_IO')
	static function LoadTGA_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadTIF_IO')
	static function LoadTIF_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadXCF_IO')
	static function LoadXCF_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadXPM_IO')
	static function LoadXPM_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadXV_IO')
	static function LoadXV_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadWEBP_IO')
	static function LoadWEBP_IO(src:RawPointer<SDL_IOStream>):RawPointer<SDL_Surface>;

	@:native('IMG_LoadSizedSVG_IO')
	static function LoadSizedSVG_IO(src:RawPointer<SDL_IOStream>, width:Int, height:Int):RawPointer<SDL_Surface>;

	@:native('IMG_ReadXPMFromArray')
	static function ReadXPMFromArray(xpm:RawPointer<CastCharStar>):RawPointer<SDL_Surface>;

	@:native('IMG_ReadXPMFromArrayToRGB888')
	static function ReadXPMFromArrayToRGB888(xpm:RawPointer<CastCharStar>):RawPointer<SDL_Surface>;

	@:native('IMG_SaveAVIF')
	static function SaveAVIF(surface:RawPointer<SDL_Surface>, file:ConstCharStar, quality:Int):Bool;

	@:native('IMG_SaveAVIF_IO')
	static function SaveAVIF_IO(surface:RawPointer<SDL_Surface>, dst:RawPointer<SDL_IOStream>, closeio:Bool, quality:Int):Bool;

	@:native('IMG_SavePNG')
	static function SavePNG(surface:RawPointer<SDL_Surface>, file:ConstCharStar):Bool;

	@:native('IMG_SavePNG_IO')
	static function SavePNG_IO(surface:RawPointer<SDL_Surface>, dst:RawPointer<SDL_IOStream>, closeio:Bool):Bool;

	@:native('IMG_SaveJPG')
	static function SaveJPG(surface:RawPointer<SDL_Surface>, file:ConstCharStar, quality:Int):Bool;

	@:native('IMG_SaveJPG_IO')
	static function SaveJPG_IO(surface:RawPointer<SDL_Surface>, dst:RawPointer<SDL_IOStream>, closeio:Bool, quality:Int):Bool;

	@:native('IMG_LoadAnimation')
	static function LoadAnimation(file:ConstCharStar):RawPointer<IMG_Animation>;

	@:native('IMG_LoadAnimation_IO')
	static function LoadAnimation_IO(src:RawPointer<SDL_IOStream>, closeio:Bool):RawPointer<IMG_Animation>;

	@:native('IMG_LoadAnimationTyped_IO')
	static function LoadAnimationTyped_IO(src:RawPointer<SDL_IOStream>, closeio:Bool, type:ConstCharStar):RawPointer<IMG_Animation>;

	@:native('IMG_FreeAnimation')
	static function FreeAnimation(anim:RawPointer<IMG_Animation>):Void;

	@:native('IMG_LoadGIFAnimation_IO')
	static function LoadGIFAnimation_IO(src:RawPointer<SDL_IOStream>):RawPointer<IMG_Animation>;

	@:native('IMG_LoadWEBPAnimation_IO')
	static function LoadWEBPAnimation_IO(src:RawPointer<SDL_IOStream>):RawPointer<IMG_Animation>;
}
