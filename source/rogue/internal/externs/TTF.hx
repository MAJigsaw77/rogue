package rogue.internal.externs;

import cpp.CastCharStar;
import cpp.ConstCharStar;
import cpp.Float32;
import cpp.RawConstPointer;
import cpp.RawPointer;
import cpp.SizeT;
import cpp.UInt32;
import cpp.UInt8;

import rogue.internal.externs.SDL;

@:include('SDL3_ttf/SDL_ttf.h')
@:native('TTF_Font')
extern class TTF_Font {}

@:include('SDL3_ttf/SDL_ttf.h')
@:native('TTF_FontStyleFlags')
@:scalar
@:coreType
@:notNull
extern abstract TTF_FontStyleFlags from UInt32 to UInt32 {}

extern enum abstract TTF_HintingFlags(TTF_HintingFlags_Impl)
{
	@:native('TTF_HINTING_INVALID')
	var TTF_HINTING_INVALID;

	@:native('TTF_HINTING_NORMAL')
	var TTF_HINTING_NORMAL;

	@:native('TTF_HINTING_LIGHT')
	var TTF_HINTING_LIGHT;

	@:native('TTF_HINTING_MONO')
	var TTF_HINTING_MONO;

	@:native('TTF_HINTING_NONE')
	var TTF_HINTING_NONE;

	@:native('TTF_HINTING_LIGHT_SUBPIXEL')
	var TTF_HINTING_LIGHT_SUBPIXEL;

	@:from
	static public inline function fromInt(i:Int):TTF_HintingFlags
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3_ttf/SDL_ttf.h')
@:native('TTF_HintingFlags')
private extern class TTF_HintingFlags_Impl {}

extern enum abstract TTF_HorizontalAlignment(TTF_HorizontalAlignment_Impl)
{
	@:native('TTF_HORIZONTAL_ALIGN_INVALID')
	var TTF_HORIZONTAL_ALIGN_INVALID;

	@:native('TTF_HORIZONTAL_ALIGN_LEFT')
	var TTF_HORIZONTAL_ALIGN_LEFT;

	@:native('TTF_HORIZONTAL_ALIGN_CENTER')
	var TTF_HORIZONTAL_ALIGN_CENTER;

	@:native('TTF_HORIZONTAL_ALIGN_RIGHT')
	var TTF_HORIZONTAL_ALIGN_RIGHT;

	@:from
	static public inline function fromInt(i:Int):TTF_HorizontalAlignment
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3_ttf/SDL_ttf.h')
@:native('TTF_HorizontalAlignment')
private extern class TTF_HorizontalAlignment_Impl {}

extern enum abstract TTF_Direction(TTF_Direction_Impl)
{
	@:native('TTF_DIRECTION_INVALID')
	var TTF_DIRECTION_INVALID;

	@:native('TTF_DIRECTION_LTR')
	var TTF_DIRECTION_LTR;

	@:native('TTF_DIRECTION_RTL')
	var TTF_DIRECTION_RTL;

	@:native('TTF_DIRECTION_TTB')
	var TTF_DIRECTION_TTB;

	@:native('TTF_DIRECTION_BTT')
	var TTF_DIRECTION_BTT;

	@:from
	static public inline function fromInt(i:Int):TTF_Direction
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3_ttf/SDL_ttf.h')
@:native('TTF_Direction')
private extern class TTF_Direction_Impl {}

extern enum abstract TTF_ImageType(TTF_ImageType_Impl)
{
	@:native('TTF_IMAGE_INVALID')
	var TTF_IMAGE_INVALID;

	@:native('TTF_IMAGE_ALPHA')
	var TTF_IMAGE_ALPHA;

	@:native('TTF_IMAGE_COLOR')
	var TTF_IMAGE_COLOR;

	@:native('TTF_IMAGE_SDF')
	var TTF_IMAGE_SDF;

	@:from
	static public inline function fromInt(i:Int):TTF_ImageType
		return cast i;

	@:to extern public inline function toInt():Int
		return untyped this;
}

@:include('SDL3_ttf/SDL_ttf.h')
@:native('TTF_ImageType')
private extern class TTF_ImageType_Impl {}

@:include('SDL3_ttf/SDL_ttf.h')
@:native('TTF_TextEngine')
extern class TTF_TextEngine {}

@:include('SDL3_ttf/SDL_ttf.h')
@:native('TTF_TextData')
extern class TTF_TextData {}

@:include('SDL3_ttf/SDL_ttf.h')
@:structAccess
@:native('TTF_Text')
extern class TTF_Text
{
	function new():Void;

	var text:CastCharStar;
	var num_lines:Int;
	var refcount:Int;
	var internal:RawPointer<TTF_TextData>;
}

@:include('SDL3_ttf/SDL_ttf.h')
@:native('TTF_SubStringFlags')
@:scalar
@:coreType
@:notNull
extern abstract TTF_SubStringFlags from UInt32 to UInt32 {}

@:include('SDL3_ttf/SDL_ttf.h')
@:structAccess
@:native('TTF_SubString')
extern class TTF_SubString
{
	function new():Void;

	var flags:TTF_SubStringFlags;
	var offset:Int;
	var length:Int;
	var line_index:Int;
	var cluster_index:Int;
	var rect:SDL_Rect;
}

/**
 * This class provides static methods to interact with the `SDL_ttf` library.
 */
@:include('SDL3_ttf/SDL_ttf.h')
extern class TTF
{
	@:native('TTF_Version')
	static function Version():Int;

	@:native('TTF_GetFreeTypeVersion')
	static function GetFreeTypeVersion(major:RawPointer<Int>, minor:RawPointer<Int>, patch:RawPointer<Int>):Void;

	@:native('TTF_GetHarfBuzzVersion')
	static function GetHarfBuzzVersion(major:RawPointer<Int>, minor:RawPointer<Int>, patch:RawPointer<Int>):Void;

	@:native('TTF_Init')
	static function Init():Bool;

	@:native('TTF_OpenFont')
	static function OpenFont(file:ConstCharStar, ptsize:Float32):RawPointer<TTF_Font>;

	@:native('TTF_OpenFontIO')
	static function OpenFontIO(src:RawPointer<SDL_IOStream>, closeio:Bool, ptsize:Float32):RawPointer<TTF_Font>;

	@:native('TTF_OpenFontWithProperties')
	static function OpenFontWithProperties(props:SDL_PropertiesID):RawPointer<TTF_Font>;

	@:native('TTF_PROP_FONT_CREATE_FILENAME_STRING')
	static var PROP_FONT_CREATE_FILENAME_STRING:ConstCharStar;

	@:native('TTF_PROP_FONT_CREATE_IOSTREAM_POINTER')
	static var PROP_FONT_CREATE_IOSTREAM_POINTER:ConstCharStar;

	@:native('TTF_PROP_FONT_CREATE_IOSTREAM_OFFSET_NUMBER')
	static var PROP_FONT_CREATE_IOSTREAM_OFFSET_NUMBER:ConstCharStar;

	@:native('TTF_PROP_FONT_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN')
	static var PROP_FONT_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN:ConstCharStar;

	@:native('TTF_PROP_FONT_CREATE_SIZE_FLOAT')
	static var PROP_FONT_CREATE_SIZE_FLOAT:ConstCharStar;

	@:native('TTF_PROP_FONT_CREATE_FACE_NUMBER')
	static var PROP_FONT_CREATE_FACE_NUMBER:ConstCharStar;

	@:native('TTF_PROP_FONT_CREATE_HORIZONTAL_DPI_NUMBER')
	static var PROP_FONT_CREATE_HORIZONTAL_DPI_NUMBER:ConstCharStar;

	@:native('TTF_PROP_FONT_CREATE_VERTICAL_DPI_NUMBER')
	static var PROP_FONT_CREATE_VERTICAL_DPI_NUMBER:ConstCharStar;

	@:native('TTF_PROP_FONT_CREATE_EXISTING_FONT')
	static var PROP_FONT_CREATE_EXISTING_FONT:ConstCharStar;

	@:native('TTF_CopyFont')
	static function CopyFont(existing_font:RawPointer<TTF_Font>):RawPointer<TTF_Font>;

	@:native('TTF_GetFontProperties')
	static function GetFontProperties(font:RawPointer<TTF_Font>):SDL_PropertiesID;

	@:native('TTF_PROP_FONT_OUTLINE_LINE_CAP_NUMBER')
	static var PROP_FONT_OUTLINE_LINE_CAP_NUMBER:ConstCharStar;

	@:native('TTF_PROP_FONT_OUTLINE_LINE_JOIN_NUMBER')
	static var PROP_FONT_OUTLINE_LINE_JOIN_NUMBER:ConstCharStar;

	@:native('TTF_PROP_FONT_OUTLINE_MITER_LIMIT_NUMBER')
	static var PROP_FONT_OUTLINE_MITER_LIMIT_NUMBER:ConstCharStar;

	@:native('TTF_GetFontGeneration')
	static function GetFontGeneration(font:RawPointer<TTF_Font>):UInt32;

	@:native('TTF_AddFallbackFont')
	static function AddFallbackFont(font:RawPointer<TTF_Font>, fallback:RawPointer<TTF_Font>):Bool;

	@:native('TTF_RemoveFallbackFont')
	static function RemoveFallbackFont(font:RawPointer<TTF_Font>, fallback:RawPointer<TTF_Font>):Void;

	@:native('TTF_ClearFallbackFonts')
	static function ClearFallbackFonts(font:RawPointer<TTF_Font>):Void;

	@:native('TTF_SetFontSize')
	static function SetFontSize(font:RawPointer<TTF_Font>, ptsize:Float32):Bool;

	@:native('TTF_SetFontSizeDPI')
	static function SetFontSizeDPI(font:RawPointer<TTF_Font>, ptsize:Float32, hdpi:Int, vdpi:Int):Bool;

	@:native('TTF_GetFontSize')
	static function GetFontSize(font:RawPointer<TTF_Font>):Float32;

	@:native('TTF_GetFontDPI')
	static function GetFontDPI(font:RawPointer<TTF_Font>, hdpi:RawPointer<Int>, vdpi:RawPointer<Int>):Bool;

	@:native('TTF_STYLE_NORMAL')
	static var STYLE_NORMAL:UInt32;

	@:native('TTF_STYLE_BOLD')
	static var STYLE_BOLD:UInt32;

	@:native('TTF_STYLE_ITALIC')
	static var STYLE_ITALIC:UInt32;

	@:native('TTF_STYLE_UNDERLINE')
	static var STYLE_UNDERLINE:UInt32;

	@:native('TTF_STYLE_STRIKETHROUGH')
	static var STYLE_STRIKETHROUGH:UInt32;

	@:native('TTF_SetFontStyle')
	static function SetFontStyle(font:RawPointer<TTF_Font>, style:TTF_FontStyleFlags):Void;

	@:native('TTF_GetFontStyle')
	static function GetFontStyle(font:RawPointer<TTF_Font>):TTF_FontStyleFlags;

	@:native('TTF_SetFontOutline')
	static function SetFontOutline(font:RawPointer<TTF_Font>, outline:Int):Bool;

	@:native('TTF_GetFontOutline')
	static function GetFontOutline(font:RawPointer<TTF_Font>):Int;

	@:native('TTF_SetFontHinting')
	static function SetFontHinting(font:RawPointer<TTF_Font>, hinting:TTF_HintingFlags):Void;

	@:native('TTF_GetNumFontFaces')
	static function GetNumFontFaces(font:RawPointer<TTF_Font>):Int;

	@:native('TTF_GetFontHinting')
	static function GetFontHinting(font:RawPointer<TTF_Font>):TTF_HintingFlags;

	@:native('TTF_SetFontSDF')
	static function SetFontSDF(font:RawPointer<TTF_Font>, enabled:Bool):Bool;

	@:native('TTF_GetFontSDF')
	static function GetFontSDF(font:RawPointer<TTF_Font>):Bool;

	@:native('TTF_GetFontWeight')
	static function GetFontWeight(font:RawPointer<TTF_Font>):Int;

	@:native('TTF_FONT_WEIGHT_THIN')
	static var FONT_WEIGHT_THIN:UInt32;

	@:native('TTF_FONT_WEIGHT_EXTRA_LIGHT')
	static var FONT_WEIGHT_EXTRA_LIGHT:UInt32;

	@:native('TTF_FONT_WEIGHT_LIGHT')
	static var FONT_WEIGHT_LIGHT:UInt32;

	@:native('TTF_FONT_WEIGHT_NORMAL')
	static var FONT_WEIGHT_NORMAL:UInt32;

	@:native('TTF_FONT_WEIGHT_MEDIUM')
	static var FONT_WEIGHT_MEDIUM:UInt32;

	@:native('TTF_FONT_WEIGHT_SEMI_BOLD')
	static var FONT_WEIGHT_SEMI_BOLD:UInt32;

	@:native('TTF_FONT_WEIGHT_BOLD')
	static var FONT_WEIGHT_BOLD:UInt32;

	@:native('TTF_FONT_WEIGHT_EXTRA_BOLD')
	static var FONT_WEIGHT_EXTRA_BOLD:UInt32;

	@:native('TTF_FONT_WEIGHT_BLACK')
	static var FONT_WEIGHT_BLACK:UInt32;

	@:native('TTF_FONT_WEIGHT_EXTRA_BLACK')
	static var FONT_WEIGHT_EXTRA_BLACK:UInt32;

	@:native('TTF_SetFontWrapAlignment')
	static function SetFontWrapAlignment(font:RawPointer<TTF_Font>, align:TTF_HorizontalAlignment):Void;

	@:native('TTF_GetFontWrapAlignment')
	static function GetFontWrapAlignment(font:RawPointer<TTF_Font>):TTF_HorizontalAlignment;

	@:native('TTF_GetFontHeight')
	static function GetFontHeight(font:RawPointer<TTF_Font>):Int;

	@:native('TTF_GetFontAscent')
	static function GetFontAscent(font:RawPointer<TTF_Font>):Int;

	@:native('TTF_GetFontDescent')
	static function GetFontDescent(font:RawPointer<TTF_Font>):Int;

	@:native('TTF_SetFontLineSkip')
	static function SetFontLineSkip(font:RawPointer<TTF_Font>, lineskip:Int):Void;

	@:native('TTF_GetFontLineSkip')
	static function GetFontLineSkip(font:RawPointer<TTF_Font>):Int;

	@:native('TTF_SetFontKerning')
	static function SetFontKerning(font:RawPointer<TTF_Font>, enabled:Bool):Void;

	@:native('TTF_GetFontKerning')
	static function GetFontKerning(font:RawPointer<TTF_Font>):Bool;

	@:native('TTF_FontIsFixedWidth')
	static function FontIsFixedWidth(font:RawPointer<TTF_Font>):Bool;

	@:native('TTF_FontIsScalable')
	static function FontIsScalable(font:RawPointer<TTF_Font>):Bool;

	@:native('TTF_GetFontFamilyName')
	static function GetFontFamilyName(font:RawPointer<TTF_Font>):ConstCharStar;

	@:native('TTF_GetFontStyleName')
	static function GetFontStyleName(font:RawPointer<TTF_Font>):ConstCharStar;

	@:native('TTF_SetFontDirection')
	static function SetFontDirection(font:RawPointer<TTF_Font>, direction:TTF_Direction):Bool;

	@:native('TTF_GetFontDirection')
	static function GetFontDirection(font:RawPointer<TTF_Font>):TTF_Direction;

	@:native('TTF_StringToTag')
	static function StringToTag(string:ConstCharStar):UInt32;

	@:native('TTF_TagToString')
	static function TagToString(tag:UInt32, string:CastCharStar, size:SizeT):Void;

	@:native('TTF_SetFontScript')
	static function SetFontScript(font:RawPointer<TTF_Font>, script:UInt32):Bool;

	@:native('TTF_GetFontScript')
	static function GetFontScript(font:RawPointer<TTF_Font>):UInt32;

	@:native('TTF_GetGlyphScript')
	static function GetGlyphScript(ch:UInt32):UInt32;

	@:native('TTF_SetFontLanguage')
	static function SetFontLanguage(font:RawPointer<TTF_Font>, language_bcp47:ConstCharStar):Bool;

	@:native('TTF_FontHasGlyph')
	static function FontHasGlyph(font:RawPointer<TTF_Font>, ch:UInt32):Bool;

	@:native('TTF_GetGlyphImage')
	static function GetGlyphImage(font:RawPointer<TTF_Font>, ch:UInt32, image_type:RawPointer<TTF_ImageType>):RawPointer<SDL_Surface>;

	@:native('TTF_GetGlyphImageForIndex')
	static function GetGlyphImageForIndex(font:RawPointer<TTF_Font>, glyph_index:UInt32, image_type:RawPointer<TTF_ImageType>):RawPointer<SDL_Surface>;

	@:native('TTF_GetGlyphMetrics')
	static function GetGlyphMetrics(font:RawPointer<TTF_Font>, ch:UInt32, minx:RawPointer<Int>, maxx:RawPointer<Int>, miny:RawPointer<Int>, maxy:RawPointer<Int>,
		advance:RawPointer<Int>):Bool;

	@:native('TTF_GetGlyphKerning')
	static function GetGlyphKerning(font:RawPointer<TTF_Font>, previous_ch:UInt32, ch:UInt32, kerning:RawPointer<Int>):Bool;

	@:native('TTF_GetStringSize')
	static function GetStringSize(font:RawPointer<TTF_Font>, text:ConstCharStar, length:SizeT, w:RawPointer<Int>, h:RawPointer<Int>):Bool;

	@:native('TTF_GetStringSizeWrapped')
	static function GetStringSizeWrapped(font:RawPointer<TTF_Font>, text:ConstCharStar, length:SizeT, wrap_width:Int, w:RawPointer<Int>, h:RawPointer<Int>):Bool;

	@:native('TTF_MeasureString')
	static function MeasureString(font:RawPointer<TTF_Font>, text:ConstCharStar, length:SizeT, max_width:Int, measured_width:RawPointer<Int>,
		measured_length:RawPointer<SizeT>):Bool;

	@:native('TTF_RenderText_Solid')
	static function RenderText_Solid(font:RawPointer<TTF_Font>, text:ConstCharStar, length:SizeT, fg:SDL_Color):RawPointer<SDL_Surface>;

	@:native('TTF_RenderText_Solid_Wrapped')
	static function RenderText_Solid_Wrapped(font:RawPointer<TTF_Font>, text:ConstCharStar, length:SizeT, fg:SDL_Color, wrapLength:Int):RawPointer<SDL_Surface>;

	@:native('TTF_RenderGlyph_Solid')
	static function RenderGlyph_Solid(font:RawPointer<TTF_Font>, ch:UInt32, fg:SDL_Color):RawPointer<SDL_Surface>;

	@:native('TTF_RenderText_Shaded')
	static function RenderText_Shaded(font:RawPointer<TTF_Font>, text:ConstCharStar, length:SizeT, fg:SDL_Color, bg:SDL_Color):RawPointer<SDL_Surface>;

	@:native('TTF_RenderText_Shaded_Wrapped')
	static function RenderText_Shaded_Wrapped(font:RawPointer<TTF_Font>, text:ConstCharStar, length:SizeT, fg:SDL_Color, bg:SDL_Color,
		wrap_width:Int):RawPointer<SDL_Surface>;

	@:native('TTF_RenderGlyph_Shaded')
	static function RenderGlyph_Shaded(font:RawPointer<TTF_Font>, ch:UInt32, fg:SDL_Color, bg:SDL_Color):RawPointer<SDL_Surface>;

	@:native('TTF_RenderText_Blended')
	static function RenderText_Blended(font:RawPointer<TTF_Font>, text:ConstCharStar, length:SizeT, fg:SDL_Color):RawPointer<SDL_Surface>;

	@:native('TTF_RenderText_Blended_Wrapped')
	static function RenderText_Blended_Wrapped(font:RawPointer<TTF_Font>, text:ConstCharStar, length:SizeT, fg:SDL_Color,
		wrap_width:Int):RawPointer<SDL_Surface>;

	@:native('TTF_RenderGlyph_Blended')
	static function RenderGlyph_Blended(font:RawPointer<TTF_Font>, ch:UInt32, fg:SDL_Color):RawPointer<SDL_Surface>;

	@:native('TTF_RenderText_LCD')
	static function RenderText_LCD(font:RawPointer<TTF_Font>, text:ConstCharStar, length:SizeT, fg:SDL_Color, bg:SDL_Color):RawPointer<SDL_Surface>;

	@:native('TTF_RenderText_LCD_Wrapped')
	static function RenderText_LCD_Wrapped(font:RawPointer<TTF_Font>, text:ConstCharStar, length:SizeT, fg:SDL_Color, bg:SDL_Color,
		wrap_width:Int):RawPointer<SDL_Surface>;

	@:native('TTF_RenderGlyph_LCD')
	static function RenderGlyph_LCD(font:RawPointer<TTF_Font>, ch:UInt32, fg:SDL_Color, bg:SDL_Color):RawPointer<SDL_Surface>;

	@:native('TTF_CreateSurfaceTextEngine')
	static function CreateSurfaceTextEngine():RawPointer<TTF_TextEngine>;

	@:native('TTF_DrawSurfaceText')
	static function DrawSurfaceText(text:RawPointer<TTF_Text>, x:Int, y:Int, surface:RawPointer<SDL_Surface>):Bool;

	@:native('TTF_DestroySurfaceTextEngine')
	static function DestroySurfaceTextEngine(engine:RawPointer<TTF_TextEngine>):Void;

	@:native('TTF_CreateText')
	static function CreateText(engine:RawPointer<TTF_TextEngine>, font:RawPointer<TTF_Font>, text:ConstCharStar, length:SizeT):RawPointer<TTF_Text>;

	@:native('TTF_GetTextProperties')
	static function GetTextProperties(text:RawPointer<TTF_Text>):SDL_PropertiesID;

	@:native('TTF_SetTextEngine')
	static function SetTextEngine(text:RawPointer<TTF_Text>, engine:RawPointer<TTF_TextEngine>):Bool;

	@:native('TTF_GetTextEngine')
	static function GetTextEngine(text:RawPointer<TTF_Text>):RawPointer<TTF_TextEngine>;

	@:native('TTF_SetTextFont')
	static function SetTextFont(text:RawPointer<TTF_Text>, font:RawPointer<TTF_Font>):Bool;

	@:native('TTF_GetTextFont')
	static function GetTextFont(text:RawPointer<TTF_Text>):RawPointer<TTF_Font>;

	@:native('TTF_SetTextDirection')
	static function SetTextDirection(text:RawPointer<TTF_Text>, direction:TTF_Direction):Bool;

	@:native('TTF_GetTextDirection')
	static function GetTextDirection(text:RawPointer<TTF_Text>):TTF_Direction;

	@:native('TTF_SetTextScript')
	static function SetTextScript(text:RawPointer<TTF_Text>, script:UInt32):Bool;

	@:native('TTF_GetTextScript')
	static function GetTextScript(text:RawPointer<TTF_Text>):UInt32;

	@:native('TTF_SetTextColor')
	static function SetTextColor(text:RawPointer<TTF_Text>, r:UInt8, g:UInt8, b:UInt8, a:UInt8):Bool;

	@:native('TTF_SetTextColorFloat')
	static function SetTextColorFloat(text:RawPointer<TTF_Text>, r:Float32, g:Float32, b:Float32, a:Float32):Bool;

	@:native('TTF_GetTextColor')
	static function GetTextColor(text:RawPointer<TTF_Text>, r:RawPointer<UInt8>, g:RawPointer<UInt8>, b:RawPointer<UInt8>, a:RawPointer<UInt8>):Bool;

	@:native('TTF_GetTextColorFloat')
	static function GetTextColorFloat(text:RawPointer<TTF_Text>, r:RawPointer<Float32>, g:RawPointer<Float32>, b:RawPointer<Float32>, a:RawPointer<Float32>):Bool;

	@:native('TTF_SetTextPosition')
	static function SetTextPosition(text:RawPointer<TTF_Text>, x:Int, y:Int):Bool;

	@:native('TTF_GetTextPosition')
	static function GetTextPosition(text:RawPointer<TTF_Text>, x:RawPointer<Int>, y:RawPointer<Int>):Bool;

	@:native('TTF_SetTextWrapWidth')
	static function SetTextWrapWidth(text:RawPointer<TTF_Text>, wrap_width:Int):Bool;

	@:native('TTF_GetTextWrapWidth')
	static function GetTextWrapWidth(text:RawPointer<TTF_Text>, wrap_width:RawPointer<Int>):Bool;

	@:native('TTF_SetTextWrapWhitespaceVisible')
	static function SetTextWrapWhitespaceVisible(text:RawPointer<TTF_Text>, visible:Bool):Bool;

	@:native('TTF_TextWrapWhitespaceVisible')
	static function TextWrapWhitespaceVisible(text:RawPointer<TTF_Text>):Bool;

	@:native('TTF_SetTextString')
	static function SetTextString(text:RawPointer<TTF_Text>, string:ConstCharStar, length:SizeT):Bool;

	@:native('TTF_InsertTextString')
	static function InsertTextString(text:RawPointer<TTF_Text>, offset:Int, string:ConstCharStar, length:SizeT):Bool;

	@:native('TTF_AppendTextString')
	static function AppendTextString(text:RawPointer<TTF_Text>, string:ConstCharStar, length:SizeT):Bool;

	@:native('TTF_DeleteTextString')
	static function DeleteTextString(text:RawPointer<TTF_Text>, offset:Int, length:Int):Bool;

	@:native('TTF_GetTextSize')
	static function GetTextSize(text:RawPointer<TTF_Text>, w:RawPointer<Int>, h:RawPointer<Int>):Bool;

	@:native('TTF_SUBSTRING_DIRECTION_MASK')
	static var SUBSTRING_DIRECTION_MASK:UInt32;

	@:native('TTF_SUBSTRING_TEXT_START')
	static var SUBSTRING_TEXT_START:UInt32;

	@:native('TTF_SUBSTRING_LINE_START')
	static var SUBSTRING_LINE_START:UInt32;

	@:native('TTF_SUBSTRING_LINE_END')
	static var SUBSTRING_LINE_END:UInt32;

	@:native('TTF_SUBSTRING_TEXT_END')
	static var SUBSTRING_TEXT_END:UInt32;

	@:native('TTF_GetTextSubString')
	static function GetTextSubString(text:RawPointer<TTF_Text>, offset:Int, substring:RawPointer<TTF_SubString>):Bool;

	@:native('TTF_GetTextSubStringForLine')
	static function GetTextSubStringForLine(text:RawPointer<TTF_Text>, line:Int, substring:RawPointer<TTF_SubString>):Bool;

	@:native('TTF_GetTextSubStringsForRange')
	static function GetTextSubStringsForRange(text:RawPointer<TTF_Text>, offset:Int, length:Int, count:RawPointer<Int>):RawPointer<RawPointer<TTF_SubString>>;

	@:native('TTF_GetTextSubStringForPoint')
	static function GetTextSubStringForPoint(text:RawPointer<TTF_Text>, x:Int, y:Int, substring:RawPointer<TTF_SubString>):Bool;

	@:native('TTF_GetPreviousTextSubString')
	static function GetPreviousTextSubString(text:RawPointer<TTF_Text>, substring:RawConstPointer<TTF_SubString>, previous:RawPointer<TTF_SubString>):Bool;

	@:native('TTF_GetNextTextSubString')
	static function GetNextTextSubString(text:RawPointer<TTF_Text>, substring:RawConstPointer<TTF_SubString>, next:RawPointer<TTF_SubString>):Bool;

	@:native('TTF_UpdateText')
	static function UpdateText(text:RawPointer<TTF_Text>):Bool;

	@:native('TTF_DestroyText')
	static function DestroyText(text:RawPointer<TTF_Text>):Void;

	@:native('TTF_CloseFont')
	static function CloseFont(font:RawPointer<TTF_Font>):Void;

	@:native('TTF_Quit')
	static function Quit():Void;

	@:native('TTF_WasInit')
	static function WasInit():Int;
}
