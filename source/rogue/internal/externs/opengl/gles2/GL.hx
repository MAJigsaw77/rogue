package rogue.internal.externs.opengl.gles2;

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

@:include('glad/gles2.h')
@:native('GLenum')
@:scalar
@:coreType
@:notNull
extern abstract GLenum from UInt32 to UInt32
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLenum)');
	}
}

@:include('glad/gles2.h')
@:native('GLboolean')
@:scalar
@:coreType
@:notNull
extern abstract GLboolean from UInt8 to UInt8
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLboolean)');
	}
}

@:include('glad/gles2.h')
@:native('GLbitfield')
@:scalar
@:coreType
@:notNull
extern abstract GLbitfield from UInt32 to UInt32
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLbitfield)');
	}
}

@:include('glad/gles2.h')
@:native('GLbyte')
@:scalar
@:coreType
@:notNull
extern abstract GLbyte from Int8 to Int8
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLbyte)');
	}
}

@:include('glad/gles2.h')
@:native('GLubyte')
@:scalar
@:coreType
@:notNull
extern abstract GLubyte from UInt8 to UInt8
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLubyte)');
	}
}

@:include('glad/gles2.h')
@:native('GLshort')
@:scalar
@:coreType
@:notNull
extern abstract GLshort from Int16 to Int16
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLshort)');
	}
}

@:include('glad/gles2.h')
@:native('GLushort')
@:scalar
@:coreType
@:notNull
extern abstract GLushort from UInt16 to UInt16
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLushort)');
	}
}

@:include('glad/gles2.h')
@:native('GLint')
@:scalar
@:coreType
@:notNull
extern abstract GLint from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLint)');
	}
}

@:include('glad/gles2.h')
@:native('GLuint')
@:scalar
@:coreType
@:notNull
extern abstract GLuint from UInt32 to UInt32
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLuint)');
	}
}

@:include('glad/gles2.h')
@:native('GLclampx')
@:scalar
@:coreType
@:notNull
extern abstract GLclampx from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLclampx)');
	}
}

@:include('glad/gles2.h')
@:native('GLsizei')
@:scalar
@:coreType
@:notNull
extern abstract GLsizei from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLsizei)');
	}
}

@:include('glad/gles2.h')
@:native('GLfloat')
@:scalar
@:coreType
@:notNull
extern abstract GLfloat from Float32 to Float32
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLfloat)');
	}
}

@:include('glad/gles2.h')
@:native('GLclampf')
@:scalar
@:coreType
@:notNull
extern abstract GLclampf from Float32 to Float32
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLclampf)');
	}
}

@:include('glad/gles2.h')
@:native('GLdouble')
@:scalar
@:coreType
@:notNull
extern abstract GLdouble from Float to Float
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLdouble)');
	}
}

@:include('glad/gles2.h')
@:native('GLclampd')
@:scalar
@:coreType
@:notNull
extern abstract GLclampd from Float to Float
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLclampd)');
	}
}

@:include('glad/gles2.h')
@:native('GLeglClientBufferEXT')
@:scalar
@:coreType
@:notNull
extern abstract GLeglClientBufferEXT from RawPointer<Void> to RawPointer<Void>
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLeglClientBufferEXT)');
	}
}

@:include('glad/gles2.h')
@:native('GLeglImageOES')
@:scalar
@:coreType
@:notNull
extern abstract GLeglImageOES from RawPointer<Void> to RawPointer<Void>
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLeglImageOES)');
	}
}

@:include('glad/gles2.h')
@:native('GLchar')
@:scalar
@:coreType
@:notNull
extern abstract GLchar from Char to Char
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLchar)');
	}
}

extern abstract ConstGLcharStar(RawConstPointer<GLchar>) to (RawConstPointer<GLchar>)
{
	inline function new(s:String)
		this = untyped s.__s;

	@:from
	static public inline function fromString(s:String):ConstGLcharStar
		return new ConstGLcharStar(s);

	@:to extern public inline function toString():String
		return new String(untyped this);

	@:to extern public inline function toPointer():RawConstPointer<GLchar>
		return this;
}

abstract CastGLcharStar(RawPointer<GLchar>) to (RawPointer<GLchar>)
{
	inline function new(s:String)
		this = cast untyped s.__s;

	@:from
	static public inline function fromString(s:String):CastGLcharStar
		return new CastGLcharStar(s);

	@:to extern public inline function toPointer():RawPointer<GLchar>
		return this;
}

@:include('glad/gles2.h')
@:native('GLcharARB')
@:scalar
@:coreType
@:notNull
extern abstract GLcharARB from Char to Char
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLcharARB)');
	}
}

extern abstract ConstGLcharARBStar(RawConstPointer<GLcharARB>) to (RawConstPointer<GLcharARB>)
{
	inline function new(s:String)
		this = untyped s.__s;

	@:from
	static public inline function fromString(s:String):ConstGLcharARBStar
		return new ConstGLcharARBStar(s);

	@:to extern public inline function toString():String
		return new String(untyped this);

	@:to extern public inline function toPointer():RawConstPointer<GLcharARB>
		return this;
}

abstract CastGLcharARBStar(RawPointer<GLcharARB>) to (RawPointer<GLcharARB>)
{
	inline function new(s:String)
		this = cast untyped s.__s;

	@:from
	static public inline function fromString(s:String):CastGLcharARBStar
		return new CastGLcharARBStar(s);

	@:to extern public inline function toPointer():RawPointer<GLcharARB>
		return this;
}

@:include('glad/gles2.h')
@:native('GLhandleARB')
@:scalar
@:coreType
@:notNull
extern abstract GLhandleARB from #if apple RawPointer<Void> #else UInt32 #end to #if apple RawPointer<Void> #else UInt32 #end
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLhandleARB)');
	}
}

@:include('glad/gles2.h')
@:native('GLhalf')
@:scalar
@:coreType
@:notNull
extern abstract GLhalf from UInt16 to UInt16
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLhalf)');
	}
}

@:include('glad/gles2.h')
@:native('GLhalfARB')
@:scalar
@:coreType
@:notNull
extern abstract GLhalfARB from UInt16 to UInt16
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLhalfARB)');
	}
}

@:include('glad/gles2.h')
@:native('GLfixed')
@:scalar
@:coreType
@:notNull
extern abstract GLfixed from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLfixed)');
	}
}

@:include('glad/gles2.h')
@:native('GLintptr')
@:scalar
@:coreType
@:notNull
extern abstract GLintptr from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLintptr)');
	}
}

@:include('glad/gles2.h')
@:native('GLintptrARB')
@:scalar
@:coreType
@:notNull
extern abstract GLintptrARB from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLintptrARB)');
	}
}

@:include('glad/gles2.h')
@:native('GLsizeiptr')
@:scalar
@:coreType
@:notNull
extern abstract GLsizeiptr from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLsizeiptr)');
	}
}

@:include('glad/gles2.h')
@:native('GLsizeiptrARB')
@:scalar
@:coreType
@:notNull
extern abstract GLsizeiptrARB from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLsizeiptrARB)');
	}
}

@:include('glad/gles2.h')
@:native('GLint64')
@:scalar
@:coreType
@:notNull
extern abstract GLint64 from Int64 to Int64
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLint64)');
	}
}

@:include('glad/gles2.h')
@:native('GLint64EXT')
@:scalar
@:coreType
@:notNull
extern abstract GLint64EXT from Int64 to Int64
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLint64EXT)');
	}
}

@:include('glad/gles2.h')
@:native('GLuint64')
@:scalar
@:coreType
@:notNull
extern abstract GLuint64 from UInt64 to UInt64
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLuint64)');
	}
}

@:include('glad/gles2.h')
@:native('GLuint64EXT')
@:scalar
@:coreType
@:notNull
extern abstract GLuint64EXT from UInt64 to UInt64
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLuint64EXT)');
	}
}

@:include('glad/gles2.h')
@:native('GLsync')
@:scalar
@:coreType
@:notNull
extern abstract GLsync from RawPointer<Void> to RawPointer<Void>
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLsync)');
	}
}

@:include('glad/gles2.h')
@:native('_cl_context')
extern class CL_Context {}

@:include('glad/gles2.h')
@:native('_cl_event')
extern class CL_Event {}

typedef GLDEBUGPROC = Callable<(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, message:ConstGLcharStar, userParam:RawConstPointer<Void>)->Void>;

typedef GLDEBUGPROCARB = Callable<(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, message:ConstGLcharStar, userParam:RawConstPointer<Void>)->Void>;

typedef GLDEBUGPROCKHR = Callable<(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, message:ConstGLcharStar, userParam:RawConstPointer<Void>)->Void>;

typedef GLDEBUGPROCAMD = Callable<(id:GLuint, category:GLenum, severity:GLenum, length:GLsizei, message:ConstGLcharStar, userParam:RawPointer<Void>)->Void>;

@:include('glad/gles2.h')
@:native('GLhalfNV')
@:scalar
@:coreType
@:notNull
extern abstract GLhalfNV from UInt16 to UInt16
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLhalfNV)');
	}
}

@:include('glad/gles2.h')
@:native('GLvdpauSurfaceNV')
@:scalar
@:coreType
@:notNull
extern abstract GLvdpauSurfaceNV from Int to Int
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLvdpauSurfaceNV)');
	}
}

typedef GLVULKANPROCNV = Callable<Void->Void>;

@:include('glad/gles2.h')
extern class GL
{
	@:native('GL_DEPTH_BUFFER_BIT')
	static var DEPTH_BUFFER_BIT:GLuint;

	@:native('GL_STENCIL_BUFFER_BIT')
	static var STENCIL_BUFFER_BIT:GLuint;

	@:native('GL_COLOR_BUFFER_BIT')
	static var COLOR_BUFFER_BIT:GLuint;

	@:native('GL_FALSE')
	static var FALSE:GLuint;

	@:native('GL_TRUE')
	static var TRUE:GLuint;

	@:native('GL_POINTS')
	static var POINTS:GLuint;

	@:native('GL_LINES')
	static var LINES:GLuint;

	@:native('GL_LINE_LOOP')
	static var LINE_LOOP:GLuint;

	@:native('GL_LINE_STRIP')
	static var LINE_STRIP:GLuint;

	@:native('GL_TRIANGLES')
	static var TRIANGLES:GLuint;

	@:native('GL_TRIANGLE_STRIP')
	static var TRIANGLE_STRIP:GLuint;

	@:native('GL_TRIANGLE_FAN')
	static var TRIANGLE_FAN:GLuint;

	@:native('GL_ZERO')
	static var ZERO:GLuint;

	@:native('GL_ONE')
	static var ONE:GLuint;

	@:native('GL_SRC_COLOR')
	static var SRC_COLOR:GLuint;

	@:native('GL_ONE_MINUS_SRC_COLOR')
	static var ONE_MINUS_SRC_COLOR:GLuint;

	@:native('GL_SRC_ALPHA')
	static var SRC_ALPHA:GLuint;

	@:native('GL_ONE_MINUS_SRC_ALPHA')
	static var ONE_MINUS_SRC_ALPHA:GLuint;

	@:native('GL_DST_ALPHA')
	static var DST_ALPHA:GLuint;

	@:native('GL_ONE_MINUS_DST_ALPHA')
	static var ONE_MINUS_DST_ALPHA:GLuint;

	@:native('GL_DST_COLOR')
	static var DST_COLOR:GLuint;

	@:native('GL_ONE_MINUS_DST_COLOR')
	static var ONE_MINUS_DST_COLOR:GLuint;

	@:native('GL_SRC_ALPHA_SATURATE')
	static var SRC_ALPHA_SATURATE:GLuint;

	@:native('GL_FUNC_ADD')
	static var FUNC_ADD:GLuint;

	@:native('GL_BLEND_EQUATION')
	static var BLEND_EQUATION:GLuint;

	@:native('GL_BLEND_EQUATION_RGB')
	static var BLEND_EQUATION_RGB:GLuint;

	@:native('GL_BLEND_EQUATION_ALPHA')
	static var BLEND_EQUATION_ALPHA:GLuint;

	@:native('GL_FUNC_SUBTRACT')
	static var FUNC_SUBTRACT:GLuint;

	@:native('GL_FUNC_REVERSE_SUBTRACT')
	static var FUNC_REVERSE_SUBTRACT:GLuint;

	@:native('GL_BLEND_DST_RGB')
	static var BLEND_DST_RGB:GLuint;

	@:native('GL_BLEND_SRC_RGB')
	static var BLEND_SRC_RGB:GLuint;

	@:native('GL_BLEND_DST_ALPHA')
	static var BLEND_DST_ALPHA:GLuint;

	@:native('GL_BLEND_SRC_ALPHA')
	static var BLEND_SRC_ALPHA:GLuint;

	@:native('GL_CONSTANT_COLOR')
	static var CONSTANT_COLOR:GLuint;

	@:native('GL_ONE_MINUS_CONSTANT_COLOR')
	static var ONE_MINUS_CONSTANT_COLOR:GLuint;

	@:native('GL_CONSTANT_ALPHA')
	static var CONSTANT_ALPHA:GLuint;

	@:native('GL_ONE_MINUS_CONSTANT_ALPHA')
	static var ONE_MINUS_CONSTANT_ALPHA:GLuint;

	@:native('GL_BLEND_COLOR')
	static var BLEND_COLOR:GLuint;

	@:native('GL_ARRAY_BUFFER')
	static var ARRAY_BUFFER:GLuint;

	@:native('GL_ELEMENT_ARRAY_BUFFER')
	static var ELEMENT_ARRAY_BUFFER:GLuint;

	@:native('GL_ARRAY_BUFFER_BINDING')
	static var ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_ELEMENT_ARRAY_BUFFER_BINDING')
	static var ELEMENT_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_STREAM_DRAW')
	static var STREAM_DRAW:GLuint;

	@:native('GL_STATIC_DRAW')
	static var STATIC_DRAW:GLuint;

	@:native('GL_DYNAMIC_DRAW')
	static var DYNAMIC_DRAW:GLuint;

	@:native('GL_BUFFER_SIZE')
	static var BUFFER_SIZE:GLuint;

	@:native('GL_BUFFER_USAGE')
	static var BUFFER_USAGE:GLuint;

	@:native('GL_CURRENT_VERTEX_ATTRIB')
	static var CURRENT_VERTEX_ATTRIB:GLuint;

	@:native('GL_FRONT')
	static var FRONT:GLuint;

	@:native('GL_BACK')
	static var BACK:GLuint;

	@:native('GL_FRONT_AND_BACK')
	static var FRONT_AND_BACK:GLuint;

	@:native('GL_TEXTURE_2D')
	static var TEXTURE_2D:GLuint;

	@:native('GL_CULL_FACE')
	static var CULL_FACE:GLuint;

	@:native('GL_BLEND')
	static var BLEND:GLuint;

	@:native('GL_DITHER')
	static var DITHER:GLuint;

	@:native('GL_STENCIL_TEST')
	static var STENCIL_TEST:GLuint;

	@:native('GL_DEPTH_TEST')
	static var DEPTH_TEST:GLuint;

	@:native('GL_SCISSOR_TEST')
	static var SCISSOR_TEST:GLuint;

	@:native('GL_POLYGON_OFFSET_FILL')
	static var POLYGON_OFFSET_FILL:GLuint;

	@:native('GL_SAMPLE_ALPHA_TO_COVERAGE')
	static var SAMPLE_ALPHA_TO_COVERAGE:GLuint;

	@:native('GL_SAMPLE_COVERAGE')
	static var SAMPLE_COVERAGE:GLuint;

	@:native('GL_NO_ERROR')
	static var NO_ERROR:GLuint;

	@:native('GL_INVALID_ENUM')
	static var INVALID_ENUM:GLuint;

	@:native('GL_INVALID_VALUE')
	static var INVALID_VALUE:GLuint;

	@:native('GL_INVALID_OPERATION')
	static var INVALID_OPERATION:GLuint;

	@:native('GL_OUT_OF_MEMORY')
	static var OUT_OF_MEMORY:GLuint;

	@:native('GL_CW')
	static var CW:GLuint;

	@:native('GL_CCW')
	static var CCW:GLuint;

	@:native('GL_LINE_WIDTH')
	static var LINE_WIDTH:GLuint;

	@:native('GL_ALIASED_POINT_SIZE_RANGE')
	static var ALIASED_POINT_SIZE_RANGE:GLuint;

	@:native('GL_ALIASED_LINE_WIDTH_RANGE')
	static var ALIASED_LINE_WIDTH_RANGE:GLuint;

	@:native('GL_CULL_FACE_MODE')
	static var CULL_FACE_MODE:GLuint;

	@:native('GL_FRONT_FACE')
	static var FRONT_FACE:GLuint;

	@:native('GL_DEPTH_RANGE')
	static var DEPTH_RANGE:GLuint;

	@:native('GL_DEPTH_WRITEMASK')
	static var DEPTH_WRITEMASK:GLuint;

	@:native('GL_DEPTH_CLEAR_VALUE')
	static var DEPTH_CLEAR_VALUE:GLuint;

	@:native('GL_DEPTH_FUNC')
	static var DEPTH_FUNC:GLuint;

	@:native('GL_STENCIL_CLEAR_VALUE')
	static var STENCIL_CLEAR_VALUE:GLuint;

	@:native('GL_STENCIL_FUNC')
	static var STENCIL_FUNC:GLuint;

	@:native('GL_STENCIL_FAIL')
	static var STENCIL_FAIL:GLuint;

	@:native('GL_STENCIL_PASS_DEPTH_FAIL')
	static var STENCIL_PASS_DEPTH_FAIL:GLuint;

	@:native('GL_STENCIL_PASS_DEPTH_PASS')
	static var STENCIL_PASS_DEPTH_PASS:GLuint;

	@:native('GL_STENCIL_REF')
	static var STENCIL_REF:GLuint;

	@:native('GL_STENCIL_VALUE_MASK')
	static var STENCIL_VALUE_MASK:GLuint;

	@:native('GL_STENCIL_WRITEMASK')
	static var STENCIL_WRITEMASK:GLuint;

	@:native('GL_STENCIL_BACK_FUNC')
	static var STENCIL_BACK_FUNC:GLuint;

	@:native('GL_STENCIL_BACK_FAIL')
	static var STENCIL_BACK_FAIL:GLuint;

	@:native('GL_STENCIL_BACK_PASS_DEPTH_FAIL')
	static var STENCIL_BACK_PASS_DEPTH_FAIL:GLuint;

	@:native('GL_STENCIL_BACK_PASS_DEPTH_PASS')
	static var STENCIL_BACK_PASS_DEPTH_PASS:GLuint;

	@:native('GL_STENCIL_BACK_REF')
	static var STENCIL_BACK_REF:GLuint;

	@:native('GL_STENCIL_BACK_VALUE_MASK')
	static var STENCIL_BACK_VALUE_MASK:GLuint;

	@:native('GL_STENCIL_BACK_WRITEMASK')
	static var STENCIL_BACK_WRITEMASK:GLuint;

	@:native('GL_VIEWPORT')
	static var VIEWPORT:GLuint;

	@:native('GL_SCISSOR_BOX')
	static var SCISSOR_BOX:GLuint;

	@:native('GL_COLOR_CLEAR_VALUE')
	static var COLOR_CLEAR_VALUE:GLuint;

	@:native('GL_COLOR_WRITEMASK')
	static var COLOR_WRITEMASK:GLuint;

	@:native('GL_UNPACK_ALIGNMENT')
	static var UNPACK_ALIGNMENT:GLuint;

	@:native('GL_PACK_ALIGNMENT')
	static var PACK_ALIGNMENT:GLuint;

	@:native('GL_MAX_TEXTURE_SIZE')
	static var MAX_TEXTURE_SIZE:GLuint;

	@:native('GL_MAX_VIEWPORT_DIMS')
	static var MAX_VIEWPORT_DIMS:GLuint;

	@:native('GL_SUBPIXEL_BITS')
	static var SUBPIXEL_BITS:GLuint;

	@:native('GL_RED_BITS')
	static var RED_BITS:GLuint;

	@:native('GL_GREEN_BITS')
	static var GREEN_BITS:GLuint;

	@:native('GL_BLUE_BITS')
	static var BLUE_BITS:GLuint;

	@:native('GL_ALPHA_BITS')
	static var ALPHA_BITS:GLuint;

	@:native('GL_DEPTH_BITS')
	static var DEPTH_BITS:GLuint;

	@:native('GL_STENCIL_BITS')
	static var STENCIL_BITS:GLuint;

	@:native('GL_POLYGON_OFFSET_UNITS')
	static var POLYGON_OFFSET_UNITS:GLuint;

	@:native('GL_POLYGON_OFFSET_FACTOR')
	static var POLYGON_OFFSET_FACTOR:GLuint;

	@:native('GL_TEXTURE_BINDING_2D')
	static var TEXTURE_BINDING_2D:GLuint;

	@:native('GL_SAMPLE_BUFFERS')
	static var SAMPLE_BUFFERS:GLuint;

	@:native('GL_SAMPLES')
	static var SAMPLES:GLuint;

	@:native('GL_SAMPLE_COVERAGE_VALUE')
	static var SAMPLE_COVERAGE_VALUE:GLuint;

	@:native('GL_SAMPLE_COVERAGE_INVERT')
	static var SAMPLE_COVERAGE_INVERT:GLuint;

	@:native('GL_NUM_COMPRESSED_TEXTURE_FORMATS')
	static var NUM_COMPRESSED_TEXTURE_FORMATS:GLuint;

	@:native('GL_COMPRESSED_TEXTURE_FORMATS')
	static var COMPRESSED_TEXTURE_FORMATS:GLuint;

	@:native('GL_DONT_CARE')
	static var DONT_CARE:GLuint;

	@:native('GL_FASTEST')
	static var FASTEST:GLuint;

	@:native('GL_NICEST')
	static var NICEST:GLuint;

	@:native('GL_GENERATE_MIPMAP_HINT')
	static var GENERATE_MIPMAP_HINT:GLuint;

	@:native('GL_BYTE')
	static var BYTE:GLuint;

	@:native('GL_UNSIGNED_BYTE')
	static var UNSIGNED_BYTE:GLuint;

	@:native('GL_SHORT')
	static var SHORT:GLuint;

	@:native('GL_UNSIGNED_SHORT')
	static var UNSIGNED_SHORT:GLuint;

	@:native('GL_INT')
	static var INT:GLuint;

	@:native('GL_UNSIGNED_INT')
	static var UNSIGNED_INT:GLuint;

	@:native('GL_FLOAT')
	static var FLOAT:GLuint;

	@:native('GL_FIXED')
	static var FIXED:GLuint;

	@:native('GL_DEPTH_COMPONENT')
	static var DEPTH_COMPONENT:GLuint;

	@:native('GL_ALPHA')
	static var ALPHA:GLuint;

	@:native('GL_RGB')
	static var RGB:GLuint;

	@:native('GL_RGBA')
	static var RGBA:GLuint;

	@:native('GL_LUMINANCE')
	static var LUMINANCE:GLuint;

	@:native('GL_LUMINANCE_ALPHA')
	static var LUMINANCE_ALPHA:GLuint;

	@:native('GL_UNSIGNED_SHORT_4_4_4_4')
	static var UNSIGNED_SHORT_4_4_4_4:GLuint;

	@:native('GL_UNSIGNED_SHORT_5_5_5_1')
	static var UNSIGNED_SHORT_5_5_5_1:GLuint;

	@:native('GL_UNSIGNED_SHORT_5_6_5')
	static var UNSIGNED_SHORT_5_6_5:GLuint;

	@:native('GL_FRAGMENT_SHADER')
	static var FRAGMENT_SHADER:GLuint;

	@:native('GL_VERTEX_SHADER')
	static var VERTEX_SHADER:GLuint;

	@:native('GL_MAX_VERTEX_ATTRIBS')
	static var MAX_VERTEX_ATTRIBS:GLuint;

	@:native('GL_MAX_VERTEX_UNIFORM_VECTORS')
	static var MAX_VERTEX_UNIFORM_VECTORS:GLuint;

	@:native('GL_MAX_VARYING_VECTORS')
	static var MAX_VARYING_VECTORS:GLuint;

	@:native('GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS')
	static var MAX_COMBINED_TEXTURE_IMAGE_UNITS:GLuint;

	@:native('GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS')
	static var MAX_VERTEX_TEXTURE_IMAGE_UNITS:GLuint;

	@:native('GL_MAX_TEXTURE_IMAGE_UNITS')
	static var MAX_TEXTURE_IMAGE_UNITS:GLuint;

	@:native('GL_MAX_FRAGMENT_UNIFORM_VECTORS')
	static var MAX_FRAGMENT_UNIFORM_VECTORS:GLuint;

	@:native('GL_SHADER_TYPE')
	static var SHADER_TYPE:GLuint;

	@:native('GL_DELETE_STATUS')
	static var DELETE_STATUS:GLuint;

	@:native('GL_LINK_STATUS')
	static var LINK_STATUS:GLuint;

	@:native('GL_VALIDATE_STATUS')
	static var VALIDATE_STATUS:GLuint;

	@:native('GL_ATTACHED_SHADERS')
	static var ATTACHED_SHADERS:GLuint;

	@:native('GL_ACTIVE_UNIFORMS')
	static var ACTIVE_UNIFORMS:GLuint;

	@:native('GL_ACTIVE_UNIFORM_MAX_LENGTH')
	static var ACTIVE_UNIFORM_MAX_LENGTH:GLuint;

	@:native('GL_ACTIVE_ATTRIBUTES')
	static var ACTIVE_ATTRIBUTES:GLuint;

	@:native('GL_ACTIVE_ATTRIBUTE_MAX_LENGTH')
	static var ACTIVE_ATTRIBUTE_MAX_LENGTH:GLuint;

	@:native('GL_SHADING_LANGUAGE_VERSION')
	static var SHADING_LANGUAGE_VERSION:GLuint;

	@:native('GL_CURRENT_PROGRAM')
	static var CURRENT_PROGRAM:GLuint;

	@:native('GL_NEVER')
	static var NEVER:GLuint;

	@:native('GL_LESS')
	static var LESS:GLuint;

	@:native('GL_EQUAL')
	static var EQUAL:GLuint;

	@:native('GL_LEQUAL')
	static var LEQUAL:GLuint;

	@:native('GL_GREATER')
	static var GREATER:GLuint;

	@:native('GL_NOTEQUAL')
	static var NOTEQUAL:GLuint;

	@:native('GL_GEQUAL')
	static var GEQUAL:GLuint;

	@:native('GL_ALWAYS')
	static var ALWAYS:GLuint;

	@:native('GL_KEEP')
	static var KEEP:GLuint;

	@:native('GL_REPLACE')
	static var REPLACE:GLuint;

	@:native('GL_INCR')
	static var INCR:GLuint;

	@:native('GL_DECR')
	static var DECR:GLuint;

	@:native('GL_INVERT')
	static var INVERT:GLuint;

	@:native('GL_INCR_WRAP')
	static var INCR_WRAP:GLuint;

	@:native('GL_DECR_WRAP')
	static var DECR_WRAP:GLuint;

	@:native('GL_VENDOR')
	static var VENDOR:GLuint;

	@:native('GL_RENDERER')
	static var RENDERER:GLuint;

	@:native('GL_VERSION')
	static var VERSION:GLuint;

	@:native('GL_EXTENSIONS')
	static var EXTENSIONS:GLuint;

	@:native('GL_NEAREST')
	static var NEAREST:GLuint;

	@:native('GL_LINEAR')
	static var LINEAR:GLuint;

	@:native('GL_NEAREST_MIPMAP_NEAREST')
	static var NEAREST_MIPMAP_NEAREST:GLuint;

	@:native('GL_LINEAR_MIPMAP_NEAREST')
	static var LINEAR_MIPMAP_NEAREST:GLuint;

	@:native('GL_NEAREST_MIPMAP_LINEAR')
	static var NEAREST_MIPMAP_LINEAR:GLuint;

	@:native('GL_LINEAR_MIPMAP_LINEAR')
	static var LINEAR_MIPMAP_LINEAR:GLuint;

	@:native('GL_TEXTURE_MAG_FILTER')
	static var TEXTURE_MAG_FILTER:GLuint;

	@:native('GL_TEXTURE_MIN_FILTER')
	static var TEXTURE_MIN_FILTER:GLuint;

	@:native('GL_TEXTURE_WRAP_S')
	static var TEXTURE_WRAP_S:GLuint;

	@:native('GL_TEXTURE_WRAP_T')
	static var TEXTURE_WRAP_T:GLuint;

	@:native('GL_TEXTURE')
	static var TEXTURE:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP')
	static var TEXTURE_CUBE_MAP:GLuint;

	@:native('GL_TEXTURE_BINDING_CUBE_MAP')
	static var TEXTURE_BINDING_CUBE_MAP:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_POSITIVE_X')
	static var TEXTURE_CUBE_MAP_POSITIVE_X:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_NEGATIVE_X')
	static var TEXTURE_CUBE_MAP_NEGATIVE_X:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_POSITIVE_Y')
	static var TEXTURE_CUBE_MAP_POSITIVE_Y:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_NEGATIVE_Y')
	static var TEXTURE_CUBE_MAP_NEGATIVE_Y:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_POSITIVE_Z')
	static var TEXTURE_CUBE_MAP_POSITIVE_Z:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_NEGATIVE_Z')
	static var TEXTURE_CUBE_MAP_NEGATIVE_Z:GLuint;

	@:native('GL_MAX_CUBE_MAP_TEXTURE_SIZE')
	static var MAX_CUBE_MAP_TEXTURE_SIZE:GLuint;

	@:native('GL_TEXTURE0')
	static var TEXTURE0:GLuint;

	@:native('GL_TEXTURE1')
	static var TEXTURE1:GLuint;

	@:native('GL_TEXTURE2')
	static var TEXTURE2:GLuint;

	@:native('GL_TEXTURE3')
	static var TEXTURE3:GLuint;

	@:native('GL_TEXTURE4')
	static var TEXTURE4:GLuint;

	@:native('GL_TEXTURE5')
	static var TEXTURE5:GLuint;

	@:native('GL_TEXTURE6')
	static var TEXTURE6:GLuint;

	@:native('GL_TEXTURE7')
	static var TEXTURE7:GLuint;

	@:native('GL_TEXTURE8')
	static var TEXTURE8:GLuint;

	@:native('GL_TEXTURE9')
	static var TEXTURE9:GLuint;

	@:native('GL_TEXTURE10')
	static var TEXTURE10:GLuint;

	@:native('GL_TEXTURE11')
	static var TEXTURE11:GLuint;

	@:native('GL_TEXTURE12')
	static var TEXTURE12:GLuint;

	@:native('GL_TEXTURE13')
	static var TEXTURE13:GLuint;

	@:native('GL_TEXTURE14')
	static var TEXTURE14:GLuint;

	@:native('GL_TEXTURE15')
	static var TEXTURE15:GLuint;

	@:native('GL_TEXTURE16')
	static var TEXTURE16:GLuint;

	@:native('GL_TEXTURE17')
	static var TEXTURE17:GLuint;

	@:native('GL_TEXTURE18')
	static var TEXTURE18:GLuint;

	@:native('GL_TEXTURE19')
	static var TEXTURE19:GLuint;

	@:native('GL_TEXTURE20')
	static var TEXTURE20:GLuint;

	@:native('GL_TEXTURE21')
	static var TEXTURE21:GLuint;

	@:native('GL_TEXTURE22')
	static var TEXTURE22:GLuint;

	@:native('GL_TEXTURE23')
	static var TEXTURE23:GLuint;

	@:native('GL_TEXTURE24')
	static var TEXTURE24:GLuint;

	@:native('GL_TEXTURE25')
	static var TEXTURE25:GLuint;

	@:native('GL_TEXTURE26')
	static var TEXTURE26:GLuint;

	@:native('GL_TEXTURE27')
	static var TEXTURE27:GLuint;

	@:native('GL_TEXTURE28')
	static var TEXTURE28:GLuint;

	@:native('GL_TEXTURE29')
	static var TEXTURE29:GLuint;

	@:native('GL_TEXTURE30')
	static var TEXTURE30:GLuint;

	@:native('GL_TEXTURE31')
	static var TEXTURE31:GLuint;

	@:native('GL_ACTIVE_TEXTURE')
	static var ACTIVE_TEXTURE:GLuint;

	@:native('GL_REPEAT')
	static var REPEAT:GLuint;

	@:native('GL_CLAMP_TO_EDGE')
	static var CLAMP_TO_EDGE:GLuint;

	@:native('GL_MIRRORED_REPEAT')
	static var MIRRORED_REPEAT:GLuint;

	@:native('GL_FLOAT_VEC2')
	static var FLOAT_VEC2:GLuint;

	@:native('GL_FLOAT_VEC3')
	static var FLOAT_VEC3:GLuint;

	@:native('GL_FLOAT_VEC4')
	static var FLOAT_VEC4:GLuint;

	@:native('GL_INT_VEC2')
	static var INT_VEC2:GLuint;

	@:native('GL_INT_VEC3')
	static var INT_VEC3:GLuint;

	@:native('GL_INT_VEC4')
	static var INT_VEC4:GLuint;

	@:native('GL_BOOL')
	static var BOOL:GLuint;

	@:native('GL_BOOL_VEC2')
	static var BOOL_VEC2:GLuint;

	@:native('GL_BOOL_VEC3')
	static var BOOL_VEC3:GLuint;

	@:native('GL_BOOL_VEC4')
	static var BOOL_VEC4:GLuint;

	@:native('GL_FLOAT_MAT2')
	static var FLOAT_MAT2:GLuint;

	@:native('GL_FLOAT_MAT3')
	static var FLOAT_MAT3:GLuint;

	@:native('GL_FLOAT_MAT4')
	static var FLOAT_MAT4:GLuint;

	@:native('GL_SAMPLER_2D')
	static var SAMPLER_2D:GLuint;

	@:native('GL_SAMPLER_CUBE')
	static var SAMPLER_CUBE:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_ENABLED')
	static var VERTEX_ATTRIB_ARRAY_ENABLED:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_SIZE')
	static var VERTEX_ATTRIB_ARRAY_SIZE:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_STRIDE')
	static var VERTEX_ATTRIB_ARRAY_STRIDE:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_TYPE')
	static var VERTEX_ATTRIB_ARRAY_TYPE:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_NORMALIZED')
	static var VERTEX_ATTRIB_ARRAY_NORMALIZED:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_POINTER')
	static var VERTEX_ATTRIB_ARRAY_POINTER:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING')
	static var VERTEX_ATTRIB_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_IMPLEMENTATION_COLOR_READ_TYPE')
	static var IMPLEMENTATION_COLOR_READ_TYPE:GLuint;

	@:native('GL_IMPLEMENTATION_COLOR_READ_FORMAT')
	static var IMPLEMENTATION_COLOR_READ_FORMAT:GLuint;

	@:native('GL_COMPILE_STATUS')
	static var COMPILE_STATUS:GLuint;

	@:native('GL_INFO_LOG_LENGTH')
	static var INFO_LOG_LENGTH:GLuint;

	@:native('GL_SHADER_SOURCE_LENGTH')
	static var SHADER_SOURCE_LENGTH:GLuint;

	@:native('GL_SHADER_COMPILER')
	static var SHADER_COMPILER:GLuint;

	@:native('GL_SHADER_BINARY_FORMATS')
	static var SHADER_BINARY_FORMATS:GLuint;

	@:native('GL_NUM_SHADER_BINARY_FORMATS')
	static var NUM_SHADER_BINARY_FORMATS:GLuint;

	@:native('GL_LOW_FLOAT')
	static var LOW_FLOAT:GLuint;

	@:native('GL_MEDIUM_FLOAT')
	static var MEDIUM_FLOAT:GLuint;

	@:native('GL_HIGH_FLOAT')
	static var HIGH_FLOAT:GLuint;

	@:native('GL_LOW_INT')
	static var LOW_INT:GLuint;

	@:native('GL_MEDIUM_INT')
	static var MEDIUM_INT:GLuint;

	@:native('GL_HIGH_INT')
	static var HIGH_INT:GLuint;

	@:native('GL_FRAMEBUFFER')
	static var FRAMEBUFFER:GLuint;

	@:native('GL_RENDERBUFFER')
	static var RENDERBUFFER:GLuint;

	@:native('GL_RGBA4')
	static var RGBA4:GLuint;

	@:native('GL_RGB5_A1')
	static var RGB5_A1:GLuint;

	@:native('GL_RGB565')
	static var RGB565:GLuint;

	@:native('GL_DEPTH_COMPONENT16')
	static var DEPTH_COMPONENT16:GLuint;

	@:native('GL_STENCIL_INDEX8')
	static var STENCIL_INDEX8:GLuint;

	@:native('GL_RENDERBUFFER_WIDTH')
	static var RENDERBUFFER_WIDTH:GLuint;

	@:native('GL_RENDERBUFFER_HEIGHT')
	static var RENDERBUFFER_HEIGHT:GLuint;

	@:native('GL_RENDERBUFFER_INTERNAL_FORMAT')
	static var RENDERBUFFER_INTERNAL_FORMAT:GLuint;

	@:native('GL_RENDERBUFFER_RED_SIZE')
	static var RENDERBUFFER_RED_SIZE:GLuint;

	@:native('GL_RENDERBUFFER_GREEN_SIZE')
	static var RENDERBUFFER_GREEN_SIZE:GLuint;

	@:native('GL_RENDERBUFFER_BLUE_SIZE')
	static var RENDERBUFFER_BLUE_SIZE:GLuint;

	@:native('GL_RENDERBUFFER_ALPHA_SIZE')
	static var RENDERBUFFER_ALPHA_SIZE:GLuint;

	@:native('GL_RENDERBUFFER_DEPTH_SIZE')
	static var RENDERBUFFER_DEPTH_SIZE:GLuint;

	@:native('GL_RENDERBUFFER_STENCIL_SIZE')
	static var RENDERBUFFER_STENCIL_SIZE:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE')
	static var FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME')
	static var FRAMEBUFFER_ATTACHMENT_OBJECT_NAME:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE:GLuint;

	@:native('GL_COLOR_ATTACHMENT0')
	static var COLOR_ATTACHMENT0:GLuint;

	@:native('GL_DEPTH_ATTACHMENT')
	static var DEPTH_ATTACHMENT:GLuint;

	@:native('GL_STENCIL_ATTACHMENT')
	static var STENCIL_ATTACHMENT:GLuint;

	@:native('GL_NONE')
	static var NONE:GLuint;

	@:native('GL_FRAMEBUFFER_COMPLETE')
	static var FRAMEBUFFER_COMPLETE:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT')
	static var FRAMEBUFFER_INCOMPLETE_ATTACHMENT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT')
	static var FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS')
	static var FRAMEBUFFER_INCOMPLETE_DIMENSIONS:GLuint;

	@:native('GL_FRAMEBUFFER_UNSUPPORTED')
	static var FRAMEBUFFER_UNSUPPORTED:GLuint;

	@:native('GL_FRAMEBUFFER_BINDING')
	static var FRAMEBUFFER_BINDING:GLuint;

	@:native('GL_RENDERBUFFER_BINDING')
	static var RENDERBUFFER_BINDING:GLuint;

	@:native('GL_MAX_RENDERBUFFER_SIZE')
	static var MAX_RENDERBUFFER_SIZE:GLuint;

	@:native('GL_INVALID_FRAMEBUFFER_OPERATION')
	static var INVALID_FRAMEBUFFER_OPERATION:GLuint;

	@:native('GL_READ_BUFFER')
	static var READ_BUFFER:GLuint;

	@:native('GL_UNPACK_ROW_LENGTH')
	static var UNPACK_ROW_LENGTH:GLuint;

	@:native('GL_UNPACK_SKIP_ROWS')
	static var UNPACK_SKIP_ROWS:GLuint;

	@:native('GL_UNPACK_SKIP_PIXELS')
	static var UNPACK_SKIP_PIXELS:GLuint;

	@:native('GL_PACK_ROW_LENGTH')
	static var PACK_ROW_LENGTH:GLuint;

	@:native('GL_PACK_SKIP_ROWS')
	static var PACK_SKIP_ROWS:GLuint;

	@:native('GL_PACK_SKIP_PIXELS')
	static var PACK_SKIP_PIXELS:GLuint;

	@:native('GL_COLOR')
	static var COLOR:GLuint;

	@:native('GL_DEPTH')
	static var DEPTH:GLuint;

	@:native('GL_STENCIL')
	static var STENCIL:GLuint;

	@:native('GL_RED')
	static var RED:GLuint;

	@:native('GL_RGB8')
	static var RGB8:GLuint;

	@:native('GL_RGBA8')
	static var RGBA8:GLuint;

	@:native('GL_RGB10_A2')
	static var RGB10_A2:GLuint;

	@:native('GL_TEXTURE_BINDING_3D')
	static var TEXTURE_BINDING_3D:GLuint;

	@:native('GL_UNPACK_SKIP_IMAGES')
	static var UNPACK_SKIP_IMAGES:GLuint;

	@:native('GL_UNPACK_IMAGE_HEIGHT')
	static var UNPACK_IMAGE_HEIGHT:GLuint;

	@:native('GL_TEXTURE_3D')
	static var TEXTURE_3D:GLuint;

	@:native('GL_TEXTURE_WRAP_R')
	static var TEXTURE_WRAP_R:GLuint;

	@:native('GL_MAX_3D_TEXTURE_SIZE')
	static var MAX_3D_TEXTURE_SIZE:GLuint;

	@:native('GL_UNSIGNED_INT_2_10_10_10_REV')
	static var UNSIGNED_INT_2_10_10_10_REV:GLuint;

	@:native('GL_MAX_ELEMENTS_VERTICES')
	static var MAX_ELEMENTS_VERTICES:GLuint;

	@:native('GL_MAX_ELEMENTS_INDICES')
	static var MAX_ELEMENTS_INDICES:GLuint;

	@:native('GL_TEXTURE_MIN_LOD')
	static var TEXTURE_MIN_LOD:GLuint;

	@:native('GL_TEXTURE_MAX_LOD')
	static var TEXTURE_MAX_LOD:GLuint;

	@:native('GL_TEXTURE_BASE_LEVEL')
	static var TEXTURE_BASE_LEVEL:GLuint;

	@:native('GL_TEXTURE_MAX_LEVEL')
	static var TEXTURE_MAX_LEVEL:GLuint;

	@:native('GL_MIN')
	static var MIN:GLuint;

	@:native('GL_MAX')
	static var MAX:GLuint;

	@:native('GL_DEPTH_COMPONENT24')
	static var DEPTH_COMPONENT24:GLuint;

	@:native('GL_MAX_TEXTURE_LOD_BIAS')
	static var MAX_TEXTURE_LOD_BIAS:GLuint;

	@:native('GL_TEXTURE_COMPARE_MODE')
	static var TEXTURE_COMPARE_MODE:GLuint;

	@:native('GL_TEXTURE_COMPARE_FUNC')
	static var TEXTURE_COMPARE_FUNC:GLuint;

	@:native('GL_CURRENT_QUERY')
	static var CURRENT_QUERY:GLuint;

	@:native('GL_QUERY_RESULT')
	static var QUERY_RESULT:GLuint;

	@:native('GL_QUERY_RESULT_AVAILABLE')
	static var QUERY_RESULT_AVAILABLE:GLuint;

	@:native('GL_BUFFER_MAPPED')
	static var BUFFER_MAPPED:GLuint;

	@:native('GL_BUFFER_MAP_POINTER')
	static var BUFFER_MAP_POINTER:GLuint;

	@:native('GL_STREAM_READ')
	static var STREAM_READ:GLuint;

	@:native('GL_STREAM_COPY')
	static var STREAM_COPY:GLuint;

	@:native('GL_STATIC_READ')
	static var STATIC_READ:GLuint;

	@:native('GL_STATIC_COPY')
	static var STATIC_COPY:GLuint;

	@:native('GL_DYNAMIC_READ')
	static var DYNAMIC_READ:GLuint;

	@:native('GL_DYNAMIC_COPY')
	static var DYNAMIC_COPY:GLuint;

	@:native('GL_MAX_DRAW_BUFFERS')
	static var MAX_DRAW_BUFFERS:GLuint;

	@:native('GL_DRAW_BUFFER0')
	static var DRAW_BUFFER0:GLuint;

	@:native('GL_DRAW_BUFFER1')
	static var DRAW_BUFFER1:GLuint;

	@:native('GL_DRAW_BUFFER2')
	static var DRAW_BUFFER2:GLuint;

	@:native('GL_DRAW_BUFFER3')
	static var DRAW_BUFFER3:GLuint;

	@:native('GL_DRAW_BUFFER4')
	static var DRAW_BUFFER4:GLuint;

	@:native('GL_DRAW_BUFFER5')
	static var DRAW_BUFFER5:GLuint;

	@:native('GL_DRAW_BUFFER6')
	static var DRAW_BUFFER6:GLuint;

	@:native('GL_DRAW_BUFFER7')
	static var DRAW_BUFFER7:GLuint;

	@:native('GL_DRAW_BUFFER8')
	static var DRAW_BUFFER8:GLuint;

	@:native('GL_DRAW_BUFFER9')
	static var DRAW_BUFFER9:GLuint;

	@:native('GL_DRAW_BUFFER10')
	static var DRAW_BUFFER10:GLuint;

	@:native('GL_DRAW_BUFFER11')
	static var DRAW_BUFFER11:GLuint;

	@:native('GL_DRAW_BUFFER12')
	static var DRAW_BUFFER12:GLuint;

	@:native('GL_DRAW_BUFFER13')
	static var DRAW_BUFFER13:GLuint;

	@:native('GL_DRAW_BUFFER14')
	static var DRAW_BUFFER14:GLuint;

	@:native('GL_DRAW_BUFFER15')
	static var DRAW_BUFFER15:GLuint;

	@:native('GL_MAX_FRAGMENT_UNIFORM_COMPONENTS')
	static var MAX_FRAGMENT_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_VERTEX_UNIFORM_COMPONENTS')
	static var MAX_VERTEX_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_SAMPLER_3D')
	static var SAMPLER_3D:GLuint;

	@:native('GL_SAMPLER_2D_SHADOW')
	static var SAMPLER_2D_SHADOW:GLuint;

	@:native('GL_FRAGMENT_SHADER_DERIVATIVE_HINT')
	static var FRAGMENT_SHADER_DERIVATIVE_HINT:GLuint;

	@:native('GL_PIXEL_PACK_BUFFER')
	static var PIXEL_PACK_BUFFER:GLuint;

	@:native('GL_PIXEL_UNPACK_BUFFER')
	static var PIXEL_UNPACK_BUFFER:GLuint;

	@:native('GL_PIXEL_PACK_BUFFER_BINDING')
	static var PIXEL_PACK_BUFFER_BINDING:GLuint;

	@:native('GL_PIXEL_UNPACK_BUFFER_BINDING')
	static var PIXEL_UNPACK_BUFFER_BINDING:GLuint;

	@:native('GL_FLOAT_MAT2x3')
	static var FLOAT_MAT2x3:GLuint;

	@:native('GL_FLOAT_MAT2x4')
	static var FLOAT_MAT2x4:GLuint;

	@:native('GL_FLOAT_MAT3x2')
	static var FLOAT_MAT3x2:GLuint;

	@:native('GL_FLOAT_MAT3x4')
	static var FLOAT_MAT3x4:GLuint;

	@:native('GL_FLOAT_MAT4x2')
	static var FLOAT_MAT4x2:GLuint;

	@:native('GL_FLOAT_MAT4x3')
	static var FLOAT_MAT4x3:GLuint;

	@:native('GL_SRGB')
	static var SRGB:GLuint;

	@:native('GL_SRGB8')
	static var SRGB8:GLuint;

	@:native('GL_SRGB8_ALPHA8')
	static var SRGB8_ALPHA8:GLuint;

	@:native('GL_COMPARE_REF_TO_TEXTURE')
	static var COMPARE_REF_TO_TEXTURE:GLuint;

	@:native('GL_MAJOR_VERSION')
	static var MAJOR_VERSION:GLuint;

	@:native('GL_MINOR_VERSION')
	static var MINOR_VERSION:GLuint;

	@:native('GL_NUM_EXTENSIONS')
	static var NUM_EXTENSIONS:GLuint;

	@:native('GL_RGBA32F')
	static var RGBA32F:GLuint;

	@:native('GL_RGB32F')
	static var RGB32F:GLuint;

	@:native('GL_RGBA16F')
	static var RGBA16F:GLuint;

	@:native('GL_RGB16F')
	static var RGB16F:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_INTEGER')
	static var VERTEX_ATTRIB_ARRAY_INTEGER:GLuint;

	@:native('GL_MAX_ARRAY_TEXTURE_LAYERS')
	static var MAX_ARRAY_TEXTURE_LAYERS:GLuint;

	@:native('GL_MIN_PROGRAM_TEXEL_OFFSET')
	static var MIN_PROGRAM_TEXEL_OFFSET:GLuint;

	@:native('GL_MAX_PROGRAM_TEXEL_OFFSET')
	static var MAX_PROGRAM_TEXEL_OFFSET:GLuint;

	@:native('GL_MAX_VARYING_COMPONENTS')
	static var MAX_VARYING_COMPONENTS:GLuint;

	@:native('GL_TEXTURE_2D_ARRAY')
	static var TEXTURE_2D_ARRAY:GLuint;

	@:native('GL_TEXTURE_BINDING_2D_ARRAY')
	static var TEXTURE_BINDING_2D_ARRAY:GLuint;

	@:native('GL_R11F_G11F_B10F')
	static var R11F_G11F_B10F:GLuint;

	@:native('GL_UNSIGNED_INT_10F_11F_11F_REV')
	static var UNSIGNED_INT_10F_11F_11F_REV:GLuint;

	@:native('GL_RGB9_E5')
	static var RGB9_E5:GLuint;

	@:native('GL_UNSIGNED_INT_5_9_9_9_REV')
	static var UNSIGNED_INT_5_9_9_9_REV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH')
	static var TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_MODE')
	static var TRANSFORM_FEEDBACK_BUFFER_MODE:GLuint;

	@:native('GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS')
	static var MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_VARYINGS')
	static var TRANSFORM_FEEDBACK_VARYINGS:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_START')
	static var TRANSFORM_FEEDBACK_BUFFER_START:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_SIZE')
	static var TRANSFORM_FEEDBACK_BUFFER_SIZE:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN')
	static var TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN:GLuint;

	@:native('GL_RASTERIZER_DISCARD')
	static var RASTERIZER_DISCARD:GLuint;

	@:native('GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS')
	static var MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS:GLuint;

	@:native('GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS')
	static var MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS:GLuint;

	@:native('GL_INTERLEAVED_ATTRIBS')
	static var INTERLEAVED_ATTRIBS:GLuint;

	@:native('GL_SEPARATE_ATTRIBS')
	static var SEPARATE_ATTRIBS:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER')
	static var TRANSFORM_FEEDBACK_BUFFER:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_BINDING')
	static var TRANSFORM_FEEDBACK_BUFFER_BINDING:GLuint;

	@:native('GL_RGBA32UI')
	static var RGBA32UI:GLuint;

	@:native('GL_RGB32UI')
	static var RGB32UI:GLuint;

	@:native('GL_RGBA16UI')
	static var RGBA16UI:GLuint;

	@:native('GL_RGB16UI')
	static var RGB16UI:GLuint;

	@:native('GL_RGBA8UI')
	static var RGBA8UI:GLuint;

	@:native('GL_RGB8UI')
	static var RGB8UI:GLuint;

	@:native('GL_RGBA32I')
	static var RGBA32I:GLuint;

	@:native('GL_RGB32I')
	static var RGB32I:GLuint;

	@:native('GL_RGBA16I')
	static var RGBA16I:GLuint;

	@:native('GL_RGB16I')
	static var RGB16I:GLuint;

	@:native('GL_RGBA8I')
	static var RGBA8I:GLuint;

	@:native('GL_RGB8I')
	static var RGB8I:GLuint;

	@:native('GL_RED_INTEGER')
	static var RED_INTEGER:GLuint;

	@:native('GL_RGB_INTEGER')
	static var RGB_INTEGER:GLuint;

	@:native('GL_RGBA_INTEGER')
	static var RGBA_INTEGER:GLuint;

	@:native('GL_SAMPLER_2D_ARRAY')
	static var SAMPLER_2D_ARRAY:GLuint;

	@:native('GL_SAMPLER_2D_ARRAY_SHADOW')
	static var SAMPLER_2D_ARRAY_SHADOW:GLuint;

	@:native('GL_SAMPLER_CUBE_SHADOW')
	static var SAMPLER_CUBE_SHADOW:GLuint;

	@:native('GL_UNSIGNED_INT_VEC2')
	static var UNSIGNED_INT_VEC2:GLuint;

	@:native('GL_UNSIGNED_INT_VEC3')
	static var UNSIGNED_INT_VEC3:GLuint;

	@:native('GL_UNSIGNED_INT_VEC4')
	static var UNSIGNED_INT_VEC4:GLuint;

	@:native('GL_INT_SAMPLER_2D')
	static var INT_SAMPLER_2D:GLuint;

	@:native('GL_INT_SAMPLER_3D')
	static var INT_SAMPLER_3D:GLuint;

	@:native('GL_INT_SAMPLER_CUBE')
	static var INT_SAMPLER_CUBE:GLuint;

	@:native('GL_INT_SAMPLER_2D_ARRAY')
	static var INT_SAMPLER_2D_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D')
	static var UNSIGNED_INT_SAMPLER_2D:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_3D')
	static var UNSIGNED_INT_SAMPLER_3D:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_CUBE')
	static var UNSIGNED_INT_SAMPLER_CUBE:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D_ARRAY')
	static var UNSIGNED_INT_SAMPLER_2D_ARRAY:GLuint;

	@:native('GL_BUFFER_ACCESS_FLAGS')
	static var BUFFER_ACCESS_FLAGS:GLuint;

	@:native('GL_BUFFER_MAP_LENGTH')
	static var BUFFER_MAP_LENGTH:GLuint;

	@:native('GL_BUFFER_MAP_OFFSET')
	static var BUFFER_MAP_OFFSET:GLuint;

	@:native('GL_DEPTH_COMPONENT32F')
	static var DEPTH_COMPONENT32F:GLuint;

	@:native('GL_DEPTH32F_STENCIL8')
	static var DEPTH32F_STENCIL8:GLuint;

	@:native('GL_FLOAT_32_UNSIGNED_INT_24_8_REV')
	static var FLOAT_32_UNSIGNED_INT_24_8_REV:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING')
	static var FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE')
	static var FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE')
	static var FRAMEBUFFER_ATTACHMENT_RED_SIZE:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE')
	static var FRAMEBUFFER_ATTACHMENT_GREEN_SIZE:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE')
	static var FRAMEBUFFER_ATTACHMENT_BLUE_SIZE:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE')
	static var FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE')
	static var FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE')
	static var FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT')
	static var FRAMEBUFFER_DEFAULT:GLuint;

	@:native('GL_FRAMEBUFFER_UNDEFINED')
	static var FRAMEBUFFER_UNDEFINED:GLuint;

	@:native('GL_DEPTH_STENCIL_ATTACHMENT')
	static var DEPTH_STENCIL_ATTACHMENT:GLuint;

	@:native('GL_DEPTH_STENCIL')
	static var DEPTH_STENCIL:GLuint;

	@:native('GL_UNSIGNED_INT_24_8')
	static var UNSIGNED_INT_24_8:GLuint;

	@:native('GL_DEPTH24_STENCIL8')
	static var DEPTH24_STENCIL8:GLuint;

	@:native('GL_UNSIGNED_NORMALIZED')
	static var UNSIGNED_NORMALIZED:GLuint;

	@:native('GL_DRAW_FRAMEBUFFER_BINDING')
	static var DRAW_FRAMEBUFFER_BINDING:GLuint;

	@:native('GL_READ_FRAMEBUFFER')
	static var READ_FRAMEBUFFER:GLuint;

	@:native('GL_DRAW_FRAMEBUFFER')
	static var DRAW_FRAMEBUFFER:GLuint;

	@:native('GL_READ_FRAMEBUFFER_BINDING')
	static var READ_FRAMEBUFFER_BINDING:GLuint;

	@:native('GL_RENDERBUFFER_SAMPLES')
	static var RENDERBUFFER_SAMPLES:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER:GLuint;

	@:native('GL_MAX_COLOR_ATTACHMENTS')
	static var MAX_COLOR_ATTACHMENTS:GLuint;

	@:native('GL_COLOR_ATTACHMENT1')
	static var COLOR_ATTACHMENT1:GLuint;

	@:native('GL_COLOR_ATTACHMENT2')
	static var COLOR_ATTACHMENT2:GLuint;

	@:native('GL_COLOR_ATTACHMENT3')
	static var COLOR_ATTACHMENT3:GLuint;

	@:native('GL_COLOR_ATTACHMENT4')
	static var COLOR_ATTACHMENT4:GLuint;

	@:native('GL_COLOR_ATTACHMENT5')
	static var COLOR_ATTACHMENT5:GLuint;

	@:native('GL_COLOR_ATTACHMENT6')
	static var COLOR_ATTACHMENT6:GLuint;

	@:native('GL_COLOR_ATTACHMENT7')
	static var COLOR_ATTACHMENT7:GLuint;

	@:native('GL_COLOR_ATTACHMENT8')
	static var COLOR_ATTACHMENT8:GLuint;

	@:native('GL_COLOR_ATTACHMENT9')
	static var COLOR_ATTACHMENT9:GLuint;

	@:native('GL_COLOR_ATTACHMENT10')
	static var COLOR_ATTACHMENT10:GLuint;

	@:native('GL_COLOR_ATTACHMENT11')
	static var COLOR_ATTACHMENT11:GLuint;

	@:native('GL_COLOR_ATTACHMENT12')
	static var COLOR_ATTACHMENT12:GLuint;

	@:native('GL_COLOR_ATTACHMENT13')
	static var COLOR_ATTACHMENT13:GLuint;

	@:native('GL_COLOR_ATTACHMENT14')
	static var COLOR_ATTACHMENT14:GLuint;

	@:native('GL_COLOR_ATTACHMENT15')
	static var COLOR_ATTACHMENT15:GLuint;

	@:native('GL_COLOR_ATTACHMENT16')
	static var COLOR_ATTACHMENT16:GLuint;

	@:native('GL_COLOR_ATTACHMENT17')
	static var COLOR_ATTACHMENT17:GLuint;

	@:native('GL_COLOR_ATTACHMENT18')
	static var COLOR_ATTACHMENT18:GLuint;

	@:native('GL_COLOR_ATTACHMENT19')
	static var COLOR_ATTACHMENT19:GLuint;

	@:native('GL_COLOR_ATTACHMENT20')
	static var COLOR_ATTACHMENT20:GLuint;

	@:native('GL_COLOR_ATTACHMENT21')
	static var COLOR_ATTACHMENT21:GLuint;

	@:native('GL_COLOR_ATTACHMENT22')
	static var COLOR_ATTACHMENT22:GLuint;

	@:native('GL_COLOR_ATTACHMENT23')
	static var COLOR_ATTACHMENT23:GLuint;

	@:native('GL_COLOR_ATTACHMENT24')
	static var COLOR_ATTACHMENT24:GLuint;

	@:native('GL_COLOR_ATTACHMENT25')
	static var COLOR_ATTACHMENT25:GLuint;

	@:native('GL_COLOR_ATTACHMENT26')
	static var COLOR_ATTACHMENT26:GLuint;

	@:native('GL_COLOR_ATTACHMENT27')
	static var COLOR_ATTACHMENT27:GLuint;

	@:native('GL_COLOR_ATTACHMENT28')
	static var COLOR_ATTACHMENT28:GLuint;

	@:native('GL_COLOR_ATTACHMENT29')
	static var COLOR_ATTACHMENT29:GLuint;

	@:native('GL_COLOR_ATTACHMENT30')
	static var COLOR_ATTACHMENT30:GLuint;

	@:native('GL_COLOR_ATTACHMENT31')
	static var COLOR_ATTACHMENT31:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE')
	static var FRAMEBUFFER_INCOMPLETE_MULTISAMPLE:GLuint;

	@:native('GL_MAX_SAMPLES')
	static var MAX_SAMPLES:GLuint;

	@:native('GL_HALF_FLOAT')
	static var HALF_FLOAT:GLuint;

	@:native('GL_MAP_READ_BIT')
	static var MAP_READ_BIT:GLuint;

	@:native('GL_MAP_WRITE_BIT')
	static var MAP_WRITE_BIT:GLuint;

	@:native('GL_MAP_INVALIDATE_RANGE_BIT')
	static var MAP_INVALIDATE_RANGE_BIT:GLuint;

	@:native('GL_MAP_INVALIDATE_BUFFER_BIT')
	static var MAP_INVALIDATE_BUFFER_BIT:GLuint;

	@:native('GL_MAP_FLUSH_EXPLICIT_BIT')
	static var MAP_FLUSH_EXPLICIT_BIT:GLuint;

	@:native('GL_MAP_UNSYNCHRONIZED_BIT')
	static var MAP_UNSYNCHRONIZED_BIT:GLuint;

	@:native('GL_RG')
	static var RG:GLuint;

	@:native('GL_RG_INTEGER')
	static var RG_INTEGER:GLuint;

	@:native('GL_R8')
	static var R8:GLuint;

	@:native('GL_RG8')
	static var RG8:GLuint;

	@:native('GL_R16F')
	static var R16F:GLuint;

	@:native('GL_R32F')
	static var R32F:GLuint;

	@:native('GL_RG16F')
	static var RG16F:GLuint;

	@:native('GL_RG32F')
	static var RG32F:GLuint;

	@:native('GL_R8I')
	static var R8I:GLuint;

	@:native('GL_R8UI')
	static var R8UI:GLuint;

	@:native('GL_R16I')
	static var R16I:GLuint;

	@:native('GL_R16UI')
	static var R16UI:GLuint;

	@:native('GL_R32I')
	static var R32I:GLuint;

	@:native('GL_R32UI')
	static var R32UI:GLuint;

	@:native('GL_RG8I')
	static var RG8I:GLuint;

	@:native('GL_RG8UI')
	static var RG8UI:GLuint;

	@:native('GL_RG16I')
	static var RG16I:GLuint;

	@:native('GL_RG16UI')
	static var RG16UI:GLuint;

	@:native('GL_RG32I')
	static var RG32I:GLuint;

	@:native('GL_RG32UI')
	static var RG32UI:GLuint;

	@:native('GL_VERTEX_ARRAY_BINDING')
	static var VERTEX_ARRAY_BINDING:GLuint;

	@:native('GL_R8_SNORM')
	static var R8_SNORM:GLuint;

	@:native('GL_RG8_SNORM')
	static var RG8_SNORM:GLuint;

	@:native('GL_RGB8_SNORM')
	static var RGB8_SNORM:GLuint;

	@:native('GL_RGBA8_SNORM')
	static var RGBA8_SNORM:GLuint;

	@:native('GL_SIGNED_NORMALIZED')
	static var SIGNED_NORMALIZED:GLuint;

	@:native('GL_PRIMITIVE_RESTART_FIXED_INDEX')
	static var PRIMITIVE_RESTART_FIXED_INDEX:GLuint;

	@:native('GL_COPY_READ_BUFFER')
	static var COPY_READ_BUFFER:GLuint;

	@:native('GL_COPY_WRITE_BUFFER')
	static var COPY_WRITE_BUFFER:GLuint;

	@:native('GL_COPY_READ_BUFFER_BINDING')
	static var COPY_READ_BUFFER_BINDING:GLuint;

	@:native('GL_COPY_WRITE_BUFFER_BINDING')
	static var COPY_WRITE_BUFFER_BINDING:GLuint;

	@:native('GL_UNIFORM_BUFFER')
	static var UNIFORM_BUFFER:GLuint;

	@:native('GL_UNIFORM_BUFFER_BINDING')
	static var UNIFORM_BUFFER_BINDING:GLuint;

	@:native('GL_UNIFORM_BUFFER_START')
	static var UNIFORM_BUFFER_START:GLuint;

	@:native('GL_UNIFORM_BUFFER_SIZE')
	static var UNIFORM_BUFFER_SIZE:GLuint;

	@:native('GL_MAX_VERTEX_UNIFORM_BLOCKS')
	static var MAX_VERTEX_UNIFORM_BLOCKS:GLuint;

	@:native('GL_MAX_FRAGMENT_UNIFORM_BLOCKS')
	static var MAX_FRAGMENT_UNIFORM_BLOCKS:GLuint;

	@:native('GL_MAX_COMBINED_UNIFORM_BLOCKS')
	static var MAX_COMBINED_UNIFORM_BLOCKS:GLuint;

	@:native('GL_MAX_UNIFORM_BUFFER_BINDINGS')
	static var MAX_UNIFORM_BUFFER_BINDINGS:GLuint;

	@:native('GL_MAX_UNIFORM_BLOCK_SIZE')
	static var MAX_UNIFORM_BLOCK_SIZE:GLuint;

	@:native('GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS')
	static var MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS')
	static var MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT')
	static var UNIFORM_BUFFER_OFFSET_ALIGNMENT:GLuint;

	@:native('GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH')
	static var ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH:GLuint;

	@:native('GL_ACTIVE_UNIFORM_BLOCKS')
	static var ACTIVE_UNIFORM_BLOCKS:GLuint;

	@:native('GL_UNIFORM_TYPE')
	static var UNIFORM_TYPE:GLuint;

	@:native('GL_UNIFORM_SIZE')
	static var UNIFORM_SIZE:GLuint;

	@:native('GL_UNIFORM_NAME_LENGTH')
	static var UNIFORM_NAME_LENGTH:GLuint;

	@:native('GL_UNIFORM_BLOCK_INDEX')
	static var UNIFORM_BLOCK_INDEX:GLuint;

	@:native('GL_UNIFORM_OFFSET')
	static var UNIFORM_OFFSET:GLuint;

	@:native('GL_UNIFORM_ARRAY_STRIDE')
	static var UNIFORM_ARRAY_STRIDE:GLuint;

	@:native('GL_UNIFORM_MATRIX_STRIDE')
	static var UNIFORM_MATRIX_STRIDE:GLuint;

	@:native('GL_UNIFORM_IS_ROW_MAJOR')
	static var UNIFORM_IS_ROW_MAJOR:GLuint;

	@:native('GL_UNIFORM_BLOCK_BINDING')
	static var UNIFORM_BLOCK_BINDING:GLuint;

	@:native('GL_UNIFORM_BLOCK_DATA_SIZE')
	static var UNIFORM_BLOCK_DATA_SIZE:GLuint;

	@:native('GL_UNIFORM_BLOCK_NAME_LENGTH')
	static var UNIFORM_BLOCK_NAME_LENGTH:GLuint;

	@:native('GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS')
	static var UNIFORM_BLOCK_ACTIVE_UNIFORMS:GLuint;

	@:native('GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES')
	static var UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES:GLuint;

	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER')
	static var UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER:GLuint;

	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER')
	static var UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER:GLuint;

	@:native('GL_INVALID_INDEX')
	static var INVALID_INDEX:GLuint;

	@:native('GL_MAX_VERTEX_OUTPUT_COMPONENTS')
	static var MAX_VERTEX_OUTPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_FRAGMENT_INPUT_COMPONENTS')
	static var MAX_FRAGMENT_INPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_SERVER_WAIT_TIMEOUT')
	static var MAX_SERVER_WAIT_TIMEOUT:GLuint;

	@:native('GL_OBJECT_TYPE')
	static var OBJECT_TYPE:GLuint;

	@:native('GL_SYNC_CONDITION')
	static var SYNC_CONDITION:GLuint;

	@:native('GL_SYNC_STATUS')
	static var SYNC_STATUS:GLuint;

	@:native('GL_SYNC_FLAGS')
	static var SYNC_FLAGS:GLuint;

	@:native('GL_SYNC_FENCE')
	static var SYNC_FENCE:GLuint;

	@:native('GL_SYNC_GPU_COMMANDS_COMPLETE')
	static var SYNC_GPU_COMMANDS_COMPLETE:GLuint;

	@:native('GL_UNSIGNALED')
	static var UNSIGNALED:GLuint;

	@:native('GL_SIGNALED')
	static var SIGNALED:GLuint;

	@:native('GL_ALREADY_SIGNALED')
	static var ALREADY_SIGNALED:GLuint;

	@:native('GL_TIMEOUT_EXPIRED')
	static var TIMEOUT_EXPIRED:GLuint;

	@:native('GL_CONDITION_SATISFIED')
	static var CONDITION_SATISFIED:GLuint;

	@:native('GL_WAIT_FAILED')
	static var WAIT_FAILED:GLuint;

	@:native('GL_SYNC_FLUSH_COMMANDS_BIT')
	static var SYNC_FLUSH_COMMANDS_BIT:GLuint;

	@:native('GL_TIMEOUT_IGNORED')
	static var TIMEOUT_IGNORED:GLuint64;

	@:native('GL_VERTEX_ATTRIB_ARRAY_DIVISOR')
	static var VERTEX_ATTRIB_ARRAY_DIVISOR:GLuint;

	@:native('GL_ANY_SAMPLES_PASSED')
	static var ANY_SAMPLES_PASSED:GLuint;

	@:native('GL_ANY_SAMPLES_PASSED_CONSERVATIVE')
	static var ANY_SAMPLES_PASSED_CONSERVATIVE:GLuint;

	@:native('GL_SAMPLER_BINDING')
	static var SAMPLER_BINDING:GLuint;

	@:native('GL_RGB10_A2UI')
	static var RGB10_A2UI:GLuint;

	@:native('GL_TEXTURE_SWIZZLE_R')
	static var TEXTURE_SWIZZLE_R:GLuint;

	@:native('GL_TEXTURE_SWIZZLE_G')
	static var TEXTURE_SWIZZLE_G:GLuint;

	@:native('GL_TEXTURE_SWIZZLE_B')
	static var TEXTURE_SWIZZLE_B:GLuint;

	@:native('GL_TEXTURE_SWIZZLE_A')
	static var TEXTURE_SWIZZLE_A:GLuint;

	@:native('GL_GREEN')
	static var GREEN:GLuint;

	@:native('GL_BLUE')
	static var BLUE:GLuint;

	@:native('GL_INT_2_10_10_10_REV')
	static var INT_2_10_10_10_REV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK')
	static var TRANSFORM_FEEDBACK:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_PAUSED')
	static var TRANSFORM_FEEDBACK_PAUSED:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_ACTIVE')
	static var TRANSFORM_FEEDBACK_ACTIVE:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BINDING')
	static var TRANSFORM_FEEDBACK_BINDING:GLuint;

	@:native('GL_PROGRAM_BINARY_RETRIEVABLE_HINT')
	static var PROGRAM_BINARY_RETRIEVABLE_HINT:GLuint;

	@:native('GL_PROGRAM_BINARY_LENGTH')
	static var PROGRAM_BINARY_LENGTH:GLuint;

	@:native('GL_NUM_PROGRAM_BINARY_FORMATS')
	static var NUM_PROGRAM_BINARY_FORMATS:GLuint;

	@:native('GL_PROGRAM_BINARY_FORMATS')
	static var PROGRAM_BINARY_FORMATS:GLuint;

	@:native('GL_COMPRESSED_R11_EAC')
	static var COMPRESSED_R11_EAC:GLuint;

	@:native('GL_COMPRESSED_SIGNED_R11_EAC')
	static var COMPRESSED_SIGNED_R11_EAC:GLuint;

	@:native('GL_COMPRESSED_RG11_EAC')
	static var COMPRESSED_RG11_EAC:GLuint;

	@:native('GL_COMPRESSED_SIGNED_RG11_EAC')
	static var COMPRESSED_SIGNED_RG11_EAC:GLuint;

	@:native('GL_COMPRESSED_RGB8_ETC2')
	static var COMPRESSED_RGB8_ETC2:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ETC2')
	static var COMPRESSED_SRGB8_ETC2:GLuint;

	@:native('GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2')
	static var COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2:GLuint;

	@:native('GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2')
	static var COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2:GLuint;

	@:native('GL_COMPRESSED_RGBA8_ETC2_EAC')
	static var COMPRESSED_RGBA8_ETC2_EAC:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC')
	static var COMPRESSED_SRGB8_ALPHA8_ETC2_EAC:GLuint;

	@:native('GL_TEXTURE_IMMUTABLE_FORMAT')
	static var TEXTURE_IMMUTABLE_FORMAT:GLuint;

	@:native('GL_MAX_ELEMENT_INDEX')
	static var MAX_ELEMENT_INDEX:GLuint;

	@:native('GL_NUM_SAMPLE_COUNTS')
	static var NUM_SAMPLE_COUNTS:GLuint;

	@:native('GL_TEXTURE_IMMUTABLE_LEVELS')
	static var TEXTURE_IMMUTABLE_LEVELS:GLuint;

	@:native('GL_COMPUTE_SHADER')
	static var COMPUTE_SHADER:GLuint;

	@:native('GL_MAX_COMPUTE_UNIFORM_BLOCKS')
	static var MAX_COMPUTE_UNIFORM_BLOCKS:GLuint;

	@:native('GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS')
	static var MAX_COMPUTE_TEXTURE_IMAGE_UNITS:GLuint;

	@:native('GL_MAX_COMPUTE_IMAGE_UNIFORMS')
	static var MAX_COMPUTE_IMAGE_UNIFORMS:GLuint;

	@:native('GL_MAX_COMPUTE_SHARED_MEMORY_SIZE')
	static var MAX_COMPUTE_SHARED_MEMORY_SIZE:GLuint;

	@:native('GL_MAX_COMPUTE_UNIFORM_COMPONENTS')
	static var MAX_COMPUTE_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS')
	static var MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_COMPUTE_ATOMIC_COUNTERS')
	static var MAX_COMPUTE_ATOMIC_COUNTERS:GLuint;

	@:native('GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS')
	static var MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS')
	static var MAX_COMPUTE_WORK_GROUP_INVOCATIONS:GLuint;

	@:native('GL_MAX_COMPUTE_WORK_GROUP_COUNT')
	static var MAX_COMPUTE_WORK_GROUP_COUNT:GLuint;

	@:native('GL_MAX_COMPUTE_WORK_GROUP_SIZE')
	static var MAX_COMPUTE_WORK_GROUP_SIZE:GLuint;

	@:native('GL_COMPUTE_WORK_GROUP_SIZE')
	static var COMPUTE_WORK_GROUP_SIZE:GLuint;

	@:native('GL_DISPATCH_INDIRECT_BUFFER')
	static var DISPATCH_INDIRECT_BUFFER:GLuint;

	@:native('GL_DISPATCH_INDIRECT_BUFFER_BINDING')
	static var DISPATCH_INDIRECT_BUFFER_BINDING:GLuint;

	@:native('GL_COMPUTE_SHADER_BIT')
	static var COMPUTE_SHADER_BIT:GLuint;

	@:native('GL_DRAW_INDIRECT_BUFFER')
	static var DRAW_INDIRECT_BUFFER:GLuint;

	@:native('GL_DRAW_INDIRECT_BUFFER_BINDING')
	static var DRAW_INDIRECT_BUFFER_BINDING:GLuint;

	@:native('GL_MAX_UNIFORM_LOCATIONS')
	static var MAX_UNIFORM_LOCATIONS:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT_WIDTH')
	static var FRAMEBUFFER_DEFAULT_WIDTH:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT_HEIGHT')
	static var FRAMEBUFFER_DEFAULT_HEIGHT:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT_SAMPLES')
	static var FRAMEBUFFER_DEFAULT_SAMPLES:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS')
	static var FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS:GLuint;

	@:native('GL_MAX_FRAMEBUFFER_WIDTH')
	static var MAX_FRAMEBUFFER_WIDTH:GLuint;

	@:native('GL_MAX_FRAMEBUFFER_HEIGHT')
	static var MAX_FRAMEBUFFER_HEIGHT:GLuint;

	@:native('GL_MAX_FRAMEBUFFER_SAMPLES')
	static var MAX_FRAMEBUFFER_SAMPLES:GLuint;

	@:native('GL_UNIFORM')
	static var UNIFORM:GLuint;

	@:native('GL_UNIFORM_BLOCK')
	static var UNIFORM_BLOCK:GLuint;

	@:native('GL_PROGRAM_INPUT')
	static var PROGRAM_INPUT:GLuint;

	@:native('GL_PROGRAM_OUTPUT')
	static var PROGRAM_OUTPUT:GLuint;

	@:native('GL_BUFFER_VARIABLE')
	static var BUFFER_VARIABLE:GLuint;

	@:native('GL_SHADER_STORAGE_BLOCK')
	static var SHADER_STORAGE_BLOCK:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER')
	static var ATOMIC_COUNTER_BUFFER:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_VARYING')
	static var TRANSFORM_FEEDBACK_VARYING:GLuint;

	@:native('GL_ACTIVE_RESOURCES')
	static var ACTIVE_RESOURCES:GLuint;

	@:native('GL_MAX_NAME_LENGTH')
	static var MAX_NAME_LENGTH:GLuint;

	@:native('GL_MAX_NUM_ACTIVE_VARIABLES')
	static var MAX_NUM_ACTIVE_VARIABLES:GLuint;

	@:native('GL_NAME_LENGTH')
	static var NAME_LENGTH:GLuint;

	@:native('GL_TYPE')
	static var TYPE:GLuint;

	@:native('GL_ARRAY_SIZE')
	static var ARRAY_SIZE:GLuint;

	@:native('GL_OFFSET')
	static var OFFSET:GLuint;

	@:native('GL_BLOCK_INDEX')
	static var BLOCK_INDEX:GLuint;

	@:native('GL_ARRAY_STRIDE')
	static var ARRAY_STRIDE:GLuint;

	@:native('GL_MATRIX_STRIDE')
	static var MATRIX_STRIDE:GLuint;

	@:native('GL_IS_ROW_MAJOR')
	static var IS_ROW_MAJOR:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_INDEX')
	static var ATOMIC_COUNTER_BUFFER_INDEX:GLuint;

	@:native('GL_BUFFER_BINDING')
	static var BUFFER_BINDING:GLuint;

	@:native('GL_BUFFER_DATA_SIZE')
	static var BUFFER_DATA_SIZE:GLuint;

	@:native('GL_NUM_ACTIVE_VARIABLES')
	static var NUM_ACTIVE_VARIABLES:GLuint;

	@:native('GL_ACTIVE_VARIABLES')
	static var ACTIVE_VARIABLES:GLuint;

	@:native('GL_REFERENCED_BY_VERTEX_SHADER')
	static var REFERENCED_BY_VERTEX_SHADER:GLuint;

	@:native('GL_REFERENCED_BY_FRAGMENT_SHADER')
	static var REFERENCED_BY_FRAGMENT_SHADER:GLuint;

	@:native('GL_REFERENCED_BY_COMPUTE_SHADER')
	static var REFERENCED_BY_COMPUTE_SHADER:GLuint;

	@:native('GL_TOP_LEVEL_ARRAY_SIZE')
	static var TOP_LEVEL_ARRAY_SIZE:GLuint;

	@:native('GL_TOP_LEVEL_ARRAY_STRIDE')
	static var TOP_LEVEL_ARRAY_STRIDE:GLuint;

	@:native('GL_LOCATION')
	static var LOCATION:GLuint;

	@:native('GL_VERTEX_SHADER_BIT')
	static var VERTEX_SHADER_BIT:GLuint;

	@:native('GL_FRAGMENT_SHADER_BIT')
	static var FRAGMENT_SHADER_BIT:GLuint;

	@:native('GL_ALL_SHADER_BITS')
	static var ALL_SHADER_BITS:GLuint;

	@:native('GL_PROGRAM_SEPARABLE')
	static var PROGRAM_SEPARABLE:GLuint;

	@:native('GL_ACTIVE_PROGRAM')
	static var ACTIVE_PROGRAM:GLuint;

	@:native('GL_PROGRAM_PIPELINE_BINDING')
	static var PROGRAM_PIPELINE_BINDING:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_BINDING')
	static var ATOMIC_COUNTER_BUFFER_BINDING:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_START')
	static var ATOMIC_COUNTER_BUFFER_START:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_SIZE')
	static var ATOMIC_COUNTER_BUFFER_SIZE:GLuint;

	@:native('GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS')
	static var MAX_VERTEX_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS')
	static var MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS')
	static var MAX_COMBINED_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_VERTEX_ATOMIC_COUNTERS')
	static var MAX_VERTEX_ATOMIC_COUNTERS:GLuint;

	@:native('GL_MAX_FRAGMENT_ATOMIC_COUNTERS')
	static var MAX_FRAGMENT_ATOMIC_COUNTERS:GLuint;

	@:native('GL_MAX_COMBINED_ATOMIC_COUNTERS')
	static var MAX_COMBINED_ATOMIC_COUNTERS:GLuint;

	@:native('GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE')
	static var MAX_ATOMIC_COUNTER_BUFFER_SIZE:GLuint;

	@:native('GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS')
	static var MAX_ATOMIC_COUNTER_BUFFER_BINDINGS:GLuint;

	@:native('GL_ACTIVE_ATOMIC_COUNTER_BUFFERS')
	static var ACTIVE_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_UNSIGNED_INT_ATOMIC_COUNTER')
	static var UNSIGNED_INT_ATOMIC_COUNTER:GLuint;

	@:native('GL_MAX_IMAGE_UNITS')
	static var MAX_IMAGE_UNITS:GLuint;

	@:native('GL_MAX_VERTEX_IMAGE_UNIFORMS')
	static var MAX_VERTEX_IMAGE_UNIFORMS:GLuint;

	@:native('GL_MAX_FRAGMENT_IMAGE_UNIFORMS')
	static var MAX_FRAGMENT_IMAGE_UNIFORMS:GLuint;

	@:native('GL_MAX_COMBINED_IMAGE_UNIFORMS')
	static var MAX_COMBINED_IMAGE_UNIFORMS:GLuint;

	@:native('GL_IMAGE_BINDING_NAME')
	static var IMAGE_BINDING_NAME:GLuint;

	@:native('GL_IMAGE_BINDING_LEVEL')
	static var IMAGE_BINDING_LEVEL:GLuint;

	@:native('GL_IMAGE_BINDING_LAYERED')
	static var IMAGE_BINDING_LAYERED:GLuint;

	@:native('GL_IMAGE_BINDING_LAYER')
	static var IMAGE_BINDING_LAYER:GLuint;

	@:native('GL_IMAGE_BINDING_ACCESS')
	static var IMAGE_BINDING_ACCESS:GLuint;

	@:native('GL_IMAGE_BINDING_FORMAT')
	static var IMAGE_BINDING_FORMAT:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT')
	static var VERTEX_ATTRIB_ARRAY_BARRIER_BIT:GLuint;

	@:native('GL_ELEMENT_ARRAY_BARRIER_BIT')
	static var ELEMENT_ARRAY_BARRIER_BIT:GLuint;

	@:native('GL_UNIFORM_BARRIER_BIT')
	static var UNIFORM_BARRIER_BIT:GLuint;

	@:native('GL_TEXTURE_FETCH_BARRIER_BIT')
	static var TEXTURE_FETCH_BARRIER_BIT:GLuint;

	@:native('GL_SHADER_IMAGE_ACCESS_BARRIER_BIT')
	static var SHADER_IMAGE_ACCESS_BARRIER_BIT:GLuint;

	@:native('GL_COMMAND_BARRIER_BIT')
	static var COMMAND_BARRIER_BIT:GLuint;

	@:native('GL_PIXEL_BUFFER_BARRIER_BIT')
	static var PIXEL_BUFFER_BARRIER_BIT:GLuint;

	@:native('GL_TEXTURE_UPDATE_BARRIER_BIT')
	static var TEXTURE_UPDATE_BARRIER_BIT:GLuint;

	@:native('GL_BUFFER_UPDATE_BARRIER_BIT')
	static var BUFFER_UPDATE_BARRIER_BIT:GLuint;

	@:native('GL_FRAMEBUFFER_BARRIER_BIT')
	static var FRAMEBUFFER_BARRIER_BIT:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BARRIER_BIT')
	static var TRANSFORM_FEEDBACK_BARRIER_BIT:GLuint;

	@:native('GL_ATOMIC_COUNTER_BARRIER_BIT')
	static var ATOMIC_COUNTER_BARRIER_BIT:GLuint;

	@:native('GL_ALL_BARRIER_BITS')
	static var ALL_BARRIER_BITS:GLuint;

	@:native('GL_IMAGE_2D')
	static var IMAGE_2D:GLuint;

	@:native('GL_IMAGE_3D')
	static var IMAGE_3D:GLuint;

	@:native('GL_IMAGE_CUBE')
	static var IMAGE_CUBE:GLuint;

	@:native('GL_IMAGE_2D_ARRAY')
	static var IMAGE_2D_ARRAY:GLuint;

	@:native('GL_INT_IMAGE_2D')
	static var INT_IMAGE_2D:GLuint;

	@:native('GL_INT_IMAGE_3D')
	static var INT_IMAGE_3D:GLuint;

	@:native('GL_INT_IMAGE_CUBE')
	static var INT_IMAGE_CUBE:GLuint;

	@:native('GL_INT_IMAGE_2D_ARRAY')
	static var INT_IMAGE_2D_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_2D')
	static var UNSIGNED_INT_IMAGE_2D:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_3D')
	static var UNSIGNED_INT_IMAGE_3D:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_CUBE')
	static var UNSIGNED_INT_IMAGE_CUBE:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_2D_ARRAY')
	static var UNSIGNED_INT_IMAGE_2D_ARRAY:GLuint;

	@:native('GL_IMAGE_FORMAT_COMPATIBILITY_TYPE')
	static var IMAGE_FORMAT_COMPATIBILITY_TYPE:GLuint;

	@:native('GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE')
	static var IMAGE_FORMAT_COMPATIBILITY_BY_SIZE:GLuint;

	@:native('GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS')
	static var IMAGE_FORMAT_COMPATIBILITY_BY_CLASS:GLuint;

	@:native('GL_READ_ONLY')
	static var READ_ONLY:GLuint;

	@:native('GL_WRITE_ONLY')
	static var WRITE_ONLY:GLuint;

	@:native('GL_READ_WRITE')
	static var READ_WRITE:GLuint;

	@:native('GL_SHADER_STORAGE_BUFFER')
	static var SHADER_STORAGE_BUFFER:GLuint;

	@:native('GL_SHADER_STORAGE_BUFFER_BINDING')
	static var SHADER_STORAGE_BUFFER_BINDING:GLuint;

	@:native('GL_SHADER_STORAGE_BUFFER_START')
	static var SHADER_STORAGE_BUFFER_START:GLuint;

	@:native('GL_SHADER_STORAGE_BUFFER_SIZE')
	static var SHADER_STORAGE_BUFFER_SIZE:GLuint;

	@:native('GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS')
	static var MAX_VERTEX_SHADER_STORAGE_BLOCKS:GLuint;

	@:native('GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS')
	static var MAX_FRAGMENT_SHADER_STORAGE_BLOCKS:GLuint;

	@:native('GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS')
	static var MAX_COMPUTE_SHADER_STORAGE_BLOCKS:GLuint;

	@:native('GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS')
	static var MAX_COMBINED_SHADER_STORAGE_BLOCKS:GLuint;

	@:native('GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS')
	static var MAX_SHADER_STORAGE_BUFFER_BINDINGS:GLuint;

	@:native('GL_MAX_SHADER_STORAGE_BLOCK_SIZE')
	static var MAX_SHADER_STORAGE_BLOCK_SIZE:GLuint;

	@:native('GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT')
	static var SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT:GLuint;

	@:native('GL_SHADER_STORAGE_BARRIER_BIT')
	static var SHADER_STORAGE_BARRIER_BIT:GLuint;

	@:native('GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES')
	static var MAX_COMBINED_SHADER_OUTPUT_RESOURCES:GLuint;

	@:native('GL_DEPTH_STENCIL_TEXTURE_MODE')
	static var DEPTH_STENCIL_TEXTURE_MODE:GLuint;

	@:native('GL_STENCIL_INDEX')
	static var STENCIL_INDEX:GLuint;

	@:native('GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET')
	static var MIN_PROGRAM_TEXTURE_GATHER_OFFSET:GLuint;

	@:native('GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET')
	static var MAX_PROGRAM_TEXTURE_GATHER_OFFSET:GLuint;

	@:native('GL_SAMPLE_POSITION')
	static var SAMPLE_POSITION:GLuint;

	@:native('GL_SAMPLE_MASK')
	static var SAMPLE_MASK:GLuint;

	@:native('GL_SAMPLE_MASK_VALUE')
	static var SAMPLE_MASK_VALUE:GLuint;

	@:native('GL_TEXTURE_2D_MULTISAMPLE')
	static var TEXTURE_2D_MULTISAMPLE:GLuint;

	@:native('GL_MAX_SAMPLE_MASK_WORDS')
	static var MAX_SAMPLE_MASK_WORDS:GLuint;

	@:native('GL_MAX_COLOR_TEXTURE_SAMPLES')
	static var MAX_COLOR_TEXTURE_SAMPLES:GLuint;

	@:native('GL_MAX_DEPTH_TEXTURE_SAMPLES')
	static var MAX_DEPTH_TEXTURE_SAMPLES:GLuint;

	@:native('GL_MAX_INTEGER_SAMPLES')
	static var MAX_INTEGER_SAMPLES:GLuint;

	@:native('GL_TEXTURE_BINDING_2D_MULTISAMPLE')
	static var TEXTURE_BINDING_2D_MULTISAMPLE:GLuint;

	@:native('GL_TEXTURE_SAMPLES')
	static var TEXTURE_SAMPLES:GLuint;

	@:native('GL_TEXTURE_FIXED_SAMPLE_LOCATIONS')
	static var TEXTURE_FIXED_SAMPLE_LOCATIONS:GLuint;

	@:native('GL_TEXTURE_WIDTH')
	static var TEXTURE_WIDTH:GLuint;

	@:native('GL_TEXTURE_HEIGHT')
	static var TEXTURE_HEIGHT:GLuint;

	@:native('GL_TEXTURE_DEPTH')
	static var TEXTURE_DEPTH:GLuint;

	@:native('GL_TEXTURE_INTERNAL_FORMAT')
	static var TEXTURE_INTERNAL_FORMAT:GLuint;

	@:native('GL_TEXTURE_RED_SIZE')
	static var TEXTURE_RED_SIZE:GLuint;

	@:native('GL_TEXTURE_GREEN_SIZE')
	static var TEXTURE_GREEN_SIZE:GLuint;

	@:native('GL_TEXTURE_BLUE_SIZE')
	static var TEXTURE_BLUE_SIZE:GLuint;

	@:native('GL_TEXTURE_ALPHA_SIZE')
	static var TEXTURE_ALPHA_SIZE:GLuint;

	@:native('GL_TEXTURE_DEPTH_SIZE')
	static var TEXTURE_DEPTH_SIZE:GLuint;

	@:native('GL_TEXTURE_STENCIL_SIZE')
	static var TEXTURE_STENCIL_SIZE:GLuint;

	@:native('GL_TEXTURE_SHARED_SIZE')
	static var TEXTURE_SHARED_SIZE:GLuint;

	@:native('GL_TEXTURE_RED_TYPE')
	static var TEXTURE_RED_TYPE:GLuint;

	@:native('GL_TEXTURE_GREEN_TYPE')
	static var TEXTURE_GREEN_TYPE:GLuint;

	@:native('GL_TEXTURE_BLUE_TYPE')
	static var TEXTURE_BLUE_TYPE:GLuint;

	@:native('GL_TEXTURE_ALPHA_TYPE')
	static var TEXTURE_ALPHA_TYPE:GLuint;

	@:native('GL_TEXTURE_DEPTH_TYPE')
	static var TEXTURE_DEPTH_TYPE:GLuint;

	@:native('GL_TEXTURE_COMPRESSED')
	static var TEXTURE_COMPRESSED:GLuint;

	@:native('GL_SAMPLER_2D_MULTISAMPLE')
	static var SAMPLER_2D_MULTISAMPLE:GLuint;

	@:native('GL_INT_SAMPLER_2D_MULTISAMPLE')
	static var INT_SAMPLER_2D_MULTISAMPLE:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE')
	static var UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE:GLuint;

	@:native('GL_VERTEX_ATTRIB_BINDING')
	static var VERTEX_ATTRIB_BINDING:GLuint;

	@:native('GL_VERTEX_ATTRIB_RELATIVE_OFFSET')
	static var VERTEX_ATTRIB_RELATIVE_OFFSET:GLuint;

	@:native('GL_VERTEX_BINDING_DIVISOR')
	static var VERTEX_BINDING_DIVISOR:GLuint;

	@:native('GL_VERTEX_BINDING_OFFSET')
	static var VERTEX_BINDING_OFFSET:GLuint;

	@:native('GL_VERTEX_BINDING_STRIDE')
	static var VERTEX_BINDING_STRIDE:GLuint;

	@:native('GL_VERTEX_BINDING_BUFFER')
	static var VERTEX_BINDING_BUFFER:GLuint;

	@:native('GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET')
	static var MAX_VERTEX_ATTRIB_RELATIVE_OFFSET:GLuint;

	@:native('GL_MAX_VERTEX_ATTRIB_BINDINGS')
	static var MAX_VERTEX_ATTRIB_BINDINGS:GLuint;

	@:native('GL_MAX_VERTEX_ATTRIB_STRIDE')
	static var MAX_VERTEX_ATTRIB_STRIDE:GLuint;

	@:native('GL_MULTISAMPLE_LINE_WIDTH_RANGE')
	static var MULTISAMPLE_LINE_WIDTH_RANGE:GLuint;

	@:native('GL_MULTISAMPLE_LINE_WIDTH_GRANULARITY')
	static var MULTISAMPLE_LINE_WIDTH_GRANULARITY:GLuint;

	@:native('GL_MULTIPLY')
	static var MULTIPLY:GLuint;

	@:native('GL_SCREEN')
	static var SCREEN:GLuint;

	@:native('GL_OVERLAY')
	static var OVERLAY:GLuint;

	@:native('GL_DARKEN')
	static var DARKEN:GLuint;

	@:native('GL_LIGHTEN')
	static var LIGHTEN:GLuint;

	@:native('GL_COLORDODGE')
	static var COLORDODGE:GLuint;

	@:native('GL_COLORBURN')
	static var COLORBURN:GLuint;

	@:native('GL_HARDLIGHT')
	static var HARDLIGHT:GLuint;

	@:native('GL_SOFTLIGHT')
	static var SOFTLIGHT:GLuint;

	@:native('GL_DIFFERENCE')
	static var DIFFERENCE:GLuint;

	@:native('GL_EXCLUSION')
	static var EXCLUSION:GLuint;

	@:native('GL_HSL_HUE')
	static var HSL_HUE:GLuint;

	@:native('GL_HSL_SATURATION')
	static var HSL_SATURATION:GLuint;

	@:native('GL_HSL_COLOR')
	static var HSL_COLOR:GLuint;

	@:native('GL_HSL_LUMINOSITY')
	static var HSL_LUMINOSITY:GLuint;

	@:native('GL_DEBUG_OUTPUT_SYNCHRONOUS')
	static var DEBUG_OUTPUT_SYNCHRONOUS:GLuint;

	@:native('GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH')
	static var DEBUG_NEXT_LOGGED_MESSAGE_LENGTH:GLuint;

	@:native('GL_DEBUG_CALLBACK_FUNCTION')
	static var DEBUG_CALLBACK_FUNCTION:GLuint;

	@:native('GL_DEBUG_CALLBACK_USER_PARAM')
	static var DEBUG_CALLBACK_USER_PARAM:GLuint;

	@:native('GL_DEBUG_SOURCE_API')
	static var DEBUG_SOURCE_API:GLuint;

	@:native('GL_DEBUG_SOURCE_WINDOW_SYSTEM')
	static var DEBUG_SOURCE_WINDOW_SYSTEM:GLuint;

	@:native('GL_DEBUG_SOURCE_SHADER_COMPILER')
	static var DEBUG_SOURCE_SHADER_COMPILER:GLuint;

	@:native('GL_DEBUG_SOURCE_THIRD_PARTY')
	static var DEBUG_SOURCE_THIRD_PARTY:GLuint;

	@:native('GL_DEBUG_SOURCE_APPLICATION')
	static var DEBUG_SOURCE_APPLICATION:GLuint;

	@:native('GL_DEBUG_SOURCE_OTHER')
	static var DEBUG_SOURCE_OTHER:GLuint;

	@:native('GL_DEBUG_TYPE_ERROR')
	static var DEBUG_TYPE_ERROR:GLuint;

	@:native('GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR')
	static var DEBUG_TYPE_DEPRECATED_BEHAVIOR:GLuint;

	@:native('GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR')
	static var DEBUG_TYPE_UNDEFINED_BEHAVIOR:GLuint;

	@:native('GL_DEBUG_TYPE_PORTABILITY')
	static var DEBUG_TYPE_PORTABILITY:GLuint;

	@:native('GL_DEBUG_TYPE_PERFORMANCE')
	static var DEBUG_TYPE_PERFORMANCE:GLuint;

	@:native('GL_DEBUG_TYPE_OTHER')
	static var DEBUG_TYPE_OTHER:GLuint;

	@:native('GL_DEBUG_TYPE_MARKER')
	static var DEBUG_TYPE_MARKER:GLuint;

	@:native('GL_DEBUG_TYPE_PUSH_GROUP')
	static var DEBUG_TYPE_PUSH_GROUP:GLuint;

	@:native('GL_DEBUG_TYPE_POP_GROUP')
	static var DEBUG_TYPE_POP_GROUP:GLuint;

	@:native('GL_DEBUG_SEVERITY_NOTIFICATION')
	static var DEBUG_SEVERITY_NOTIFICATION:GLuint;

	@:native('GL_MAX_DEBUG_GROUP_STACK_DEPTH')
	static var MAX_DEBUG_GROUP_STACK_DEPTH:GLuint;

	@:native('GL_DEBUG_GROUP_STACK_DEPTH')
	static var DEBUG_GROUP_STACK_DEPTH:GLuint;

	@:native('GL_BUFFER')
	static var BUFFER:GLuint;

	@:native('GL_SHADER')
	static var SHADER:GLuint;

	@:native('GL_PROGRAM')
	static var PROGRAM:GLuint;

	@:native('GL_VERTEX_ARRAY')
	static var VERTEX_ARRAY:GLuint;

	@:native('GL_QUERY')
	static var QUERY:GLuint;

	@:native('GL_PROGRAM_PIPELINE')
	static var PROGRAM_PIPELINE:GLuint;

	@:native('GL_SAMPLER')
	static var SAMPLER:GLuint;

	@:native('GL_MAX_LABEL_LENGTH')
	static var MAX_LABEL_LENGTH:GLuint;

	@:native('GL_MAX_DEBUG_MESSAGE_LENGTH')
	static var MAX_DEBUG_MESSAGE_LENGTH:GLuint;

	@:native('GL_MAX_DEBUG_LOGGED_MESSAGES')
	static var MAX_DEBUG_LOGGED_MESSAGES:GLuint;

	@:native('GL_DEBUG_LOGGED_MESSAGES')
	static var DEBUG_LOGGED_MESSAGES:GLuint;

	@:native('GL_DEBUG_SEVERITY_HIGH')
	static var DEBUG_SEVERITY_HIGH:GLuint;

	@:native('GL_DEBUG_SEVERITY_MEDIUM')
	static var DEBUG_SEVERITY_MEDIUM:GLuint;

	@:native('GL_DEBUG_SEVERITY_LOW')
	static var DEBUG_SEVERITY_LOW:GLuint;

	@:native('GL_DEBUG_OUTPUT')
	static var DEBUG_OUTPUT:GLuint;

	@:native('GL_CONTEXT_FLAG_DEBUG_BIT')
	static var CONTEXT_FLAG_DEBUG_BIT:GLuint;

	@:native('GL_STACK_OVERFLOW')
	static var STACK_OVERFLOW:GLuint;

	@:native('GL_STACK_UNDERFLOW')
	static var STACK_UNDERFLOW:GLuint;

	@:native('GL_GEOMETRY_SHADER')
	static var GEOMETRY_SHADER:GLuint;

	@:native('GL_GEOMETRY_SHADER_BIT')
	static var GEOMETRY_SHADER_BIT:GLuint;

	@:native('GL_GEOMETRY_VERTICES_OUT')
	static var GEOMETRY_VERTICES_OUT:GLuint;

	@:native('GL_GEOMETRY_INPUT_TYPE')
	static var GEOMETRY_INPUT_TYPE:GLuint;

	@:native('GL_GEOMETRY_OUTPUT_TYPE')
	static var GEOMETRY_OUTPUT_TYPE:GLuint;

	@:native('GL_GEOMETRY_SHADER_INVOCATIONS')
	static var GEOMETRY_SHADER_INVOCATIONS:GLuint;

	@:native('GL_LAYER_PROVOKING_VERTEX')
	static var LAYER_PROVOKING_VERTEX:GLuint;

	@:native('GL_LINES_ADJACENCY')
	static var LINES_ADJACENCY:GLuint;

	@:native('GL_LINE_STRIP_ADJACENCY')
	static var LINE_STRIP_ADJACENCY:GLuint;

	@:native('GL_TRIANGLES_ADJACENCY')
	static var TRIANGLES_ADJACENCY:GLuint;

	@:native('GL_TRIANGLE_STRIP_ADJACENCY')
	static var TRIANGLE_STRIP_ADJACENCY:GLuint;

	@:native('GL_MAX_GEOMETRY_UNIFORM_COMPONENTS')
	static var MAX_GEOMETRY_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_GEOMETRY_UNIFORM_BLOCKS')
	static var MAX_GEOMETRY_UNIFORM_BLOCKS:GLuint;

	@:native('GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS')
	static var MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_GEOMETRY_INPUT_COMPONENTS')
	static var MAX_GEOMETRY_INPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_GEOMETRY_OUTPUT_COMPONENTS')
	static var MAX_GEOMETRY_OUTPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_GEOMETRY_OUTPUT_VERTICES')
	static var MAX_GEOMETRY_OUTPUT_VERTICES:GLuint;

	@:native('GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS')
	static var MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_GEOMETRY_SHADER_INVOCATIONS')
	static var MAX_GEOMETRY_SHADER_INVOCATIONS:GLuint;

	@:native('GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS')
	static var MAX_GEOMETRY_TEXTURE_IMAGE_UNITS:GLuint;

	@:native('GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS')
	static var MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_GEOMETRY_ATOMIC_COUNTERS')
	static var MAX_GEOMETRY_ATOMIC_COUNTERS:GLuint;

	@:native('GL_MAX_GEOMETRY_IMAGE_UNIFORMS')
	static var MAX_GEOMETRY_IMAGE_UNIFORMS:GLuint;

	@:native('GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS')
	static var MAX_GEOMETRY_SHADER_STORAGE_BLOCKS:GLuint;

	@:native('GL_FIRST_VERTEX_CONVENTION')
	static var FIRST_VERTEX_CONVENTION:GLuint;

	@:native('GL_LAST_VERTEX_CONVENTION')
	static var LAST_VERTEX_CONVENTION:GLuint;

	@:native('GL_UNDEFINED_VERTEX')
	static var UNDEFINED_VERTEX:GLuint;

	@:native('GL_PRIMITIVES_GENERATED')
	static var PRIMITIVES_GENERATED:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT_LAYERS')
	static var FRAMEBUFFER_DEFAULT_LAYERS:GLuint;

	@:native('GL_MAX_FRAMEBUFFER_LAYERS')
	static var MAX_FRAMEBUFFER_LAYERS:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS')
	static var FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_LAYERED')
	static var FRAMEBUFFER_ATTACHMENT_LAYERED:GLuint;

	@:native('GL_REFERENCED_BY_GEOMETRY_SHADER')
	static var REFERENCED_BY_GEOMETRY_SHADER:GLuint;

	@:native('GL_PRIMITIVE_BOUNDING_BOX')
	static var PRIMITIVE_BOUNDING_BOX:GLuint;

	@:native('GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT')
	static var CONTEXT_FLAG_ROBUST_ACCESS_BIT:GLuint;

	@:native('GL_CONTEXT_FLAGS')
	static var CONTEXT_FLAGS:GLuint;

	@:native('GL_LOSE_CONTEXT_ON_RESET')
	static var LOSE_CONTEXT_ON_RESET:GLuint;

	@:native('GL_GUILTY_CONTEXT_RESET')
	static var GUILTY_CONTEXT_RESET:GLuint;

	@:native('GL_INNOCENT_CONTEXT_RESET')
	static var INNOCENT_CONTEXT_RESET:GLuint;

	@:native('GL_UNKNOWN_CONTEXT_RESET')
	static var UNKNOWN_CONTEXT_RESET:GLuint;

	@:native('GL_RESET_NOTIFICATION_STRATEGY')
	static var RESET_NOTIFICATION_STRATEGY:GLuint;

	@:native('GL_NO_RESET_NOTIFICATION')
	static var NO_RESET_NOTIFICATION:GLuint;

	@:native('GL_CONTEXT_LOST')
	static var CONTEXT_LOST:GLuint;

	@:native('GL_SAMPLE_SHADING')
	static var SAMPLE_SHADING:GLuint;

	@:native('GL_MIN_SAMPLE_SHADING_VALUE')
	static var MIN_SAMPLE_SHADING_VALUE:GLuint;

	@:native('GL_MIN_FRAGMENT_INTERPOLATION_OFFSET')
	static var MIN_FRAGMENT_INTERPOLATION_OFFSET:GLuint;

	@:native('GL_MAX_FRAGMENT_INTERPOLATION_OFFSET')
	static var MAX_FRAGMENT_INTERPOLATION_OFFSET:GLuint;

	@:native('GL_FRAGMENT_INTERPOLATION_OFFSET_BITS')
	static var FRAGMENT_INTERPOLATION_OFFSET_BITS:GLuint;

	@:native('GL_PATCHES')
	static var PATCHES:GLuint;

	@:native('GL_PATCH_VERTICES')
	static var PATCH_VERTICES:GLuint;

	@:native('GL_TESS_CONTROL_OUTPUT_VERTICES')
	static var TESS_CONTROL_OUTPUT_VERTICES:GLuint;

	@:native('GL_TESS_GEN_MODE')
	static var TESS_GEN_MODE:GLuint;

	@:native('GL_TESS_GEN_SPACING')
	static var TESS_GEN_SPACING:GLuint;

	@:native('GL_TESS_GEN_VERTEX_ORDER')
	static var TESS_GEN_VERTEX_ORDER:GLuint;

	@:native('GL_TESS_GEN_POINT_MODE')
	static var TESS_GEN_POINT_MODE:GLuint;

	@:native('GL_ISOLINES')
	static var ISOLINES:GLuint;

	@:native('GL_QUADS')
	static var QUADS:GLuint;

	@:native('GL_FRACTIONAL_ODD')
	static var FRACTIONAL_ODD:GLuint;

	@:native('GL_FRACTIONAL_EVEN')
	static var FRACTIONAL_EVEN:GLuint;

	@:native('GL_MAX_PATCH_VERTICES')
	static var MAX_PATCH_VERTICES:GLuint;

	@:native('GL_MAX_TESS_GEN_LEVEL')
	static var MAX_TESS_GEN_LEVEL:GLuint;

	@:native('GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS')
	static var MAX_TESS_CONTROL_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS')
	static var MAX_TESS_EVALUATION_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS')
	static var MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS')
	static var MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS')
	static var MAX_TESS_CONTROL_OUTPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_TESS_PATCH_COMPONENTS')
	static var MAX_TESS_PATCH_COMPONENTS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS')
	static var MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS')
	static var MAX_TESS_EVALUATION_OUTPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS')
	static var MAX_TESS_CONTROL_UNIFORM_BLOCKS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS')
	static var MAX_TESS_EVALUATION_UNIFORM_BLOCKS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_INPUT_COMPONENTS')
	static var MAX_TESS_CONTROL_INPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS')
	static var MAX_TESS_EVALUATION_INPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS')
	static var MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS')
	static var MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS')
	static var MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS')
	static var MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS')
	static var MAX_TESS_CONTROL_ATOMIC_COUNTERS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS')
	static var MAX_TESS_EVALUATION_ATOMIC_COUNTERS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS')
	static var MAX_TESS_CONTROL_IMAGE_UNIFORMS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS')
	static var MAX_TESS_EVALUATION_IMAGE_UNIFORMS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS')
	static var MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS')
	static var MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS:GLuint;

	@:native('GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED')
	static var PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED:GLuint;

	@:native('GL_IS_PER_PATCH')
	static var IS_PER_PATCH:GLuint;

	@:native('GL_REFERENCED_BY_TESS_CONTROL_SHADER')
	static var REFERENCED_BY_TESS_CONTROL_SHADER:GLuint;

	@:native('GL_REFERENCED_BY_TESS_EVALUATION_SHADER')
	static var REFERENCED_BY_TESS_EVALUATION_SHADER:GLuint;

	@:native('GL_TESS_CONTROL_SHADER')
	static var TESS_CONTROL_SHADER:GLuint;

	@:native('GL_TESS_EVALUATION_SHADER')
	static var TESS_EVALUATION_SHADER:GLuint;

	@:native('GL_TESS_CONTROL_SHADER_BIT')
	static var TESS_CONTROL_SHADER_BIT:GLuint;

	@:native('GL_TESS_EVALUATION_SHADER_BIT')
	static var TESS_EVALUATION_SHADER_BIT:GLuint;

	@:native('GL_TEXTURE_BORDER_COLOR')
	static var TEXTURE_BORDER_COLOR:GLuint;

	@:native('GL_CLAMP_TO_BORDER')
	static var CLAMP_TO_BORDER:GLuint;

	@:native('GL_TEXTURE_BUFFER')
	static var TEXTURE_BUFFER:GLuint;

	@:native('GL_TEXTURE_BUFFER_BINDING')
	static var TEXTURE_BUFFER_BINDING:GLuint;

	@:native('GL_MAX_TEXTURE_BUFFER_SIZE')
	static var MAX_TEXTURE_BUFFER_SIZE:GLuint;

	@:native('GL_TEXTURE_BINDING_BUFFER')
	static var TEXTURE_BINDING_BUFFER:GLuint;

	@:native('GL_TEXTURE_BUFFER_DATA_STORE_BINDING')
	static var TEXTURE_BUFFER_DATA_STORE_BINDING:GLuint;

	@:native('GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT')
	static var TEXTURE_BUFFER_OFFSET_ALIGNMENT:GLuint;

	@:native('GL_SAMPLER_BUFFER')
	static var SAMPLER_BUFFER:GLuint;

	@:native('GL_INT_SAMPLER_BUFFER')
	static var INT_SAMPLER_BUFFER:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_BUFFER')
	static var UNSIGNED_INT_SAMPLER_BUFFER:GLuint;

	@:native('GL_IMAGE_BUFFER')
	static var IMAGE_BUFFER:GLuint;

	@:native('GL_INT_IMAGE_BUFFER')
	static var INT_IMAGE_BUFFER:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_BUFFER')
	static var UNSIGNED_INT_IMAGE_BUFFER:GLuint;

	@:native('GL_TEXTURE_BUFFER_OFFSET')
	static var TEXTURE_BUFFER_OFFSET:GLuint;

	@:native('GL_TEXTURE_BUFFER_SIZE')
	static var TEXTURE_BUFFER_SIZE:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_4x4')
	static var COMPRESSED_RGBA_ASTC_4x4:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_5x4')
	static var COMPRESSED_RGBA_ASTC_5x4:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_5x5')
	static var COMPRESSED_RGBA_ASTC_5x5:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_6x5')
	static var COMPRESSED_RGBA_ASTC_6x5:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_6x6')
	static var COMPRESSED_RGBA_ASTC_6x6:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_8x5')
	static var COMPRESSED_RGBA_ASTC_8x5:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_8x6')
	static var COMPRESSED_RGBA_ASTC_8x6:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_8x8')
	static var COMPRESSED_RGBA_ASTC_8x8:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_10x5')
	static var COMPRESSED_RGBA_ASTC_10x5:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_10x6')
	static var COMPRESSED_RGBA_ASTC_10x6:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_10x8')
	static var COMPRESSED_RGBA_ASTC_10x8:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_10x10')
	static var COMPRESSED_RGBA_ASTC_10x10:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_12x10')
	static var COMPRESSED_RGBA_ASTC_12x10:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_12x12')
	static var COMPRESSED_RGBA_ASTC_12x12:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_4x4:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_5x4:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_5x5:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_6x5:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_6x6:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_8x5:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_8x6:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_8x8:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_10x5:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_10x6:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_10x8:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_10x10:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_12x10:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_12x12:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_ARRAY')
	static var TEXTURE_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_TEXTURE_BINDING_CUBE_MAP_ARRAY')
	static var TEXTURE_BINDING_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_SAMPLER_CUBE_MAP_ARRAY')
	static var SAMPLER_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW')
	static var SAMPLER_CUBE_MAP_ARRAY_SHADOW:GLuint;

	@:native('GL_INT_SAMPLER_CUBE_MAP_ARRAY')
	static var INT_SAMPLER_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY')
	static var UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_IMAGE_CUBE_MAP_ARRAY')
	static var IMAGE_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_INT_IMAGE_CUBE_MAP_ARRAY')
	static var INT_IMAGE_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY')
	static var UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_TEXTURE_2D_MULTISAMPLE_ARRAY')
	static var TEXTURE_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY')
	static var TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_SAMPLER_2D_MULTISAMPLE_ARRAY')
	static var SAMPLER_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY')
	static var INT_SAMPLER_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY')
	static var UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_3DC_X_AMD')
	static var _3DC_X_AMD:GLuint;

	@:native('GL_3DC_XY_AMD')
	static var _3DC_XY_AMD:GLuint;

	@:native('GL_ATC_RGB_AMD')
	static var ATC_RGB_AMD:GLuint;

	@:native('GL_ATC_RGBA_EXPLICIT_ALPHA_AMD')
	static var ATC_RGBA_EXPLICIT_ALPHA_AMD:GLuint;

	@:native('GL_ATC_RGBA_INTERPOLATED_ALPHA_AMD')
	static var ATC_RGBA_INTERPOLATED_ALPHA_AMD:GLuint;

	@:native('GL_RENDERBUFFER_STORAGE_SAMPLES_AMD')
	static var RENDERBUFFER_STORAGE_SAMPLES_AMD:GLuint;

	@:native('GL_MAX_COLOR_FRAMEBUFFER_SAMPLES_AMD')
	static var MAX_COLOR_FRAMEBUFFER_SAMPLES_AMD:GLuint;

	@:native('GL_MAX_COLOR_FRAMEBUFFER_STORAGE_SAMPLES_AMD')
	static var MAX_COLOR_FRAMEBUFFER_STORAGE_SAMPLES_AMD:GLuint;

	@:native('GL_MAX_DEPTH_STENCIL_FRAMEBUFFER_SAMPLES_AMD')
	static var MAX_DEPTH_STENCIL_FRAMEBUFFER_SAMPLES_AMD:GLuint;

	@:native('GL_NUM_SUPPORTED_MULTISAMPLE_MODES_AMD')
	static var NUM_SUPPORTED_MULTISAMPLE_MODES_AMD:GLuint;

	@:native('GL_SUPPORTED_MULTISAMPLE_MODES_AMD')
	static var SUPPORTED_MULTISAMPLE_MODES_AMD:GLuint;

	@:native('GL_COUNTER_TYPE_AMD')
	static var COUNTER_TYPE_AMD:GLuint;

	@:native('GL_COUNTER_RANGE_AMD')
	static var COUNTER_RANGE_AMD:GLuint;

	@:native('GL_UNSIGNED_INT64_AMD')
	static var UNSIGNED_INT64_AMD:GLuint;

	@:native('GL_PERCENTAGE_AMD')
	static var PERCENTAGE_AMD:GLuint;

	@:native('GL_PERFMON_RESULT_AVAILABLE_AMD')
	static var PERFMON_RESULT_AVAILABLE_AMD:GLuint;

	@:native('GL_PERFMON_RESULT_SIZE_AMD')
	static var PERFMON_RESULT_SIZE_AMD:GLuint;

	@:native('GL_PERFMON_RESULT_AMD')
	static var PERFMON_RESULT_AMD:GLuint;

	@:native('GL_Z400_BINARY_AMD')
	static var Z400_BINARY_AMD:GLuint;

	@:native('GL_DEPTH_STENCIL_OES')
	static var DEPTH_STENCIL_OES:GLuint;

	@:native('GL_UNSIGNED_INT_24_8_OES')
	static var UNSIGNED_INT_24_8_OES:GLuint;

	@:native('GL_DEPTH_COMPONENT32_OES')
	static var DEPTH_COMPONENT32_OES:GLuint;

	@:native('GL_DEPTH24_STENCIL8_OES')
	static var DEPTH24_STENCIL8_OES:GLuint;

	@:native('GL_READ_FRAMEBUFFER_ANGLE')
	static var READ_FRAMEBUFFER_ANGLE:GLuint;

	@:native('GL_DRAW_FRAMEBUFFER_ANGLE')
	static var DRAW_FRAMEBUFFER_ANGLE:GLuint;

	@:native('GL_DRAW_FRAMEBUFFER_BINDING_ANGLE')
	static var DRAW_FRAMEBUFFER_BINDING_ANGLE:GLuint;

	@:native('GL_READ_FRAMEBUFFER_BINDING_ANGLE')
	static var READ_FRAMEBUFFER_BINDING_ANGLE:GLuint;

	@:native('GL_RENDERBUFFER_SAMPLES_ANGLE')
	static var RENDERBUFFER_SAMPLES_ANGLE:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ANGLE')
	static var FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ANGLE:GLuint;

	@:native('GL_MAX_SAMPLES_ANGLE')
	static var MAX_SAMPLES_ANGLE:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE')
	static var VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE:GLuint;

	@:native('GL_PACK_REVERSE_ROW_ORDER_ANGLE')
	static var PACK_REVERSE_ROW_ORDER_ANGLE:GLuint;

	@:native('GL_PROGRAM_BINARY_ANGLE')
	static var PROGRAM_BINARY_ANGLE:GLuint;

	@:native('GL_COMPRESSED_RGBA_S3TC_DXT3_ANGLE')
	static var COMPRESSED_RGBA_S3TC_DXT3_ANGLE:GLuint;

	@:native('GL_COMPRESSED_RGBA_S3TC_DXT5_ANGLE')
	static var COMPRESSED_RGBA_S3TC_DXT5_ANGLE:GLuint;

	@:native('GL_TEXTURE_USAGE_ANGLE')
	static var TEXTURE_USAGE_ANGLE:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_ANGLE')
	static var FRAMEBUFFER_ATTACHMENT_ANGLE:GLuint;

	@:native('GL_TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE')
	static var TRANSLATED_SHADER_SOURCE_LENGTH_ANGLE:GLuint;

	@:native('GL_MAX_CLIP_DISTANCES_APPLE')
	static var MAX_CLIP_DISTANCES_APPLE:GLuint;

	@:native('GL_CLIP_DISTANCE0_APPLE')
	static var CLIP_DISTANCE0_APPLE:GLuint;

	@:native('GL_CLIP_DISTANCE1_APPLE')
	static var CLIP_DISTANCE1_APPLE:GLuint;

	@:native('GL_CLIP_DISTANCE2_APPLE')
	static var CLIP_DISTANCE2_APPLE:GLuint;

	@:native('GL_CLIP_DISTANCE3_APPLE')
	static var CLIP_DISTANCE3_APPLE:GLuint;

	@:native('GL_CLIP_DISTANCE4_APPLE')
	static var CLIP_DISTANCE4_APPLE:GLuint;

	@:native('GL_CLIP_DISTANCE5_APPLE')
	static var CLIP_DISTANCE5_APPLE:GLuint;

	@:native('GL_CLIP_DISTANCE6_APPLE')
	static var CLIP_DISTANCE6_APPLE:GLuint;

	@:native('GL_CLIP_DISTANCE7_APPLE')
	static var CLIP_DISTANCE7_APPLE:GLuint;

	@:native('GL_RENDERBUFFER_SAMPLES_APPLE')
	static var RENDERBUFFER_SAMPLES_APPLE:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_APPLE')
	static var FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_APPLE:GLuint;

	@:native('GL_MAX_SAMPLES_APPLE')
	static var MAX_SAMPLES_APPLE:GLuint;

	@:native('GL_READ_FRAMEBUFFER_APPLE')
	static var READ_FRAMEBUFFER_APPLE:GLuint;

	@:native('GL_DRAW_FRAMEBUFFER_APPLE')
	static var DRAW_FRAMEBUFFER_APPLE:GLuint;

	@:native('GL_DRAW_FRAMEBUFFER_BINDING_APPLE')
	static var DRAW_FRAMEBUFFER_BINDING_APPLE:GLuint;

	@:native('GL_READ_FRAMEBUFFER_BINDING_APPLE')
	static var READ_FRAMEBUFFER_BINDING_APPLE:GLuint;

	@:native('GL_RGB_422_APPLE')
	static var RGB_422_APPLE:GLuint;

	@:native('GL_UNSIGNED_SHORT_8_8_APPLE')
	static var UNSIGNED_SHORT_8_8_APPLE:GLuint;

	@:native('GL_UNSIGNED_SHORT_8_8_REV_APPLE')
	static var UNSIGNED_SHORT_8_8_REV_APPLE:GLuint;

	@:native('GL_RGB_RAW_422_APPLE')
	static var RGB_RAW_422_APPLE:GLuint;

	@:native('GL_SYNC_OBJECT_APPLE')
	static var SYNC_OBJECT_APPLE:GLuint;

	@:native('GL_MAX_SERVER_WAIT_TIMEOUT_APPLE')
	static var MAX_SERVER_WAIT_TIMEOUT_APPLE:GLuint;

	@:native('GL_OBJECT_TYPE_APPLE')
	static var OBJECT_TYPE_APPLE:GLuint;

	@:native('GL_SYNC_CONDITION_APPLE')
	static var SYNC_CONDITION_APPLE:GLuint;

	@:native('GL_SYNC_STATUS_APPLE')
	static var SYNC_STATUS_APPLE:GLuint;

	@:native('GL_SYNC_FLAGS_APPLE')
	static var SYNC_FLAGS_APPLE:GLuint;

	@:native('GL_SYNC_FENCE_APPLE')
	static var SYNC_FENCE_APPLE:GLuint;

	@:native('GL_SYNC_GPU_COMMANDS_COMPLETE_APPLE')
	static var SYNC_GPU_COMMANDS_COMPLETE_APPLE:GLuint;

	@:native('GL_UNSIGNALED_APPLE')
	static var UNSIGNALED_APPLE:GLuint;

	@:native('GL_SIGNALED_APPLE')
	static var SIGNALED_APPLE:GLuint;

	@:native('GL_ALREADY_SIGNALED_APPLE')
	static var ALREADY_SIGNALED_APPLE:GLuint;

	@:native('GL_TIMEOUT_EXPIRED_APPLE')
	static var TIMEOUT_EXPIRED_APPLE:GLuint;

	@:native('GL_CONDITION_SATISFIED_APPLE')
	static var CONDITION_SATISFIED_APPLE:GLuint;

	@:native('GL_WAIT_FAILED_APPLE')
	static var WAIT_FAILED_APPLE:GLuint;

	@:native('GL_SYNC_FLUSH_COMMANDS_BIT_APPLE')
	static var SYNC_FLUSH_COMMANDS_BIT_APPLE:GLuint;

	@:native('GL_TIMEOUT_IGNORED_APPLE')
	static var TIMEOUT_IGNORED_APPLE:GLuint64;

	@:native('GL_BGRA_EXT')
	static var BGRA_EXT:GLuint;

	@:native('GL_BGRA8_EXT')
	static var BGRA8_EXT:GLuint;

	@:native('GL_TEXTURE_MAX_LEVEL_APPLE')
	static var TEXTURE_MAX_LEVEL_APPLE:GLuint;

	@:native('GL_UNSIGNED_INT_10F_11F_11F_REV_APPLE')
	static var UNSIGNED_INT_10F_11F_11F_REV_APPLE:GLuint;

	@:native('GL_UNSIGNED_INT_5_9_9_9_REV_APPLE')
	static var UNSIGNED_INT_5_9_9_9_REV_APPLE:GLuint;

	@:native('GL_R11F_G11F_B10F_APPLE')
	static var R11F_G11F_B10F_APPLE:GLuint;

	@:native('GL_RGB9_E5_APPLE')
	static var RGB9_E5_APPLE:GLuint;

	@:native('GL_MALI_PROGRAM_BINARY_ARM')
	static var MALI_PROGRAM_BINARY_ARM:GLuint;

	@:native('GL_MALI_SHADER_BINARY_ARM')
	static var MALI_SHADER_BINARY_ARM:GLuint;

	@:native('GL_SHADER_CORE_COUNT_ARM')
	static var SHADER_CORE_COUNT_ARM:GLuint;

	@:native('GL_SHADER_CORE_ACTIVE_COUNT_ARM')
	static var SHADER_CORE_ACTIVE_COUNT_ARM:GLuint;

	@:native('GL_SHADER_CORE_PRESENT_MASK_ARM')
	static var SHADER_CORE_PRESENT_MASK_ARM:GLuint;

	@:native('GL_SHADER_CORE_MAX_WARP_COUNT_ARM')
	static var SHADER_CORE_MAX_WARP_COUNT_ARM:GLuint;

	@:native('GL_SHADER_CORE_PIXEL_RATE_ARM')
	static var SHADER_CORE_PIXEL_RATE_ARM:GLuint;

	@:native('GL_SHADER_CORE_TEXEL_RATE_ARM')
	static var SHADER_CORE_TEXEL_RATE_ARM:GLuint;

	@:native('GL_SHADER_CORE_FMA_RATE_ARM')
	static var SHADER_CORE_FMA_RATE_ARM:GLuint;

	@:native('GL_FETCH_PER_SAMPLE_ARM')
	static var FETCH_PER_SAMPLE_ARM:GLuint;

	@:native('GL_FRAGMENT_SHADER_FRAMEBUFFER_FETCH_MRT_ARM')
	static var FRAGMENT_SHADER_FRAMEBUFFER_FETCH_MRT_ARM:GLuint;

	@:native('GL_TEXTURE_UNNORMALIZED_COORDINATES_ARM')
	static var TEXTURE_UNNORMALIZED_COORDINATES_ARM:GLuint;

	@:native('GL_SMAPHS30_PROGRAM_BINARY_DMP')
	static var SMAPHS30_PROGRAM_BINARY_DMP:GLuint;

	@:native('GL_SMAPHS_PROGRAM_BINARY_DMP')
	static var SMAPHS_PROGRAM_BINARY_DMP:GLuint;

	@:native('GL_DMP_PROGRAM_BINARY_DMP')
	static var DMP_PROGRAM_BINARY_DMP:GLuint;

	@:native('GL_SHADER_BINARY_DMP')
	static var SHADER_BINARY_DMP:GLuint;

	@:native('GL_SURFACE_COMPRESSION_EXT')
	static var SURFACE_COMPRESSION_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_NONE_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_NONE_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_DEFAULT_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_DEFAULT_EXT:GLuint;

	@:native('GL_SAMPLER_EXTERNAL_2D_Y2Y_EXT')
	static var SAMPLER_EXTERNAL_2D_Y2Y_EXT:GLuint;

	@:native('GL_TEXTURE_EXTERNAL_OES')
	static var TEXTURE_EXTERNAL_OES:GLuint;

	@:native('GL_TEXTURE_BINDING_EXTERNAL_OES')
	static var TEXTURE_BINDING_EXTERNAL_OES:GLuint;

	@:native('GL_REQUIRED_TEXTURE_IMAGE_UNITS_OES')
	static var REQUIRED_TEXTURE_IMAGE_UNITS_OES:GLuint;

	@:native('GL_SRC1_COLOR_EXT')
	static var SRC1_COLOR_EXT:GLuint;

	@:native('GL_SRC1_ALPHA_EXT')
	static var SRC1_ALPHA_EXT:GLuint;

	@:native('GL_ONE_MINUS_SRC1_COLOR_EXT')
	static var ONE_MINUS_SRC1_COLOR_EXT:GLuint;

	@:native('GL_ONE_MINUS_SRC1_ALPHA_EXT')
	static var ONE_MINUS_SRC1_ALPHA_EXT:GLuint;

	@:native('GL_SRC_ALPHA_SATURATE_EXT')
	static var SRC_ALPHA_SATURATE_EXT:GLuint;

	@:native('GL_LOCATION_INDEX_EXT')
	static var LOCATION_INDEX_EXT:GLuint;

	@:native('GL_MAX_DUAL_SOURCE_DRAW_BUFFERS_EXT')
	static var MAX_DUAL_SOURCE_DRAW_BUFFERS_EXT:GLuint;

	@:native('GL_MIN_EXT')
	static var MIN_EXT:GLuint;

	@:native('GL_MAX_EXT')
	static var MAX_EXT:GLuint;

	@:native('GL_FUNC_ADD_EXT')
	static var FUNC_ADD_EXT:GLuint;

	@:native('GL_BLEND_EQUATION_EXT')
	static var BLEND_EQUATION_EXT:GLuint;

	@:native('GL_MAP_PERSISTENT_BIT_EXT')
	static var MAP_PERSISTENT_BIT_EXT:GLuint;

	@:native('GL_MAP_COHERENT_BIT_EXT')
	static var MAP_COHERENT_BIT_EXT:GLuint;

	@:native('GL_DYNAMIC_STORAGE_BIT_EXT')
	static var DYNAMIC_STORAGE_BIT_EXT:GLuint;

	@:native('GL_CLIENT_STORAGE_BIT_EXT')
	static var CLIENT_STORAGE_BIT_EXT:GLuint;

	@:native('GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT_EXT')
	static var CLIENT_MAPPED_BUFFER_BARRIER_BIT_EXT:GLuint;

	@:native('GL_BUFFER_IMMUTABLE_STORAGE_EXT')
	static var BUFFER_IMMUTABLE_STORAGE_EXT:GLuint;

	@:native('GL_BUFFER_STORAGE_FLAGS_EXT')
	static var BUFFER_STORAGE_FLAGS_EXT:GLuint;

	@:native('GL_LOWER_LEFT_EXT')
	static var LOWER_LEFT_EXT:GLuint;

	@:native('GL_UPPER_LEFT_EXT')
	static var UPPER_LEFT_EXT:GLuint;

	@:native('GL_NEGATIVE_ONE_TO_ONE_EXT')
	static var NEGATIVE_ONE_TO_ONE_EXT:GLuint;

	@:native('GL_ZERO_TO_ONE_EXT')
	static var ZERO_TO_ONE_EXT:GLuint;

	@:native('GL_CLIP_ORIGIN_EXT')
	static var CLIP_ORIGIN_EXT:GLuint;

	@:native('GL_CLIP_DEPTH_MODE_EXT')
	static var CLIP_DEPTH_MODE_EXT:GLuint;

	@:native('GL_MAX_CLIP_DISTANCES_EXT')
	static var MAX_CLIP_DISTANCES_EXT:GLuint;

	@:native('GL_MAX_CULL_DISTANCES_EXT')
	static var MAX_CULL_DISTANCES_EXT:GLuint;

	@:native('GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES_EXT')
	static var MAX_COMBINED_CLIP_AND_CULL_DISTANCES_EXT:GLuint;

	@:native('GL_CLIP_DISTANCE0_EXT')
	static var CLIP_DISTANCE0_EXT:GLuint;

	@:native('GL_CLIP_DISTANCE1_EXT')
	static var CLIP_DISTANCE1_EXT:GLuint;

	@:native('GL_CLIP_DISTANCE2_EXT')
	static var CLIP_DISTANCE2_EXT:GLuint;

	@:native('GL_CLIP_DISTANCE3_EXT')
	static var CLIP_DISTANCE3_EXT:GLuint;

	@:native('GL_CLIP_DISTANCE4_EXT')
	static var CLIP_DISTANCE4_EXT:GLuint;

	@:native('GL_CLIP_DISTANCE5_EXT')
	static var CLIP_DISTANCE5_EXT:GLuint;

	@:native('GL_CLIP_DISTANCE6_EXT')
	static var CLIP_DISTANCE6_EXT:GLuint;

	@:native('GL_CLIP_DISTANCE7_EXT')
	static var CLIP_DISTANCE7_EXT:GLuint;

	@:native('GL_RGBA16F_EXT')
	static var RGBA16F_EXT:GLuint;

	@:native('GL_RGB16F_EXT')
	static var RGB16F_EXT:GLuint;

	@:native('GL_RG16F_EXT')
	static var RG16F_EXT:GLuint;

	@:native('GL_R16F_EXT')
	static var R16F_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT')
	static var FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT:GLuint;

	@:native('GL_UNSIGNED_NORMALIZED_EXT')
	static var UNSIGNED_NORMALIZED_EXT:GLuint;

	@:native('GL_PROGRAM_PIPELINE_OBJECT_EXT')
	static var PROGRAM_PIPELINE_OBJECT_EXT:GLuint;

	@:native('GL_PROGRAM_OBJECT_EXT')
	static var PROGRAM_OBJECT_EXT:GLuint;

	@:native('GL_SHADER_OBJECT_EXT')
	static var SHADER_OBJECT_EXT:GLuint;

	@:native('GL_BUFFER_OBJECT_EXT')
	static var BUFFER_OBJECT_EXT:GLuint;

	@:native('GL_QUERY_OBJECT_EXT')
	static var QUERY_OBJECT_EXT:GLuint;

	@:native('GL_VERTEX_ARRAY_OBJECT_EXT')
	static var VERTEX_ARRAY_OBJECT_EXT:GLuint;

	@:native('GL_DEPTH_CLAMP_EXT')
	static var DEPTH_CLAMP_EXT:GLuint;

	@:native('GL_COLOR_EXT')
	static var COLOR_EXT:GLuint;

	@:native('GL_DEPTH_EXT')
	static var DEPTH_EXT:GLuint;

	@:native('GL_STENCIL_EXT')
	static var STENCIL_EXT:GLuint;

	@:native('GL_QUERY_COUNTER_BITS_EXT')
	static var QUERY_COUNTER_BITS_EXT:GLuint;

	@:native('GL_CURRENT_QUERY_EXT')
	static var CURRENT_QUERY_EXT:GLuint;

	@:native('GL_QUERY_RESULT_EXT')
	static var QUERY_RESULT_EXT:GLuint;

	@:native('GL_QUERY_RESULT_AVAILABLE_EXT')
	static var QUERY_RESULT_AVAILABLE_EXT:GLuint;

	@:native('GL_TIME_ELAPSED_EXT')
	static var TIME_ELAPSED_EXT:GLuint;

	@:native('GL_TIMESTAMP_EXT')
	static var TIMESTAMP_EXT:GLuint;

	@:native('GL_GPU_DISJOINT_EXT')
	static var GPU_DISJOINT_EXT:GLuint;

	@:native('GL_MAX_COLOR_ATTACHMENTS_EXT')
	static var MAX_COLOR_ATTACHMENTS_EXT:GLuint;

	@:native('GL_MAX_DRAW_BUFFERS_EXT')
	static var MAX_DRAW_BUFFERS_EXT:GLuint;

	@:native('GL_DRAW_BUFFER0_EXT')
	static var DRAW_BUFFER0_EXT:GLuint;

	@:native('GL_DRAW_BUFFER1_EXT')
	static var DRAW_BUFFER1_EXT:GLuint;

	@:native('GL_DRAW_BUFFER2_EXT')
	static var DRAW_BUFFER2_EXT:GLuint;

	@:native('GL_DRAW_BUFFER3_EXT')
	static var DRAW_BUFFER3_EXT:GLuint;

	@:native('GL_DRAW_BUFFER4_EXT')
	static var DRAW_BUFFER4_EXT:GLuint;

	@:native('GL_DRAW_BUFFER5_EXT')
	static var DRAW_BUFFER5_EXT:GLuint;

	@:native('GL_DRAW_BUFFER6_EXT')
	static var DRAW_BUFFER6_EXT:GLuint;

	@:native('GL_DRAW_BUFFER7_EXT')
	static var DRAW_BUFFER7_EXT:GLuint;

	@:native('GL_DRAW_BUFFER8_EXT')
	static var DRAW_BUFFER8_EXT:GLuint;

	@:native('GL_DRAW_BUFFER9_EXT')
	static var DRAW_BUFFER9_EXT:GLuint;

	@:native('GL_DRAW_BUFFER10_EXT')
	static var DRAW_BUFFER10_EXT:GLuint;

	@:native('GL_DRAW_BUFFER11_EXT')
	static var DRAW_BUFFER11_EXT:GLuint;

	@:native('GL_DRAW_BUFFER12_EXT')
	static var DRAW_BUFFER12_EXT:GLuint;

	@:native('GL_DRAW_BUFFER13_EXT')
	static var DRAW_BUFFER13_EXT:GLuint;

	@:native('GL_DRAW_BUFFER14_EXT')
	static var DRAW_BUFFER14_EXT:GLuint;

	@:native('GL_DRAW_BUFFER15_EXT')
	static var DRAW_BUFFER15_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT0_EXT')
	static var COLOR_ATTACHMENT0_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT1_EXT')
	static var COLOR_ATTACHMENT1_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT2_EXT')
	static var COLOR_ATTACHMENT2_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT3_EXT')
	static var COLOR_ATTACHMENT3_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT4_EXT')
	static var COLOR_ATTACHMENT4_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT5_EXT')
	static var COLOR_ATTACHMENT5_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT6_EXT')
	static var COLOR_ATTACHMENT6_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT7_EXT')
	static var COLOR_ATTACHMENT7_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT8_EXT')
	static var COLOR_ATTACHMENT8_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT9_EXT')
	static var COLOR_ATTACHMENT9_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT10_EXT')
	static var COLOR_ATTACHMENT10_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT11_EXT')
	static var COLOR_ATTACHMENT11_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT12_EXT')
	static var COLOR_ATTACHMENT12_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT13_EXT')
	static var COLOR_ATTACHMENT13_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT14_EXT')
	static var COLOR_ATTACHMENT14_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT15_EXT')
	static var COLOR_ATTACHMENT15_EXT:GLuint;

	@:native('GL_SHADING_RATE_1X1_PIXELS_EXT')
	static var SHADING_RATE_1X1_PIXELS_EXT:GLuint;

	@:native('GL_SHADING_RATE_1X2_PIXELS_EXT')
	static var SHADING_RATE_1X2_PIXELS_EXT:GLuint;

	@:native('GL_SHADING_RATE_2X1_PIXELS_EXT')
	static var SHADING_RATE_2X1_PIXELS_EXT:GLuint;

	@:native('GL_SHADING_RATE_2X2_PIXELS_EXT')
	static var SHADING_RATE_2X2_PIXELS_EXT:GLuint;

	@:native('GL_SHADING_RATE_1X4_PIXELS_EXT')
	static var SHADING_RATE_1X4_PIXELS_EXT:GLuint;

	@:native('GL_SHADING_RATE_4X1_PIXELS_EXT')
	static var SHADING_RATE_4X1_PIXELS_EXT:GLuint;

	@:native('GL_SHADING_RATE_4X2_PIXELS_EXT')
	static var SHADING_RATE_4X2_PIXELS_EXT:GLuint;

	@:native('GL_SHADING_RATE_2X4_PIXELS_EXT')
	static var SHADING_RATE_2X4_PIXELS_EXT:GLuint;

	@:native('GL_SHADING_RATE_4X4_PIXELS_EXT')
	static var SHADING_RATE_4X4_PIXELS_EXT:GLuint;

	@:native('GL_SHADING_RATE_EXT')
	static var SHADING_RATE_EXT:GLuint;

	@:native('GL_SHADING_RATE_ATTACHMENT_EXT')
	static var SHADING_RATE_ATTACHMENT_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADING_RATE_COMBINER_OP_KEEP_EXT')
	static var FRAGMENT_SHADING_RATE_COMBINER_OP_KEEP_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADING_RATE_COMBINER_OP_REPLACE_EXT')
	static var FRAGMENT_SHADING_RATE_COMBINER_OP_REPLACE_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADING_RATE_COMBINER_OP_MIN_EXT')
	static var FRAGMENT_SHADING_RATE_COMBINER_OP_MIN_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADING_RATE_COMBINER_OP_MAX_EXT')
	static var FRAGMENT_SHADING_RATE_COMBINER_OP_MAX_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADING_RATE_COMBINER_OP_MUL_EXT')
	static var FRAGMENT_SHADING_RATE_COMBINER_OP_MUL_EXT:GLuint;

	@:native('GL_MIN_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_WIDTH_EXT')
	static var MIN_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_WIDTH_EXT:GLuint;

	@:native('GL_MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_WIDTH_EXT')
	static var MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_WIDTH_EXT:GLuint;

	@:native('GL_MIN_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_HEIGHT_EXT')
	static var MIN_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_HEIGHT_EXT:GLuint;

	@:native('GL_MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_HEIGHT_EXT')
	static var MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_HEIGHT_EXT:GLuint;

	@:native('GL_MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_ASPECT_RATIO_EXT')
	static var MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_TEXEL_ASPECT_RATIO_EXT:GLuint;

	@:native('GL_MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_LAYERS_EXT')
	static var MAX_FRAGMENT_SHADING_RATE_ATTACHMENT_LAYERS_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADING_RATE_WITH_SHADER_DEPTH_STENCIL_WRITES_SUPPORTED_EXT')
	static var FRAGMENT_SHADING_RATE_WITH_SHADER_DEPTH_STENCIL_WRITES_SUPPORTED_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADING_RATE_WITH_SAMPLE_MASK_SUPPORTED_EXT')
	static var FRAGMENT_SHADING_RATE_WITH_SAMPLE_MASK_SUPPORTED_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADING_RATE_ATTACHMENT_WITH_DEFAULT_FRAMEBUFFER_SUPPORTED_EXT')
	static var FRAGMENT_SHADING_RATE_ATTACHMENT_WITH_DEFAULT_FRAMEBUFFER_SUPPORTED_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADING_RATE_NON_TRIVIAL_COMBINERS_SUPPORTED_EXT')
	static var FRAGMENT_SHADING_RATE_NON_TRIVIAL_COMBINERS_SUPPORTED_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADING_RATE_PRIMITIVE_RATE_WITH_MULTI_VIEWPORT_SUPPORTED_EXT')
	static var FRAGMENT_SHADING_RATE_PRIMITIVE_RATE_WITH_MULTI_VIEWPORT_SUPPORTED_EXT:GLuint;

	@:native('GL_GEOMETRY_SHADER_EXT')
	static var GEOMETRY_SHADER_EXT:GLuint;

	@:native('GL_GEOMETRY_SHADER_BIT_EXT')
	static var GEOMETRY_SHADER_BIT_EXT:GLuint;

	@:native('GL_GEOMETRY_LINKED_VERTICES_OUT_EXT')
	static var GEOMETRY_LINKED_VERTICES_OUT_EXT:GLuint;

	@:native('GL_GEOMETRY_LINKED_INPUT_TYPE_EXT')
	static var GEOMETRY_LINKED_INPUT_TYPE_EXT:GLuint;

	@:native('GL_GEOMETRY_LINKED_OUTPUT_TYPE_EXT')
	static var GEOMETRY_LINKED_OUTPUT_TYPE_EXT:GLuint;

	@:native('GL_GEOMETRY_SHADER_INVOCATIONS_EXT')
	static var GEOMETRY_SHADER_INVOCATIONS_EXT:GLuint;

	@:native('GL_LAYER_PROVOKING_VERTEX_EXT')
	static var LAYER_PROVOKING_VERTEX_EXT:GLuint;

	@:native('GL_LINES_ADJACENCY_EXT')
	static var LINES_ADJACENCY_EXT:GLuint;

	@:native('GL_LINE_STRIP_ADJACENCY_EXT')
	static var LINE_STRIP_ADJACENCY_EXT:GLuint;

	@:native('GL_TRIANGLES_ADJACENCY_EXT')
	static var TRIANGLES_ADJACENCY_EXT:GLuint;

	@:native('GL_TRIANGLE_STRIP_ADJACENCY_EXT')
	static var TRIANGLE_STRIP_ADJACENCY_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT')
	static var MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_UNIFORM_BLOCKS_EXT')
	static var MAX_GEOMETRY_UNIFORM_BLOCKS_EXT:GLuint;

	@:native('GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS_EXT')
	static var MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_INPUT_COMPONENTS_EXT')
	static var MAX_GEOMETRY_INPUT_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_OUTPUT_COMPONENTS_EXT')
	static var MAX_GEOMETRY_OUTPUT_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT')
	static var MAX_GEOMETRY_OUTPUT_VERTICES_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT')
	static var MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_SHADER_INVOCATIONS_EXT')
	static var MAX_GEOMETRY_SHADER_INVOCATIONS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT')
	static var MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS_EXT')
	static var MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_ATOMIC_COUNTERS_EXT')
	static var MAX_GEOMETRY_ATOMIC_COUNTERS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_IMAGE_UNIFORMS_EXT')
	static var MAX_GEOMETRY_IMAGE_UNIFORMS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS_EXT')
	static var MAX_GEOMETRY_SHADER_STORAGE_BLOCKS_EXT:GLuint;

	@:native('GL_FIRST_VERTEX_CONVENTION_EXT')
	static var FIRST_VERTEX_CONVENTION_EXT:GLuint;

	@:native('GL_LAST_VERTEX_CONVENTION_EXT')
	static var LAST_VERTEX_CONVENTION_EXT:GLuint;

	@:native('GL_UNDEFINED_VERTEX_EXT')
	static var UNDEFINED_VERTEX_EXT:GLuint;

	@:native('GL_PRIMITIVES_GENERATED_EXT')
	static var PRIMITIVES_GENERATED_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT_LAYERS_EXT')
	static var FRAMEBUFFER_DEFAULT_LAYERS_EXT:GLuint;

	@:native('GL_MAX_FRAMEBUFFER_LAYERS_EXT')
	static var MAX_FRAMEBUFFER_LAYERS_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT')
	static var FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT')
	static var FRAMEBUFFER_ATTACHMENT_LAYERED_EXT:GLuint;

	@:native('GL_REFERENCED_BY_GEOMETRY_SHADER_EXT')
	static var REFERENCED_BY_GEOMETRY_SHADER_EXT:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_DIVISOR_EXT')
	static var VERTEX_ATTRIB_ARRAY_DIVISOR_EXT:GLuint;

	@:native('GL_MAP_READ_BIT_EXT')
	static var MAP_READ_BIT_EXT:GLuint;

	@:native('GL_MAP_WRITE_BIT_EXT')
	static var MAP_WRITE_BIT_EXT:GLuint;

	@:native('GL_MAP_INVALIDATE_RANGE_BIT_EXT')
	static var MAP_INVALIDATE_RANGE_BIT_EXT:GLuint;

	@:native('GL_MAP_INVALIDATE_BUFFER_BIT_EXT')
	static var MAP_INVALIDATE_BUFFER_BIT_EXT:GLuint;

	@:native('GL_MAP_FLUSH_EXPLICIT_BIT_EXT')
	static var MAP_FLUSH_EXPLICIT_BIT_EXT:GLuint;

	@:native('GL_MAP_UNSYNCHRONIZED_BIT_EXT')
	static var MAP_UNSYNCHRONIZED_BIT_EXT:GLuint;

	@:native('GL_TEXTURE_TILING_EXT')
	static var TEXTURE_TILING_EXT:GLuint;

	@:native('GL_DEDICATED_MEMORY_OBJECT_EXT')
	static var DEDICATED_MEMORY_OBJECT_EXT:GLuint;

	@:native('GL_PROTECTED_MEMORY_OBJECT_EXT')
	static var PROTECTED_MEMORY_OBJECT_EXT:GLuint;

	@:native('GL_NUM_TILING_TYPES_EXT')
	static var NUM_TILING_TYPES_EXT:GLuint;

	@:native('GL_TILING_TYPES_EXT')
	static var TILING_TYPES_EXT:GLuint;

	@:native('GL_OPTIMAL_TILING_EXT')
	static var OPTIMAL_TILING_EXT:GLuint;

	@:native('GL_LINEAR_TILING_EXT')
	static var LINEAR_TILING_EXT:GLuint;

	@:native('GL_NUM_DEVICE_UUIDS_EXT')
	static var NUM_DEVICE_UUIDS_EXT:GLuint;

	@:native('GL_DEVICE_UUID_EXT')
	static var DEVICE_UUID_EXT:GLuint;

	@:native('GL_DRIVER_UUID_EXT')
	static var DRIVER_UUID_EXT:GLuint;

	@:native('GL_UUID_SIZE_EXT')
	static var UUID_SIZE_EXT:GLuint;

	@:native('GL_HANDLE_TYPE_OPAQUE_FD_EXT')
	static var HANDLE_TYPE_OPAQUE_FD_EXT:GLuint;

	@:native('GL_HANDLE_TYPE_OPAQUE_WIN32_EXT')
	static var HANDLE_TYPE_OPAQUE_WIN32_EXT:GLuint;

	@:native('GL_HANDLE_TYPE_OPAQUE_WIN32_KMT_EXT')
	static var HANDLE_TYPE_OPAQUE_WIN32_KMT_EXT:GLuint;

	@:native('GL_DEVICE_LUID_EXT')
	static var DEVICE_LUID_EXT:GLuint;

	@:native('GL_DEVICE_NODE_MASK_EXT')
	static var DEVICE_NODE_MASK_EXT:GLuint;

	@:native('GL_LUID_SIZE_EXT')
	static var LUID_SIZE_EXT:GLuint;

	@:native('GL_HANDLE_TYPE_D3D12_TILEPOOL_EXT')
	static var HANDLE_TYPE_D3D12_TILEPOOL_EXT:GLuint;

	@:native('GL_HANDLE_TYPE_D3D12_RESOURCE_EXT')
	static var HANDLE_TYPE_D3D12_RESOURCE_EXT:GLuint;

	@:native('GL_HANDLE_TYPE_D3D11_IMAGE_EXT')
	static var HANDLE_TYPE_D3D11_IMAGE_EXT:GLuint;

	@:native('GL_HANDLE_TYPE_D3D11_IMAGE_KMT_EXT')
	static var HANDLE_TYPE_D3D11_IMAGE_KMT_EXT:GLuint;

	@:native('GL_MESH_SHADER_EXT')
	static var MESH_SHADER_EXT:GLuint;

	@:native('GL_TASK_SHADER_EXT')
	static var TASK_SHADER_EXT:GLuint;

	@:native('GL_MAX_MESH_UNIFORM_BLOCKS_EXT')
	static var MAX_MESH_UNIFORM_BLOCKS_EXT:GLuint;

	@:native('GL_MAX_MESH_TEXTURE_IMAGE_UNITS_EXT')
	static var MAX_MESH_TEXTURE_IMAGE_UNITS_EXT:GLuint;

	@:native('GL_MAX_MESH_IMAGE_UNIFORMS_EXT')
	static var MAX_MESH_IMAGE_UNIFORMS_EXT:GLuint;

	@:native('GL_MAX_MESH_UNIFORM_COMPONENTS_EXT')
	static var MAX_MESH_UNIFORM_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_MESH_ATOMIC_COUNTER_BUFFERS_EXT')
	static var MAX_MESH_ATOMIC_COUNTER_BUFFERS_EXT:GLuint;

	@:native('GL_MAX_MESH_ATOMIC_COUNTERS_EXT')
	static var MAX_MESH_ATOMIC_COUNTERS_EXT:GLuint;

	@:native('GL_MAX_MESH_SHADER_STORAGE_BLOCKS_EXT')
	static var MAX_MESH_SHADER_STORAGE_BLOCKS_EXT:GLuint;

	@:native('GL_MAX_COMBINED_MESH_UNIFORM_COMPONENTS_EXT')
	static var MAX_COMBINED_MESH_UNIFORM_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_TASK_UNIFORM_BLOCKS_EXT')
	static var MAX_TASK_UNIFORM_BLOCKS_EXT:GLuint;

	@:native('GL_MAX_TASK_TEXTURE_IMAGE_UNITS_EXT')
	static var MAX_TASK_TEXTURE_IMAGE_UNITS_EXT:GLuint;

	@:native('GL_MAX_TASK_IMAGE_UNIFORMS_EXT')
	static var MAX_TASK_IMAGE_UNIFORMS_EXT:GLuint;

	@:native('GL_MAX_TASK_UNIFORM_COMPONENTS_EXT')
	static var MAX_TASK_UNIFORM_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_TASK_ATOMIC_COUNTER_BUFFERS_EXT')
	static var MAX_TASK_ATOMIC_COUNTER_BUFFERS_EXT:GLuint;

	@:native('GL_MAX_TASK_ATOMIC_COUNTERS_EXT')
	static var MAX_TASK_ATOMIC_COUNTERS_EXT:GLuint;

	@:native('GL_MAX_TASK_SHADER_STORAGE_BLOCKS_EXT')
	static var MAX_TASK_SHADER_STORAGE_BLOCKS_EXT:GLuint;

	@:native('GL_MAX_COMBINED_TASK_UNIFORM_COMPONENTS_EXT')
	static var MAX_COMBINED_TASK_UNIFORM_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_TASK_WORK_GROUP_TOTAL_COUNT_EXT')
	static var MAX_TASK_WORK_GROUP_TOTAL_COUNT_EXT:GLuint;

	@:native('GL_MAX_MESH_WORK_GROUP_TOTAL_COUNT_EXT')
	static var MAX_MESH_WORK_GROUP_TOTAL_COUNT_EXT:GLuint;

	@:native('GL_MAX_MESH_WORK_GROUP_INVOCATIONS_EXT')
	static var MAX_MESH_WORK_GROUP_INVOCATIONS_EXT:GLuint;

	@:native('GL_MAX_TASK_WORK_GROUP_INVOCATIONS_EXT')
	static var MAX_TASK_WORK_GROUP_INVOCATIONS_EXT:GLuint;

	@:native('GL_MAX_TASK_PAYLOAD_SIZE_EXT')
	static var MAX_TASK_PAYLOAD_SIZE_EXT:GLuint;

	@:native('GL_MAX_TASK_SHARED_MEMORY_SIZE_EXT')
	static var MAX_TASK_SHARED_MEMORY_SIZE_EXT:GLuint;

	@:native('GL_MAX_MESH_SHARED_MEMORY_SIZE_EXT')
	static var MAX_MESH_SHARED_MEMORY_SIZE_EXT:GLuint;

	@:native('GL_MAX_TASK_PAYLOAD_AND_SHARED_MEMORY_SIZE_EXT')
	static var MAX_TASK_PAYLOAD_AND_SHARED_MEMORY_SIZE_EXT:GLuint;

	@:native('GL_MAX_MESH_PAYLOAD_AND_SHARED_MEMORY_SIZE_EXT')
	static var MAX_MESH_PAYLOAD_AND_SHARED_MEMORY_SIZE_EXT:GLuint;

	@:native('GL_MAX_MESH_OUTPUT_MEMORY_SIZE_EXT')
	static var MAX_MESH_OUTPUT_MEMORY_SIZE_EXT:GLuint;

	@:native('GL_MAX_MESH_PAYLOAD_AND_OUTPUT_MEMORY_SIZE_EXT')
	static var MAX_MESH_PAYLOAD_AND_OUTPUT_MEMORY_SIZE_EXT:GLuint;

	@:native('GL_MAX_MESH_OUTPUT_VERTICES_EXT')
	static var MAX_MESH_OUTPUT_VERTICES_EXT:GLuint;

	@:native('GL_MAX_MESH_OUTPUT_PRIMITIVES_EXT')
	static var MAX_MESH_OUTPUT_PRIMITIVES_EXT:GLuint;

	@:native('GL_MAX_MESH_OUTPUT_COMPONENTS_EXT')
	static var MAX_MESH_OUTPUT_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_MESH_OUTPUT_LAYERS_EXT')
	static var MAX_MESH_OUTPUT_LAYERS_EXT:GLuint;

	@:native('GL_MAX_MESH_MULTIVIEW_VIEW_COUNT_EXT')
	static var MAX_MESH_MULTIVIEW_VIEW_COUNT_EXT:GLuint;

	@:native('GL_MESH_OUTPUT_PER_VERTEX_GRANULARITY_EXT')
	static var MESH_OUTPUT_PER_VERTEX_GRANULARITY_EXT:GLuint;

	@:native('GL_MESH_OUTPUT_PER_PRIMITIVE_GRANULARITY_EXT')
	static var MESH_OUTPUT_PER_PRIMITIVE_GRANULARITY_EXT:GLuint;

	@:native('GL_MAX_PREFERRED_TASK_WORK_GROUP_INVOCATIONS_EXT')
	static var MAX_PREFERRED_TASK_WORK_GROUP_INVOCATIONS_EXT:GLuint;

	@:native('GL_MAX_PREFERRED_MESH_WORK_GROUP_INVOCATIONS_EXT')
	static var MAX_PREFERRED_MESH_WORK_GROUP_INVOCATIONS_EXT:GLuint;

	@:native('GL_MESH_PREFERS_LOCAL_INVOCATION_VERTEX_OUTPUT_EXT')
	static var MESH_PREFERS_LOCAL_INVOCATION_VERTEX_OUTPUT_EXT:GLuint;

	@:native('GL_MESH_PREFERS_LOCAL_INVOCATION_PRIMITIVE_OUTPUT_EXT')
	static var MESH_PREFERS_LOCAL_INVOCATION_PRIMITIVE_OUTPUT_EXT:GLuint;

	@:native('GL_MESH_PREFERS_COMPACT_VERTEX_OUTPUT_EXT')
	static var MESH_PREFERS_COMPACT_VERTEX_OUTPUT_EXT:GLuint;

	@:native('GL_MESH_PREFERS_COMPACT_PRIMITIVE_OUTPUT_EXT')
	static var MESH_PREFERS_COMPACT_PRIMITIVE_OUTPUT_EXT:GLuint;

	@:native('GL_MAX_TASK_WORK_GROUP_COUNT_EXT')
	static var MAX_TASK_WORK_GROUP_COUNT_EXT:GLuint;

	@:native('GL_MAX_MESH_WORK_GROUP_COUNT_EXT')
	static var MAX_MESH_WORK_GROUP_COUNT_EXT:GLuint;

	@:native('GL_MAX_MESH_WORK_GROUP_SIZE_EXT')
	static var MAX_MESH_WORK_GROUP_SIZE_EXT:GLuint;

	@:native('GL_MAX_TASK_WORK_GROUP_SIZE_EXT')
	static var MAX_TASK_WORK_GROUP_SIZE_EXT:GLuint;

	@:native('GL_MESH_WORK_GROUP_SIZE_EXT')
	static var MESH_WORK_GROUP_SIZE_EXT:GLuint;

	@:native('GL_TASK_WORK_GROUP_SIZE_EXT')
	static var TASK_WORK_GROUP_SIZE_EXT:GLuint;

	@:native('GL_MESH_VERTICES_OUT_EXT')
	static var MESH_VERTICES_OUT_EXT:GLuint;

	@:native('GL_MESH_PRIMITIVES_OUT_EXT')
	static var MESH_PRIMITIVES_OUT_EXT:GLuint;

	@:native('GL_MESH_OUTPUT_TYPE_EXT')
	static var MESH_OUTPUT_TYPE_EXT:GLuint;

	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_MESH_SHADER_EXT')
	static var UNIFORM_BLOCK_REFERENCED_BY_MESH_SHADER_EXT:GLuint;

	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_TASK_SHADER_EXT')
	static var UNIFORM_BLOCK_REFERENCED_BY_TASK_SHADER_EXT:GLuint;

	@:native('GL_REFERENCED_BY_MESH_SHADER_EXT')
	static var REFERENCED_BY_MESH_SHADER_EXT:GLuint;

	@:native('GL_REFERENCED_BY_TASK_SHADER_EXT')
	static var REFERENCED_BY_TASK_SHADER_EXT:GLuint;

	@:native('GL_TASK_SHADER_INVOCATIONS_EXT')
	static var TASK_SHADER_INVOCATIONS_EXT:GLuint;

	@:native('GL_MESH_SHADER_INVOCATIONS_EXT')
	static var MESH_SHADER_INVOCATIONS_EXT:GLuint;

	@:native('GL_MESH_PRIMITIVES_GENERATED_EXT')
	static var MESH_PRIMITIVES_GENERATED_EXT:GLuint;

	@:native('GL_MESH_SHADER_BIT_EXT')
	static var MESH_SHADER_BIT_EXT:GLuint;

	@:native('GL_TASK_SHADER_BIT_EXT')
	static var TASK_SHADER_BIT_EXT:GLuint;

	@:native('GL_MESH_SUBROUTINE_EXT')
	static var MESH_SUBROUTINE_EXT:GLuint;

	@:native('GL_TASK_SUBROUTINE_EXT')
	static var TASK_SUBROUTINE_EXT:GLuint;

	@:native('GL_MESH_SUBROUTINE_UNIFORM_EXT')
	static var MESH_SUBROUTINE_UNIFORM_EXT:GLuint;

	@:native('GL_TASK_SUBROUTINE_UNIFORM_EXT')
	static var TASK_SUBROUTINE_UNIFORM_EXT:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_MESH_SHADER_EXT')
	static var ATOMIC_COUNTER_BUFFER_REFERENCED_BY_MESH_SHADER_EXT:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TASK_SHADER_EXT')
	static var ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TASK_SHADER_EXT:GLuint;

	@:native('GL_MULTISAMPLE_EXT')
	static var MULTISAMPLE_EXT:GLuint;

	@:native('GL_SAMPLE_ALPHA_TO_ONE_EXT')
	static var SAMPLE_ALPHA_TO_ONE_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_SAMPLES_EXT')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_SAMPLES_EXT:GLuint;

	@:native('GL_RENDERBUFFER_SAMPLES_EXT')
	static var RENDERBUFFER_SAMPLES_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT')
	static var FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT:GLuint;

	@:native('GL_MAX_SAMPLES_EXT')
	static var MAX_SAMPLES_EXT:GLuint;

	@:native('GL_COLOR_ATTACHMENT_EXT')
	static var COLOR_ATTACHMENT_EXT:GLuint;

	@:native('GL_MULTIVIEW_EXT')
	static var MULTIVIEW_EXT:GLuint;

	@:native('GL_DRAW_BUFFER_EXT')
	static var DRAW_BUFFER_EXT:GLuint;

	@:native('GL_READ_BUFFER_EXT')
	static var READ_BUFFER_EXT:GLuint;

	@:native('GL_MAX_MULTIVIEW_BUFFERS_EXT')
	static var MAX_MULTIVIEW_BUFFERS_EXT:GLuint;

	@:native('GL_ANY_SAMPLES_PASSED_EXT')
	static var ANY_SAMPLES_PASSED_EXT:GLuint;

	@:native('GL_ANY_SAMPLES_PASSED_CONSERVATIVE_EXT')
	static var ANY_SAMPLES_PASSED_CONSERVATIVE_EXT:GLuint;

	@:native('GL_POLYGON_OFFSET_CLAMP_EXT')
	static var POLYGON_OFFSET_CLAMP_EXT:GLuint;

	@:native('GL_PRIMITIVE_BOUNDING_BOX_EXT')
	static var PRIMITIVE_BOUNDING_BOX_EXT:GLuint;

	@:native('GL_CONTEXT_FLAG_PROTECTED_CONTENT_BIT_EXT')
	static var CONTEXT_FLAG_PROTECTED_CONTENT_BIT_EXT:GLuint;

	@:native('GL_TEXTURE_PROTECTED_EXT')
	static var TEXTURE_PROTECTED_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_PVRTC_2BPPV1_EXT')
	static var COMPRESSED_SRGB_PVRTC_2BPPV1_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_PVRTC_4BPPV1_EXT')
	static var COMPRESSED_SRGB_PVRTC_4BPPV1_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV1_EXT')
	static var COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV1_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV1_EXT')
	static var COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV1_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV2_IMG')
	static var COMPRESSED_SRGB_ALPHA_PVRTC_2BPPV2_IMG:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV2_IMG')
	static var COMPRESSED_SRGB_ALPHA_PVRTC_4BPPV2_IMG:GLuint;

	@:native('GL_RASTER_MULTISAMPLE_EXT')
	static var RASTER_MULTISAMPLE_EXT:GLuint;

	@:native('GL_RASTER_SAMPLES_EXT')
	static var RASTER_SAMPLES_EXT:GLuint;

	@:native('GL_MAX_RASTER_SAMPLES_EXT')
	static var MAX_RASTER_SAMPLES_EXT:GLuint;

	@:native('GL_RASTER_FIXED_SAMPLE_LOCATIONS_EXT')
	static var RASTER_FIXED_SAMPLE_LOCATIONS_EXT:GLuint;

	@:native('GL_MULTISAMPLE_RASTERIZATION_ALLOWED_EXT')
	static var MULTISAMPLE_RASTERIZATION_ALLOWED_EXT:GLuint;

	@:native('GL_EFFECTIVE_RASTER_SAMPLES_EXT')
	static var EFFECTIVE_RASTER_SAMPLES_EXT:GLuint;

	@:native('GL_UNSIGNED_SHORT_4_4_4_4_REV_EXT')
	static var UNSIGNED_SHORT_4_4_4_4_REV_EXT:GLuint;

	@:native('GL_UNSIGNED_SHORT_1_5_5_5_REV_EXT')
	static var UNSIGNED_SHORT_1_5_5_5_REV_EXT:GLuint;

	@:native('GL_R16_SNORM_EXT')
	static var R16_SNORM_EXT:GLuint;

	@:native('GL_RG16_SNORM_EXT')
	static var RG16_SNORM_EXT:GLuint;

	@:native('GL_RGBA16_SNORM_EXT')
	static var RGBA16_SNORM_EXT:GLuint;

	@:native('GL_GUILTY_CONTEXT_RESET_EXT')
	static var GUILTY_CONTEXT_RESET_EXT:GLuint;

	@:native('GL_INNOCENT_CONTEXT_RESET_EXT')
	static var INNOCENT_CONTEXT_RESET_EXT:GLuint;

	@:native('GL_UNKNOWN_CONTEXT_RESET_EXT')
	static var UNKNOWN_CONTEXT_RESET_EXT:GLuint;

	@:native('GL_CONTEXT_ROBUST_ACCESS_EXT')
	static var CONTEXT_ROBUST_ACCESS_EXT:GLuint;

	@:native('GL_RESET_NOTIFICATION_STRATEGY_EXT')
	static var RESET_NOTIFICATION_STRATEGY_EXT:GLuint;

	@:native('GL_LOSE_CONTEXT_ON_RESET_EXT')
	static var LOSE_CONTEXT_ON_RESET_EXT:GLuint;

	@:native('GL_NO_RESET_NOTIFICATION_EXT')
	static var NO_RESET_NOTIFICATION_EXT:GLuint;

	@:native('GL_LAYOUT_GENERAL_EXT')
	static var LAYOUT_GENERAL_EXT:GLuint;

	@:native('GL_LAYOUT_COLOR_ATTACHMENT_EXT')
	static var LAYOUT_COLOR_ATTACHMENT_EXT:GLuint;

	@:native('GL_LAYOUT_DEPTH_STENCIL_ATTACHMENT_EXT')
	static var LAYOUT_DEPTH_STENCIL_ATTACHMENT_EXT:GLuint;

	@:native('GL_LAYOUT_DEPTH_STENCIL_READ_ONLY_EXT')
	static var LAYOUT_DEPTH_STENCIL_READ_ONLY_EXT:GLuint;

	@:native('GL_LAYOUT_SHADER_READ_ONLY_EXT')
	static var LAYOUT_SHADER_READ_ONLY_EXT:GLuint;

	@:native('GL_LAYOUT_TRANSFER_SRC_EXT')
	static var LAYOUT_TRANSFER_SRC_EXT:GLuint;

	@:native('GL_LAYOUT_TRANSFER_DST_EXT')
	static var LAYOUT_TRANSFER_DST_EXT:GLuint;

	@:native('GL_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_EXT')
	static var LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_EXT:GLuint;

	@:native('GL_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_EXT')
	static var LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_EXT:GLuint;

	@:native('GL_HANDLE_TYPE_D3D12_FENCE_EXT')
	static var HANDLE_TYPE_D3D12_FENCE_EXT:GLuint;

	@:native('GL_D3D12_FENCE_VALUE_EXT')
	static var D3D12_FENCE_VALUE_EXT:GLuint;

	@:native('GL_SRGB_EXT')
	static var SRGB_EXT:GLuint;

	@:native('GL_SRGB_ALPHA_EXT')
	static var SRGB_ALPHA_EXT:GLuint;

	@:native('GL_SRGB8_ALPHA8_EXT')
	static var SRGB8_ALPHA8_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT')
	static var FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_SRGB_EXT')
	static var FRAMEBUFFER_SRGB_EXT:GLuint;

	@:native('GL_ACTIVE_PROGRAM_EXT')
	static var ACTIVE_PROGRAM_EXT:GLuint;

	@:native('GL_VERTEX_SHADER_BIT_EXT')
	static var VERTEX_SHADER_BIT_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADER_BIT_EXT')
	static var FRAGMENT_SHADER_BIT_EXT:GLuint;

	@:native('GL_ALL_SHADER_BITS_EXT')
	static var ALL_SHADER_BITS_EXT:GLuint;

	@:native('GL_PROGRAM_SEPARABLE_EXT')
	static var PROGRAM_SEPARABLE_EXT:GLuint;

	@:native('GL_PROGRAM_PIPELINE_BINDING_EXT')
	static var PROGRAM_PIPELINE_BINDING_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT')
	static var FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT:GLuint;

	@:native('GL_MAX_SHADER_PIXEL_LOCAL_STORAGE_FAST_SIZE_EXT')
	static var MAX_SHADER_PIXEL_LOCAL_STORAGE_FAST_SIZE_EXT:GLuint;

	@:native('GL_MAX_SHADER_PIXEL_LOCAL_STORAGE_SIZE_EXT')
	static var MAX_SHADER_PIXEL_LOCAL_STORAGE_SIZE_EXT:GLuint;

	@:native('GL_SHADER_PIXEL_LOCAL_STORAGE_EXT')
	static var SHADER_PIXEL_LOCAL_STORAGE_EXT:GLuint;

	@:native('GL_MAX_SHADER_COMBINED_LOCAL_STORAGE_FAST_SIZE_EXT')
	static var MAX_SHADER_COMBINED_LOCAL_STORAGE_FAST_SIZE_EXT:GLuint;

	@:native('GL_MAX_SHADER_COMBINED_LOCAL_STORAGE_SIZE_EXT')
	static var MAX_SHADER_COMBINED_LOCAL_STORAGE_SIZE_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_INSUFFICIENT_SHADER_COMBINED_LOCAL_STORAGE_EXT')
	static var FRAMEBUFFER_INCOMPLETE_INSUFFICIENT_SHADER_COMBINED_LOCAL_STORAGE_EXT:GLuint;

	@:native('GL_TEXTURE_COMPARE_MODE_EXT')
	static var TEXTURE_COMPARE_MODE_EXT:GLuint;

	@:native('GL_TEXTURE_COMPARE_FUNC_EXT')
	static var TEXTURE_COMPARE_FUNC_EXT:GLuint;

	@:native('GL_COMPARE_REF_TO_TEXTURE_EXT')
	static var COMPARE_REF_TO_TEXTURE_EXT:GLuint;

	@:native('GL_SAMPLER_2D_SHADOW_EXT')
	static var SAMPLER_2D_SHADOW_EXT:GLuint;

	@:native('GL_TEXTURE_SPARSE_EXT')
	static var TEXTURE_SPARSE_EXT:GLuint;

	@:native('GL_VIRTUAL_PAGE_SIZE_INDEX_EXT')
	static var VIRTUAL_PAGE_SIZE_INDEX_EXT:GLuint;

	@:native('GL_NUM_SPARSE_LEVELS_EXT')
	static var NUM_SPARSE_LEVELS_EXT:GLuint;

	@:native('GL_NUM_VIRTUAL_PAGE_SIZES_EXT')
	static var NUM_VIRTUAL_PAGE_SIZES_EXT:GLuint;

	@:native('GL_VIRTUAL_PAGE_SIZE_X_EXT')
	static var VIRTUAL_PAGE_SIZE_X_EXT:GLuint;

	@:native('GL_VIRTUAL_PAGE_SIZE_Y_EXT')
	static var VIRTUAL_PAGE_SIZE_Y_EXT:GLuint;

	@:native('GL_VIRTUAL_PAGE_SIZE_Z_EXT')
	static var VIRTUAL_PAGE_SIZE_Z_EXT:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_ARRAY_OES')
	static var TEXTURE_CUBE_MAP_ARRAY_OES:GLuint;

	@:native('GL_MAX_SPARSE_TEXTURE_SIZE_EXT')
	static var MAX_SPARSE_TEXTURE_SIZE_EXT:GLuint;

	@:native('GL_MAX_SPARSE_3D_TEXTURE_SIZE_EXT')
	static var MAX_SPARSE_3D_TEXTURE_SIZE_EXT:GLuint;

	@:native('GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_EXT')
	static var MAX_SPARSE_ARRAY_TEXTURE_LAYERS_EXT:GLuint;

	@:native('GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_EXT')
	static var SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_EXT:GLuint;

	@:native('GL_PATCHES_EXT')
	static var PATCHES_EXT:GLuint;

	@:native('GL_PATCH_VERTICES_EXT')
	static var PATCH_VERTICES_EXT:GLuint;

	@:native('GL_TESS_CONTROL_OUTPUT_VERTICES_EXT')
	static var TESS_CONTROL_OUTPUT_VERTICES_EXT:GLuint;

	@:native('GL_TESS_GEN_MODE_EXT')
	static var TESS_GEN_MODE_EXT:GLuint;

	@:native('GL_TESS_GEN_SPACING_EXT')
	static var TESS_GEN_SPACING_EXT:GLuint;

	@:native('GL_TESS_GEN_VERTEX_ORDER_EXT')
	static var TESS_GEN_VERTEX_ORDER_EXT:GLuint;

	@:native('GL_TESS_GEN_POINT_MODE_EXT')
	static var TESS_GEN_POINT_MODE_EXT:GLuint;

	@:native('GL_ISOLINES_EXT')
	static var ISOLINES_EXT:GLuint;

	@:native('GL_QUADS_EXT')
	static var QUADS_EXT:GLuint;

	@:native('GL_FRACTIONAL_ODD_EXT')
	static var FRACTIONAL_ODD_EXT:GLuint;

	@:native('GL_FRACTIONAL_EVEN_EXT')
	static var FRACTIONAL_EVEN_EXT:GLuint;

	@:native('GL_MAX_PATCH_VERTICES_EXT')
	static var MAX_PATCH_VERTICES_EXT:GLuint;

	@:native('GL_MAX_TESS_GEN_LEVEL_EXT')
	static var MAX_TESS_GEN_LEVEL_EXT:GLuint;

	@:native('GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS_EXT')
	static var MAX_TESS_CONTROL_UNIFORM_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS_EXT')
	static var MAX_TESS_EVALUATION_UNIFORM_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS_EXT')
	static var MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS_EXT:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS_EXT')
	static var MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS_EXT:GLuint;

	@:native('GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS_EXT')
	static var MAX_TESS_CONTROL_OUTPUT_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_TESS_PATCH_COMPONENTS_EXT')
	static var MAX_TESS_PATCH_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS_EXT')
	static var MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS_EXT')
	static var MAX_TESS_EVALUATION_OUTPUT_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS_EXT')
	static var MAX_TESS_CONTROL_UNIFORM_BLOCKS_EXT:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS_EXT')
	static var MAX_TESS_EVALUATION_UNIFORM_BLOCKS_EXT:GLuint;

	@:native('GL_MAX_TESS_CONTROL_INPUT_COMPONENTS_EXT')
	static var MAX_TESS_CONTROL_INPUT_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS_EXT')
	static var MAX_TESS_EVALUATION_INPUT_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS_EXT')
	static var MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS_EXT')
	static var MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS_EXT')
	static var MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS_EXT:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS_EXT')
	static var MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS_EXT:GLuint;

	@:native('GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS_EXT')
	static var MAX_TESS_CONTROL_ATOMIC_COUNTERS_EXT:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS_EXT')
	static var MAX_TESS_EVALUATION_ATOMIC_COUNTERS_EXT:GLuint;

	@:native('GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS_EXT')
	static var MAX_TESS_CONTROL_IMAGE_UNIFORMS_EXT:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS_EXT')
	static var MAX_TESS_EVALUATION_IMAGE_UNIFORMS_EXT:GLuint;

	@:native('GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS_EXT')
	static var MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS_EXT:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS_EXT')
	static var MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS_EXT:GLuint;

	@:native('GL_IS_PER_PATCH_EXT')
	static var IS_PER_PATCH_EXT:GLuint;

	@:native('GL_REFERENCED_BY_TESS_CONTROL_SHADER_EXT')
	static var REFERENCED_BY_TESS_CONTROL_SHADER_EXT:GLuint;

	@:native('GL_REFERENCED_BY_TESS_EVALUATION_SHADER_EXT')
	static var REFERENCED_BY_TESS_EVALUATION_SHADER_EXT:GLuint;

	@:native('GL_TESS_CONTROL_SHADER_EXT')
	static var TESS_CONTROL_SHADER_EXT:GLuint;

	@:native('GL_TESS_EVALUATION_SHADER_EXT')
	static var TESS_EVALUATION_SHADER_EXT:GLuint;

	@:native('GL_TESS_CONTROL_SHADER_BIT_EXT')
	static var TESS_CONTROL_SHADER_BIT_EXT:GLuint;

	@:native('GL_TESS_EVALUATION_SHADER_BIT_EXT')
	static var TESS_EVALUATION_SHADER_BIT_EXT:GLuint;

	@:native('GL_TEXTURE_BORDER_COLOR_EXT')
	static var TEXTURE_BORDER_COLOR_EXT:GLuint;

	@:native('GL_CLAMP_TO_BORDER_EXT')
	static var CLAMP_TO_BORDER_EXT:GLuint;

	@:native('GL_TEXTURE_BUFFER_EXT')
	static var TEXTURE_BUFFER_EXT:GLuint;

	@:native('GL_TEXTURE_BUFFER_BINDING_EXT')
	static var TEXTURE_BUFFER_BINDING_EXT:GLuint;

	@:native('GL_MAX_TEXTURE_BUFFER_SIZE_EXT')
	static var MAX_TEXTURE_BUFFER_SIZE_EXT:GLuint;

	@:native('GL_TEXTURE_BINDING_BUFFER_EXT')
	static var TEXTURE_BINDING_BUFFER_EXT:GLuint;

	@:native('GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT')
	static var TEXTURE_BUFFER_DATA_STORE_BINDING_EXT:GLuint;

	@:native('GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT_EXT')
	static var TEXTURE_BUFFER_OFFSET_ALIGNMENT_EXT:GLuint;

	@:native('GL_SAMPLER_BUFFER_EXT')
	static var SAMPLER_BUFFER_EXT:GLuint;

	@:native('GL_INT_SAMPLER_BUFFER_EXT')
	static var INT_SAMPLER_BUFFER_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT')
	static var UNSIGNED_INT_SAMPLER_BUFFER_EXT:GLuint;

	@:native('GL_IMAGE_BUFFER_EXT')
	static var IMAGE_BUFFER_EXT:GLuint;

	@:native('GL_INT_IMAGE_BUFFER_EXT')
	static var INT_IMAGE_BUFFER_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_BUFFER_EXT')
	static var UNSIGNED_INT_IMAGE_BUFFER_EXT:GLuint;

	@:native('GL_TEXTURE_BUFFER_OFFSET_EXT')
	static var TEXTURE_BUFFER_OFFSET_EXT:GLuint;

	@:native('GL_TEXTURE_BUFFER_SIZE_EXT')
	static var TEXTURE_BUFFER_SIZE_EXT:GLuint;

	@:native('GL_TEXTURE_ASTC_DECODE_PRECISION_EXT')
	static var TEXTURE_ASTC_DECODE_PRECISION_EXT:GLuint;

	@:native('GL_COMPRESSED_RGBA_BPTC_UNORM_EXT')
	static var COMPRESSED_RGBA_BPTC_UNORM_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT')
	static var COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT:GLuint;

	@:native('GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT')
	static var COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT:GLuint;

	@:native('GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT')
	static var COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT:GLuint;

	@:native('GL_COMPRESSED_RGB_S3TC_DXT1_EXT')
	static var COMPRESSED_RGB_S3TC_DXT1_EXT:GLuint;

	@:native('GL_COMPRESSED_RGBA_S3TC_DXT1_EXT')
	static var COMPRESSED_RGBA_S3TC_DXT1_EXT:GLuint;

	@:native('GL_COMPRESSED_RED_RGTC1_EXT')
	static var COMPRESSED_RED_RGTC1_EXT:GLuint;

	@:native('GL_COMPRESSED_SIGNED_RED_RGTC1_EXT')
	static var COMPRESSED_SIGNED_RED_RGTC1_EXT:GLuint;

	@:native('GL_COMPRESSED_RED_GREEN_RGTC2_EXT')
	static var COMPRESSED_RED_GREEN_RGTC2_EXT:GLuint;

	@:native('GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT')
	static var COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT:GLuint;

	@:native('GL_COMPRESSED_RGBA_S3TC_DXT3_EXT')
	static var COMPRESSED_RGBA_S3TC_DXT3_EXT:GLuint;

	@:native('GL_COMPRESSED_RGBA_S3TC_DXT5_EXT')
	static var COMPRESSED_RGBA_S3TC_DXT5_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_S3TC_DXT1_EXT')
	static var COMPRESSED_SRGB_S3TC_DXT1_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT')
	static var COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT')
	static var COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT')
	static var COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_ARRAY_EXT')
	static var TEXTURE_CUBE_MAP_ARRAY_EXT:GLuint;

	@:native('GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_EXT')
	static var TEXTURE_BINDING_CUBE_MAP_ARRAY_EXT:GLuint;

	@:native('GL_SAMPLER_CUBE_MAP_ARRAY_EXT')
	static var SAMPLER_CUBE_MAP_ARRAY_EXT:GLuint;

	@:native('GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_EXT')
	static var SAMPLER_CUBE_MAP_ARRAY_SHADOW_EXT:GLuint;

	@:native('GL_INT_SAMPLER_CUBE_MAP_ARRAY_EXT')
	static var INT_SAMPLER_CUBE_MAP_ARRAY_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_EXT')
	static var UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_EXT:GLuint;

	@:native('GL_IMAGE_CUBE_MAP_ARRAY_EXT')
	static var IMAGE_CUBE_MAP_ARRAY_EXT:GLuint;

	@:native('GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT')
	static var INT_IMAGE_CUBE_MAP_ARRAY_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT')
	static var UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT:GLuint;

	@:native('GL_TEXTURE_MAX_ANISOTROPY_EXT')
	static var TEXTURE_MAX_ANISOTROPY_EXT:GLuint;

	@:native('GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT')
	static var MAX_TEXTURE_MAX_ANISOTROPY_EXT:GLuint;

	@:native('GL_TEXTURE_REDUCTION_MODE_EXT')
	static var TEXTURE_REDUCTION_MODE_EXT:GLuint;

	@:native('GL_WEIGHTED_AVERAGE_EXT')
	static var WEIGHTED_AVERAGE_EXT:GLuint;

	@:native('GL_TEXTURE_FORMAT_SRGB_OVERRIDE_EXT')
	static var TEXTURE_FORMAT_SRGB_OVERRIDE_EXT:GLuint;

	@:native('GL_MIRROR_CLAMP_TO_EDGE_EXT')
	static var MIRROR_CLAMP_TO_EDGE_EXT:GLuint;

	@:native('GL_R16_EXT')
	static var R16_EXT:GLuint;

	@:native('GL_RG16_EXT')
	static var RG16_EXT:GLuint;

	@:native('GL_RGBA16_EXT')
	static var RGBA16_EXT:GLuint;

	@:native('GL_RGB16_EXT')
	static var RGB16_EXT:GLuint;

	@:native('GL_RGB16_SNORM_EXT')
	static var RGB16_SNORM_EXT:GLuint;

	@:native('GL_RED_EXT')
	static var RED_EXT:GLuint;

	@:native('GL_RG_EXT')
	static var RG_EXT:GLuint;

	@:native('GL_R8_EXT')
	static var R8_EXT:GLuint;

	@:native('GL_RG8_EXT')
	static var RG8_EXT:GLuint;

	@:native('GL_SR8_EXT')
	static var SR8_EXT:GLuint;

	@:native('GL_SRG8_EXT')
	static var SRG8_EXT:GLuint;

	@:native('GL_TEXTURE_SRGB_DECODE_EXT')
	static var TEXTURE_SRGB_DECODE_EXT:GLuint;

	@:native('GL_DECODE_EXT')
	static var DECODE_EXT:GLuint;

	@:native('GL_SKIP_DECODE_EXT')
	static var SKIP_DECODE_EXT:GLuint;

	@:native('GL_TEXTURE_IMMUTABLE_FORMAT_EXT')
	static var TEXTURE_IMMUTABLE_FORMAT_EXT:GLuint;

	@:native('GL_ALPHA8_EXT')
	static var ALPHA8_EXT:GLuint;

	@:native('GL_LUMINANCE8_EXT')
	static var LUMINANCE8_EXT:GLuint;

	@:native('GL_LUMINANCE8_ALPHA8_EXT')
	static var LUMINANCE8_ALPHA8_EXT:GLuint;

	@:native('GL_RGBA32F_EXT')
	static var RGBA32F_EXT:GLuint;

	@:native('GL_RGB32F_EXT')
	static var RGB32F_EXT:GLuint;

	@:native('GL_ALPHA32F_EXT')
	static var ALPHA32F_EXT:GLuint;

	@:native('GL_LUMINANCE32F_EXT')
	static var LUMINANCE32F_EXT:GLuint;

	@:native('GL_LUMINANCE_ALPHA32F_EXT')
	static var LUMINANCE_ALPHA32F_EXT:GLuint;

	@:native('GL_ALPHA16F_EXT')
	static var ALPHA16F_EXT:GLuint;

	@:native('GL_LUMINANCE16F_EXT')
	static var LUMINANCE16F_EXT:GLuint;

	@:native('GL_LUMINANCE_ALPHA16F_EXT')
	static var LUMINANCE_ALPHA16F_EXT:GLuint;

	@:native('GL_RGB10_A2_EXT')
	static var RGB10_A2_EXT:GLuint;

	@:native('GL_RGB10_EXT')
	static var RGB10_EXT:GLuint;

	@:native('GL_R32F_EXT')
	static var R32F_EXT:GLuint;

	@:native('GL_RG32F_EXT')
	static var RG32F_EXT:GLuint;

	@:native('GL_NUM_SURFACE_COMPRESSION_FIXED_RATES_EXT')
	static var NUM_SURFACE_COMPRESSION_FIXED_RATES_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_1BPC_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_1BPC_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_2BPC_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_2BPC_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_3BPC_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_3BPC_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_4BPC_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_4BPC_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_5BPC_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_5BPC_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_6BPC_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_6BPC_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_7BPC_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_7BPC_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_8BPC_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_8BPC_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_9BPC_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_9BPC_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_10BPC_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_10BPC_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_11BPC_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_11BPC_EXT:GLuint;

	@:native('GL_SURFACE_COMPRESSION_FIXED_RATE_12BPC_EXT')
	static var SURFACE_COMPRESSION_FIXED_RATE_12BPC_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_2_10_10_10_REV_EXT')
	static var UNSIGNED_INT_2_10_10_10_REV_EXT:GLuint;

	@:native('GL_TEXTURE_VIEW_MIN_LEVEL_EXT')
	static var TEXTURE_VIEW_MIN_LEVEL_EXT:GLuint;

	@:native('GL_TEXTURE_VIEW_NUM_LEVELS_EXT')
	static var TEXTURE_VIEW_NUM_LEVELS_EXT:GLuint;

	@:native('GL_TEXTURE_VIEW_MIN_LAYER_EXT')
	static var TEXTURE_VIEW_MIN_LAYER_EXT:GLuint;

	@:native('GL_TEXTURE_VIEW_NUM_LAYERS_EXT')
	static var TEXTURE_VIEW_NUM_LAYERS_EXT:GLuint;

	@:native('GL_TIMELINE_SEMAPHORE_VALUE_NV')
	static var TIMELINE_SEMAPHORE_VALUE_NV:GLuint;

	@:native('GL_SEMAPHORE_TYPE_NV')
	static var SEMAPHORE_TYPE_NV:GLuint;

	@:native('GL_SEMAPHORE_TYPE_BINARY_NV')
	static var SEMAPHORE_TYPE_BINARY_NV:GLuint;

	@:native('GL_SEMAPHORE_TYPE_TIMELINE_NV')
	static var SEMAPHORE_TYPE_TIMELINE_NV:GLuint;

	@:native('GL_MAX_TIMELINE_SEMAPHORE_VALUE_DIFFERENCE_NV')
	static var MAX_TIMELINE_SEMAPHORE_VALUE_DIFFERENCE_NV:GLuint;

	@:native('GL_UNPACK_ROW_LENGTH_EXT')
	static var UNPACK_ROW_LENGTH_EXT:GLuint;

	@:native('GL_UNPACK_SKIP_ROWS_EXT')
	static var UNPACK_SKIP_ROWS_EXT:GLuint;

	@:native('GL_UNPACK_SKIP_PIXELS_EXT')
	static var UNPACK_SKIP_PIXELS_EXT:GLuint;

	@:native('GL_INCLUSIVE_EXT')
	static var INCLUSIVE_EXT:GLuint;

	@:native('GL_EXCLUSIVE_EXT')
	static var EXCLUSIVE_EXT:GLuint;

	@:native('GL_WINDOW_RECTANGLE_EXT')
	static var WINDOW_RECTANGLE_EXT:GLuint;

	@:native('GL_WINDOW_RECTANGLE_MODE_EXT')
	static var WINDOW_RECTANGLE_MODE_EXT:GLuint;

	@:native('GL_MAX_WINDOW_RECTANGLES_EXT')
	static var MAX_WINDOW_RECTANGLES_EXT:GLuint;

	@:native('GL_NUM_WINDOW_RECTANGLES_EXT')
	static var NUM_WINDOW_RECTANGLES_EXT:GLuint;

	@:native('GL_GCCSO_SHADER_BINARY_FJ')
	static var GCCSO_SHADER_BINARY_FJ:GLuint;

	@:native('GL_HUAWEI_PROGRAM_BINARY')
	static var HUAWEI_PROGRAM_BINARY:GLuint;

	@:native('GL_HUAWEI_SHADER_BINARY')
	static var HUAWEI_SHADER_BINARY:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_AND_DOWNSAMPLE_IMG')
	static var FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_AND_DOWNSAMPLE_IMG:GLuint;

	@:native('GL_NUM_DOWNSAMPLE_SCALES_IMG')
	static var NUM_DOWNSAMPLE_SCALES_IMG:GLuint;

	@:native('GL_DOWNSAMPLE_SCALES_IMG')
	static var DOWNSAMPLE_SCALES_IMG:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_SCALE_IMG')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_SCALE_IMG:GLuint;

	@:native('GL_RENDERBUFFER_SAMPLES_IMG')
	static var RENDERBUFFER_SAMPLES_IMG:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_IMG')
	static var FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_IMG:GLuint;

	@:native('GL_MAX_SAMPLES_IMG')
	static var MAX_SAMPLES_IMG:GLuint;

	@:native('GL_TEXTURE_SAMPLES_IMG')
	static var TEXTURE_SAMPLES_IMG:GLuint;

	@:native('GL_SGX_PROGRAM_BINARY_IMG')
	static var SGX_PROGRAM_BINARY_IMG:GLuint;

	@:native('GL_BGRA_IMG')
	static var BGRA_IMG:GLuint;

	@:native('GL_UNSIGNED_SHORT_4_4_4_4_REV_IMG')
	static var UNSIGNED_SHORT_4_4_4_4_REV_IMG:GLuint;

	@:native('GL_SGX_BINARY_IMG')
	static var SGX_BINARY_IMG:GLuint;

	@:native('GL_COMPRESSED_RGB_PVRTC_4BPPV1_IMG')
	static var COMPRESSED_RGB_PVRTC_4BPPV1_IMG:GLuint;

	@:native('GL_COMPRESSED_RGB_PVRTC_2BPPV1_IMG')
	static var COMPRESSED_RGB_PVRTC_2BPPV1_IMG:GLuint;

	@:native('GL_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG')
	static var COMPRESSED_RGBA_PVRTC_4BPPV1_IMG:GLuint;

	@:native('GL_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG')
	static var COMPRESSED_RGBA_PVRTC_2BPPV1_IMG:GLuint;

	@:native('GL_COMPRESSED_RGBA_PVRTC_2BPPV2_IMG')
	static var COMPRESSED_RGBA_PVRTC_2BPPV2_IMG:GLuint;

	@:native('GL_COMPRESSED_RGBA_PVRTC_4BPPV2_IMG')
	static var COMPRESSED_RGBA_PVRTC_4BPPV2_IMG:GLuint;

	@:native('GL_CUBIC_IMG')
	static var CUBIC_IMG:GLuint;

	@:native('GL_CUBIC_MIPMAP_NEAREST_IMG')
	static var CUBIC_MIPMAP_NEAREST_IMG:GLuint;

	@:native('GL_CUBIC_MIPMAP_LINEAR_IMG')
	static var CUBIC_MIPMAP_LINEAR_IMG:GLuint;

	@:native('GL_CONSERVATIVE_RASTERIZATION_INTEL')
	static var CONSERVATIVE_RASTERIZATION_INTEL:GLuint;

	@:native('GL_BLACKHOLE_RENDER_INTEL')
	static var BLACKHOLE_RENDER_INTEL:GLuint;

	@:native('GL_PERFQUERY_SINGLE_CONTEXT_INTEL')
	static var PERFQUERY_SINGLE_CONTEXT_INTEL:GLuint;

	@:native('GL_PERFQUERY_GLOBAL_CONTEXT_INTEL')
	static var PERFQUERY_GLOBAL_CONTEXT_INTEL:GLuint;

	@:native('GL_PERFQUERY_WAIT_INTEL')
	static var PERFQUERY_WAIT_INTEL:GLuint;

	@:native('GL_PERFQUERY_FLUSH_INTEL')
	static var PERFQUERY_FLUSH_INTEL:GLuint;

	@:native('GL_PERFQUERY_DONOT_FLUSH_INTEL')
	static var PERFQUERY_DONOT_FLUSH_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_EVENT_INTEL')
	static var PERFQUERY_COUNTER_EVENT_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_DURATION_NORM_INTEL')
	static var PERFQUERY_COUNTER_DURATION_NORM_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_DURATION_RAW_INTEL')
	static var PERFQUERY_COUNTER_DURATION_RAW_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_THROUGHPUT_INTEL')
	static var PERFQUERY_COUNTER_THROUGHPUT_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_RAW_INTEL')
	static var PERFQUERY_COUNTER_RAW_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_TIMESTAMP_INTEL')
	static var PERFQUERY_COUNTER_TIMESTAMP_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_DATA_UINT32_INTEL')
	static var PERFQUERY_COUNTER_DATA_UINT32_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_DATA_UINT64_INTEL')
	static var PERFQUERY_COUNTER_DATA_UINT64_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_DATA_FLOAT_INTEL')
	static var PERFQUERY_COUNTER_DATA_FLOAT_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_DATA_DOUBLE_INTEL')
	static var PERFQUERY_COUNTER_DATA_DOUBLE_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_DATA_BOOL32_INTEL')
	static var PERFQUERY_COUNTER_DATA_BOOL32_INTEL:GLuint;

	@:native('GL_PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL')
	static var PERFQUERY_QUERY_NAME_LENGTH_MAX_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL')
	static var PERFQUERY_COUNTER_NAME_LENGTH_MAX_INTEL:GLuint;

	@:native('GL_PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL')
	static var PERFQUERY_COUNTER_DESC_LENGTH_MAX_INTEL:GLuint;

	@:native('GL_PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL')
	static var PERFQUERY_GPA_EXTENDED_COUNTERS_INTEL:GLuint;

	@:native('GL_MULTIPLY_KHR')
	static var MULTIPLY_KHR:GLuint;

	@:native('GL_SCREEN_KHR')
	static var SCREEN_KHR:GLuint;

	@:native('GL_OVERLAY_KHR')
	static var OVERLAY_KHR:GLuint;

	@:native('GL_DARKEN_KHR')
	static var DARKEN_KHR:GLuint;

	@:native('GL_LIGHTEN_KHR')
	static var LIGHTEN_KHR:GLuint;

	@:native('GL_COLORDODGE_KHR')
	static var COLORDODGE_KHR:GLuint;

	@:native('GL_COLORBURN_KHR')
	static var COLORBURN_KHR:GLuint;

	@:native('GL_HARDLIGHT_KHR')
	static var HARDLIGHT_KHR:GLuint;

	@:native('GL_SOFTLIGHT_KHR')
	static var SOFTLIGHT_KHR:GLuint;

	@:native('GL_DIFFERENCE_KHR')
	static var DIFFERENCE_KHR:GLuint;

	@:native('GL_EXCLUSION_KHR')
	static var EXCLUSION_KHR:GLuint;

	@:native('GL_HSL_HUE_KHR')
	static var HSL_HUE_KHR:GLuint;

	@:native('GL_HSL_SATURATION_KHR')
	static var HSL_SATURATION_KHR:GLuint;

	@:native('GL_HSL_COLOR_KHR')
	static var HSL_COLOR_KHR:GLuint;

	@:native('GL_HSL_LUMINOSITY_KHR')
	static var HSL_LUMINOSITY_KHR:GLuint;

	@:native('GL_BLEND_ADVANCED_COHERENT_KHR')
	static var BLEND_ADVANCED_COHERENT_KHR:GLuint;

	@:native('GL_CONTEXT_RELEASE_BEHAVIOR')
	static var CONTEXT_RELEASE_BEHAVIOR:GLuint;

	@:native('GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH')
	static var CONTEXT_RELEASE_BEHAVIOR_FLUSH:GLuint;

	@:native('GL_CONTEXT_RELEASE_BEHAVIOR_KHR')
	static var CONTEXT_RELEASE_BEHAVIOR_KHR:GLuint;

	@:native('GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_KHR')
	static var CONTEXT_RELEASE_BEHAVIOR_FLUSH_KHR:GLuint;

	@:native('GL_DEBUG_OUTPUT_SYNCHRONOUS_KHR')
	static var DEBUG_OUTPUT_SYNCHRONOUS_KHR:GLuint;

	@:native('GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_KHR')
	static var DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_KHR:GLuint;

	@:native('GL_DEBUG_CALLBACK_FUNCTION_KHR')
	static var DEBUG_CALLBACK_FUNCTION_KHR:GLuint;

	@:native('GL_DEBUG_CALLBACK_USER_PARAM_KHR')
	static var DEBUG_CALLBACK_USER_PARAM_KHR:GLuint;

	@:native('GL_DEBUG_SOURCE_API_KHR')
	static var DEBUG_SOURCE_API_KHR:GLuint;

	@:native('GL_DEBUG_SOURCE_WINDOW_SYSTEM_KHR')
	static var DEBUG_SOURCE_WINDOW_SYSTEM_KHR:GLuint;

	@:native('GL_DEBUG_SOURCE_SHADER_COMPILER_KHR')
	static var DEBUG_SOURCE_SHADER_COMPILER_KHR:GLuint;

	@:native('GL_DEBUG_SOURCE_THIRD_PARTY_KHR')
	static var DEBUG_SOURCE_THIRD_PARTY_KHR:GLuint;

	@:native('GL_DEBUG_SOURCE_APPLICATION_KHR')
	static var DEBUG_SOURCE_APPLICATION_KHR:GLuint;

	@:native('GL_DEBUG_SOURCE_OTHER_KHR')
	static var DEBUG_SOURCE_OTHER_KHR:GLuint;

	@:native('GL_DEBUG_TYPE_ERROR_KHR')
	static var DEBUG_TYPE_ERROR_KHR:GLuint;

	@:native('GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_KHR')
	static var DEBUG_TYPE_DEPRECATED_BEHAVIOR_KHR:GLuint;

	@:native('GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_KHR')
	static var DEBUG_TYPE_UNDEFINED_BEHAVIOR_KHR:GLuint;

	@:native('GL_DEBUG_TYPE_PORTABILITY_KHR')
	static var DEBUG_TYPE_PORTABILITY_KHR:GLuint;

	@:native('GL_DEBUG_TYPE_PERFORMANCE_KHR')
	static var DEBUG_TYPE_PERFORMANCE_KHR:GLuint;

	@:native('GL_DEBUG_TYPE_OTHER_KHR')
	static var DEBUG_TYPE_OTHER_KHR:GLuint;

	@:native('GL_DEBUG_TYPE_MARKER_KHR')
	static var DEBUG_TYPE_MARKER_KHR:GLuint;

	@:native('GL_DEBUG_TYPE_PUSH_GROUP_KHR')
	static var DEBUG_TYPE_PUSH_GROUP_KHR:GLuint;

	@:native('GL_DEBUG_TYPE_POP_GROUP_KHR')
	static var DEBUG_TYPE_POP_GROUP_KHR:GLuint;

	@:native('GL_DEBUG_SEVERITY_NOTIFICATION_KHR')
	static var DEBUG_SEVERITY_NOTIFICATION_KHR:GLuint;

	@:native('GL_MAX_DEBUG_GROUP_STACK_DEPTH_KHR')
	static var MAX_DEBUG_GROUP_STACK_DEPTH_KHR:GLuint;

	@:native('GL_DEBUG_GROUP_STACK_DEPTH_KHR')
	static var DEBUG_GROUP_STACK_DEPTH_KHR:GLuint;

	@:native('GL_BUFFER_KHR')
	static var BUFFER_KHR:GLuint;

	@:native('GL_SHADER_KHR')
	static var SHADER_KHR:GLuint;

	@:native('GL_PROGRAM_KHR')
	static var PROGRAM_KHR:GLuint;

	@:native('GL_VERTEX_ARRAY_KHR')
	static var VERTEX_ARRAY_KHR:GLuint;

	@:native('GL_QUERY_KHR')
	static var QUERY_KHR:GLuint;

	@:native('GL_PROGRAM_PIPELINE_KHR')
	static var PROGRAM_PIPELINE_KHR:GLuint;

	@:native('GL_SAMPLER_KHR')
	static var SAMPLER_KHR:GLuint;

	@:native('GL_MAX_LABEL_LENGTH_KHR')
	static var MAX_LABEL_LENGTH_KHR:GLuint;

	@:native('GL_MAX_DEBUG_MESSAGE_LENGTH_KHR')
	static var MAX_DEBUG_MESSAGE_LENGTH_KHR:GLuint;

	@:native('GL_MAX_DEBUG_LOGGED_MESSAGES_KHR')
	static var MAX_DEBUG_LOGGED_MESSAGES_KHR:GLuint;

	@:native('GL_DEBUG_LOGGED_MESSAGES_KHR')
	static var DEBUG_LOGGED_MESSAGES_KHR:GLuint;

	@:native('GL_DEBUG_SEVERITY_HIGH_KHR')
	static var DEBUG_SEVERITY_HIGH_KHR:GLuint;

	@:native('GL_DEBUG_SEVERITY_MEDIUM_KHR')
	static var DEBUG_SEVERITY_MEDIUM_KHR:GLuint;

	@:native('GL_DEBUG_SEVERITY_LOW_KHR')
	static var DEBUG_SEVERITY_LOW_KHR:GLuint;

	@:native('GL_DEBUG_OUTPUT_KHR')
	static var DEBUG_OUTPUT_KHR:GLuint;

	@:native('GL_CONTEXT_FLAG_DEBUG_BIT_KHR')
	static var CONTEXT_FLAG_DEBUG_BIT_KHR:GLuint;

	@:native('GL_STACK_OVERFLOW_KHR')
	static var STACK_OVERFLOW_KHR:GLuint;

	@:native('GL_STACK_UNDERFLOW_KHR')
	static var STACK_UNDERFLOW_KHR:GLuint;

	@:native('GL_DISPLAY_LIST')
	static var DISPLAY_LIST:GLuint;

	@:native('GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR')
	static var CONTEXT_FLAG_NO_ERROR_BIT_KHR:GLuint;

	@:native('GL_CONTEXT_ROBUST_ACCESS')
	static var CONTEXT_ROBUST_ACCESS:GLuint;

	@:native('GL_CONTEXT_ROBUST_ACCESS_KHR')
	static var CONTEXT_ROBUST_ACCESS_KHR:GLuint;

	@:native('GL_LOSE_CONTEXT_ON_RESET_KHR')
	static var LOSE_CONTEXT_ON_RESET_KHR:GLuint;

	@:native('GL_GUILTY_CONTEXT_RESET_KHR')
	static var GUILTY_CONTEXT_RESET_KHR:GLuint;

	@:native('GL_INNOCENT_CONTEXT_RESET_KHR')
	static var INNOCENT_CONTEXT_RESET_KHR:GLuint;

	@:native('GL_UNKNOWN_CONTEXT_RESET_KHR')
	static var UNKNOWN_CONTEXT_RESET_KHR:GLuint;

	@:native('GL_RESET_NOTIFICATION_STRATEGY_KHR')
	static var RESET_NOTIFICATION_STRATEGY_KHR:GLuint;

	@:native('GL_NO_RESET_NOTIFICATION_KHR')
	static var NO_RESET_NOTIFICATION_KHR:GLuint;

	@:native('GL_CONTEXT_LOST_KHR')
	static var CONTEXT_LOST_KHR:GLuint;

	@:native('GL_SUBGROUP_SIZE_KHR')
	static var SUBGROUP_SIZE_KHR:GLuint;

	@:native('GL_SUBGROUP_SUPPORTED_STAGES_KHR')
	static var SUBGROUP_SUPPORTED_STAGES_KHR:GLuint;

	@:native('GL_SUBGROUP_SUPPORTED_FEATURES_KHR')
	static var SUBGROUP_SUPPORTED_FEATURES_KHR:GLuint;

	@:native('GL_SUBGROUP_QUAD_ALL_STAGES_KHR')
	static var SUBGROUP_QUAD_ALL_STAGES_KHR:GLuint;

	@:native('GL_SUBGROUP_FEATURE_BASIC_BIT_KHR')
	static var SUBGROUP_FEATURE_BASIC_BIT_KHR:GLuint;

	@:native('GL_SUBGROUP_FEATURE_VOTE_BIT_KHR')
	static var SUBGROUP_FEATURE_VOTE_BIT_KHR:GLuint;

	@:native('GL_SUBGROUP_FEATURE_ARITHMETIC_BIT_KHR')
	static var SUBGROUP_FEATURE_ARITHMETIC_BIT_KHR:GLuint;

	@:native('GL_SUBGROUP_FEATURE_BALLOT_BIT_KHR')
	static var SUBGROUP_FEATURE_BALLOT_BIT_KHR:GLuint;

	@:native('GL_SUBGROUP_FEATURE_SHUFFLE_BIT_KHR')
	static var SUBGROUP_FEATURE_SHUFFLE_BIT_KHR:GLuint;

	@:native('GL_SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT_KHR')
	static var SUBGROUP_FEATURE_SHUFFLE_RELATIVE_BIT_KHR:GLuint;

	@:native('GL_SUBGROUP_FEATURE_CLUSTERED_BIT_KHR')
	static var SUBGROUP_FEATURE_CLUSTERED_BIT_KHR:GLuint;

	@:native('GL_SUBGROUP_FEATURE_QUAD_BIT_KHR')
	static var SUBGROUP_FEATURE_QUAD_BIT_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_4x4_KHR')
	static var COMPRESSED_RGBA_ASTC_4x4_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_5x4_KHR')
	static var COMPRESSED_RGBA_ASTC_5x4_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_5x5_KHR')
	static var COMPRESSED_RGBA_ASTC_5x5_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_6x5_KHR')
	static var COMPRESSED_RGBA_ASTC_6x5_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_6x6_KHR')
	static var COMPRESSED_RGBA_ASTC_6x6_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_8x5_KHR')
	static var COMPRESSED_RGBA_ASTC_8x5_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_8x6_KHR')
	static var COMPRESSED_RGBA_ASTC_8x6_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_8x8_KHR')
	static var COMPRESSED_RGBA_ASTC_8x8_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_10x5_KHR')
	static var COMPRESSED_RGBA_ASTC_10x5_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_10x6_KHR')
	static var COMPRESSED_RGBA_ASTC_10x6_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_10x8_KHR')
	static var COMPRESSED_RGBA_ASTC_10x8_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_10x10_KHR')
	static var COMPRESSED_RGBA_ASTC_10x10_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_12x10_KHR')
	static var COMPRESSED_RGBA_ASTC_12x10_KHR:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_12x12_KHR')
	static var COMPRESSED_RGBA_ASTC_12x12_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR:GLuint;

	@:native('GL_MAX_SHADER_COMPILER_THREADS_KHR')
	static var MAX_SHADER_COMPILER_THREADS_KHR:GLuint;

	@:native('GL_COMPLETION_STATUS_KHR')
	static var COMPLETION_STATUS_KHR:GLuint;

	@:native('GL_BGR_EXT')
	static var BGR_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_FLIP_X_MESA')
	static var FRAMEBUFFER_FLIP_X_MESA:GLuint;

	@:native('GL_FRAMEBUFFER_FLIP_Y_MESA')
	static var FRAMEBUFFER_FLIP_Y_MESA:GLuint;

	@:native('GL_FRAMEBUFFER_SWAP_XY_MESA')
	static var FRAMEBUFFER_SWAP_XY_MESA:GLuint;

	@:native('GL_PROGRAM_BINARY_FORMAT_MESA')
	static var PROGRAM_BINARY_FORMAT_MESA:GLuint;

	@:native('GL_CONST_BW_TILING_MESA')
	static var CONST_BW_TILING_MESA:GLuint;

	@:native('GL_BLEND_OVERLAP_NV')
	static var BLEND_OVERLAP_NV:GLuint;

	@:native('GL_BLEND_PREMULTIPLIED_SRC_NV')
	static var BLEND_PREMULTIPLIED_SRC_NV:GLuint;

	@:native('GL_BLUE_NV')
	static var BLUE_NV:GLuint;

	@:native('GL_COLORBURN_NV')
	static var COLORBURN_NV:GLuint;

	@:native('GL_COLORDODGE_NV')
	static var COLORDODGE_NV:GLuint;

	@:native('GL_CONJOINT_NV')
	static var CONJOINT_NV:GLuint;

	@:native('GL_CONTRAST_NV')
	static var CONTRAST_NV:GLuint;

	@:native('GL_DARKEN_NV')
	static var DARKEN_NV:GLuint;

	@:native('GL_DIFFERENCE_NV')
	static var DIFFERENCE_NV:GLuint;

	@:native('GL_DISJOINT_NV')
	static var DISJOINT_NV:GLuint;

	@:native('GL_DST_ATOP_NV')
	static var DST_ATOP_NV:GLuint;

	@:native('GL_DST_IN_NV')
	static var DST_IN_NV:GLuint;

	@:native('GL_DST_NV')
	static var DST_NV:GLuint;

	@:native('GL_DST_OUT_NV')
	static var DST_OUT_NV:GLuint;

	@:native('GL_DST_OVER_NV')
	static var DST_OVER_NV:GLuint;

	@:native('GL_EXCLUSION_NV')
	static var EXCLUSION_NV:GLuint;

	@:native('GL_GREEN_NV')
	static var GREEN_NV:GLuint;

	@:native('GL_HARDLIGHT_NV')
	static var HARDLIGHT_NV:GLuint;

	@:native('GL_HARDMIX_NV')
	static var HARDMIX_NV:GLuint;

	@:native('GL_HSL_COLOR_NV')
	static var HSL_COLOR_NV:GLuint;

	@:native('GL_HSL_HUE_NV')
	static var HSL_HUE_NV:GLuint;

	@:native('GL_HSL_LUMINOSITY_NV')
	static var HSL_LUMINOSITY_NV:GLuint;

	@:native('GL_HSL_SATURATION_NV')
	static var HSL_SATURATION_NV:GLuint;

	@:native('GL_INVERT_OVG_NV')
	static var INVERT_OVG_NV:GLuint;

	@:native('GL_INVERT_RGB_NV')
	static var INVERT_RGB_NV:GLuint;

	@:native('GL_LIGHTEN_NV')
	static var LIGHTEN_NV:GLuint;

	@:native('GL_LINEARBURN_NV')
	static var LINEARBURN_NV:GLuint;

	@:native('GL_LINEARDODGE_NV')
	static var LINEARDODGE_NV:GLuint;

	@:native('GL_LINEARLIGHT_NV')
	static var LINEARLIGHT_NV:GLuint;

	@:native('GL_MINUS_CLAMPED_NV')
	static var MINUS_CLAMPED_NV:GLuint;

	@:native('GL_MINUS_NV')
	static var MINUS_NV:GLuint;

	@:native('GL_MULTIPLY_NV')
	static var MULTIPLY_NV:GLuint;

	@:native('GL_OVERLAY_NV')
	static var OVERLAY_NV:GLuint;

	@:native('GL_PINLIGHT_NV')
	static var PINLIGHT_NV:GLuint;

	@:native('GL_PLUS_CLAMPED_ALPHA_NV')
	static var PLUS_CLAMPED_ALPHA_NV:GLuint;

	@:native('GL_PLUS_CLAMPED_NV')
	static var PLUS_CLAMPED_NV:GLuint;

	@:native('GL_PLUS_DARKER_NV')
	static var PLUS_DARKER_NV:GLuint;

	@:native('GL_PLUS_NV')
	static var PLUS_NV:GLuint;

	@:native('GL_RED_NV')
	static var RED_NV:GLuint;

	@:native('GL_SCREEN_NV')
	static var SCREEN_NV:GLuint;

	@:native('GL_SOFTLIGHT_NV')
	static var SOFTLIGHT_NV:GLuint;

	@:native('GL_SRC_ATOP_NV')
	static var SRC_ATOP_NV:GLuint;

	@:native('GL_SRC_IN_NV')
	static var SRC_IN_NV:GLuint;

	@:native('GL_SRC_NV')
	static var SRC_NV:GLuint;

	@:native('GL_SRC_OUT_NV')
	static var SRC_OUT_NV:GLuint;

	@:native('GL_SRC_OVER_NV')
	static var SRC_OVER_NV:GLuint;

	@:native('GL_UNCORRELATED_NV')
	static var UNCORRELATED_NV:GLuint;

	@:native('GL_VIVIDLIGHT_NV')
	static var VIVIDLIGHT_NV:GLuint;

	@:native('GL_XOR_NV')
	static var XOR_NV:GLuint;

	@:native('GL_BLEND_ADVANCED_COHERENT_NV')
	static var BLEND_ADVANCED_COHERENT_NV:GLuint;

	@:native('GL_FACTOR_MIN_AMD')
	static var FACTOR_MIN_AMD:GLuint;

	@:native('GL_FACTOR_MAX_AMD')
	static var FACTOR_MAX_AMD:GLuint;

	@:native('GL_VIEWPORT_POSITION_W_SCALE_NV')
	static var VIEWPORT_POSITION_W_SCALE_NV:GLuint;

	@:native('GL_VIEWPORT_POSITION_W_SCALE_X_COEFF_NV')
	static var VIEWPORT_POSITION_W_SCALE_X_COEFF_NV:GLuint;

	@:native('GL_VIEWPORT_POSITION_W_SCALE_Y_COEFF_NV')
	static var VIEWPORT_POSITION_W_SCALE_Y_COEFF_NV:GLuint;

	@:native('GL_QUERY_WAIT_NV')
	static var QUERY_WAIT_NV:GLuint;

	@:native('GL_QUERY_NO_WAIT_NV')
	static var QUERY_NO_WAIT_NV:GLuint;

	@:native('GL_QUERY_BY_REGION_WAIT_NV')
	static var QUERY_BY_REGION_WAIT_NV:GLuint;

	@:native('GL_QUERY_BY_REGION_NO_WAIT_NV')
	static var QUERY_BY_REGION_NO_WAIT_NV:GLuint;

	@:native('GL_CONSERVATIVE_RASTERIZATION_NV')
	static var CONSERVATIVE_RASTERIZATION_NV:GLuint;

	@:native('GL_SUBPIXEL_PRECISION_BIAS_X_BITS_NV')
	static var SUBPIXEL_PRECISION_BIAS_X_BITS_NV:GLuint;

	@:native('GL_SUBPIXEL_PRECISION_BIAS_Y_BITS_NV')
	static var SUBPIXEL_PRECISION_BIAS_Y_BITS_NV:GLuint;

	@:native('GL_MAX_SUBPIXEL_PRECISION_BIAS_BITS_NV')
	static var MAX_SUBPIXEL_PRECISION_BIAS_BITS_NV:GLuint;

	@:native('GL_CONSERVATIVE_RASTER_MODE_PRE_SNAP_NV')
	static var CONSERVATIVE_RASTER_MODE_PRE_SNAP_NV:GLuint;

	@:native('GL_CONSERVATIVE_RASTER_MODE_NV')
	static var CONSERVATIVE_RASTER_MODE_NV:GLuint;

	@:native('GL_CONSERVATIVE_RASTER_MODE_POST_SNAP_NV')
	static var CONSERVATIVE_RASTER_MODE_POST_SNAP_NV:GLuint;

	@:native('GL_CONSERVATIVE_RASTER_MODE_PRE_SNAP_TRIANGLES_NV')
	static var CONSERVATIVE_RASTER_MODE_PRE_SNAP_TRIANGLES_NV:GLuint;

	@:native('GL_COPY_READ_BUFFER_NV')
	static var COPY_READ_BUFFER_NV:GLuint;

	@:native('GL_COPY_WRITE_BUFFER_NV')
	static var COPY_WRITE_BUFFER_NV:GLuint;

	@:native('GL_COVERAGE_COMPONENT_NV')
	static var COVERAGE_COMPONENT_NV:GLuint;

	@:native('GL_COVERAGE_COMPONENT4_NV')
	static var COVERAGE_COMPONENT4_NV:GLuint;

	@:native('GL_COVERAGE_ATTACHMENT_NV')
	static var COVERAGE_ATTACHMENT_NV:GLuint;

	@:native('GL_COVERAGE_BUFFERS_NV')
	static var COVERAGE_BUFFERS_NV:GLuint;

	@:native('GL_COVERAGE_SAMPLES_NV')
	static var COVERAGE_SAMPLES_NV:GLuint;

	@:native('GL_COVERAGE_ALL_FRAGMENTS_NV')
	static var COVERAGE_ALL_FRAGMENTS_NV:GLuint;

	@:native('GL_COVERAGE_EDGE_FRAGMENTS_NV')
	static var COVERAGE_EDGE_FRAGMENTS_NV:GLuint;

	@:native('GL_COVERAGE_AUTOMATIC_NV')
	static var COVERAGE_AUTOMATIC_NV:GLuint;

	@:native('GL_COVERAGE_BUFFER_BIT_NV')
	static var COVERAGE_BUFFER_BIT_NV:GLuint;

	@:native('GL_DEPTH_COMPONENT16_NONLINEAR_NV')
	static var DEPTH_COMPONENT16_NONLINEAR_NV:GLuint;

	@:native('GL_MAX_DRAW_BUFFERS_NV')
	static var MAX_DRAW_BUFFERS_NV:GLuint;

	@:native('GL_DRAW_BUFFER0_NV')
	static var DRAW_BUFFER0_NV:GLuint;

	@:native('GL_DRAW_BUFFER1_NV')
	static var DRAW_BUFFER1_NV:GLuint;

	@:native('GL_DRAW_BUFFER2_NV')
	static var DRAW_BUFFER2_NV:GLuint;

	@:native('GL_DRAW_BUFFER3_NV')
	static var DRAW_BUFFER3_NV:GLuint;

	@:native('GL_DRAW_BUFFER4_NV')
	static var DRAW_BUFFER4_NV:GLuint;

	@:native('GL_DRAW_BUFFER5_NV')
	static var DRAW_BUFFER5_NV:GLuint;

	@:native('GL_DRAW_BUFFER6_NV')
	static var DRAW_BUFFER6_NV:GLuint;

	@:native('GL_DRAW_BUFFER7_NV')
	static var DRAW_BUFFER7_NV:GLuint;

	@:native('GL_DRAW_BUFFER8_NV')
	static var DRAW_BUFFER8_NV:GLuint;

	@:native('GL_DRAW_BUFFER9_NV')
	static var DRAW_BUFFER9_NV:GLuint;

	@:native('GL_DRAW_BUFFER10_NV')
	static var DRAW_BUFFER10_NV:GLuint;

	@:native('GL_DRAW_BUFFER11_NV')
	static var DRAW_BUFFER11_NV:GLuint;

	@:native('GL_DRAW_BUFFER12_NV')
	static var DRAW_BUFFER12_NV:GLuint;

	@:native('GL_DRAW_BUFFER13_NV')
	static var DRAW_BUFFER13_NV:GLuint;

	@:native('GL_DRAW_BUFFER14_NV')
	static var DRAW_BUFFER14_NV:GLuint;

	@:native('GL_DRAW_BUFFER15_NV')
	static var DRAW_BUFFER15_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT0_NV')
	static var COLOR_ATTACHMENT0_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT1_NV')
	static var COLOR_ATTACHMENT1_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT2_NV')
	static var COLOR_ATTACHMENT2_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT3_NV')
	static var COLOR_ATTACHMENT3_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT4_NV')
	static var COLOR_ATTACHMENT4_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT5_NV')
	static var COLOR_ATTACHMENT5_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT6_NV')
	static var COLOR_ATTACHMENT6_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT7_NV')
	static var COLOR_ATTACHMENT7_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT8_NV')
	static var COLOR_ATTACHMENT8_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT9_NV')
	static var COLOR_ATTACHMENT9_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT10_NV')
	static var COLOR_ATTACHMENT10_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT11_NV')
	static var COLOR_ATTACHMENT11_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT12_NV')
	static var COLOR_ATTACHMENT12_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT13_NV')
	static var COLOR_ATTACHMENT13_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT14_NV')
	static var COLOR_ATTACHMENT14_NV:GLuint;

	@:native('GL_COLOR_ATTACHMENT15_NV')
	static var COLOR_ATTACHMENT15_NV:GLuint;

	@:native('GL_MAX_COLOR_ATTACHMENTS_NV')
	static var MAX_COLOR_ATTACHMENTS_NV:GLuint;

	@:native('GL_ALL_COMPLETED_NV')
	static var ALL_COMPLETED_NV:GLuint;

	@:native('GL_FENCE_STATUS_NV')
	static var FENCE_STATUS_NV:GLuint;

	@:native('GL_FENCE_CONDITION_NV')
	static var FENCE_CONDITION_NV:GLuint;

	@:native('GL_FILL_RECTANGLE_NV')
	static var FILL_RECTANGLE_NV:GLuint;

	@:native('GL_FRAGMENT_COVERAGE_TO_COLOR_NV')
	static var FRAGMENT_COVERAGE_TO_COLOR_NV:GLuint;

	@:native('GL_FRAGMENT_COVERAGE_COLOR_NV')
	static var FRAGMENT_COVERAGE_COLOR_NV:GLuint;

	@:native('GL_READ_FRAMEBUFFER_NV')
	static var READ_FRAMEBUFFER_NV:GLuint;

	@:native('GL_DRAW_FRAMEBUFFER_NV')
	static var DRAW_FRAMEBUFFER_NV:GLuint;

	@:native('GL_DRAW_FRAMEBUFFER_BINDING_NV')
	static var DRAW_FRAMEBUFFER_BINDING_NV:GLuint;

	@:native('GL_READ_FRAMEBUFFER_BINDING_NV')
	static var READ_FRAMEBUFFER_BINDING_NV:GLuint;

	@:native('GL_COVERAGE_MODULATION_TABLE_NV')
	static var COVERAGE_MODULATION_TABLE_NV:GLuint;

	@:native('GL_COLOR_SAMPLES_NV')
	static var COLOR_SAMPLES_NV:GLuint;

	@:native('GL_DEPTH_SAMPLES_NV')
	static var DEPTH_SAMPLES_NV:GLuint;

	@:native('GL_STENCIL_SAMPLES_NV')
	static var STENCIL_SAMPLES_NV:GLuint;

	@:native('GL_MIXED_DEPTH_SAMPLES_SUPPORTED_NV')
	static var MIXED_DEPTH_SAMPLES_SUPPORTED_NV:GLuint;

	@:native('GL_MIXED_STENCIL_SAMPLES_SUPPORTED_NV')
	static var MIXED_STENCIL_SAMPLES_SUPPORTED_NV:GLuint;

	@:native('GL_COVERAGE_MODULATION_NV')
	static var COVERAGE_MODULATION_NV:GLuint;

	@:native('GL_COVERAGE_MODULATION_TABLE_SIZE_NV')
	static var COVERAGE_MODULATION_TABLE_SIZE_NV:GLuint;

	@:native('GL_RENDERBUFFER_SAMPLES_NV')
	static var RENDERBUFFER_SAMPLES_NV:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_NV')
	static var FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_NV:GLuint;

	@:native('GL_MAX_SAMPLES_NV')
	static var MAX_SAMPLES_NV:GLuint;

	@:native('GL_INT64_NV')
	static var INT64_NV:GLuint;

	@:native('GL_UNSIGNED_INT64_NV')
	static var UNSIGNED_INT64_NV:GLuint;

	@:native('GL_INT8_NV')
	static var INT8_NV:GLuint;

	@:native('GL_INT8_VEC2_NV')
	static var INT8_VEC2_NV:GLuint;

	@:native('GL_INT8_VEC3_NV')
	static var INT8_VEC3_NV:GLuint;

	@:native('GL_INT8_VEC4_NV')
	static var INT8_VEC4_NV:GLuint;

	@:native('GL_INT16_NV')
	static var INT16_NV:GLuint;

	@:native('GL_INT16_VEC2_NV')
	static var INT16_VEC2_NV:GLuint;

	@:native('GL_INT16_VEC3_NV')
	static var INT16_VEC3_NV:GLuint;

	@:native('GL_INT16_VEC4_NV')
	static var INT16_VEC4_NV:GLuint;

	@:native('GL_INT64_VEC2_NV')
	static var INT64_VEC2_NV:GLuint;

	@:native('GL_INT64_VEC3_NV')
	static var INT64_VEC3_NV:GLuint;

	@:native('GL_INT64_VEC4_NV')
	static var INT64_VEC4_NV:GLuint;

	@:native('GL_UNSIGNED_INT8_NV')
	static var UNSIGNED_INT8_NV:GLuint;

	@:native('GL_UNSIGNED_INT8_VEC2_NV')
	static var UNSIGNED_INT8_VEC2_NV:GLuint;

	@:native('GL_UNSIGNED_INT8_VEC3_NV')
	static var UNSIGNED_INT8_VEC3_NV:GLuint;

	@:native('GL_UNSIGNED_INT8_VEC4_NV')
	static var UNSIGNED_INT8_VEC4_NV:GLuint;

	@:native('GL_UNSIGNED_INT16_NV')
	static var UNSIGNED_INT16_NV:GLuint;

	@:native('GL_UNSIGNED_INT16_VEC2_NV')
	static var UNSIGNED_INT16_VEC2_NV:GLuint;

	@:native('GL_UNSIGNED_INT16_VEC3_NV')
	static var UNSIGNED_INT16_VEC3_NV:GLuint;

	@:native('GL_UNSIGNED_INT16_VEC4_NV')
	static var UNSIGNED_INT16_VEC4_NV:GLuint;

	@:native('GL_UNSIGNED_INT64_VEC2_NV')
	static var UNSIGNED_INT64_VEC2_NV:GLuint;

	@:native('GL_UNSIGNED_INT64_VEC3_NV')
	static var UNSIGNED_INT64_VEC3_NV:GLuint;

	@:native('GL_UNSIGNED_INT64_VEC4_NV')
	static var UNSIGNED_INT64_VEC4_NV:GLuint;

	@:native('GL_FLOAT16_NV')
	static var FLOAT16_NV:GLuint;

	@:native('GL_FLOAT16_VEC2_NV')
	static var FLOAT16_VEC2_NV:GLuint;

	@:native('GL_FLOAT16_VEC3_NV')
	static var FLOAT16_VEC3_NV:GLuint;

	@:native('GL_FLOAT16_VEC4_NV')
	static var FLOAT16_VEC4_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_DIVISOR_NV')
	static var VERTEX_ATTRIB_ARRAY_DIVISOR_NV:GLuint;

	@:native('GL_MULTISAMPLES_NV')
	static var MULTISAMPLES_NV:GLuint;

	@:native('GL_SUPERSAMPLE_SCALE_X_NV')
	static var SUPERSAMPLE_SCALE_X_NV:GLuint;

	@:native('GL_SUPERSAMPLE_SCALE_Y_NV')
	static var SUPERSAMPLE_SCALE_Y_NV:GLuint;

	@:native('GL_CONFORMANT_NV')
	static var CONFORMANT_NV:GLuint;

	@:native('GL_ATTACHED_MEMORY_OBJECT_NV')
	static var ATTACHED_MEMORY_OBJECT_NV:GLuint;

	@:native('GL_ATTACHED_MEMORY_OFFSET_NV')
	static var ATTACHED_MEMORY_OFFSET_NV:GLuint;

	@:native('GL_MEMORY_ATTACHABLE_ALIGNMENT_NV')
	static var MEMORY_ATTACHABLE_ALIGNMENT_NV:GLuint;

	@:native('GL_MEMORY_ATTACHABLE_SIZE_NV')
	static var MEMORY_ATTACHABLE_SIZE_NV:GLuint;

	@:native('GL_MEMORY_ATTACHABLE_NV')
	static var MEMORY_ATTACHABLE_NV:GLuint;

	@:native('GL_DETACHED_MEMORY_INCARNATION_NV')
	static var DETACHED_MEMORY_INCARNATION_NV:GLuint;

	@:native('GL_DETACHED_TEXTURES_NV')
	static var DETACHED_TEXTURES_NV:GLuint;

	@:native('GL_DETACHED_BUFFERS_NV')
	static var DETACHED_BUFFERS_NV:GLuint;

	@:native('GL_MAX_DETACHED_TEXTURES_NV')
	static var MAX_DETACHED_TEXTURES_NV:GLuint;

	@:native('GL_MAX_DETACHED_BUFFERS_NV')
	static var MAX_DETACHED_BUFFERS_NV:GLuint;

	@:native('GL_MESH_SHADER_NV')
	static var MESH_SHADER_NV:GLuint;

	@:native('GL_TASK_SHADER_NV')
	static var TASK_SHADER_NV:GLuint;

	@:native('GL_MAX_MESH_UNIFORM_BLOCKS_NV')
	static var MAX_MESH_UNIFORM_BLOCKS_NV:GLuint;

	@:native('GL_MAX_MESH_TEXTURE_IMAGE_UNITS_NV')
	static var MAX_MESH_TEXTURE_IMAGE_UNITS_NV:GLuint;

	@:native('GL_MAX_MESH_IMAGE_UNIFORMS_NV')
	static var MAX_MESH_IMAGE_UNIFORMS_NV:GLuint;

	@:native('GL_MAX_MESH_UNIFORM_COMPONENTS_NV')
	static var MAX_MESH_UNIFORM_COMPONENTS_NV:GLuint;

	@:native('GL_MAX_MESH_ATOMIC_COUNTER_BUFFERS_NV')
	static var MAX_MESH_ATOMIC_COUNTER_BUFFERS_NV:GLuint;

	@:native('GL_MAX_MESH_ATOMIC_COUNTERS_NV')
	static var MAX_MESH_ATOMIC_COUNTERS_NV:GLuint;

	@:native('GL_MAX_MESH_SHADER_STORAGE_BLOCKS_NV')
	static var MAX_MESH_SHADER_STORAGE_BLOCKS_NV:GLuint;

	@:native('GL_MAX_COMBINED_MESH_UNIFORM_COMPONENTS_NV')
	static var MAX_COMBINED_MESH_UNIFORM_COMPONENTS_NV:GLuint;

	@:native('GL_MAX_TASK_UNIFORM_BLOCKS_NV')
	static var MAX_TASK_UNIFORM_BLOCKS_NV:GLuint;

	@:native('GL_MAX_TASK_TEXTURE_IMAGE_UNITS_NV')
	static var MAX_TASK_TEXTURE_IMAGE_UNITS_NV:GLuint;

	@:native('GL_MAX_TASK_IMAGE_UNIFORMS_NV')
	static var MAX_TASK_IMAGE_UNIFORMS_NV:GLuint;

	@:native('GL_MAX_TASK_UNIFORM_COMPONENTS_NV')
	static var MAX_TASK_UNIFORM_COMPONENTS_NV:GLuint;

	@:native('GL_MAX_TASK_ATOMIC_COUNTER_BUFFERS_NV')
	static var MAX_TASK_ATOMIC_COUNTER_BUFFERS_NV:GLuint;

	@:native('GL_MAX_TASK_ATOMIC_COUNTERS_NV')
	static var MAX_TASK_ATOMIC_COUNTERS_NV:GLuint;

	@:native('GL_MAX_TASK_SHADER_STORAGE_BLOCKS_NV')
	static var MAX_TASK_SHADER_STORAGE_BLOCKS_NV:GLuint;

	@:native('GL_MAX_COMBINED_TASK_UNIFORM_COMPONENTS_NV')
	static var MAX_COMBINED_TASK_UNIFORM_COMPONENTS_NV:GLuint;

	@:native('GL_MAX_MESH_WORK_GROUP_INVOCATIONS_NV')
	static var MAX_MESH_WORK_GROUP_INVOCATIONS_NV:GLuint;

	@:native('GL_MAX_TASK_WORK_GROUP_INVOCATIONS_NV')
	static var MAX_TASK_WORK_GROUP_INVOCATIONS_NV:GLuint;

	@:native('GL_MAX_MESH_TOTAL_MEMORY_SIZE_NV')
	static var MAX_MESH_TOTAL_MEMORY_SIZE_NV:GLuint;

	@:native('GL_MAX_TASK_TOTAL_MEMORY_SIZE_NV')
	static var MAX_TASK_TOTAL_MEMORY_SIZE_NV:GLuint;

	@:native('GL_MAX_MESH_OUTPUT_VERTICES_NV')
	static var MAX_MESH_OUTPUT_VERTICES_NV:GLuint;

	@:native('GL_MAX_MESH_OUTPUT_PRIMITIVES_NV')
	static var MAX_MESH_OUTPUT_PRIMITIVES_NV:GLuint;

	@:native('GL_MAX_TASK_OUTPUT_COUNT_NV')
	static var MAX_TASK_OUTPUT_COUNT_NV:GLuint;

	@:native('GL_MAX_DRAW_MESH_TASKS_COUNT_NV')
	static var MAX_DRAW_MESH_TASKS_COUNT_NV:GLuint;

	@:native('GL_MAX_MESH_VIEWS_NV')
	static var MAX_MESH_VIEWS_NV:GLuint;

	@:native('GL_MESH_OUTPUT_PER_VERTEX_GRANULARITY_NV')
	static var MESH_OUTPUT_PER_VERTEX_GRANULARITY_NV:GLuint;

	@:native('GL_MESH_OUTPUT_PER_PRIMITIVE_GRANULARITY_NV')
	static var MESH_OUTPUT_PER_PRIMITIVE_GRANULARITY_NV:GLuint;

	@:native('GL_MAX_MESH_WORK_GROUP_SIZE_NV')
	static var MAX_MESH_WORK_GROUP_SIZE_NV:GLuint;

	@:native('GL_MAX_TASK_WORK_GROUP_SIZE_NV')
	static var MAX_TASK_WORK_GROUP_SIZE_NV:GLuint;

	@:native('GL_MESH_WORK_GROUP_SIZE_NV')
	static var MESH_WORK_GROUP_SIZE_NV:GLuint;

	@:native('GL_TASK_WORK_GROUP_SIZE_NV')
	static var TASK_WORK_GROUP_SIZE_NV:GLuint;

	@:native('GL_MESH_VERTICES_OUT_NV')
	static var MESH_VERTICES_OUT_NV:GLuint;

	@:native('GL_MESH_PRIMITIVES_OUT_NV')
	static var MESH_PRIMITIVES_OUT_NV:GLuint;

	@:native('GL_MESH_OUTPUT_TYPE_NV')
	static var MESH_OUTPUT_TYPE_NV:GLuint;

	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_MESH_SHADER_NV')
	static var UNIFORM_BLOCK_REFERENCED_BY_MESH_SHADER_NV:GLuint;

	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_TASK_SHADER_NV')
	static var UNIFORM_BLOCK_REFERENCED_BY_TASK_SHADER_NV:GLuint;

	@:native('GL_REFERENCED_BY_MESH_SHADER_NV')
	static var REFERENCED_BY_MESH_SHADER_NV:GLuint;

	@:native('GL_REFERENCED_BY_TASK_SHADER_NV')
	static var REFERENCED_BY_TASK_SHADER_NV:GLuint;

	@:native('GL_MESH_SHADER_BIT_NV')
	static var MESH_SHADER_BIT_NV:GLuint;

	@:native('GL_TASK_SHADER_BIT_NV')
	static var TASK_SHADER_BIT_NV:GLuint;

	@:native('GL_MESH_SUBROUTINE_NV')
	static var MESH_SUBROUTINE_NV:GLuint;

	@:native('GL_TASK_SUBROUTINE_NV')
	static var TASK_SUBROUTINE_NV:GLuint;

	@:native('GL_MESH_SUBROUTINE_UNIFORM_NV')
	static var MESH_SUBROUTINE_UNIFORM_NV:GLuint;

	@:native('GL_TASK_SUBROUTINE_UNIFORM_NV')
	static var TASK_SUBROUTINE_UNIFORM_NV:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_MESH_SHADER_NV')
	static var ATOMIC_COUNTER_BUFFER_REFERENCED_BY_MESH_SHADER_NV:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TASK_SHADER_NV')
	static var ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TASK_SHADER_NV:GLuint;

	@:native('GL_FLOAT_MAT2x3_NV')
	static var FLOAT_MAT2x3_NV:GLuint;

	@:native('GL_FLOAT_MAT2x4_NV')
	static var FLOAT_MAT2x4_NV:GLuint;

	@:native('GL_FLOAT_MAT3x2_NV')
	static var FLOAT_MAT3x2_NV:GLuint;

	@:native('GL_FLOAT_MAT3x4_NV')
	static var FLOAT_MAT3x4_NV:GLuint;

	@:native('GL_FLOAT_MAT4x2_NV')
	static var FLOAT_MAT4x2_NV:GLuint;

	@:native('GL_FLOAT_MAT4x3_NV')
	static var FLOAT_MAT4x3_NV:GLuint;

	@:native('GL_PATH_FORMAT_SVG_NV')
	static var PATH_FORMAT_SVG_NV:GLuint;

	@:native('GL_PATH_FORMAT_PS_NV')
	static var PATH_FORMAT_PS_NV:GLuint;

	@:native('GL_STANDARD_FONT_NAME_NV')
	static var STANDARD_FONT_NAME_NV:GLuint;

	@:native('GL_SYSTEM_FONT_NAME_NV')
	static var SYSTEM_FONT_NAME_NV:GLuint;

	@:native('GL_FILE_NAME_NV')
	static var FILE_NAME_NV:GLuint;

	@:native('GL_PATH_STROKE_WIDTH_NV')
	static var PATH_STROKE_WIDTH_NV:GLuint;

	@:native('GL_PATH_END_CAPS_NV')
	static var PATH_END_CAPS_NV:GLuint;

	@:native('GL_PATH_INITIAL_END_CAP_NV')
	static var PATH_INITIAL_END_CAP_NV:GLuint;

	@:native('GL_PATH_TERMINAL_END_CAP_NV')
	static var PATH_TERMINAL_END_CAP_NV:GLuint;

	@:native('GL_PATH_JOIN_STYLE_NV')
	static var PATH_JOIN_STYLE_NV:GLuint;

	@:native('GL_PATH_MITER_LIMIT_NV')
	static var PATH_MITER_LIMIT_NV:GLuint;

	@:native('GL_PATH_DASH_CAPS_NV')
	static var PATH_DASH_CAPS_NV:GLuint;

	@:native('GL_PATH_INITIAL_DASH_CAP_NV')
	static var PATH_INITIAL_DASH_CAP_NV:GLuint;

	@:native('GL_PATH_TERMINAL_DASH_CAP_NV')
	static var PATH_TERMINAL_DASH_CAP_NV:GLuint;

	@:native('GL_PATH_DASH_OFFSET_NV')
	static var PATH_DASH_OFFSET_NV:GLuint;

	@:native('GL_PATH_CLIENT_LENGTH_NV')
	static var PATH_CLIENT_LENGTH_NV:GLuint;

	@:native('GL_PATH_FILL_MODE_NV')
	static var PATH_FILL_MODE_NV:GLuint;

	@:native('GL_PATH_FILL_MASK_NV')
	static var PATH_FILL_MASK_NV:GLuint;

	@:native('GL_PATH_FILL_COVER_MODE_NV')
	static var PATH_FILL_COVER_MODE_NV:GLuint;

	@:native('GL_PATH_STROKE_COVER_MODE_NV')
	static var PATH_STROKE_COVER_MODE_NV:GLuint;

	@:native('GL_PATH_STROKE_MASK_NV')
	static var PATH_STROKE_MASK_NV:GLuint;

	@:native('GL_COUNT_UP_NV')
	static var COUNT_UP_NV:GLuint;

	@:native('GL_COUNT_DOWN_NV')
	static var COUNT_DOWN_NV:GLuint;

	@:native('GL_PATH_OBJECT_BOUNDING_BOX_NV')
	static var PATH_OBJECT_BOUNDING_BOX_NV:GLuint;

	@:native('GL_CONVEX_HULL_NV')
	static var CONVEX_HULL_NV:GLuint;

	@:native('GL_BOUNDING_BOX_NV')
	static var BOUNDING_BOX_NV:GLuint;

	@:native('GL_TRANSLATE_X_NV')
	static var TRANSLATE_X_NV:GLuint;

	@:native('GL_TRANSLATE_Y_NV')
	static var TRANSLATE_Y_NV:GLuint;

	@:native('GL_TRANSLATE_2D_NV')
	static var TRANSLATE_2D_NV:GLuint;

	@:native('GL_TRANSLATE_3D_NV')
	static var TRANSLATE_3D_NV:GLuint;

	@:native('GL_AFFINE_2D_NV')
	static var AFFINE_2D_NV:GLuint;

	@:native('GL_AFFINE_3D_NV')
	static var AFFINE_3D_NV:GLuint;

	@:native('GL_TRANSPOSE_AFFINE_2D_NV')
	static var TRANSPOSE_AFFINE_2D_NV:GLuint;

	@:native('GL_TRANSPOSE_AFFINE_3D_NV')
	static var TRANSPOSE_AFFINE_3D_NV:GLuint;

	@:native('GL_UTF8_NV')
	static var UTF8_NV:GLuint;

	@:native('GL_UTF16_NV')
	static var UTF16_NV:GLuint;

	@:native('GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV')
	static var BOUNDING_BOX_OF_BOUNDING_BOXES_NV:GLuint;

	@:native('GL_PATH_COMMAND_COUNT_NV')
	static var PATH_COMMAND_COUNT_NV:GLuint;

	@:native('GL_PATH_COORD_COUNT_NV')
	static var PATH_COORD_COUNT_NV:GLuint;

	@:native('GL_PATH_DASH_ARRAY_COUNT_NV')
	static var PATH_DASH_ARRAY_COUNT_NV:GLuint;

	@:native('GL_PATH_COMPUTED_LENGTH_NV')
	static var PATH_COMPUTED_LENGTH_NV:GLuint;

	@:native('GL_PATH_FILL_BOUNDING_BOX_NV')
	static var PATH_FILL_BOUNDING_BOX_NV:GLuint;

	@:native('GL_PATH_STROKE_BOUNDING_BOX_NV')
	static var PATH_STROKE_BOUNDING_BOX_NV:GLuint;

	@:native('GL_SQUARE_NV')
	static var SQUARE_NV:GLuint;

	@:native('GL_ROUND_NV')
	static var ROUND_NV:GLuint;

	@:native('GL_TRIANGULAR_NV')
	static var TRIANGULAR_NV:GLuint;

	@:native('GL_BEVEL_NV')
	static var BEVEL_NV:GLuint;

	@:native('GL_MITER_REVERT_NV')
	static var MITER_REVERT_NV:GLuint;

	@:native('GL_MITER_TRUNCATE_NV')
	static var MITER_TRUNCATE_NV:GLuint;

	@:native('GL_SKIP_MISSING_GLYPH_NV')
	static var SKIP_MISSING_GLYPH_NV:GLuint;

	@:native('GL_USE_MISSING_GLYPH_NV')
	static var USE_MISSING_GLYPH_NV:GLuint;

	@:native('GL_PATH_ERROR_POSITION_NV')
	static var PATH_ERROR_POSITION_NV:GLuint;

	@:native('GL_ACCUM_ADJACENT_PAIRS_NV')
	static var ACCUM_ADJACENT_PAIRS_NV:GLuint;

	@:native('GL_ADJACENT_PAIRS_NV')
	static var ADJACENT_PAIRS_NV:GLuint;

	@:native('GL_FIRST_TO_REST_NV')
	static var FIRST_TO_REST_NV:GLuint;

	@:native('GL_PATH_GEN_MODE_NV')
	static var PATH_GEN_MODE_NV:GLuint;

	@:native('GL_PATH_GEN_COEFF_NV')
	static var PATH_GEN_COEFF_NV:GLuint;

	@:native('GL_PATH_GEN_COMPONENTS_NV')
	static var PATH_GEN_COMPONENTS_NV:GLuint;

	@:native('GL_PATH_STENCIL_FUNC_NV')
	static var PATH_STENCIL_FUNC_NV:GLuint;

	@:native('GL_PATH_STENCIL_REF_NV')
	static var PATH_STENCIL_REF_NV:GLuint;

	@:native('GL_PATH_STENCIL_VALUE_MASK_NV')
	static var PATH_STENCIL_VALUE_MASK_NV:GLuint;

	@:native('GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV')
	static var PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV:GLuint;

	@:native('GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV')
	static var PATH_STENCIL_DEPTH_OFFSET_UNITS_NV:GLuint;

	@:native('GL_PATH_COVER_DEPTH_FUNC_NV')
	static var PATH_COVER_DEPTH_FUNC_NV:GLuint;

	@:native('GL_PATH_DASH_OFFSET_RESET_NV')
	static var PATH_DASH_OFFSET_RESET_NV:GLuint;

	@:native('GL_MOVE_TO_RESETS_NV')
	static var MOVE_TO_RESETS_NV:GLuint;

	@:native('GL_MOVE_TO_CONTINUES_NV')
	static var MOVE_TO_CONTINUES_NV:GLuint;

	@:native('GL_CLOSE_PATH_NV')
	static var CLOSE_PATH_NV:GLuint;

	@:native('GL_MOVE_TO_NV')
	static var MOVE_TO_NV:GLuint;

	@:native('GL_RELATIVE_MOVE_TO_NV')
	static var RELATIVE_MOVE_TO_NV:GLuint;

	@:native('GL_LINE_TO_NV')
	static var LINE_TO_NV:GLuint;

	@:native('GL_RELATIVE_LINE_TO_NV')
	static var RELATIVE_LINE_TO_NV:GLuint;

	@:native('GL_HORIZONTAL_LINE_TO_NV')
	static var HORIZONTAL_LINE_TO_NV:GLuint;

	@:native('GL_RELATIVE_HORIZONTAL_LINE_TO_NV')
	static var RELATIVE_HORIZONTAL_LINE_TO_NV:GLuint;

	@:native('GL_VERTICAL_LINE_TO_NV')
	static var VERTICAL_LINE_TO_NV:GLuint;

	@:native('GL_RELATIVE_VERTICAL_LINE_TO_NV')
	static var RELATIVE_VERTICAL_LINE_TO_NV:GLuint;

	@:native('GL_QUADRATIC_CURVE_TO_NV')
	static var QUADRATIC_CURVE_TO_NV:GLuint;

	@:native('GL_RELATIVE_QUADRATIC_CURVE_TO_NV')
	static var RELATIVE_QUADRATIC_CURVE_TO_NV:GLuint;

	@:native('GL_CUBIC_CURVE_TO_NV')
	static var CUBIC_CURVE_TO_NV:GLuint;

	@:native('GL_RELATIVE_CUBIC_CURVE_TO_NV')
	static var RELATIVE_CUBIC_CURVE_TO_NV:GLuint;

	@:native('GL_SMOOTH_QUADRATIC_CURVE_TO_NV')
	static var SMOOTH_QUADRATIC_CURVE_TO_NV:GLuint;

	@:native('GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV')
	static var RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV:GLuint;

	@:native('GL_SMOOTH_CUBIC_CURVE_TO_NV')
	static var SMOOTH_CUBIC_CURVE_TO_NV:GLuint;

	@:native('GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV')
	static var RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV:GLuint;

	@:native('GL_SMALL_CCW_ARC_TO_NV')
	static var SMALL_CCW_ARC_TO_NV:GLuint;

	@:native('GL_RELATIVE_SMALL_CCW_ARC_TO_NV')
	static var RELATIVE_SMALL_CCW_ARC_TO_NV:GLuint;

	@:native('GL_SMALL_CW_ARC_TO_NV')
	static var SMALL_CW_ARC_TO_NV:GLuint;

	@:native('GL_RELATIVE_SMALL_CW_ARC_TO_NV')
	static var RELATIVE_SMALL_CW_ARC_TO_NV:GLuint;

	@:native('GL_LARGE_CCW_ARC_TO_NV')
	static var LARGE_CCW_ARC_TO_NV:GLuint;

	@:native('GL_RELATIVE_LARGE_CCW_ARC_TO_NV')
	static var RELATIVE_LARGE_CCW_ARC_TO_NV:GLuint;

	@:native('GL_LARGE_CW_ARC_TO_NV')
	static var LARGE_CW_ARC_TO_NV:GLuint;

	@:native('GL_RELATIVE_LARGE_CW_ARC_TO_NV')
	static var RELATIVE_LARGE_CW_ARC_TO_NV:GLuint;

	@:native('GL_RESTART_PATH_NV')
	static var RESTART_PATH_NV:GLuint;

	@:native('GL_DUP_FIRST_CUBIC_CURVE_TO_NV')
	static var DUP_FIRST_CUBIC_CURVE_TO_NV:GLuint;

	@:native('GL_DUP_LAST_CUBIC_CURVE_TO_NV')
	static var DUP_LAST_CUBIC_CURVE_TO_NV:GLuint;

	@:native('GL_RECT_NV')
	static var RECT_NV:GLuint;

	@:native('GL_CIRCULAR_CCW_ARC_TO_NV')
	static var CIRCULAR_CCW_ARC_TO_NV:GLuint;

	@:native('GL_CIRCULAR_CW_ARC_TO_NV')
	static var CIRCULAR_CW_ARC_TO_NV:GLuint;

	@:native('GL_CIRCULAR_TANGENT_ARC_TO_NV')
	static var CIRCULAR_TANGENT_ARC_TO_NV:GLuint;

	@:native('GL_ARC_TO_NV')
	static var ARC_TO_NV:GLuint;

	@:native('GL_RELATIVE_ARC_TO_NV')
	static var RELATIVE_ARC_TO_NV:GLuint;

	@:native('GL_BOLD_BIT_NV')
	static var BOLD_BIT_NV:GLuint;

	@:native('GL_ITALIC_BIT_NV')
	static var ITALIC_BIT_NV:GLuint;

	@:native('GL_GLYPH_WIDTH_BIT_NV')
	static var GLYPH_WIDTH_BIT_NV:GLuint;

	@:native('GL_GLYPH_HEIGHT_BIT_NV')
	static var GLYPH_HEIGHT_BIT_NV:GLuint;

	@:native('GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV')
	static var GLYPH_HORIZONTAL_BEARING_X_BIT_NV:GLuint;

	@:native('GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV')
	static var GLYPH_HORIZONTAL_BEARING_Y_BIT_NV:GLuint;

	@:native('GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV')
	static var GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV:GLuint;

	@:native('GL_GLYPH_VERTICAL_BEARING_X_BIT_NV')
	static var GLYPH_VERTICAL_BEARING_X_BIT_NV:GLuint;

	@:native('GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV')
	static var GLYPH_VERTICAL_BEARING_Y_BIT_NV:GLuint;

	@:native('GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV')
	static var GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV:GLuint;

	@:native('GL_GLYPH_HAS_KERNING_BIT_NV')
	static var GLYPH_HAS_KERNING_BIT_NV:GLuint;

	@:native('GL_FONT_X_MIN_BOUNDS_BIT_NV')
	static var FONT_X_MIN_BOUNDS_BIT_NV:GLuint;

	@:native('GL_FONT_Y_MIN_BOUNDS_BIT_NV')
	static var FONT_Y_MIN_BOUNDS_BIT_NV:GLuint;

	@:native('GL_FONT_X_MAX_BOUNDS_BIT_NV')
	static var FONT_X_MAX_BOUNDS_BIT_NV:GLuint;

	@:native('GL_FONT_Y_MAX_BOUNDS_BIT_NV')
	static var FONT_Y_MAX_BOUNDS_BIT_NV:GLuint;

	@:native('GL_FONT_UNITS_PER_EM_BIT_NV')
	static var FONT_UNITS_PER_EM_BIT_NV:GLuint;

	@:native('GL_FONT_ASCENDER_BIT_NV')
	static var FONT_ASCENDER_BIT_NV:GLuint;

	@:native('GL_FONT_DESCENDER_BIT_NV')
	static var FONT_DESCENDER_BIT_NV:GLuint;

	@:native('GL_FONT_HEIGHT_BIT_NV')
	static var FONT_HEIGHT_BIT_NV:GLuint;

	@:native('GL_FONT_MAX_ADVANCE_WIDTH_BIT_NV')
	static var FONT_MAX_ADVANCE_WIDTH_BIT_NV:GLuint;

	@:native('GL_FONT_MAX_ADVANCE_HEIGHT_BIT_NV')
	static var FONT_MAX_ADVANCE_HEIGHT_BIT_NV:GLuint;

	@:native('GL_FONT_UNDERLINE_POSITION_BIT_NV')
	static var FONT_UNDERLINE_POSITION_BIT_NV:GLuint;

	@:native('GL_FONT_UNDERLINE_THICKNESS_BIT_NV')
	static var FONT_UNDERLINE_THICKNESS_BIT_NV:GLuint;

	@:native('GL_FONT_HAS_KERNING_BIT_NV')
	static var FONT_HAS_KERNING_BIT_NV:GLuint;

	@:native('GL_ROUNDED_RECT_NV')
	static var ROUNDED_RECT_NV:GLuint;

	@:native('GL_RELATIVE_ROUNDED_RECT_NV')
	static var RELATIVE_ROUNDED_RECT_NV:GLuint;

	@:native('GL_ROUNDED_RECT2_NV')
	static var ROUNDED_RECT2_NV:GLuint;

	@:native('GL_RELATIVE_ROUNDED_RECT2_NV')
	static var RELATIVE_ROUNDED_RECT2_NV:GLuint;

	@:native('GL_ROUNDED_RECT4_NV')
	static var ROUNDED_RECT4_NV:GLuint;

	@:native('GL_RELATIVE_ROUNDED_RECT4_NV')
	static var RELATIVE_ROUNDED_RECT4_NV:GLuint;

	@:native('GL_ROUNDED_RECT8_NV')
	static var ROUNDED_RECT8_NV:GLuint;

	@:native('GL_RELATIVE_ROUNDED_RECT8_NV')
	static var RELATIVE_ROUNDED_RECT8_NV:GLuint;

	@:native('GL_RELATIVE_RECT_NV')
	static var RELATIVE_RECT_NV:GLuint;

	@:native('GL_FONT_GLYPHS_AVAILABLE_NV')
	static var FONT_GLYPHS_AVAILABLE_NV:GLuint;

	@:native('GL_FONT_TARGET_UNAVAILABLE_NV')
	static var FONT_TARGET_UNAVAILABLE_NV:GLuint;

	@:native('GL_FONT_UNAVAILABLE_NV')
	static var FONT_UNAVAILABLE_NV:GLuint;

	@:native('GL_FONT_UNINTELLIGIBLE_NV')
	static var FONT_UNINTELLIGIBLE_NV:GLuint;

	@:native('GL_CONIC_CURVE_TO_NV')
	static var CONIC_CURVE_TO_NV:GLuint;

	@:native('GL_RELATIVE_CONIC_CURVE_TO_NV')
	static var RELATIVE_CONIC_CURVE_TO_NV:GLuint;

	@:native('GL_FONT_NUM_GLYPH_INDICES_BIT_NV')
	static var FONT_NUM_GLYPH_INDICES_BIT_NV:GLuint;

	@:native('GL_STANDARD_FONT_FORMAT_NV')
	static var STANDARD_FONT_FORMAT_NV:GLuint;

	@:native('GL_2_BYTES_NV')
	static var _2_BYTES_NV:GLuint;

	@:native('GL_3_BYTES_NV')
	static var _3_BYTES_NV:GLuint;

	@:native('GL_4_BYTES_NV')
	static var _4_BYTES_NV:GLuint;

	@:native('GL_EYE_LINEAR_NV')
	static var EYE_LINEAR_NV:GLuint;

	@:native('GL_OBJECT_LINEAR_NV')
	static var OBJECT_LINEAR_NV:GLuint;

	@:native('GL_CONSTANT_NV')
	static var CONSTANT_NV:GLuint;

	@:native('GL_PATH_FOG_GEN_MODE_NV')
	static var PATH_FOG_GEN_MODE_NV:GLuint;

	@:native('GL_PRIMARY_COLOR')
	static var PRIMARY_COLOR:GLuint;

	@:native('GL_PRIMARY_COLOR_NV')
	static var PRIMARY_COLOR_NV:GLuint;

	@:native('GL_SECONDARY_COLOR_NV')
	static var SECONDARY_COLOR_NV:GLuint;

	@:native('GL_PATH_GEN_COLOR_FORMAT_NV')
	static var PATH_GEN_COLOR_FORMAT_NV:GLuint;

	@:native('GL_PATH_PROJECTION_NV')
	static var PATH_PROJECTION_NV:GLuint;

	@:native('GL_PATH_MODELVIEW_NV')
	static var PATH_MODELVIEW_NV:GLuint;

	@:native('GL_PATH_MODELVIEW_STACK_DEPTH_NV')
	static var PATH_MODELVIEW_STACK_DEPTH_NV:GLuint;

	@:native('GL_PATH_MODELVIEW_MATRIX_NV')
	static var PATH_MODELVIEW_MATRIX_NV:GLuint;

	@:native('GL_PATH_MAX_MODELVIEW_STACK_DEPTH_NV')
	static var PATH_MAX_MODELVIEW_STACK_DEPTH_NV:GLuint;

	@:native('GL_PATH_TRANSPOSE_MODELVIEW_MATRIX_NV')
	static var PATH_TRANSPOSE_MODELVIEW_MATRIX_NV:GLuint;

	@:native('GL_PATH_PROJECTION_STACK_DEPTH_NV')
	static var PATH_PROJECTION_STACK_DEPTH_NV:GLuint;

	@:native('GL_PATH_PROJECTION_MATRIX_NV')
	static var PATH_PROJECTION_MATRIX_NV:GLuint;

	@:native('GL_PATH_MAX_PROJECTION_STACK_DEPTH_NV')
	static var PATH_MAX_PROJECTION_STACK_DEPTH_NV:GLuint;

	@:native('GL_PATH_TRANSPOSE_PROJECTION_MATRIX_NV')
	static var PATH_TRANSPOSE_PROJECTION_MATRIX_NV:GLuint;

	@:native('GL_FRAGMENT_INPUT_NV')
	static var FRAGMENT_INPUT_NV:GLuint;

	@:native('GL_SHARED_EDGE_NV')
	static var SHARED_EDGE_NV:GLuint;

	@:native('GL_PIXEL_PACK_BUFFER_NV')
	static var PIXEL_PACK_BUFFER_NV:GLuint;

	@:native('GL_PIXEL_UNPACK_BUFFER_NV')
	static var PIXEL_UNPACK_BUFFER_NV:GLuint;

	@:native('GL_PIXEL_PACK_BUFFER_BINDING_NV')
	static var PIXEL_PACK_BUFFER_BINDING_NV:GLuint;

	@:native('GL_PIXEL_UNPACK_BUFFER_BINDING_NV')
	static var PIXEL_UNPACK_BUFFER_BINDING_NV:GLuint;

	@:native('GL_POLYGON_MODE_NV')
	static var POLYGON_MODE_NV:GLuint;

	@:native('GL_POLYGON_OFFSET_POINT_NV')
	static var POLYGON_OFFSET_POINT_NV:GLuint;

	@:native('GL_POLYGON_OFFSET_LINE_NV')
	static var POLYGON_OFFSET_LINE_NV:GLuint;

	@:native('GL_POINT_NV')
	static var POINT_NV:GLuint;

	@:native('GL_LINE_NV')
	static var LINE_NV:GLuint;

	@:native('GL_FILL_NV')
	static var FILL_NV:GLuint;

	@:native('GL_SHADING_RATE_IMAGE_PER_PRIMITIVE_NV')
	static var SHADING_RATE_IMAGE_PER_PRIMITIVE_NV:GLuint;

	@:native('GL_SHADING_RATE_IMAGE_PALETTE_COUNT_NV')
	static var SHADING_RATE_IMAGE_PALETTE_COUNT_NV:GLuint;

	@:native('GL_READ_BUFFER_NV')
	static var READ_BUFFER_NV:GLuint;

	@:native('GL_REPRESENTATIVE_FRAGMENT_TEST_NV')
	static var REPRESENTATIVE_FRAGMENT_TEST_NV:GLuint;

	@:native('GL_SLUMINANCE_NV')
	static var SLUMINANCE_NV:GLuint;

	@:native('GL_SLUMINANCE_ALPHA_NV')
	static var SLUMINANCE_ALPHA_NV:GLuint;

	@:native('GL_SRGB8_NV')
	static var SRGB8_NV:GLuint;

	@:native('GL_SLUMINANCE8_NV')
	static var SLUMINANCE8_NV:GLuint;

	@:native('GL_SLUMINANCE8_ALPHA8_NV')
	static var SLUMINANCE8_ALPHA8_NV:GLuint;

	@:native('GL_COMPRESSED_SRGB_S3TC_DXT1_NV')
	static var COMPRESSED_SRGB_S3TC_DXT1_NV:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_NV')
	static var COMPRESSED_SRGB_ALPHA_S3TC_DXT1_NV:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_NV')
	static var COMPRESSED_SRGB_ALPHA_S3TC_DXT3_NV:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV')
	static var COMPRESSED_SRGB_ALPHA_S3TC_DXT5_NV:GLuint;

	@:native('GL_ETC1_SRGB8_NV')
	static var ETC1_SRGB8_NV:GLuint;

	@:native('GL_SAMPLE_LOCATION_SUBPIXEL_BITS_NV')
	static var SAMPLE_LOCATION_SUBPIXEL_BITS_NV:GLuint;

	@:native('GL_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_NV')
	static var SAMPLE_LOCATION_PIXEL_GRID_WIDTH_NV:GLuint;

	@:native('GL_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_NV')
	static var SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_NV:GLuint;

	@:native('GL_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_NV')
	static var PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_NV:GLuint;

	@:native('GL_SAMPLE_LOCATION_NV')
	static var SAMPLE_LOCATION_NV:GLuint;

	@:native('GL_PROGRAMMABLE_SAMPLE_LOCATION_NV')
	static var PROGRAMMABLE_SAMPLE_LOCATION_NV:GLuint;

	@:native('GL_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_NV')
	static var FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_NV:GLuint;

	@:native('GL_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_NV')
	static var FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_NV:GLuint;

	@:native('GL_SCISSOR_TEST_EXCLUSIVE_NV')
	static var SCISSOR_TEST_EXCLUSIVE_NV:GLuint;

	@:native('GL_SCISSOR_BOX_EXCLUSIVE_NV')
	static var SCISSOR_BOX_EXCLUSIVE_NV:GLuint;

	@:native('GL_SUBGROUP_FEATURE_PARTITIONED_BIT_NV')
	static var SUBGROUP_FEATURE_PARTITIONED_BIT_NV:GLuint;

	@:native('GL_SHADING_RATE_IMAGE_NV')
	static var SHADING_RATE_IMAGE_NV:GLuint;

	@:native('GL_SHADING_RATE_NO_INVOCATIONS_NV')
	static var SHADING_RATE_NO_INVOCATIONS_NV:GLuint;

	@:native('GL_SHADING_RATE_1_INVOCATION_PER_PIXEL_NV')
	static var SHADING_RATE_1_INVOCATION_PER_PIXEL_NV:GLuint;

	@:native('GL_SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV')
	static var SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV:GLuint;

	@:native('GL_SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV')
	static var SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV:GLuint;

	@:native('GL_SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV')
	static var SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV:GLuint;

	@:native('GL_SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV')
	static var SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV:GLuint;

	@:native('GL_SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV')
	static var SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV:GLuint;

	@:native('GL_SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV')
	static var SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV:GLuint;

	@:native('GL_SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV')
	static var SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV:GLuint;

	@:native('GL_SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV')
	static var SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV:GLuint;

	@:native('GL_SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV')
	static var SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV:GLuint;

	@:native('GL_SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV')
	static var SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV:GLuint;

	@:native('GL_SHADING_RATE_IMAGE_BINDING_NV')
	static var SHADING_RATE_IMAGE_BINDING_NV:GLuint;

	@:native('GL_SHADING_RATE_IMAGE_TEXEL_WIDTH_NV')
	static var SHADING_RATE_IMAGE_TEXEL_WIDTH_NV:GLuint;

	@:native('GL_SHADING_RATE_IMAGE_TEXEL_HEIGHT_NV')
	static var SHADING_RATE_IMAGE_TEXEL_HEIGHT_NV:GLuint;

	@:native('GL_SHADING_RATE_IMAGE_PALETTE_SIZE_NV')
	static var SHADING_RATE_IMAGE_PALETTE_SIZE_NV:GLuint;

	@:native('GL_MAX_COARSE_FRAGMENT_SAMPLES_NV')
	static var MAX_COARSE_FRAGMENT_SAMPLES_NV:GLuint;

	@:native('GL_SHADING_RATE_SAMPLE_ORDER_DEFAULT_NV')
	static var SHADING_RATE_SAMPLE_ORDER_DEFAULT_NV:GLuint;

	@:native('GL_SHADING_RATE_SAMPLE_ORDER_PIXEL_MAJOR_NV')
	static var SHADING_RATE_SAMPLE_ORDER_PIXEL_MAJOR_NV:GLuint;

	@:native('GL_SHADING_RATE_SAMPLE_ORDER_SAMPLE_MAJOR_NV')
	static var SHADING_RATE_SAMPLE_ORDER_SAMPLE_MAJOR_NV:GLuint;

	@:native('GL_SAMPLER_2D_ARRAY_SHADOW_NV')
	static var SAMPLER_2D_ARRAY_SHADOW_NV:GLuint;

	@:native('GL_SAMPLER_CUBE_SHADOW_NV')
	static var SAMPLER_CUBE_SHADOW_NV:GLuint;

	@:native('GL_TEXTURE_BORDER_COLOR_NV')
	static var TEXTURE_BORDER_COLOR_NV:GLuint;

	@:native('GL_CLAMP_TO_BORDER_NV')
	static var CLAMP_TO_BORDER_NV:GLuint;

	@:native('GL_MAX_VIEWPORTS_NV')
	static var MAX_VIEWPORTS_NV:GLuint;

	@:native('GL_VIEWPORT_SUBPIXEL_BITS_NV')
	static var VIEWPORT_SUBPIXEL_BITS_NV:GLuint;

	@:native('GL_VIEWPORT_BOUNDS_RANGE_NV')
	static var VIEWPORT_BOUNDS_RANGE_NV:GLuint;

	@:native('GL_VIEWPORT_INDEX_PROVOKING_VERTEX_NV')
	static var VIEWPORT_INDEX_PROVOKING_VERTEX_NV:GLuint;

	@:native('GL_VIEWPORT_SWIZZLE_POSITIVE_X_NV')
	static var VIEWPORT_SWIZZLE_POSITIVE_X_NV:GLuint;

	@:native('GL_VIEWPORT_SWIZZLE_NEGATIVE_X_NV')
	static var VIEWPORT_SWIZZLE_NEGATIVE_X_NV:GLuint;

	@:native('GL_VIEWPORT_SWIZZLE_POSITIVE_Y_NV')
	static var VIEWPORT_SWIZZLE_POSITIVE_Y_NV:GLuint;

	@:native('GL_VIEWPORT_SWIZZLE_NEGATIVE_Y_NV')
	static var VIEWPORT_SWIZZLE_NEGATIVE_Y_NV:GLuint;

	@:native('GL_VIEWPORT_SWIZZLE_POSITIVE_Z_NV')
	static var VIEWPORT_SWIZZLE_POSITIVE_Z_NV:GLuint;

	@:native('GL_VIEWPORT_SWIZZLE_NEGATIVE_Z_NV')
	static var VIEWPORT_SWIZZLE_NEGATIVE_Z_NV:GLuint;

	@:native('GL_VIEWPORT_SWIZZLE_POSITIVE_W_NV')
	static var VIEWPORT_SWIZZLE_POSITIVE_W_NV:GLuint;

	@:native('GL_VIEWPORT_SWIZZLE_NEGATIVE_W_NV')
	static var VIEWPORT_SWIZZLE_NEGATIVE_W_NV:GLuint;

	@:native('GL_VIEWPORT_SWIZZLE_X_NV')
	static var VIEWPORT_SWIZZLE_X_NV:GLuint;

	@:native('GL_VIEWPORT_SWIZZLE_Y_NV')
	static var VIEWPORT_SWIZZLE_Y_NV:GLuint;

	@:native('GL_VIEWPORT_SWIZZLE_Z_NV')
	static var VIEWPORT_SWIZZLE_Z_NV:GLuint;

	@:native('GL_VIEWPORT_SWIZZLE_W_NV')
	static var VIEWPORT_SWIZZLE_W_NV:GLuint;

	@:native('GL_PACK_ROW_LENGTH_NV')
	static var PACK_ROW_LENGTH_NV:GLuint;

	@:native('GL_PACK_SKIP_ROWS_NV')
	static var PACK_SKIP_ROWS_NV:GLuint;

	@:native('GL_PACK_SKIP_PIXELS_NV')
	static var PACK_SKIP_PIXELS_NV:GLuint;

	@:native('GL_SAMPLER_EXTERNAL_OES')
	static var SAMPLER_EXTERNAL_OES:GLuint;

	@:native('GL_ETC1_RGB8_OES')
	static var ETC1_RGB8_OES:GLuint;

	@:native('GL_PALETTE4_RGB8_OES')
	static var PALETTE4_RGB8_OES:GLuint;

	@:native('GL_PALETTE4_RGBA8_OES')
	static var PALETTE4_RGBA8_OES:GLuint;

	@:native('GL_PALETTE4_R5_G6_B5_OES')
	static var PALETTE4_R5_G6_B5_OES:GLuint;

	@:native('GL_PALETTE4_RGBA4_OES')
	static var PALETTE4_RGBA4_OES:GLuint;

	@:native('GL_PALETTE4_RGB5_A1_OES')
	static var PALETTE4_RGB5_A1_OES:GLuint;

	@:native('GL_PALETTE8_RGB8_OES')
	static var PALETTE8_RGB8_OES:GLuint;

	@:native('GL_PALETTE8_RGBA8_OES')
	static var PALETTE8_RGBA8_OES:GLuint;

	@:native('GL_PALETTE8_R5_G6_B5_OES')
	static var PALETTE8_R5_G6_B5_OES:GLuint;

	@:native('GL_PALETTE8_RGBA4_OES')
	static var PALETTE8_RGBA4_OES:GLuint;

	@:native('GL_PALETTE8_RGB5_A1_OES')
	static var PALETTE8_RGB5_A1_OES:GLuint;

	@:native('GL_DEPTH_COMPONENT24_OES')
	static var DEPTH_COMPONENT24_OES:GLuint;

	@:native('GL_GEOMETRY_SHADER_OES')
	static var GEOMETRY_SHADER_OES:GLuint;

	@:native('GL_GEOMETRY_SHADER_BIT_OES')
	static var GEOMETRY_SHADER_BIT_OES:GLuint;

	@:native('GL_GEOMETRY_LINKED_VERTICES_OUT_OES')
	static var GEOMETRY_LINKED_VERTICES_OUT_OES:GLuint;

	@:native('GL_GEOMETRY_LINKED_INPUT_TYPE_OES')
	static var GEOMETRY_LINKED_INPUT_TYPE_OES:GLuint;

	@:native('GL_GEOMETRY_LINKED_OUTPUT_TYPE_OES')
	static var GEOMETRY_LINKED_OUTPUT_TYPE_OES:GLuint;

	@:native('GL_GEOMETRY_SHADER_INVOCATIONS_OES')
	static var GEOMETRY_SHADER_INVOCATIONS_OES:GLuint;

	@:native('GL_LAYER_PROVOKING_VERTEX_OES')
	static var LAYER_PROVOKING_VERTEX_OES:GLuint;

	@:native('GL_LINES_ADJACENCY_OES')
	static var LINES_ADJACENCY_OES:GLuint;

	@:native('GL_LINE_STRIP_ADJACENCY_OES')
	static var LINE_STRIP_ADJACENCY_OES:GLuint;

	@:native('GL_TRIANGLES_ADJACENCY_OES')
	static var TRIANGLES_ADJACENCY_OES:GLuint;

	@:native('GL_TRIANGLE_STRIP_ADJACENCY_OES')
	static var TRIANGLE_STRIP_ADJACENCY_OES:GLuint;

	@:native('GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_OES')
	static var MAX_GEOMETRY_UNIFORM_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_GEOMETRY_UNIFORM_BLOCKS_OES')
	static var MAX_GEOMETRY_UNIFORM_BLOCKS_OES:GLuint;

	@:native('GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS_OES')
	static var MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_GEOMETRY_INPUT_COMPONENTS_OES')
	static var MAX_GEOMETRY_INPUT_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_GEOMETRY_OUTPUT_COMPONENTS_OES')
	static var MAX_GEOMETRY_OUTPUT_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_GEOMETRY_OUTPUT_VERTICES_OES')
	static var MAX_GEOMETRY_OUTPUT_VERTICES_OES:GLuint;

	@:native('GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_OES')
	static var MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_GEOMETRY_SHADER_INVOCATIONS_OES')
	static var MAX_GEOMETRY_SHADER_INVOCATIONS_OES:GLuint;

	@:native('GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_OES')
	static var MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_OES:GLuint;

	@:native('GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS_OES')
	static var MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS_OES:GLuint;

	@:native('GL_MAX_GEOMETRY_ATOMIC_COUNTERS_OES')
	static var MAX_GEOMETRY_ATOMIC_COUNTERS_OES:GLuint;

	@:native('GL_MAX_GEOMETRY_IMAGE_UNIFORMS_OES')
	static var MAX_GEOMETRY_IMAGE_UNIFORMS_OES:GLuint;

	@:native('GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS_OES')
	static var MAX_GEOMETRY_SHADER_STORAGE_BLOCKS_OES:GLuint;

	@:native('GL_FIRST_VERTEX_CONVENTION_OES')
	static var FIRST_VERTEX_CONVENTION_OES:GLuint;

	@:native('GL_LAST_VERTEX_CONVENTION_OES')
	static var LAST_VERTEX_CONVENTION_OES:GLuint;

	@:native('GL_UNDEFINED_VERTEX_OES')
	static var UNDEFINED_VERTEX_OES:GLuint;

	@:native('GL_PRIMITIVES_GENERATED_OES')
	static var PRIMITIVES_GENERATED_OES:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT_LAYERS_OES')
	static var FRAMEBUFFER_DEFAULT_LAYERS_OES:GLuint;

	@:native('GL_MAX_FRAMEBUFFER_LAYERS_OES')
	static var MAX_FRAMEBUFFER_LAYERS_OES:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_OES')
	static var FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_OES:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_LAYERED_OES')
	static var FRAMEBUFFER_ATTACHMENT_LAYERED_OES:GLuint;

	@:native('GL_REFERENCED_BY_GEOMETRY_SHADER_OES')
	static var REFERENCED_BY_GEOMETRY_SHADER_OES:GLuint;

	@:native('GL_PROGRAM_BINARY_LENGTH_OES')
	static var PROGRAM_BINARY_LENGTH_OES:GLuint;

	@:native('GL_NUM_PROGRAM_BINARY_FORMATS_OES')
	static var NUM_PROGRAM_BINARY_FORMATS_OES:GLuint;

	@:native('GL_PROGRAM_BINARY_FORMATS_OES')
	static var PROGRAM_BINARY_FORMATS_OES:GLuint;

	@:native('GL_WRITE_ONLY_OES')
	static var WRITE_ONLY_OES:GLuint;

	@:native('GL_BUFFER_ACCESS_OES')
	static var BUFFER_ACCESS_OES:GLuint;

	@:native('GL_BUFFER_MAPPED_OES')
	static var BUFFER_MAPPED_OES:GLuint;

	@:native('GL_BUFFER_MAP_POINTER_OES')
	static var BUFFER_MAP_POINTER_OES:GLuint;

	@:native('GL_PRIMITIVE_BOUNDING_BOX_OES')
	static var PRIMITIVE_BOUNDING_BOX_OES:GLuint;

	@:native('GL_ALPHA8_OES')
	static var ALPHA8_OES:GLuint;

	@:native('GL_DEPTH_COMPONENT16_OES')
	static var DEPTH_COMPONENT16_OES:GLuint;

	@:native('GL_LUMINANCE4_ALPHA4_OES')
	static var LUMINANCE4_ALPHA4_OES:GLuint;

	@:native('GL_LUMINANCE8_ALPHA8_OES')
	static var LUMINANCE8_ALPHA8_OES:GLuint;

	@:native('GL_LUMINANCE8_OES')
	static var LUMINANCE8_OES:GLuint;

	@:native('GL_RGBA4_OES')
	static var RGBA4_OES:GLuint;

	@:native('GL_RGB5_A1_OES')
	static var RGB5_A1_OES:GLuint;

	@:native('GL_RGB565_OES')
	static var RGB565_OES:GLuint;

	@:native('GL_RGB8_OES')
	static var RGB8_OES:GLuint;

	@:native('GL_RGBA8_OES')
	static var RGBA8_OES:GLuint;

	@:native('GL_SAMPLE_SHADING_OES')
	static var SAMPLE_SHADING_OES:GLuint;

	@:native('GL_MIN_SAMPLE_SHADING_VALUE_OES')
	static var MIN_SAMPLE_SHADING_VALUE_OES:GLuint;

	@:native('GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_OES')
	static var MIN_FRAGMENT_INTERPOLATION_OFFSET_OES:GLuint;

	@:native('GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_OES')
	static var MAX_FRAGMENT_INTERPOLATION_OFFSET_OES:GLuint;

	@:native('GL_FRAGMENT_INTERPOLATION_OFFSET_BITS_OES')
	static var FRAGMENT_INTERPOLATION_OFFSET_BITS_OES:GLuint;

	@:native('GL_FRAGMENT_SHADER_DERIVATIVE_HINT_OES')
	static var FRAGMENT_SHADER_DERIVATIVE_HINT_OES:GLuint;

	@:native('GL_STENCIL_INDEX1_OES')
	static var STENCIL_INDEX1_OES:GLuint;

	@:native('GL_STENCIL_INDEX4_OES')
	static var STENCIL_INDEX4_OES:GLuint;

	@:native('GL_FRAMEBUFFER_UNDEFINED_OES')
	static var FRAMEBUFFER_UNDEFINED_OES:GLuint;

	@:native('GL_PATCHES_OES')
	static var PATCHES_OES:GLuint;

	@:native('GL_PATCH_VERTICES_OES')
	static var PATCH_VERTICES_OES:GLuint;

	@:native('GL_TESS_CONTROL_OUTPUT_VERTICES_OES')
	static var TESS_CONTROL_OUTPUT_VERTICES_OES:GLuint;

	@:native('GL_TESS_GEN_MODE_OES')
	static var TESS_GEN_MODE_OES:GLuint;

	@:native('GL_TESS_GEN_SPACING_OES')
	static var TESS_GEN_SPACING_OES:GLuint;

	@:native('GL_TESS_GEN_VERTEX_ORDER_OES')
	static var TESS_GEN_VERTEX_ORDER_OES:GLuint;

	@:native('GL_TESS_GEN_POINT_MODE_OES')
	static var TESS_GEN_POINT_MODE_OES:GLuint;

	@:native('GL_ISOLINES_OES')
	static var ISOLINES_OES:GLuint;

	@:native('GL_QUADS_OES')
	static var QUADS_OES:GLuint;

	@:native('GL_FRACTIONAL_ODD_OES')
	static var FRACTIONAL_ODD_OES:GLuint;

	@:native('GL_FRACTIONAL_EVEN_OES')
	static var FRACTIONAL_EVEN_OES:GLuint;

	@:native('GL_MAX_PATCH_VERTICES_OES')
	static var MAX_PATCH_VERTICES_OES:GLuint;

	@:native('GL_MAX_TESS_GEN_LEVEL_OES')
	static var MAX_TESS_GEN_LEVEL_OES:GLuint;

	@:native('GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS_OES')
	static var MAX_TESS_CONTROL_UNIFORM_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS_OES')
	static var MAX_TESS_EVALUATION_UNIFORM_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS_OES')
	static var MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS_OES:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS_OES')
	static var MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS_OES:GLuint;

	@:native('GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS_OES')
	static var MAX_TESS_CONTROL_OUTPUT_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_TESS_PATCH_COMPONENTS_OES')
	static var MAX_TESS_PATCH_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS_OES')
	static var MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS_OES')
	static var MAX_TESS_EVALUATION_OUTPUT_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS_OES')
	static var MAX_TESS_CONTROL_UNIFORM_BLOCKS_OES:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS_OES')
	static var MAX_TESS_EVALUATION_UNIFORM_BLOCKS_OES:GLuint;

	@:native('GL_MAX_TESS_CONTROL_INPUT_COMPONENTS_OES')
	static var MAX_TESS_CONTROL_INPUT_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS_OES')
	static var MAX_TESS_EVALUATION_INPUT_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS_OES')
	static var MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS_OES')
	static var MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS_OES:GLuint;

	@:native('GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS_OES')
	static var MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS_OES:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS_OES')
	static var MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS_OES:GLuint;

	@:native('GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS_OES')
	static var MAX_TESS_CONTROL_ATOMIC_COUNTERS_OES:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS_OES')
	static var MAX_TESS_EVALUATION_ATOMIC_COUNTERS_OES:GLuint;

	@:native('GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS_OES')
	static var MAX_TESS_CONTROL_IMAGE_UNIFORMS_OES:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS_OES')
	static var MAX_TESS_EVALUATION_IMAGE_UNIFORMS_OES:GLuint;

	@:native('GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS_OES')
	static var MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS_OES:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS_OES')
	static var MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS_OES:GLuint;

	@:native('GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED_OES')
	static var PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED_OES:GLuint;

	@:native('GL_IS_PER_PATCH_OES')
	static var IS_PER_PATCH_OES:GLuint;

	@:native('GL_REFERENCED_BY_TESS_CONTROL_SHADER_OES')
	static var REFERENCED_BY_TESS_CONTROL_SHADER_OES:GLuint;

	@:native('GL_REFERENCED_BY_TESS_EVALUATION_SHADER_OES')
	static var REFERENCED_BY_TESS_EVALUATION_SHADER_OES:GLuint;

	@:native('GL_TESS_CONTROL_SHADER_OES')
	static var TESS_CONTROL_SHADER_OES:GLuint;

	@:native('GL_TESS_EVALUATION_SHADER_OES')
	static var TESS_EVALUATION_SHADER_OES:GLuint;

	@:native('GL_TESS_CONTROL_SHADER_BIT_OES')
	static var TESS_CONTROL_SHADER_BIT_OES:GLuint;

	@:native('GL_TESS_EVALUATION_SHADER_BIT_OES')
	static var TESS_EVALUATION_SHADER_BIT_OES:GLuint;

	@:native('GL_TEXTURE_WRAP_R_OES')
	static var TEXTURE_WRAP_R_OES:GLuint;

	@:native('GL_TEXTURE_3D_OES')
	static var TEXTURE_3D_OES:GLuint;

	@:native('GL_TEXTURE_BINDING_3D_OES')
	static var TEXTURE_BINDING_3D_OES:GLuint;

	@:native('GL_MAX_3D_TEXTURE_SIZE_OES')
	static var MAX_3D_TEXTURE_SIZE_OES:GLuint;

	@:native('GL_SAMPLER_3D_OES')
	static var SAMPLER_3D_OES:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_OES')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_OES:GLuint;

	@:native('GL_TEXTURE_BORDER_COLOR_OES')
	static var TEXTURE_BORDER_COLOR_OES:GLuint;

	@:native('GL_CLAMP_TO_BORDER_OES')
	static var CLAMP_TO_BORDER_OES:GLuint;

	@:native('GL_TEXTURE_BUFFER_OES')
	static var TEXTURE_BUFFER_OES:GLuint;

	@:native('GL_TEXTURE_BUFFER_BINDING_OES')
	static var TEXTURE_BUFFER_BINDING_OES:GLuint;

	@:native('GL_MAX_TEXTURE_BUFFER_SIZE_OES')
	static var MAX_TEXTURE_BUFFER_SIZE_OES:GLuint;

	@:native('GL_TEXTURE_BINDING_BUFFER_OES')
	static var TEXTURE_BINDING_BUFFER_OES:GLuint;

	@:native('GL_TEXTURE_BUFFER_DATA_STORE_BINDING_OES')
	static var TEXTURE_BUFFER_DATA_STORE_BINDING_OES:GLuint;

	@:native('GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT_OES')
	static var TEXTURE_BUFFER_OFFSET_ALIGNMENT_OES:GLuint;

	@:native('GL_SAMPLER_BUFFER_OES')
	static var SAMPLER_BUFFER_OES:GLuint;

	@:native('GL_INT_SAMPLER_BUFFER_OES')
	static var INT_SAMPLER_BUFFER_OES:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_BUFFER_OES')
	static var UNSIGNED_INT_SAMPLER_BUFFER_OES:GLuint;

	@:native('GL_IMAGE_BUFFER_OES')
	static var IMAGE_BUFFER_OES:GLuint;

	@:native('GL_INT_IMAGE_BUFFER_OES')
	static var INT_IMAGE_BUFFER_OES:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_BUFFER_OES')
	static var UNSIGNED_INT_IMAGE_BUFFER_OES:GLuint;

	@:native('GL_TEXTURE_BUFFER_OFFSET_OES')
	static var TEXTURE_BUFFER_OFFSET_OES:GLuint;

	@:native('GL_TEXTURE_BUFFER_SIZE_OES')
	static var TEXTURE_BUFFER_SIZE_OES:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_3x3x3_OES')
	static var COMPRESSED_RGBA_ASTC_3x3x3_OES:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_4x3x3_OES')
	static var COMPRESSED_RGBA_ASTC_4x3x3_OES:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_4x4x3_OES')
	static var COMPRESSED_RGBA_ASTC_4x4x3_OES:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_4x4x4_OES')
	static var COMPRESSED_RGBA_ASTC_4x4x4_OES:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_5x4x4_OES')
	static var COMPRESSED_RGBA_ASTC_5x4x4_OES:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_5x5x4_OES')
	static var COMPRESSED_RGBA_ASTC_5x5x4_OES:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_5x5x5_OES')
	static var COMPRESSED_RGBA_ASTC_5x5x5_OES:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_6x5x5_OES')
	static var COMPRESSED_RGBA_ASTC_6x5x5_OES:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_6x6x5_OES')
	static var COMPRESSED_RGBA_ASTC_6x6x5_OES:GLuint;

	@:native('GL_COMPRESSED_RGBA_ASTC_6x6x6_OES')
	static var COMPRESSED_RGBA_ASTC_6x6x6_OES:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_3x3x3_OES:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_4x3x3_OES:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x3_OES:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_4x4x4_OES:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_5x4x4_OES:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x4_OES:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_5x5x5_OES:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_6x5x5_OES:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x5_OES:GLuint;

	@:native('GL_COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES')
	static var COMPRESSED_SRGB8_ALPHA8_ASTC_6x6x6_OES:GLuint;

	@:native('GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_OES')
	static var TEXTURE_BINDING_CUBE_MAP_ARRAY_OES:GLuint;

	@:native('GL_SAMPLER_CUBE_MAP_ARRAY_OES')
	static var SAMPLER_CUBE_MAP_ARRAY_OES:GLuint;

	@:native('GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_OES')
	static var SAMPLER_CUBE_MAP_ARRAY_SHADOW_OES:GLuint;

	@:native('GL_INT_SAMPLER_CUBE_MAP_ARRAY_OES')
	static var INT_SAMPLER_CUBE_MAP_ARRAY_OES:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_OES')
	static var UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_OES:GLuint;

	@:native('GL_IMAGE_CUBE_MAP_ARRAY_OES')
	static var IMAGE_CUBE_MAP_ARRAY_OES:GLuint;

	@:native('GL_INT_IMAGE_CUBE_MAP_ARRAY_OES')
	static var INT_IMAGE_CUBE_MAP_ARRAY_OES:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_OES')
	static var UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_OES:GLuint;

	@:native('GL_HALF_FLOAT_OES')
	static var HALF_FLOAT_OES:GLuint;

	@:native('GL_STENCIL_INDEX_OES')
	static var STENCIL_INDEX_OES:GLuint;

	@:native('GL_STENCIL_INDEX8_OES')
	static var STENCIL_INDEX8_OES:GLuint;

	@:native('GL_TEXTURE_2D_MULTISAMPLE_ARRAY_OES')
	static var TEXTURE_2D_MULTISAMPLE_ARRAY_OES:GLuint;

	@:native('GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY_OES')
	static var TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY_OES:GLuint;

	@:native('GL_SAMPLER_2D_MULTISAMPLE_ARRAY_OES')
	static var SAMPLER_2D_MULTISAMPLE_ARRAY_OES:GLuint;

	@:native('GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES')
	static var INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES')
	static var UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY_OES:GLuint;

	@:native('GL_TEXTURE_VIEW_MIN_LEVEL_OES')
	static var TEXTURE_VIEW_MIN_LEVEL_OES:GLuint;

	@:native('GL_TEXTURE_VIEW_NUM_LEVELS_OES')
	static var TEXTURE_VIEW_NUM_LEVELS_OES:GLuint;

	@:native('GL_TEXTURE_VIEW_MIN_LAYER_OES')
	static var TEXTURE_VIEW_MIN_LAYER_OES:GLuint;

	@:native('GL_TEXTURE_VIEW_NUM_LAYERS_OES')
	static var TEXTURE_VIEW_NUM_LAYERS_OES:GLuint;

	@:native('GL_VERTEX_ARRAY_BINDING_OES')
	static var VERTEX_ARRAY_BINDING_OES:GLuint;

	@:native('GL_UNSIGNED_INT_10_10_10_2_OES')
	static var UNSIGNED_INT_10_10_10_2_OES:GLuint;

	@:native('GL_INT_10_10_10_2_OES')
	static var INT_10_10_10_2_OES:GLuint;

	@:native('GL_MAX_VIEWPORTS_OES')
	static var MAX_VIEWPORTS_OES:GLuint;

	@:native('GL_VIEWPORT_SUBPIXEL_BITS_OES')
	static var VIEWPORT_SUBPIXEL_BITS_OES:GLuint;

	@:native('GL_VIEWPORT_BOUNDS_RANGE_OES')
	static var VIEWPORT_BOUNDS_RANGE_OES:GLuint;

	@:native('GL_VIEWPORT_INDEX_PROVOKING_VERTEX_OES')
	static var VIEWPORT_INDEX_PROVOKING_VERTEX_OES:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR:GLuint;

	@:native('GL_MAX_VIEWS_OVR')
	static var MAX_VIEWS_OVR:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR')
	static var FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR:GLuint;

	@:native('GL_ALPHA_TEST_QCOM')
	static var ALPHA_TEST_QCOM:GLuint;

	@:native('GL_ALPHA_TEST_FUNC_QCOM')
	static var ALPHA_TEST_FUNC_QCOM:GLuint;

	@:native('GL_ALPHA_TEST_REF_QCOM')
	static var ALPHA_TEST_REF_QCOM:GLuint;

	@:native('GL_BINNING_CONTROL_HINT_QCOM')
	static var BINNING_CONTROL_HINT_QCOM:GLuint;

	@:native('GL_CPU_OPTIMIZED_QCOM')
	static var CPU_OPTIMIZED_QCOM:GLuint;

	@:native('GL_GPU_OPTIMIZED_QCOM')
	static var GPU_OPTIMIZED_QCOM:GLuint;

	@:native('GL_RENDER_DIRECT_TO_FRAMEBUFFER_QCOM')
	static var RENDER_DIRECT_TO_FRAMEBUFFER_QCOM:GLuint;

	@:native('GL_TEXTURE_WIDTH_QCOM')
	static var TEXTURE_WIDTH_QCOM:GLuint;

	@:native('GL_TEXTURE_HEIGHT_QCOM')
	static var TEXTURE_HEIGHT_QCOM:GLuint;

	@:native('GL_TEXTURE_DEPTH_QCOM')
	static var TEXTURE_DEPTH_QCOM:GLuint;

	@:native('GL_TEXTURE_INTERNAL_FORMAT_QCOM')
	static var TEXTURE_INTERNAL_FORMAT_QCOM:GLuint;

	@:native('GL_TEXTURE_FORMAT_QCOM')
	static var TEXTURE_FORMAT_QCOM:GLuint;

	@:native('GL_TEXTURE_TYPE_QCOM')
	static var TEXTURE_TYPE_QCOM:GLuint;

	@:native('GL_TEXTURE_IMAGE_VALID_QCOM')
	static var TEXTURE_IMAGE_VALID_QCOM:GLuint;

	@:native('GL_TEXTURE_NUM_LEVELS_QCOM')
	static var TEXTURE_NUM_LEVELS_QCOM:GLuint;

	@:native('GL_TEXTURE_TARGET_QCOM')
	static var TEXTURE_TARGET_QCOM:GLuint;

	@:native('GL_TEXTURE_OBJECT_VALID_QCOM')
	static var TEXTURE_OBJECT_VALID_QCOM:GLuint;

	@:native('GL_STATE_RESTORE')
	static var STATE_RESTORE:GLuint;

	@:native('GL_FOVEATION_ENABLE_BIT_QCOM')
	static var FOVEATION_ENABLE_BIT_QCOM:GLuint;

	@:native('GL_FOVEATION_SCALED_BIN_METHOD_BIT_QCOM')
	static var FOVEATION_SCALED_BIN_METHOD_BIT_QCOM:GLuint;

	@:native('GL_MOTION_ESTIMATION_SEARCH_BLOCK_X_QCOM')
	static var MOTION_ESTIMATION_SEARCH_BLOCK_X_QCOM:GLuint;

	@:native('GL_MOTION_ESTIMATION_SEARCH_BLOCK_Y_QCOM')
	static var MOTION_ESTIMATION_SEARCH_BLOCK_Y_QCOM:GLuint;

	@:native('GL_TEXTURE_FOVEATED_FEATURE_BITS_QCOM')
	static var TEXTURE_FOVEATED_FEATURE_BITS_QCOM:GLuint;

	@:native('GL_TEXTURE_FOVEATED_MIN_PIXEL_DENSITY_QCOM')
	static var TEXTURE_FOVEATED_MIN_PIXEL_DENSITY_QCOM:GLuint;

	@:native('GL_TEXTURE_FOVEATED_FEATURE_QUERY_QCOM')
	static var TEXTURE_FOVEATED_FEATURE_QUERY_QCOM:GLuint;

	@:native('GL_TEXTURE_FOVEATED_NUM_FOCAL_POINTS_QUERY_QCOM')
	static var TEXTURE_FOVEATED_NUM_FOCAL_POINTS_QUERY_QCOM:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_FOVEATION_QCOM')
	static var FRAMEBUFFER_INCOMPLETE_FOVEATION_QCOM:GLuint;

	@:native('GL_TEXTURE_FOVEATED_CUTOFF_DENSITY_QCOM')
	static var TEXTURE_FOVEATED_CUTOFF_DENSITY_QCOM:GLuint;

	@:native('GL_FOVEATION_SUBSAMPLED_LAYOUT_METHOD_BIT_QCOM')
	static var FOVEATION_SUBSAMPLED_LAYOUT_METHOD_BIT_QCOM:GLuint;

	@:native('GL_MAX_SHADER_SUBSAMPLED_IMAGE_UNITS_QCOM')
	static var MAX_SHADER_SUBSAMPLED_IMAGE_UNITS_QCOM:GLuint;

	@:native('GL_TEXTURE_Y_DEGAMMA_QCOM')
	static var TEXTURE_Y_DEGAMMA_QCOM:GLuint;

	@:native('GL_TEXTURE_CBCR_DEGAMMA_QCOM')
	static var TEXTURE_CBCR_DEGAMMA_QCOM:GLuint;

	@:native('GL_TEXTURE_LOD_BIAS_QCOM')
	static var TEXTURE_LOD_BIAS_QCOM:GLuint;

	@:native('GL_PERFMON_GLOBAL_MODE_QCOM')
	static var PERFMON_GLOBAL_MODE_QCOM:GLuint;

	@:native('GL_FRAMEBUFFER_FETCH_NONCOHERENT_QCOM')
	static var FRAMEBUFFER_FETCH_NONCOHERENT_QCOM:GLuint;

	@:native('GL_SHADING_RATE_QCOM')
	static var SHADING_RATE_QCOM:GLuint;

	@:native('GL_SHADING_RATE_PRESERVE_ASPECT_RATIO_QCOM')
	static var SHADING_RATE_PRESERVE_ASPECT_RATIO_QCOM:GLuint;

	@:native('GL_SHADING_RATE_1X1_PIXELS_QCOM')
	static var SHADING_RATE_1X1_PIXELS_QCOM:GLuint;

	@:native('GL_SHADING_RATE_1X2_PIXELS_QCOM')
	static var SHADING_RATE_1X2_PIXELS_QCOM:GLuint;

	@:native('GL_SHADING_RATE_2X1_PIXELS_QCOM')
	static var SHADING_RATE_2X1_PIXELS_QCOM:GLuint;

	@:native('GL_SHADING_RATE_2X2_PIXELS_QCOM')
	static var SHADING_RATE_2X2_PIXELS_QCOM:GLuint;

	@:native('GL_SHADING_RATE_4X2_PIXELS_QCOM')
	static var SHADING_RATE_4X2_PIXELS_QCOM:GLuint;

	@:native('GL_SHADING_RATE_4X4_PIXELS_QCOM')
	static var SHADING_RATE_4X4_PIXELS_QCOM:GLuint;

	@:native('GL_COLOR_BUFFER_BIT0_QCOM')
	static var COLOR_BUFFER_BIT0_QCOM:GLuint;

	@:native('GL_COLOR_BUFFER_BIT1_QCOM')
	static var COLOR_BUFFER_BIT1_QCOM:GLuint;

	@:native('GL_COLOR_BUFFER_BIT2_QCOM')
	static var COLOR_BUFFER_BIT2_QCOM:GLuint;

	@:native('GL_COLOR_BUFFER_BIT3_QCOM')
	static var COLOR_BUFFER_BIT3_QCOM:GLuint;

	@:native('GL_COLOR_BUFFER_BIT4_QCOM')
	static var COLOR_BUFFER_BIT4_QCOM:GLuint;

	@:native('GL_COLOR_BUFFER_BIT5_QCOM')
	static var COLOR_BUFFER_BIT5_QCOM:GLuint;

	@:native('GL_COLOR_BUFFER_BIT6_QCOM')
	static var COLOR_BUFFER_BIT6_QCOM:GLuint;

	@:native('GL_COLOR_BUFFER_BIT7_QCOM')
	static var COLOR_BUFFER_BIT7_QCOM:GLuint;

	@:native('GL_DEPTH_BUFFER_BIT0_QCOM')
	static var DEPTH_BUFFER_BIT0_QCOM:GLuint;

	@:native('GL_DEPTH_BUFFER_BIT1_QCOM')
	static var DEPTH_BUFFER_BIT1_QCOM:GLuint;

	@:native('GL_DEPTH_BUFFER_BIT2_QCOM')
	static var DEPTH_BUFFER_BIT2_QCOM:GLuint;

	@:native('GL_DEPTH_BUFFER_BIT3_QCOM')
	static var DEPTH_BUFFER_BIT3_QCOM:GLuint;

	@:native('GL_DEPTH_BUFFER_BIT4_QCOM')
	static var DEPTH_BUFFER_BIT4_QCOM:GLuint;

	@:native('GL_DEPTH_BUFFER_BIT5_QCOM')
	static var DEPTH_BUFFER_BIT5_QCOM:GLuint;

	@:native('GL_DEPTH_BUFFER_BIT6_QCOM')
	static var DEPTH_BUFFER_BIT6_QCOM:GLuint;

	@:native('GL_DEPTH_BUFFER_BIT7_QCOM')
	static var DEPTH_BUFFER_BIT7_QCOM:GLuint;

	@:native('GL_STENCIL_BUFFER_BIT0_QCOM')
	static var STENCIL_BUFFER_BIT0_QCOM:GLuint;

	@:native('GL_STENCIL_BUFFER_BIT1_QCOM')
	static var STENCIL_BUFFER_BIT1_QCOM:GLuint;

	@:native('GL_STENCIL_BUFFER_BIT2_QCOM')
	static var STENCIL_BUFFER_BIT2_QCOM:GLuint;

	@:native('GL_STENCIL_BUFFER_BIT3_QCOM')
	static var STENCIL_BUFFER_BIT3_QCOM:GLuint;

	@:native('GL_STENCIL_BUFFER_BIT4_QCOM')
	static var STENCIL_BUFFER_BIT4_QCOM:GLuint;

	@:native('GL_STENCIL_BUFFER_BIT5_QCOM')
	static var STENCIL_BUFFER_BIT5_QCOM:GLuint;

	@:native('GL_STENCIL_BUFFER_BIT6_QCOM')
	static var STENCIL_BUFFER_BIT6_QCOM:GLuint;

	@:native('GL_STENCIL_BUFFER_BIT7_QCOM')
	static var STENCIL_BUFFER_BIT7_QCOM:GLuint;

	@:native('GL_MULTISAMPLE_BUFFER_BIT0_QCOM')
	static var MULTISAMPLE_BUFFER_BIT0_QCOM:GLuint;

	@:native('GL_MULTISAMPLE_BUFFER_BIT1_QCOM')
	static var MULTISAMPLE_BUFFER_BIT1_QCOM:GLuint;

	@:native('GL_MULTISAMPLE_BUFFER_BIT2_QCOM')
	static var MULTISAMPLE_BUFFER_BIT2_QCOM:GLuint;

	@:native('GL_MULTISAMPLE_BUFFER_BIT3_QCOM')
	static var MULTISAMPLE_BUFFER_BIT3_QCOM:GLuint;

	@:native('GL_MULTISAMPLE_BUFFER_BIT4_QCOM')
	static var MULTISAMPLE_BUFFER_BIT4_QCOM:GLuint;

	@:native('GL_MULTISAMPLE_BUFFER_BIT5_QCOM')
	static var MULTISAMPLE_BUFFER_BIT5_QCOM:GLuint;

	@:native('GL_MULTISAMPLE_BUFFER_BIT6_QCOM')
	static var MULTISAMPLE_BUFFER_BIT6_QCOM:GLuint;

	@:native('GL_MULTISAMPLE_BUFFER_BIT7_QCOM')
	static var MULTISAMPLE_BUFFER_BIT7_QCOM:GLuint;

	@:native('GL_WRITEONLY_RENDERING_QCOM')
	static var WRITEONLY_RENDERING_QCOM:GLuint;

	@:native('GL_SHADER_BINARY_VIV')
	static var SHADER_BINARY_VIV:GLuint;

	@:native('glActiveTexture')
	static function activeTexture(texture:GLenum):Void;

	@:native('glAttachShader')
	static function attachShader(program:GLuint, shader:GLuint):Void;

	@:native('glBindAttribLocation')
	static function bindAttribLocation(program:GLuint, index:GLuint, name:ConstGLcharStar):Void;

	@:native('glBindBuffer')
	static function bindBuffer(target:GLenum, buffer:GLuint):Void;

	@:native('glBindFramebuffer')
	static function bindFramebuffer(target:GLenum, framebuffer:GLuint):Void;

	@:native('glBindRenderbuffer')
	static function bindRenderbuffer(target:GLenum, renderbuffer:GLuint):Void;

	@:native('glBindTexture')
	static function bindTexture(target:GLenum, texture:GLuint):Void;

	@:native('glBlendColor')
	static function blendColor(red:GLfloat, green:GLfloat, blue:GLfloat, alpha:GLfloat):Void;

	@:native('glBlendEquation')
	static function blendEquation(mode:GLenum):Void;

	@:native('glBlendEquationSeparate')
	static function blendEquationSeparate(modeRGB:GLenum, modeAlpha:GLenum):Void;

	@:native('glBlendFunc')
	static function blendFunc(sfactor:GLenum, dfactor:GLenum):Void;

	@:native('glBlendFuncSeparate')
	static function blendFuncSeparate(sfactorRGB:GLenum, dfactorRGB:GLenum, sfactorAlpha:GLenum, dfactorAlpha:GLenum):Void;

	@:native('glBufferData')
	static function bufferData(target:GLenum, size:GLsizeiptr, data:RawPointer<cpp.Void>, usage:GLenum):Void;

	@:native('glBufferSubData')
	static function bufferSubData(target:GLenum, offset:GLintptr, size:GLsizeiptr, data:RawPointer<cpp.Void>):Void;

	@:native('glCheckFramebufferStatus')
	static function checkFramebufferStatus(target:GLenum):GLenum;

	@:native('glClear')
	static function clear(mask:GLbitfield):Void;

	@:native('glClearColor')
	static function clearColor(red:GLfloat, green:GLfloat, blue:GLfloat, alpha:GLfloat):Void;

	@:native('glClearDepthf')
	static function clearDepthf(d:GLfloat):Void;

	@:native('glClearStencil')
	static function clearStencil(s:GLint):Void;

	@:native('glColorMask')
	static function colorMask(red:GLboolean, green:GLboolean, blue:GLboolean, alpha:GLboolean):Void;

	@:native('glCompileShader')
	static function compileShader(shader:GLuint):Void;

	@:native('glCompressedTexImage2D')
	static function compressedTexImage2D(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, border:GLint, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexSubImage2D')
	static function compressedTexSubImage2D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, width:GLsizei, height:GLsizei, format:GLenum, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCopyTexImage2D')
	static function copyTexImage2D(target:GLenum, level:GLint, internalformat:GLenum, x:GLint, y:GLint, width:GLsizei, height:GLsizei, border:GLint):Void;

	@:native('glCopyTexSubImage2D')
	static function copyTexSubImage2D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glCreateProgram')
	static function createProgram():GLuint;

	@:native('glCreateShader')
	static function createShader(type:GLenum):GLuint;

	@:native('glCullFace')
	static function cullFace(mode:GLenum):Void;

	@:native('glDeleteBuffers')
	static function deleteBuffers(n:GLsizei, buffers:RawPointer<GLuint>):Void;

	@:native('glDeleteFramebuffers')
	static function deleteFramebuffers(n:GLsizei, framebuffers:RawPointer<GLuint>):Void;

	@:native('glDeleteProgram')
	static function deleteProgram(program:GLuint):Void;

	@:native('glDeleteRenderbuffers')
	static function deleteRenderbuffers(n:GLsizei, renderbuffers:RawPointer<GLuint>):Void;

	@:native('glDeleteShader')
	static function deleteShader(shader:GLuint):Void;

	@:native('glDeleteTextures')
	static function deleteTextures(n:GLsizei, textures:RawPointer<GLuint>):Void;

	@:native('glDepthFunc')
	static function depthFunc(func:GLenum):Void;

	@:native('glDepthMask')
	static function depthMask(flag:GLboolean):Void;

	@:native('glDepthRangef')
	static function depthRangef(n:GLfloat, f:GLfloat):Void;

	@:native('glDetachShader')
	static function detachShader(program:GLuint, shader:GLuint):Void;

	@:native('glDisable')
	static function disable(cap:GLenum):Void;

	@:native('glDisableVertexAttribArray')
	static function disableVertexAttribArray(index:GLuint):Void;

	@:native('glDrawArrays')
	static function drawArrays(mode:GLenum, first:GLint, count:GLsizei):Void;

	@:native('glDrawElements')
	static function drawElements(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>):Void;

	@:native('glEnable')
	static function enable(cap:GLenum):Void;

	@:native('glEnableVertexAttribArray')
	static function enableVertexAttribArray(index:GLuint):Void;

	@:native('glFinish')
	static function finish():Void;

	@:native('glFlush')
	static function flush():Void;

	@:native('glFramebufferRenderbuffer')
	static function framebufferRenderbuffer(target:GLenum, attachment:GLenum, renderbuffertarget:GLenum, renderbuffer:GLuint):Void;

	@:native('glFramebufferTexture2D')
	static function framebufferTexture2D(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint):Void;

	@:native('glFrontFace')
	static function frontFace(mode:GLenum):Void;

	@:native('glGenBuffers')
	static function genBuffers(n:GLsizei, buffers:RawPointer<GLuint>):Void;

	@:native('glGenerateMipmap')
	static function generateMipmap(target:GLenum):Void;

	@:native('glGenFramebuffers')
	static function genFramebuffers(n:GLsizei, framebuffers:RawPointer<GLuint>):Void;

	@:native('glGenRenderbuffers')
	static function genRenderbuffers(n:GLsizei, renderbuffers:RawPointer<GLuint>):Void;

	@:native('glGenTextures')
	static function genTextures(n:GLsizei, textures:RawPointer<GLuint>):Void;

	@:native('glGetActiveAttrib')
	static function getActiveAttrib(program:GLuint, index:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, size:RawPointer<GLint>, type:RawPointer<GLenum>, name:CastGLcharStar):Void;

	@:native('glGetActiveUniform')
	static function getActiveUniform(program:GLuint, index:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, size:RawPointer<GLint>, type:RawPointer<GLenum>, name:CastGLcharStar):Void;

	@:native('glGetAttachedShaders')
	static function getAttachedShaders(program:GLuint, maxCount:GLsizei, count:RawPointer<GLsizei>, shaders:RawPointer<GLuint>):Void;

	@:native('glGetAttribLocation')
	static function getAttribLocation(program:GLuint, name:ConstGLcharStar):GLint;

	@:native('glGetBooleanv')
	static function getBooleanv(pname:GLenum, data:RawPointer<GLboolean>):Void;

	@:native('glGetBufferParameteriv')
	static function getBufferParameteriv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetError')
	static function getError():GLenum;

	@:native('glGetFloatv')
	static function getFloatv(pname:GLenum, data:RawPointer<GLfloat>):Void;

	@:native('glGetFramebufferAttachmentParameteriv')
	static function getFramebufferAttachmentParameteriv(target:GLenum, attachment:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetIntegerv')
	static function getIntegerv(pname:GLenum, data:RawPointer<GLint>):Void;

	@:native('glGetProgramiv')
	static function getProgramiv(program:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetProgramInfoLog')
	static function getProgramInfoLog(program:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, infoLog:CastGLcharStar):Void;

	@:native('glGetRenderbufferParameteriv')
	static function getRenderbufferParameteriv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetShaderiv')
	static function getShaderiv(shader:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetShaderInfoLog')
	static function getShaderInfoLog(shader:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, infoLog:CastGLcharStar):Void;

	@:native('glGetShaderPrecisionFormat')
	static function getShaderPrecisionFormat(shadertype:GLenum, precisiontype:GLenum, range:RawPointer<GLint>, precision:RawPointer<GLint>):Void;

	@:native('glGetShaderSource')
	static function getShaderSource(shader:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, source:CastGLcharStar):Void;

	@:native('glGetString')
	static function getString(name:GLenum):RawPointer<GLubyte>;

	@:native('glGetTexParameterfv')
	static function getTexParameterfv(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetTexParameteriv')
	static function getTexParameteriv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetUniformfv')
	static function getUniformfv(program:GLuint, location:GLint, params:RawPointer<GLfloat>):Void;

	@:native('glGetUniformiv')
	static function getUniformiv(program:GLuint, location:GLint, params:RawPointer<GLint>):Void;

	@:native('glGetUniformLocation')
	static function getUniformLocation(program:GLuint, name:ConstGLcharStar):GLint;

	@:native('glGetVertexAttribfv')
	static function getVertexAttribfv(index:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetVertexAttribiv')
	static function getVertexAttribiv(index:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetVertexAttribPointerv')
	static function getVertexAttribPointerv(index:GLuint, pname:GLenum, pointer:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glHint')
	static function hint(target:GLenum, mode:GLenum):Void;

	@:native('glIsBuffer')
	static function isBuffer(buffer:GLuint):GLboolean;

	@:native('glIsEnabled')
	static function isEnabled(cap:GLenum):GLboolean;

	@:native('glIsFramebuffer')
	static function isFramebuffer(framebuffer:GLuint):GLboolean;

	@:native('glIsProgram')
	static function isProgram(program:GLuint):GLboolean;

	@:native('glIsRenderbuffer')
	static function isRenderbuffer(renderbuffer:GLuint):GLboolean;

	@:native('glIsShader')
	static function isShader(shader:GLuint):GLboolean;

	@:native('glIsTexture')
	static function isTexture(texture:GLuint):GLboolean;

	@:native('glLineWidth')
	static function lineWidth(width:GLfloat):Void;

	@:native('glLinkProgram')
	static function linkProgram(program:GLuint):Void;

	@:native('glPixelStorei')
	static function pixelStorei(pname:GLenum, param:GLint):Void;

	@:native('glPolygonOffset')
	static function polygonOffset(factor:GLfloat, units:GLfloat):Void;

	@:native('glReadPixels')
	static function readPixels(x:GLint, y:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glReleaseShaderCompiler')
	static function releaseShaderCompiler():Void;

	@:native('glRenderbufferStorage')
	static function renderbufferStorage(target:GLenum, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glSampleCoverage')
	static function sampleCoverage(value:GLfloat, invert:GLboolean):Void;

	@:native('glScissor')
	static function scissor(x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glShaderBinary')
	static function shaderBinary(count:GLsizei, shaders:RawPointer<GLuint>, binaryFormat:GLenum, binary:RawPointer<cpp.Void>, length:GLsizei):Void;

	@:native('glShaderSource')
	static function shaderSource(shader:GLuint, count:GLsizei, string:RawPointer<ConstGLcharStar>, length:RawPointer<GLint>):Void;

	@:native('glStencilFunc')
	static function stencilFunc(func:GLenum, ref:GLint, mask:GLuint):Void;

	@:native('glStencilFuncSeparate')
	static function stencilFuncSeparate(face:GLenum, func:GLenum, ref:GLint, mask:GLuint):Void;

	@:native('glStencilMask')
	static function stencilMask(mask:GLuint):Void;

	@:native('glStencilMaskSeparate')
	static function stencilMaskSeparate(face:GLenum, mask:GLuint):Void;

	@:native('glStencilOp')
	static function stencilOp(fail:GLenum, zfail:GLenum, zpass:GLenum):Void;

	@:native('glStencilOpSeparate')
	static function stencilOpSeparate(face:GLenum, sfail:GLenum, dpfail:GLenum, dppass:GLenum):Void;

	@:native('glTexImage2D')
	static function texImage2D(target:GLenum, level:GLint, internalformat:GLint, width:GLsizei, height:GLsizei, border:GLint, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTexParameterf')
	static function texParameterf(target:GLenum, pname:GLenum, param:GLfloat):Void;

	@:native('glTexParameterfv')
	static function texParameterfv(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glTexParameteri')
	static function texParameteri(target:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glTexParameteriv')
	static function texParameteriv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glTexSubImage2D')
	static function texSubImage2D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glUniform1f')
	static function uniform1f(location:GLint, v0:GLfloat):Void;

	@:native('glUniform1fv')
	static function uniform1fv(location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glUniform1i')
	static function uniform1i(location:GLint, v0:GLint):Void;

	@:native('glUniform1iv')
	static function uniform1iv(location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glUniform2f')
	static function uniform2f(location:GLint, v0:GLfloat, v1:GLfloat):Void;

	@:native('glUniform2fv')
	static function uniform2fv(location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glUniform2i')
	static function uniform2i(location:GLint, v0:GLint, v1:GLint):Void;

	@:native('glUniform2iv')
	static function uniform2iv(location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glUniform3f')
	static function uniform3f(location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat):Void;

	@:native('glUniform3fv')
	static function uniform3fv(location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glUniform3i')
	static function uniform3i(location:GLint, v0:GLint, v1:GLint, v2:GLint):Void;

	@:native('glUniform3iv')
	static function uniform3iv(location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glUniform4f')
	static function uniform4f(location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat, v3:GLfloat):Void;

	@:native('glUniform4fv')
	static function uniform4fv(location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glUniform4i')
	static function uniform4i(location:GLint, v0:GLint, v1:GLint, v2:GLint, v3:GLint):Void;

	@:native('glUniform4iv')
	static function uniform4iv(location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glUniformMatrix2fv')
	static function uniformMatrix2fv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix3fv')
	static function uniformMatrix3fv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix4fv')
	static function uniformMatrix4fv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUseProgram')
	static function useProgram(program:GLuint):Void;

	@:native('glValidateProgram')
	static function validateProgram(program:GLuint):Void;

	@:native('glVertexAttrib1f')
	static function vertexAttrib1f(index:GLuint, x:GLfloat):Void;

	@:native('glVertexAttrib1fv')
	static function vertexAttrib1fv(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib2f')
	static function vertexAttrib2f(index:GLuint, x:GLfloat, y:GLfloat):Void;

	@:native('glVertexAttrib2fv')
	static function vertexAttrib2fv(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib3f')
	static function vertexAttrib3f(index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glVertexAttrib3fv')
	static function vertexAttrib3fv(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib4f')
	static function vertexAttrib4f(index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glVertexAttrib4fv')
	static function vertexAttrib4fv(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttribPointer')
	static function vertexAttribPointer(index:GLuint, size:GLint, type:GLenum, normalized:GLboolean, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glViewport')
	static function viewport(x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glReadBuffer')
	static function readBuffer(src:GLenum):Void;

	@:native('glDrawRangeElements')
	static function drawRangeElements(mode:GLenum, start:GLuint, end:GLuint, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>):Void;

	@:native('glTexImage3D')
	static function texImage3D(target:GLenum, level:GLint, internalformat:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, border:GLint, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTexSubImage3D')
	static function texSubImage3D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glCopyTexSubImage3D')
	static function copyTexSubImage3D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glCompressedTexImage3D')
	static function compressedTexImage3D(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, border:GLint, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexSubImage3D')
	static function compressedTexSubImage3D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glGenQueries')
	static function genQueries(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glDeleteQueries')
	static function deleteQueries(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glIsQuery')
	static function isQuery(id:GLuint):GLboolean;

	@:native('glBeginQuery')
	static function beginQuery(target:GLenum, id:GLuint):Void;

	@:native('glEndQuery')
	static function endQuery(target:GLenum):Void;

	@:native('glGetQueryiv')
	static function getQueryiv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetQueryObjectuiv')
	static function getQueryObjectuiv(id:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glUnmapBuffer')
	static function unmapBuffer(target:GLenum):GLboolean;

	@:native('glGetBufferPointerv')
	static function getBufferPointerv(target:GLenum, pname:GLenum, params:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glDrawBuffers')
	static function drawBuffers(n:GLsizei, bufs:RawPointer<GLenum>):Void;

	@:native('glUniformMatrix2x3fv')
	static function uniformMatrix2x3fv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix3x2fv')
	static function uniformMatrix3x2fv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix2x4fv')
	static function uniformMatrix2x4fv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix4x2fv')
	static function uniformMatrix4x2fv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix3x4fv')
	static function uniformMatrix3x4fv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix4x3fv')
	static function uniformMatrix4x3fv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glBlitFramebuffer')
	static function blitFramebuffer(srcX0:GLint, srcY0:GLint, srcX1:GLint, srcY1:GLint, dstX0:GLint, dstY0:GLint, dstX1:GLint, dstY1:GLint, mask:GLbitfield, filter:GLenum):Void;

	@:native('glRenderbufferStorageMultisample')
	static function renderbufferStorageMultisample(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glFramebufferTextureLayer')
	static function framebufferTextureLayer(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint, layer:GLint):Void;

	@:native('glMapBufferRange')
	static function mapBufferRange(target:GLenum, offset:GLintptr, length:GLsizeiptr, access:GLbitfield):RawPointer<cpp.Void>;

	@:native('glFlushMappedBufferRange')
	static function flushMappedBufferRange(target:GLenum, offset:GLintptr, length:GLsizeiptr):Void;

	@:native('glBindVertexArray')
	static function bindVertexArray(array:GLuint):Void;

	@:native('glDeleteVertexArrays')
	static function deleteVertexArrays(n:GLsizei, arrays:RawPointer<GLuint>):Void;

	@:native('glGenVertexArrays')
	static function genVertexArrays(n:GLsizei, arrays:RawPointer<GLuint>):Void;

	@:native('glIsVertexArray')
	static function isVertexArray(array:GLuint):GLboolean;

	@:native('glGetIntegeri_v')
	static function getIntegeri_v(target:GLenum, index:GLuint, data:RawPointer<GLint>):Void;

	@:native('glBeginTransformFeedback')
	static function beginTransformFeedback(primitiveMode:GLenum):Void;

	@:native('glEndTransformFeedback')
	static function endTransformFeedback():Void;

	@:native('glBindBufferRange')
	static function bindBufferRange(target:GLenum, index:GLuint, buffer:GLuint, offset:GLintptr, size:GLsizeiptr):Void;

	@:native('glBindBufferBase')
	static function bindBufferBase(target:GLenum, index:GLuint, buffer:GLuint):Void;

	@:native('glTransformFeedbackVaryings')
	static function transformFeedbackVaryings(program:GLuint, count:GLsizei, varyings:RawPointer<ConstGLcharStar>, bufferMode:GLenum):Void;

	@:native('glGetTransformFeedbackVarying')
	static function getTransformFeedbackVarying(program:GLuint, index:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, size:RawPointer<GLsizei>, type:RawPointer<GLenum>, name:CastGLcharStar):Void;

	@:native('glVertexAttribIPointer')
	static function vertexAttribIPointer(index:GLuint, size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glGetVertexAttribIiv')
	static function getVertexAttribIiv(index:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetVertexAttribIuiv')
	static function getVertexAttribIuiv(index:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glVertexAttribI4i')
	static function vertexAttribI4i(index:GLuint, x:GLint, y:GLint, z:GLint, w:GLint):Void;

	@:native('glVertexAttribI4ui')
	static function vertexAttribI4ui(index:GLuint, x:GLuint, y:GLuint, z:GLuint, w:GLuint):Void;

	@:native('glVertexAttribI4iv')
	static function vertexAttribI4iv(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttribI4uiv')
	static function vertexAttribI4uiv(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glGetUniformuiv')
	static function getUniformuiv(program:GLuint, location:GLint, params:RawPointer<GLuint>):Void;

	@:native('glGetFragDataLocation')
	static function getFragDataLocation(program:GLuint, name:ConstGLcharStar):GLint;

	@:native('glUniform1ui')
	static function uniform1ui(location:GLint, v0:GLuint):Void;

	@:native('glUniform2ui')
	static function uniform2ui(location:GLint, v0:GLuint, v1:GLuint):Void;

	@:native('glUniform3ui')
	static function uniform3ui(location:GLint, v0:GLuint, v1:GLuint, v2:GLuint):Void;

	@:native('glUniform4ui')
	static function uniform4ui(location:GLint, v0:GLuint, v1:GLuint, v2:GLuint, v3:GLuint):Void;

	@:native('glUniform1uiv')
	static function uniform1uiv(location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glUniform2uiv')
	static function uniform2uiv(location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glUniform3uiv')
	static function uniform3uiv(location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glUniform4uiv')
	static function uniform4uiv(location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glClearBufferiv')
	static function clearBufferiv(buffer:GLenum, drawbuffer:GLint, value:RawPointer<GLint>):Void;

	@:native('glClearBufferuiv')
	static function clearBufferuiv(buffer:GLenum, drawbuffer:GLint, value:RawPointer<GLuint>):Void;

	@:native('glClearBufferfv')
	static function clearBufferfv(buffer:GLenum, drawbuffer:GLint, value:RawPointer<GLfloat>):Void;

	@:native('glClearBufferfi')
	static function clearBufferfi(buffer:GLenum, drawbuffer:GLint, depth:GLfloat, stencil:GLint):Void;

	@:native('glGetStringi')
	static function getStringi(name:GLenum, index:GLuint):RawPointer<GLubyte>;

	@:native('glCopyBufferSubData')
	static function copyBufferSubData(readTarget:GLenum, writeTarget:GLenum, readOffset:GLintptr, writeOffset:GLintptr, size:GLsizeiptr):Void;

	@:native('glGetUniformIndices')
	static function getUniformIndices(program:GLuint, uniformCount:GLsizei, uniformNames:RawPointer<ConstGLcharStar>, uniformIndices:RawPointer<GLuint>):Void;

	@:native('glGetActiveUniformsiv')
	static function getActiveUniformsiv(program:GLuint, uniformCount:GLsizei, uniformIndices:RawPointer<GLuint>, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetUniformBlockIndex')
	static function getUniformBlockIndex(program:GLuint, uniformBlockName:ConstGLcharStar):GLuint;

	@:native('glGetActiveUniformBlockiv')
	static function getActiveUniformBlockiv(program:GLuint, uniformBlockIndex:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetActiveUniformBlockName')
	static function getActiveUniformBlockName(program:GLuint, uniformBlockIndex:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, uniformBlockName:CastGLcharStar):Void;

	@:native('glUniformBlockBinding')
	static function uniformBlockBinding(program:GLuint, uniformBlockIndex:GLuint, uniformBlockBinding:GLuint):Void;

	@:native('glDrawArraysInstanced')
	static function drawArraysInstanced(mode:GLenum, first:GLint, count:GLsizei, instancecount:GLsizei):Void;

	@:native('glDrawElementsInstanced')
	static function drawElementsInstanced(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, instancecount:GLsizei):Void;

	@:native('glFenceSync')
	static function fenceSync(condition:GLenum, flags:GLbitfield):GLsync;

	@:native('glIsSync')
	static function isSync(sync:GLsync):GLboolean;

	@:native('glDeleteSync')
	static function deleteSync(sync:GLsync):Void;

	@:native('glClientWaitSync')
	static function clientWaitSync(sync:GLsync, flags:GLbitfield, timeout:GLuint64):GLenum;

	@:native('glWaitSync')
	static function waitSync(sync:GLsync, flags:GLbitfield, timeout:GLuint64):Void;

	@:native('glGetInteger64v')
	static function getInteger64v(pname:GLenum, data:RawPointer<GLint64>):Void;

	@:native('glGetSynciv')
	static function getSynciv(sync:GLsync, pname:GLenum, count:GLsizei, length:RawPointer<GLsizei>, values:RawPointer<GLint>):Void;

	@:native('glGetInteger64i_v')
	static function getInteger64i_v(target:GLenum, index:GLuint, data:RawPointer<GLint64>):Void;

	@:native('glGetBufferParameteri64v')
	static function getBufferParameteri64v(target:GLenum, pname:GLenum, params:RawPointer<GLint64>):Void;

	@:native('glGenSamplers')
	static function genSamplers(count:GLsizei, samplers:RawPointer<GLuint>):Void;

	@:native('glDeleteSamplers')
	static function deleteSamplers(count:GLsizei, samplers:RawPointer<GLuint>):Void;

	@:native('glIsSampler')
	static function isSampler(sampler:GLuint):GLboolean;

	@:native('glBindSampler')
	static function bindSampler(unit:GLuint, sampler:GLuint):Void;

	@:native('glSamplerParameteri')
	static function samplerParameteri(sampler:GLuint, pname:GLenum, param:GLint):Void;

	@:native('glSamplerParameteriv')
	static function samplerParameteriv(sampler:GLuint, pname:GLenum, param:RawPointer<GLint>):Void;

	@:native('glSamplerParameterf')
	static function samplerParameterf(sampler:GLuint, pname:GLenum, param:GLfloat):Void;

	@:native('glSamplerParameterfv')
	static function samplerParameterfv(sampler:GLuint, pname:GLenum, param:RawPointer<GLfloat>):Void;

	@:native('glGetSamplerParameteriv')
	static function getSamplerParameteriv(sampler:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetSamplerParameterfv')
	static function getSamplerParameterfv(sampler:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glVertexAttribDivisor')
	static function vertexAttribDivisor(index:GLuint, divisor:GLuint):Void;

	@:native('glBindTransformFeedback')
	static function bindTransformFeedback(target:GLenum, id:GLuint):Void;

	@:native('glDeleteTransformFeedbacks')
	static function deleteTransformFeedbacks(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glGenTransformFeedbacks')
	static function genTransformFeedbacks(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glIsTransformFeedback')
	static function isTransformFeedback(id:GLuint):GLboolean;

	@:native('glPauseTransformFeedback')
	static function pauseTransformFeedback():Void;

	@:native('glResumeTransformFeedback')
	static function resumeTransformFeedback():Void;

	@:native('glGetProgramBinary')
	static function getProgramBinary(program:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, binaryFormat:RawPointer<GLenum>, binary:RawPointer<cpp.Void>):Void;

	@:native('glProgramBinary')
	static function programBinary(program:GLuint, binaryFormat:GLenum, binary:RawPointer<cpp.Void>, length:GLsizei):Void;

	@:native('glProgramParameteri')
	static function programParameteri(program:GLuint, pname:GLenum, value:GLint):Void;

	@:native('glInvalidateFramebuffer')
	static function invalidateFramebuffer(target:GLenum, numAttachments:GLsizei, attachments:RawPointer<GLenum>):Void;

	@:native('glInvalidateSubFramebuffer')
	static function invalidateSubFramebuffer(target:GLenum, numAttachments:GLsizei, attachments:RawPointer<GLenum>, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glTexStorage2D')
	static function texStorage2D(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glTexStorage3D')
	static function texStorage3D(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei):Void;

	@:native('glGetInternalformativ')
	static function getInternalformativ(target:GLenum, internalformat:GLenum, pname:GLenum, count:GLsizei, params:RawPointer<GLint>):Void;

	@:native('glDispatchCompute')
	static function dispatchCompute(num_groups_x:GLuint, num_groups_y:GLuint, num_groups_z:GLuint):Void;

	@:native('glDispatchComputeIndirect')
	static function dispatchComputeIndirect(indirect:GLintptr):Void;

	@:native('glDrawArraysIndirect')
	static function drawArraysIndirect(mode:GLenum, indirect:RawPointer<cpp.Void>):Void;

	@:native('glDrawElementsIndirect')
	static function drawElementsIndirect(mode:GLenum, type:GLenum, indirect:RawPointer<cpp.Void>):Void;

	@:native('glFramebufferParameteri')
	static function framebufferParameteri(target:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glGetFramebufferParameteriv')
	static function getFramebufferParameteriv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetProgramInterfaceiv')
	static function getProgramInterfaceiv(program:GLuint, programInterface:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetProgramResourceIndex')
	static function getProgramResourceIndex(program:GLuint, programInterface:GLenum, name:ConstGLcharStar):GLuint;

	@:native('glGetProgramResourceName')
	static function getProgramResourceName(program:GLuint, programInterface:GLenum, index:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, name:CastGLcharStar):Void;

	@:native('glGetProgramResourceiv')
	static function getProgramResourceiv(program:GLuint, programInterface:GLenum, index:GLuint, propCount:GLsizei, props:RawPointer<GLenum>, count:GLsizei, length:RawPointer<GLsizei>, params:RawPointer<GLint>):Void;

	@:native('glGetProgramResourceLocation')
	static function getProgramResourceLocation(program:GLuint, programInterface:GLenum, name:ConstGLcharStar):GLint;

	@:native('glUseProgramStages')
	static function useProgramStages(pipeline:GLuint, stages:GLbitfield, program:GLuint):Void;

	@:native('glActiveShaderProgram')
	static function activeShaderProgram(pipeline:GLuint, program:GLuint):Void;

	@:native('glCreateShaderProgramv')
	static function createShaderProgramv(type:GLenum, count:GLsizei, strings:RawPointer<ConstGLcharStar>):GLuint;

	@:native('glBindProgramPipeline')
	static function bindProgramPipeline(pipeline:GLuint):Void;

	@:native('glDeleteProgramPipelines')
	static function deleteProgramPipelines(n:GLsizei, pipelines:RawPointer<GLuint>):Void;

	@:native('glGenProgramPipelines')
	static function genProgramPipelines(n:GLsizei, pipelines:RawPointer<GLuint>):Void;

	@:native('glIsProgramPipeline')
	static function isProgramPipeline(pipeline:GLuint):GLboolean;

	@:native('glGetProgramPipelineiv')
	static function getProgramPipelineiv(pipeline:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glProgramUniform1i')
	static function programUniform1i(program:GLuint, location:GLint, v0:GLint):Void;

	@:native('glProgramUniform2i')
	static function programUniform2i(program:GLuint, location:GLint, v0:GLint, v1:GLint):Void;

	@:native('glProgramUniform3i')
	static function programUniform3i(program:GLuint, location:GLint, v0:GLint, v1:GLint, v2:GLint):Void;

	@:native('glProgramUniform4i')
	static function programUniform4i(program:GLuint, location:GLint, v0:GLint, v1:GLint, v2:GLint, v3:GLint):Void;

	@:native('glProgramUniform1ui')
	static function programUniform1ui(program:GLuint, location:GLint, v0:GLuint):Void;

	@:native('glProgramUniform2ui')
	static function programUniform2ui(program:GLuint, location:GLint, v0:GLuint, v1:GLuint):Void;

	@:native('glProgramUniform3ui')
	static function programUniform3ui(program:GLuint, location:GLint, v0:GLuint, v1:GLuint, v2:GLuint):Void;

	@:native('glProgramUniform4ui')
	static function programUniform4ui(program:GLuint, location:GLint, v0:GLuint, v1:GLuint, v2:GLuint, v3:GLuint):Void;

	@:native('glProgramUniform1f')
	static function programUniform1f(program:GLuint, location:GLint, v0:GLfloat):Void;

	@:native('glProgramUniform2f')
	static function programUniform2f(program:GLuint, location:GLint, v0:GLfloat, v1:GLfloat):Void;

	@:native('glProgramUniform3f')
	static function programUniform3f(program:GLuint, location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat):Void;

	@:native('glProgramUniform4f')
	static function programUniform4f(program:GLuint, location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat, v3:GLfloat):Void;

	@:native('glProgramUniform1iv')
	static function programUniform1iv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glProgramUniform2iv')
	static function programUniform2iv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glProgramUniform3iv')
	static function programUniform3iv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glProgramUniform4iv')
	static function programUniform4iv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glProgramUniform1uiv')
	static function programUniform1uiv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glProgramUniform2uiv')
	static function programUniform2uiv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glProgramUniform3uiv')
	static function programUniform3uiv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glProgramUniform4uiv')
	static function programUniform4uiv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glProgramUniform1fv')
	static function programUniform1fv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniform2fv')
	static function programUniform2fv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniform3fv')
	static function programUniform3fv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniform4fv')
	static function programUniform4fv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix2fv')
	static function programUniformMatrix2fv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix3fv')
	static function programUniformMatrix3fv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix4fv')
	static function programUniformMatrix4fv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix2x3fv')
	static function programUniformMatrix2x3fv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix3x2fv')
	static function programUniformMatrix3x2fv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix2x4fv')
	static function programUniformMatrix2x4fv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix4x2fv')
	static function programUniformMatrix4x2fv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix3x4fv')
	static function programUniformMatrix3x4fv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix4x3fv')
	static function programUniformMatrix4x3fv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glValidateProgramPipeline')
	static function validateProgramPipeline(pipeline:GLuint):Void;

	@:native('glGetProgramPipelineInfoLog')
	static function getProgramPipelineInfoLog(pipeline:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, infoLog:CastGLcharStar):Void;

	@:native('glBindImageTexture')
	static function bindImageTexture(unit:GLuint, texture:GLuint, level:GLint, layered:GLboolean, layer:GLint, access:GLenum, format:GLenum):Void;

	@:native('glGetBooleani_v')
	static function getBooleani_v(target:GLenum, index:GLuint, data:RawPointer<GLboolean>):Void;

	@:native('glMemoryBarrier')
	static function memoryBarrier(barriers:GLbitfield):Void;

	@:native('glMemoryBarrierByRegion')
	static function memoryBarrierByRegion(barriers:GLbitfield):Void;

	@:native('glTexStorage2DMultisample')
	static function texStorage2DMultisample(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, fixedsamplelocations:GLboolean):Void;

	@:native('glGetMultisamplefv')
	static function getMultisamplefv(pname:GLenum, index:GLuint, val:RawPointer<GLfloat>):Void;

	@:native('glSampleMaski')
	static function sampleMaski(maskNumber:GLuint, mask:GLbitfield):Void;

	@:native('glGetTexLevelParameteriv')
	static function getTexLevelParameteriv(target:GLenum, level:GLint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetTexLevelParameterfv')
	static function getTexLevelParameterfv(target:GLenum, level:GLint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glBindVertexBuffer')
	static function bindVertexBuffer(bindingindex:GLuint, buffer:GLuint, offset:GLintptr, stride:GLsizei):Void;

	@:native('glVertexAttribFormat')
	static function vertexAttribFormat(attribindex:GLuint, size:GLint, type:GLenum, normalized:GLboolean, relativeoffset:GLuint):Void;

	@:native('glVertexAttribIFormat')
	static function vertexAttribIFormat(attribindex:GLuint, size:GLint, type:GLenum, relativeoffset:GLuint):Void;

	@:native('glVertexAttribBinding')
	static function vertexAttribBinding(attribindex:GLuint, bindingindex:GLuint):Void;

	@:native('glVertexBindingDivisor')
	static function vertexBindingDivisor(bindingindex:GLuint, divisor:GLuint):Void;

	@:native('glBlendBarrier')
	static function blendBarrier():Void;

	@:native('glCopyImageSubData')
	static function copyImageSubData(srcName:GLuint, srcTarget:GLenum, srcLevel:GLint, srcX:GLint, srcY:GLint, srcZ:GLint, dstName:GLuint, dstTarget:GLenum, dstLevel:GLint, dstX:GLint, dstY:GLint, dstZ:GLint, srcWidth:GLsizei, srcHeight:GLsizei, srcDepth:GLsizei):Void;

	@:native('glDebugMessageControl')
	static function debugMessageControl(source:GLenum, type:GLenum, severity:GLenum, count:GLsizei, ids:RawPointer<GLuint>, enabled:GLboolean):Void;

	@:native('glDebugMessageInsert')
	static function debugMessageInsert(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, buf:ConstGLcharStar):Void;

	@:native('glDebugMessageCallback')
	static function debugMessageCallback(callback:GLDEBUGPROC, userParam:RawPointer<cpp.Void>):Void;

	@:native('glGetDebugMessageLog')
	static function getDebugMessageLog(count:GLuint, bufSize:GLsizei, sources:RawPointer<GLenum>, types:RawPointer<GLenum>, ids:RawPointer<GLuint>, severities:RawPointer<GLenum>, lengths:RawPointer<GLsizei>, messageLog:CastGLcharStar):GLuint;

	@:native('glPushDebugGroup')
	static function pushDebugGroup(source:GLenum, id:GLuint, length:GLsizei, message:ConstGLcharStar):Void;

	@:native('glPopDebugGroup')
	static function popDebugGroup():Void;

	@:native('glObjectLabel')
	static function objectLabel(identifier:GLenum, name:GLuint, length:GLsizei, label:ConstGLcharStar):Void;

	@:native('glGetObjectLabel')
	static function getObjectLabel(identifier:GLenum, name:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, label:CastGLcharStar):Void;

	@:native('glObjectPtrLabel')
	static function objectPtrLabel(ptr:RawPointer<cpp.Void>, length:GLsizei, label:ConstGLcharStar):Void;

	@:native('glGetObjectPtrLabel')
	static function getObjectPtrLabel(ptr:RawPointer<cpp.Void>, bufSize:GLsizei, length:RawPointer<GLsizei>, label:CastGLcharStar):Void;

	@:native('glGetPointerv')
	static function getPointerv(pname:GLenum, params:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glEnablei')
	static function enablei(target:GLenum, index:GLuint):Void;

	@:native('glDisablei')
	static function disablei(target:GLenum, index:GLuint):Void;

	@:native('glBlendEquationi')
	static function blendEquationi(buf:GLuint, mode:GLenum):Void;

	@:native('glBlendEquationSeparatei')
	static function blendEquationSeparatei(buf:GLuint, modeRGB:GLenum, modeAlpha:GLenum):Void;

	@:native('glBlendFunci')
	static function blendFunci(buf:GLuint, src:GLenum, dst:GLenum):Void;

	@:native('glBlendFuncSeparatei')
	static function blendFuncSeparatei(buf:GLuint, srcRGB:GLenum, dstRGB:GLenum, srcAlpha:GLenum, dstAlpha:GLenum):Void;

	@:native('glColorMaski')
	static function colorMaski(index:GLuint, r:GLboolean, g:GLboolean, b:GLboolean, a:GLboolean):Void;

	@:native('glIsEnabledi')
	static function isEnabledi(target:GLenum, index:GLuint):GLboolean;

	@:native('glDrawElementsBaseVertex')
	static function drawElementsBaseVertex(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, basevertex:GLint):Void;

	@:native('glDrawRangeElementsBaseVertex')
	static function drawRangeElementsBaseVertex(mode:GLenum, start:GLuint, end:GLuint, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, basevertex:GLint):Void;

	@:native('glDrawElementsInstancedBaseVertex')
	static function drawElementsInstancedBaseVertex(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, instancecount:GLsizei, basevertex:GLint):Void;

	@:native('glFramebufferTexture')
	static function framebufferTexture(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint):Void;

	@:native('glPrimitiveBoundingBox')
	static function primitiveBoundingBox(minX:GLfloat, minY:GLfloat, minZ:GLfloat, minW:GLfloat, maxX:GLfloat, maxY:GLfloat, maxZ:GLfloat, maxW:GLfloat):Void;

	@:native('glGetGraphicsResetStatus')
	static function getGraphicsResetStatus():GLenum;

	@:native('glReadnPixels')
	static function readnPixels(x:GLint, y:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, bufSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glGetnUniformfv')
	static function getnUniformfv(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLfloat>):Void;

	@:native('glGetnUniformiv')
	static function getnUniformiv(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLint>):Void;

	@:native('glGetnUniformuiv')
	static function getnUniformuiv(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLuint>):Void;

	@:native('glMinSampleShading')
	static function minSampleShading(value:GLfloat):Void;

	@:native('glPatchParameteri')
	static function patchParameteri(pname:GLenum, value:GLint):Void;

	@:native('glTexParameterIiv')
	static function texParameterIiv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glTexParameterIuiv')
	static function texParameterIuiv(target:GLenum, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glGetTexParameterIiv')
	static function getTexParameterIiv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetTexParameterIuiv')
	static function getTexParameterIuiv(target:GLenum, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glSamplerParameterIiv')
	static function samplerParameterIiv(sampler:GLuint, pname:GLenum, param:RawPointer<GLint>):Void;

	@:native('glSamplerParameterIuiv')
	static function samplerParameterIuiv(sampler:GLuint, pname:GLenum, param:RawPointer<GLuint>):Void;

	@:native('glGetSamplerParameterIiv')
	static function getSamplerParameterIiv(sampler:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetSamplerParameterIuiv')
	static function getSamplerParameterIuiv(sampler:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glTexBuffer')
	static function texBuffer(target:GLenum, internalformat:GLenum, buffer:GLuint):Void;

	@:native('glTexBufferRange')
	static function texBufferRange(target:GLenum, internalformat:GLenum, buffer:GLuint, offset:GLintptr, size:GLsizeiptr):Void;

	@:native('glTexStorage3DMultisample')
	static function texStorage3DMultisample(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, fixedsamplelocations:GLboolean):Void;

	@:native('glRenderbufferStorageMultisampleAdvancedAMD')
	static function renderbufferStorageMultisampleAdvancedAMD(target:GLenum, samples:GLsizei, storageSamples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glNamedRenderbufferStorageMultisampleAdvancedAMD')
	static function namedRenderbufferStorageMultisampleAdvancedAMD(renderbuffer:GLuint, samples:GLsizei, storageSamples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glGetPerfMonitorGroupsAMD')
	static function getPerfMonitorGroupsAMD(numGroups:RawPointer<GLint>, groupsSize:GLsizei, groups:RawPointer<GLuint>):Void;

	@:native('glGetPerfMonitorCountersAMD')
	static function getPerfMonitorCountersAMD(group:GLuint, numCounters:RawPointer<GLint>, maxActiveCounters:RawPointer<GLint>, counterSize:GLsizei, counters:RawPointer<GLuint>):Void;

	@:native('glGetPerfMonitorGroupStringAMD')
	static function getPerfMonitorGroupStringAMD(group:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, groupString:CastGLcharStar):Void;

	@:native('glGetPerfMonitorCounterStringAMD')
	static function getPerfMonitorCounterStringAMD(group:GLuint, counter:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, counterString:CastGLcharStar):Void;

	@:native('glGetPerfMonitorCounterInfoAMD')
	static function getPerfMonitorCounterInfoAMD(group:GLuint, counter:GLuint, pname:GLenum, data:RawPointer<cpp.Void>):Void;

	@:native('glGenPerfMonitorsAMD')
	static function genPerfMonitorsAMD(n:GLsizei, monitors:RawPointer<GLuint>):Void;

	@:native('glDeletePerfMonitorsAMD')
	static function deletePerfMonitorsAMD(n:GLsizei, monitors:RawPointer<GLuint>):Void;

	@:native('glSelectPerfMonitorCountersAMD')
	static function selectPerfMonitorCountersAMD(monitor:GLuint, enable:GLboolean, group:GLuint, numCounters:GLint, counterList:RawPointer<GLuint>):Void;

	@:native('glBeginPerfMonitorAMD')
	static function beginPerfMonitorAMD(monitor:GLuint):Void;

	@:native('glEndPerfMonitorAMD')
	static function endPerfMonitorAMD(monitor:GLuint):Void;

	@:native('glGetPerfMonitorCounterDataAMD')
	static function getPerfMonitorCounterDataAMD(monitor:GLuint, pname:GLenum, dataSize:GLsizei, data:RawPointer<GLuint>, bytesWritten:RawPointer<GLint>):Void;

	@:native('glBlitFramebufferANGLE')
	static function blitFramebufferANGLE(srcX0:GLint, srcY0:GLint, srcX1:GLint, srcY1:GLint, dstX0:GLint, dstY0:GLint, dstX1:GLint, dstY1:GLint, mask:GLbitfield, filter:GLenum):Void;

	@:native('glRenderbufferStorageMultisampleANGLE')
	static function renderbufferStorageMultisampleANGLE(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glDrawArraysInstancedANGLE')
	static function drawArraysInstancedANGLE(mode:GLenum, first:GLint, count:GLsizei, primcount:GLsizei):Void;

	@:native('glDrawElementsInstancedANGLE')
	static function drawElementsInstancedANGLE(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, primcount:GLsizei):Void;

	@:native('glVertexAttribDivisorANGLE')
	static function vertexAttribDivisorANGLE(index:GLuint, divisor:GLuint):Void;

	@:native('glGetTranslatedShaderSourceANGLE')
	static function getTranslatedShaderSourceANGLE(shader:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, source:CastGLcharStar):Void;

	@:native('glCopyTextureLevelsAPPLE')
	static function copyTextureLevelsAPPLE(destinationTexture:GLuint, sourceTexture:GLuint, sourceBaseLevel:GLint, sourceLevelCount:GLsizei):Void;

	@:native('glRenderbufferStorageMultisampleAPPLE')
	static function renderbufferStorageMultisampleAPPLE(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glResolveMultisampleFramebufferAPPLE')
	static function resolveMultisampleFramebufferAPPLE():Void;

	@:native('glFenceSyncAPPLE')
	static function fenceSyncAPPLE(condition:GLenum, flags:GLbitfield):GLsync;

	@:native('glIsSyncAPPLE')
	static function isSyncAPPLE(sync:GLsync):GLboolean;

	@:native('glDeleteSyncAPPLE')
	static function deleteSyncAPPLE(sync:GLsync):Void;

	@:native('glClientWaitSyncAPPLE')
	static function clientWaitSyncAPPLE(sync:GLsync, flags:GLbitfield, timeout:GLuint64):GLenum;

	@:native('glWaitSyncAPPLE')
	static function waitSyncAPPLE(sync:GLsync, flags:GLbitfield, timeout:GLuint64):Void;

	@:native('glGetInteger64vAPPLE')
	static function getInteger64vAPPLE(pname:GLenum, params:RawPointer<GLint64>):Void;

	@:native('glGetSyncivAPPLE')
	static function getSyncivAPPLE(sync:GLsync, pname:GLenum, count:GLsizei, length:RawPointer<GLsizei>, values:RawPointer<GLint>):Void;

	@:native('glMaxActiveShaderCoresARM')
	static function maxActiveShaderCoresARM(count:GLuint):Void;

	@:native('glEGLImageTargetTexStorageEXT')
	static function eGLImageTargetTexStorageEXT(target:GLenum, image:GLeglImageOES, attrib_list:RawPointer<GLint>):Void;

	@:native('glEGLImageTargetTextureStorageEXT')
	static function eGLImageTargetTextureStorageEXT(texture:GLuint, image:GLeglImageOES, attrib_list:RawPointer<GLint>):Void;

	@:native('glDrawArraysInstancedBaseInstanceEXT')
	static function drawArraysInstancedBaseInstanceEXT(mode:GLenum, first:GLint, count:GLsizei, instancecount:GLsizei, baseinstance:GLuint):Void;

	@:native('glDrawElementsInstancedBaseInstanceEXT')
	static function drawElementsInstancedBaseInstanceEXT(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, instancecount:GLsizei, baseinstance:GLuint):Void;

	@:native('glDrawElementsInstancedBaseVertexBaseInstanceEXT')
	static function drawElementsInstancedBaseVertexBaseInstanceEXT(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, instancecount:GLsizei, basevertex:GLint, baseinstance:GLuint):Void;

	@:native('glBindFragDataLocationIndexedEXT')
	static function bindFragDataLocationIndexedEXT(program:GLuint, colorNumber:GLuint, index:GLuint, name:ConstGLcharStar):Void;

	@:native('glBindFragDataLocationEXT')
	static function bindFragDataLocationEXT(program:GLuint, color:GLuint, name:ConstGLcharStar):Void;

	@:native('glGetProgramResourceLocationIndexEXT')
	static function getProgramResourceLocationIndexEXT(program:GLuint, programInterface:GLenum, name:ConstGLcharStar):GLint;

	@:native('glGetFragDataIndexEXT')
	static function getFragDataIndexEXT(program:GLuint, name:ConstGLcharStar):GLint;

	@:native('glBlendEquationEXT')
	static function blendEquationEXT(mode:GLenum):Void;

	@:native('glBufferStorageEXT')
	static function bufferStorageEXT(target:GLenum, size:GLsizeiptr, data:RawPointer<cpp.Void>, flags:GLbitfield):Void;

	@:native('glClearTexImageEXT')
	static function clearTexImageEXT(texture:GLuint, level:GLint, format:GLenum, type:GLenum, data:RawPointer<cpp.Void>):Void;

	@:native('glClearTexSubImageEXT')
	static function clearTexSubImageEXT(texture:GLuint, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, type:GLenum, data:RawPointer<cpp.Void>):Void;

	@:native('glClipControlEXT')
	static function clipControlEXT(origin:GLenum, depth:GLenum):Void;

	@:native('glCopyImageSubDataEXT')
	static function copyImageSubDataEXT(srcName:GLuint, srcTarget:GLenum, srcLevel:GLint, srcX:GLint, srcY:GLint, srcZ:GLint, dstName:GLuint, dstTarget:GLenum, dstLevel:GLint, dstX:GLint, dstY:GLint, dstZ:GLint, srcWidth:GLsizei, srcHeight:GLsizei, srcDepth:GLsizei):Void;

	@:native('glLabelObjectEXT')
	static function labelObjectEXT(type:GLenum, object:GLuint, length:GLsizei, label:ConstGLcharStar):Void;

	@:native('glGetObjectLabelEXT')
	static function getObjectLabelEXT(type:GLenum, object:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, label:CastGLcharStar):Void;

	@:native('glInsertEventMarkerEXT')
	static function insertEventMarkerEXT(length:GLsizei, marker:ConstGLcharStar):Void;

	@:native('glPushGroupMarkerEXT')
	static function pushGroupMarkerEXT(length:GLsizei, marker:ConstGLcharStar):Void;

	@:native('glPopGroupMarkerEXT')
	static function popGroupMarkerEXT():Void;

	@:native('glDiscardFramebufferEXT')
	static function discardFramebufferEXT(target:GLenum, numAttachments:GLsizei, attachments:RawPointer<GLenum>):Void;

	@:native('glGenQueriesEXT')
	static function genQueriesEXT(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glDeleteQueriesEXT')
	static function deleteQueriesEXT(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glIsQueryEXT')
	static function isQueryEXT(id:GLuint):GLboolean;

	@:native('glBeginQueryEXT')
	static function beginQueryEXT(target:GLenum, id:GLuint):Void;

	@:native('glEndQueryEXT')
	static function endQueryEXT(target:GLenum):Void;

	@:native('glQueryCounterEXT')
	static function queryCounterEXT(id:GLuint, target:GLenum):Void;

	@:native('glGetQueryivEXT')
	static function getQueryivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetQueryObjectivEXT')
	static function getQueryObjectivEXT(id:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetQueryObjectuivEXT')
	static function getQueryObjectuivEXT(id:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glGetQueryObjecti64vEXT')
	static function getQueryObjecti64vEXT(id:GLuint, pname:GLenum, params:RawPointer<GLint64>):Void;

	@:native('glGetQueryObjectui64vEXT')
	static function getQueryObjectui64vEXT(id:GLuint, pname:GLenum, params:RawPointer<GLuint64>):Void;

	@:native('glGetInteger64vEXT')
	static function getInteger64vEXT(pname:GLenum, data:RawPointer<GLint64>):Void;

	@:native('glDrawBuffersEXT')
	static function drawBuffersEXT(n:GLsizei, bufs:RawPointer<GLenum>):Void;

	@:native('glEnableiEXT')
	static function enableiEXT(target:GLenum, index:GLuint):Void;

	@:native('glDisableiEXT')
	static function disableiEXT(target:GLenum, index:GLuint):Void;

	@:native('glBlendEquationiEXT')
	static function blendEquationiEXT(buf:GLuint, mode:GLenum):Void;

	@:native('glBlendEquationSeparateiEXT')
	static function blendEquationSeparateiEXT(buf:GLuint, modeRGB:GLenum, modeAlpha:GLenum):Void;

	@:native('glBlendFunciEXT')
	static function blendFunciEXT(buf:GLuint, src:GLenum, dst:GLenum):Void;

	@:native('glBlendFuncSeparateiEXT')
	static function blendFuncSeparateiEXT(buf:GLuint, srcRGB:GLenum, dstRGB:GLenum, srcAlpha:GLenum, dstAlpha:GLenum):Void;

	@:native('glColorMaskiEXT')
	static function colorMaskiEXT(index:GLuint, r:GLboolean, g:GLboolean, b:GLboolean, a:GLboolean):Void;

	@:native('glIsEnablediEXT')
	static function isEnablediEXT(target:GLenum, index:GLuint):GLboolean;

	@:native('glDrawElementsBaseVertexEXT')
	static function drawElementsBaseVertexEXT(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, basevertex:GLint):Void;

	@:native('glDrawRangeElementsBaseVertexEXT')
	static function drawRangeElementsBaseVertexEXT(mode:GLenum, start:GLuint, end:GLuint, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, basevertex:GLint):Void;

	@:native('glDrawElementsInstancedBaseVertexEXT')
	static function drawElementsInstancedBaseVertexEXT(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, instancecount:GLsizei, basevertex:GLint):Void;

	@:native('glMultiDrawElementsBaseVertexEXT')
	static function multiDrawElementsBaseVertexEXT(mode:GLenum, count:RawPointer<GLsizei>, type:GLenum, indices:RawPointer<RawConstPointer<cpp.Void>>, drawcount:GLsizei, basevertex:RawPointer<GLint>):Void;

	@:native('glDrawArraysInstancedEXT')
	static function drawArraysInstancedEXT(mode:GLenum, start:GLint, count:GLsizei, primcount:GLsizei):Void;

	@:native('glDrawElementsInstancedEXT')
	static function drawElementsInstancedEXT(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, primcount:GLsizei):Void;

	@:native('glDrawTransformFeedbackEXT')
	static function drawTransformFeedbackEXT(mode:GLenum, id:GLuint):Void;

	@:native('glDrawTransformFeedbackInstancedEXT')
	static function drawTransformFeedbackInstancedEXT(mode:GLenum, id:GLuint, instancecount:GLsizei):Void;

	@:native('glBufferStorageExternalEXT')
	static function bufferStorageExternalEXT(target:GLenum, offset:GLintptr, size:GLsizeiptr, clientBuffer:GLeglClientBufferEXT, flags:GLbitfield):Void;

	@:native('glNamedBufferStorageExternalEXT')
	static function namedBufferStorageExternalEXT(buffer:GLuint, offset:GLintptr, size:GLsizeiptr, clientBuffer:GLeglClientBufferEXT, flags:GLbitfield):Void;

	@:native('glGetFragmentShadingRatesEXT')
	static function getFragmentShadingRatesEXT(samples:GLsizei, maxCount:GLsizei, count:RawPointer<GLsizei>, shadingRates:RawPointer<GLenum>):Void;

	@:native('glShadingRateEXT')
	static function shadingRateEXT(rate:GLenum):Void;

	@:native('glShadingRateCombinerOpsEXT')
	static function shadingRateCombinerOpsEXT(combinerOp0:GLenum, combinerOp1:GLenum):Void;

	@:native('glFramebufferShadingRateEXT')
	static function framebufferShadingRateEXT(target:GLenum, attachment:GLenum, texture:GLuint, baseLayer:GLint, numLayers:GLsizei, texelWidth:GLsizei, texelHeight:GLsizei):Void;

	@:native('glBlitFramebufferLayersEXT')
	static function blitFramebufferLayersEXT(srcX0:GLint, srcY0:GLint, srcX1:GLint, srcY1:GLint, dstX0:GLint, dstY0:GLint, dstX1:GLint, dstY1:GLint, mask:GLbitfield, filter:GLenum):Void;

	@:native('glBlitFramebufferLayerEXT')
	static function blitFramebufferLayerEXT(srcX0:GLint, srcY0:GLint, srcX1:GLint, srcY1:GLint, srcLayer:GLint, dstX0:GLint, dstY0:GLint, dstX1:GLint, dstY1:GLint, dstLayer:GLint, mask:GLbitfield, filter:GLenum):Void;

	@:native('glFramebufferTextureEXT')
	static function framebufferTextureEXT(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint):Void;

	@:native('glVertexAttribDivisorEXT')
	static function vertexAttribDivisorEXT(index:GLuint, divisor:GLuint):Void;

	@:native('glMapBufferRangeEXT')
	static function mapBufferRangeEXT(target:GLenum, offset:GLintptr, length:GLsizeiptr, access:GLbitfield):RawPointer<cpp.Void>;

	@:native('glFlushMappedBufferRangeEXT')
	static function flushMappedBufferRangeEXT(target:GLenum, offset:GLintptr, length:GLsizeiptr):Void;

	@:native('glGetUnsignedBytevEXT')
	static function getUnsignedBytevEXT(pname:GLenum, data:RawPointer<GLubyte>):Void;

	@:native('glGetUnsignedBytei_vEXT')
	static function getUnsignedBytei_vEXT(target:GLenum, index:GLuint, data:RawPointer<GLubyte>):Void;

	@:native('glDeleteMemoryObjectsEXT')
	static function deleteMemoryObjectsEXT(n:GLsizei, memoryObjects:RawPointer<GLuint>):Void;

	@:native('glIsMemoryObjectEXT')
	static function isMemoryObjectEXT(memoryObject:GLuint):GLboolean;

	@:native('glCreateMemoryObjectsEXT')
	static function createMemoryObjectsEXT(n:GLsizei, memoryObjects:RawPointer<GLuint>):Void;

	@:native('glMemoryObjectParameterivEXT')
	static function memoryObjectParameterivEXT(memoryObject:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetMemoryObjectParameterivEXT')
	static function getMemoryObjectParameterivEXT(memoryObject:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glTexStorageMem2DEXT')
	static function texStorageMem2DEXT(target:GLenum, levels:GLsizei, internalFormat:GLenum, width:GLsizei, height:GLsizei, memory:GLuint, offset:GLuint64):Void;

	@:native('glTexStorageMem2DMultisampleEXT')
	static function texStorageMem2DMultisampleEXT(target:GLenum, samples:GLsizei, internalFormat:GLenum, width:GLsizei, height:GLsizei, fixedSampleLocations:GLboolean, memory:GLuint, offset:GLuint64):Void;

	@:native('glTexStorageMem3DEXT')
	static function texStorageMem3DEXT(target:GLenum, levels:GLsizei, internalFormat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, memory:GLuint, offset:GLuint64):Void;

	@:native('glTexStorageMem3DMultisampleEXT')
	static function texStorageMem3DMultisampleEXT(target:GLenum, samples:GLsizei, internalFormat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, fixedSampleLocations:GLboolean, memory:GLuint, offset:GLuint64):Void;

	@:native('glBufferStorageMemEXT')
	static function bufferStorageMemEXT(target:GLenum, size:GLsizeiptr, memory:GLuint, offset:GLuint64):Void;

	@:native('glTextureStorageMem2DEXT')
	static function textureStorageMem2DEXT(texture:GLuint, levels:GLsizei, internalFormat:GLenum, width:GLsizei, height:GLsizei, memory:GLuint, offset:GLuint64):Void;

	@:native('glTextureStorageMem2DMultisampleEXT')
	static function textureStorageMem2DMultisampleEXT(texture:GLuint, samples:GLsizei, internalFormat:GLenum, width:GLsizei, height:GLsizei, fixedSampleLocations:GLboolean, memory:GLuint, offset:GLuint64):Void;

	@:native('glTextureStorageMem3DEXT')
	static function textureStorageMem3DEXT(texture:GLuint, levels:GLsizei, internalFormat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, memory:GLuint, offset:GLuint64):Void;

	@:native('glTextureStorageMem3DMultisampleEXT')
	static function textureStorageMem3DMultisampleEXT(texture:GLuint, samples:GLsizei, internalFormat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, fixedSampleLocations:GLboolean, memory:GLuint, offset:GLuint64):Void;

	@:native('glNamedBufferStorageMemEXT')
	static function namedBufferStorageMemEXT(buffer:GLuint, size:GLsizeiptr, memory:GLuint, offset:GLuint64):Void;

	@:native('glTexStorageMem1DEXT')
	static function texStorageMem1DEXT(target:GLenum, levels:GLsizei, internalFormat:GLenum, width:GLsizei, memory:GLuint, offset:GLuint64):Void;

	@:native('glTextureStorageMem1DEXT')
	static function textureStorageMem1DEXT(texture:GLuint, levels:GLsizei, internalFormat:GLenum, width:GLsizei, memory:GLuint, offset:GLuint64):Void;

	@:native('glImportMemoryFdEXT')
	static function importMemoryFdEXT(memory:GLuint, size:GLuint64, handleType:GLenum, fd:GLint):Void;

	@:native('glImportMemoryWin32HandleEXT')
	static function importMemoryWin32HandleEXT(memory:GLuint, size:GLuint64, handleType:GLenum, handle:RawPointer<cpp.Void>):Void;

	@:native('glImportMemoryWin32NameEXT')
	static function importMemoryWin32NameEXT(memory:GLuint, size:GLuint64, handleType:GLenum, name:RawPointer<cpp.Void>):Void;

	@:native('glDrawMeshTasksEXT')
	static function drawMeshTasksEXT(num_groups_x:GLuint, num_groups_y:GLuint, num_groups_z:GLuint):Void;

	@:native('glDrawMeshTasksIndirectEXT')
	static function drawMeshTasksIndirectEXT(indirect:GLintptr):Void;

	@:native('glMultiDrawMeshTasksIndirectEXT')
	static function multiDrawMeshTasksIndirectEXT(indirect:GLintptr, drawcount:GLsizei, stride:GLsizei):Void;

	@:native('glMultiDrawMeshTasksIndirectCountEXT')
	static function multiDrawMeshTasksIndirectCountEXT(indirect:GLintptr, drawcount:GLintptr, maxdrawcount:GLsizei, stride:GLsizei):Void;

	@:native('glMultiDrawArraysEXT')
	static function multiDrawArraysEXT(mode:GLenum, first:RawPointer<GLint>, count:RawPointer<GLsizei>, primcount:GLsizei):Void;

	@:native('glMultiDrawElementsEXT')
	static function multiDrawElementsEXT(mode:GLenum, count:RawPointer<GLsizei>, type:GLenum, indices:RawPointer<RawConstPointer<cpp.Void>>, primcount:GLsizei):Void;

	@:native('glMultiDrawArraysIndirectEXT')
	static function multiDrawArraysIndirectEXT(mode:GLenum, indirect:RawPointer<cpp.Void>, drawcount:GLsizei, stride:GLsizei):Void;

	@:native('glMultiDrawElementsIndirectEXT')
	static function multiDrawElementsIndirectEXT(mode:GLenum, type:GLenum, indirect:RawPointer<cpp.Void>, drawcount:GLsizei, stride:GLsizei):Void;

	@:native('glRenderbufferStorageMultisampleEXT')
	static function renderbufferStorageMultisampleEXT(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glFramebufferTexture2DMultisampleEXT')
	static function framebufferTexture2DMultisampleEXT(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint, samples:GLsizei):Void;

	@:native('glReadBufferIndexedEXT')
	static function readBufferIndexedEXT(src:GLenum, index:GLint):Void;

	@:native('glDrawBuffersIndexedEXT')
	static function drawBuffersIndexedEXT(n:GLint, location:RawPointer<GLenum>, indices:RawPointer<GLint>):Void;

	@:native('glGetIntegeri_vEXT')
	static function getIntegeri_vEXT(target:GLenum, index:GLuint, data:RawPointer<GLint>):Void;

	@:native('glPolygonOffsetClampEXT')
	static function polygonOffsetClampEXT(factor:GLfloat, units:GLfloat, clamp:GLfloat):Void;

	@:native('glPrimitiveBoundingBoxEXT')
	static function primitiveBoundingBoxEXT(minX:GLfloat, minY:GLfloat, minZ:GLfloat, minW:GLfloat, maxX:GLfloat, maxY:GLfloat, maxZ:GLfloat, maxW:GLfloat):Void;

	@:native('glRasterSamplesEXT')
	static function rasterSamplesEXT(samples:GLuint, fixedsamplelocations:GLboolean):Void;

	@:native('glGetGraphicsResetStatusEXT')
	static function getGraphicsResetStatusEXT():GLenum;

	@:native('glReadnPixelsEXT')
	static function readnPixelsEXT(x:GLint, y:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, bufSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glGetnUniformfvEXT')
	static function getnUniformfvEXT(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLfloat>):Void;

	@:native('glGetnUniformivEXT')
	static function getnUniformivEXT(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLint>):Void;

	@:native('glGenSemaphoresEXT')
	static function genSemaphoresEXT(n:GLsizei, semaphores:RawPointer<GLuint>):Void;

	@:native('glDeleteSemaphoresEXT')
	static function deleteSemaphoresEXT(n:GLsizei, semaphores:RawPointer<GLuint>):Void;

	@:native('glIsSemaphoreEXT')
	static function isSemaphoreEXT(semaphore:GLuint):GLboolean;

	@:native('glSemaphoreParameterui64vEXT')
	static function semaphoreParameterui64vEXT(semaphore:GLuint, pname:GLenum, params:RawPointer<GLuint64>):Void;

	@:native('glGetSemaphoreParameterui64vEXT')
	static function getSemaphoreParameterui64vEXT(semaphore:GLuint, pname:GLenum, params:RawPointer<GLuint64>):Void;

	@:native('glWaitSemaphoreEXT')
	static function waitSemaphoreEXT(semaphore:GLuint, numBufferBarriers:GLuint, buffers:RawPointer<GLuint>, numTextureBarriers:GLuint, textures:RawPointer<GLuint>, srcLayouts:RawPointer<GLenum>):Void;

	@:native('glSignalSemaphoreEXT')
	static function signalSemaphoreEXT(semaphore:GLuint, numBufferBarriers:GLuint, buffers:RawPointer<GLuint>, numTextureBarriers:GLuint, textures:RawPointer<GLuint>, dstLayouts:RawPointer<GLenum>):Void;

	@:native('glImportSemaphoreFdEXT')
	static function importSemaphoreFdEXT(semaphore:GLuint, handleType:GLenum, fd:GLint):Void;

	@:native('glImportSemaphoreWin32HandleEXT')
	static function importSemaphoreWin32HandleEXT(semaphore:GLuint, handleType:GLenum, handle:RawPointer<cpp.Void>):Void;

	@:native('glImportSemaphoreWin32NameEXT')
	static function importSemaphoreWin32NameEXT(semaphore:GLuint, handleType:GLenum, name:RawPointer<cpp.Void>):Void;

	@:native('glUseShaderProgramEXT')
	static function useShaderProgramEXT(type:GLenum, program:GLuint):Void;

	@:native('glActiveProgramEXT')
	static function activeProgramEXT(program:GLuint):Void;

	@:native('glCreateShaderProgramEXT')
	static function createShaderProgramEXT(type:GLenum, string:ConstGLcharStar):GLuint;

	@:native('glActiveShaderProgramEXT')
	static function activeShaderProgramEXT(pipeline:GLuint, program:GLuint):Void;

	@:native('glBindProgramPipelineEXT')
	static function bindProgramPipelineEXT(pipeline:GLuint):Void;

	@:native('glCreateShaderProgramvEXT')
	static function createShaderProgramvEXT(type:GLenum, count:GLsizei, strings:RawPointer<ConstGLcharStar>):GLuint;

	@:native('glDeleteProgramPipelinesEXT')
	static function deleteProgramPipelinesEXT(n:GLsizei, pipelines:RawPointer<GLuint>):Void;

	@:native('glGenProgramPipelinesEXT')
	static function genProgramPipelinesEXT(n:GLsizei, pipelines:RawPointer<GLuint>):Void;

	@:native('glGetProgramPipelineInfoLogEXT')
	static function getProgramPipelineInfoLogEXT(pipeline:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, infoLog:CastGLcharStar):Void;

	@:native('glGetProgramPipelineivEXT')
	static function getProgramPipelineivEXT(pipeline:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glIsProgramPipelineEXT')
	static function isProgramPipelineEXT(pipeline:GLuint):GLboolean;

	@:native('glProgramParameteriEXT')
	static function programParameteriEXT(program:GLuint, pname:GLenum, value:GLint):Void;

	@:native('glProgramUniform1fEXT')
	static function programUniform1fEXT(program:GLuint, location:GLint, v0:GLfloat):Void;

	@:native('glProgramUniform1fvEXT')
	static function programUniform1fvEXT(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniform1iEXT')
	static function programUniform1iEXT(program:GLuint, location:GLint, v0:GLint):Void;

	@:native('glProgramUniform1ivEXT')
	static function programUniform1ivEXT(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glProgramUniform2fEXT')
	static function programUniform2fEXT(program:GLuint, location:GLint, v0:GLfloat, v1:GLfloat):Void;

	@:native('glProgramUniform2fvEXT')
	static function programUniform2fvEXT(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniform2iEXT')
	static function programUniform2iEXT(program:GLuint, location:GLint, v0:GLint, v1:GLint):Void;

	@:native('glProgramUniform2ivEXT')
	static function programUniform2ivEXT(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glProgramUniform3fEXT')
	static function programUniform3fEXT(program:GLuint, location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat):Void;

	@:native('glProgramUniform3fvEXT')
	static function programUniform3fvEXT(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniform3iEXT')
	static function programUniform3iEXT(program:GLuint, location:GLint, v0:GLint, v1:GLint, v2:GLint):Void;

	@:native('glProgramUniform3ivEXT')
	static function programUniform3ivEXT(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glProgramUniform4fEXT')
	static function programUniform4fEXT(program:GLuint, location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat, v3:GLfloat):Void;

	@:native('glProgramUniform4fvEXT')
	static function programUniform4fvEXT(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniform4iEXT')
	static function programUniform4iEXT(program:GLuint, location:GLint, v0:GLint, v1:GLint, v2:GLint, v3:GLint):Void;

	@:native('glProgramUniform4ivEXT')
	static function programUniform4ivEXT(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glProgramUniformMatrix2fvEXT')
	static function programUniformMatrix2fvEXT(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix3fvEXT')
	static function programUniformMatrix3fvEXT(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix4fvEXT')
	static function programUniformMatrix4fvEXT(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUseProgramStagesEXT')
	static function useProgramStagesEXT(pipeline:GLuint, stages:GLbitfield, program:GLuint):Void;

	@:native('glValidateProgramPipelineEXT')
	static function validateProgramPipelineEXT(pipeline:GLuint):Void;

	@:native('glProgramUniform1uiEXT')
	static function programUniform1uiEXT(program:GLuint, location:GLint, v0:GLuint):Void;

	@:native('glProgramUniform2uiEXT')
	static function programUniform2uiEXT(program:GLuint, location:GLint, v0:GLuint, v1:GLuint):Void;

	@:native('glProgramUniform3uiEXT')
	static function programUniform3uiEXT(program:GLuint, location:GLint, v0:GLuint, v1:GLuint, v2:GLuint):Void;

	@:native('glProgramUniform4uiEXT')
	static function programUniform4uiEXT(program:GLuint, location:GLint, v0:GLuint, v1:GLuint, v2:GLuint, v3:GLuint):Void;

	@:native('glProgramUniform1uivEXT')
	static function programUniform1uivEXT(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glProgramUniform2uivEXT')
	static function programUniform2uivEXT(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glProgramUniform3uivEXT')
	static function programUniform3uivEXT(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glProgramUniform4uivEXT')
	static function programUniform4uivEXT(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glProgramUniformMatrix2x3fvEXT')
	static function programUniformMatrix2x3fvEXT(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix3x2fvEXT')
	static function programUniformMatrix3x2fvEXT(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix2x4fvEXT')
	static function programUniformMatrix2x4fvEXT(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix4x2fvEXT')
	static function programUniformMatrix4x2fvEXT(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix3x4fvEXT')
	static function programUniformMatrix3x4fvEXT(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix4x3fvEXT')
	static function programUniformMatrix4x3fvEXT(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glFramebufferFetchBarrierEXT')
	static function framebufferFetchBarrierEXT():Void;

	@:native('glFramebufferPixelLocalStorageSizeEXT')
	static function framebufferPixelLocalStorageSizeEXT(target:GLuint, size:GLsizei):Void;

	@:native('glGetFramebufferPixelLocalStorageSizeEXT')
	static function getFramebufferPixelLocalStorageSizeEXT(target:GLuint):GLsizei;

	@:native('glClearPixelLocalStorageuiEXT')
	static function clearPixelLocalStorageuiEXT(offset:GLsizei, n:GLsizei, values:RawPointer<GLuint>):Void;

	@:native('glTexPageCommitmentEXT')
	static function texPageCommitmentEXT(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, commit:GLboolean):Void;

	@:native('glPatchParameteriEXT')
	static function patchParameteriEXT(pname:GLenum, value:GLint):Void;

	@:native('glTexParameterIivEXT')
	static function texParameterIivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glTexParameterIuivEXT')
	static function texParameterIuivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glGetTexParameterIivEXT')
	static function getTexParameterIivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetTexParameterIuivEXT')
	static function getTexParameterIuivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glSamplerParameterIivEXT')
	static function samplerParameterIivEXT(sampler:GLuint, pname:GLenum, param:RawPointer<GLint>):Void;

	@:native('glSamplerParameterIuivEXT')
	static function samplerParameterIuivEXT(sampler:GLuint, pname:GLenum, param:RawPointer<GLuint>):Void;

	@:native('glGetSamplerParameterIivEXT')
	static function getSamplerParameterIivEXT(sampler:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetSamplerParameterIuivEXT')
	static function getSamplerParameterIuivEXT(sampler:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glTexBufferEXT')
	static function texBufferEXT(target:GLenum, internalformat:GLenum, buffer:GLuint):Void;

	@:native('glTexBufferRangeEXT')
	static function texBufferRangeEXT(target:GLenum, internalformat:GLenum, buffer:GLuint, offset:GLintptr, size:GLsizeiptr):Void;

	@:native('glTexStorage1DEXT')
	static function texStorage1DEXT(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei):Void;

	@:native('glTexStorage2DEXT')
	static function texStorage2DEXT(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glTexStorage3DEXT')
	static function texStorage3DEXT(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei):Void;

	@:native('glTextureStorage1DEXT')
	static function textureStorage1DEXT(texture:GLuint, target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei):Void;

	@:native('glTextureStorage2DEXT')
	static function textureStorage2DEXT(texture:GLuint, target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glTextureStorage3DEXT')
	static function textureStorage3DEXT(texture:GLuint, target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei):Void;

	@:native('glTexStorageAttribs2DEXT')
	static function texStorageAttribs2DEXT(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, attrib_list:RawPointer<GLint>):Void;

	@:native('glTexStorageAttribs3DEXT')
	static function texStorageAttribs3DEXT(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, attrib_list:RawPointer<GLint>):Void;

	@:native('glTextureViewEXT')
	static function textureViewEXT(texture:GLuint, target:GLenum, origtexture:GLuint, internalformat:GLenum, minlevel:GLuint, numlevels:GLuint, minlayer:GLuint, numlayers:GLuint):Void;

	@:native('glCreateSemaphoresNV')
	static function createSemaphoresNV(n:GLsizei, semaphores:RawPointer<GLuint>):Void;

	@:native('glSemaphoreParameterivNV')
	static function semaphoreParameterivNV(semaphore:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetSemaphoreParameterivNV')
	static function getSemaphoreParameterivNV(semaphore:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glAcquireKeyedMutexWin32EXT')
	static function acquireKeyedMutexWin32EXT(memory:GLuint, key:GLuint64, timeout:GLuint):GLboolean;

	@:native('glReleaseKeyedMutexWin32EXT')
	static function releaseKeyedMutexWin32EXT(memory:GLuint, key:GLuint64):GLboolean;

	@:native('glWindowRectanglesEXT')
	static function windowRectanglesEXT(mode:GLenum, count:GLsizei, box:RawPointer<GLint>):Void;

	@:native('glGetTextureHandleIMG')
	static function getTextureHandleIMG(texture:GLuint):GLuint64;

	@:native('glGetTextureSamplerHandleIMG')
	static function getTextureSamplerHandleIMG(texture:GLuint, sampler:GLuint):GLuint64;

	@:native('glUniformHandleui64IMG')
	static function uniformHandleui64IMG(location:GLint, value:GLuint64):Void;

	@:native('glUniformHandleui64vIMG')
	static function uniformHandleui64vIMG(location:GLint, count:GLsizei, value:RawPointer<GLuint64>):Void;

	@:native('glProgramUniformHandleui64IMG')
	static function programUniformHandleui64IMG(program:GLuint, location:GLint, value:GLuint64):Void;

	@:native('glProgramUniformHandleui64vIMG')
	static function programUniformHandleui64vIMG(program:GLuint, location:GLint, count:GLsizei, values:RawPointer<GLuint64>):Void;

	@:native('glFramebufferTexture2DDownsampleIMG')
	static function framebufferTexture2DDownsampleIMG(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint, xscale:GLint, yscale:GLint):Void;

	@:native('glFramebufferTextureLayerDownsampleIMG')
	static function framebufferTextureLayerDownsampleIMG(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint, layer:GLint, xscale:GLint, yscale:GLint):Void;

	@:native('glRenderbufferStorageMultisampleIMG')
	static function renderbufferStorageMultisampleIMG(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glFramebufferTexture2DMultisampleIMG')
	static function framebufferTexture2DMultisampleIMG(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint, samples:GLsizei):Void;

	@:native('glApplyFramebufferAttachmentCMAAINTEL')
	static function applyFramebufferAttachmentCMAAINTEL():Void;

	@:native('glBeginPerfQueryINTEL')
	static function beginPerfQueryINTEL(queryHandle:GLuint):Void;

	@:native('glCreatePerfQueryINTEL')
	static function createPerfQueryINTEL(queryId:GLuint, queryHandle:RawPointer<GLuint>):Void;

	@:native('glDeletePerfQueryINTEL')
	static function deletePerfQueryINTEL(queryHandle:GLuint):Void;

	@:native('glEndPerfQueryINTEL')
	static function endPerfQueryINTEL(queryHandle:GLuint):Void;

	@:native('glGetFirstPerfQueryIdINTEL')
	static function getFirstPerfQueryIdINTEL(queryId:RawPointer<GLuint>):Void;

	@:native('glGetNextPerfQueryIdINTEL')
	static function getNextPerfQueryIdINTEL(queryId:GLuint, nextQueryId:RawPointer<GLuint>):Void;

	@:native('glGetPerfCounterInfoINTEL')
	static function getPerfCounterInfoINTEL(queryId:GLuint, counterId:GLuint, counterNameLength:GLuint, counterName:CastGLcharStar, counterDescLength:GLuint, counterDesc:CastGLcharStar, counterOffset:RawPointer<GLuint>, counterDataSize:RawPointer<GLuint>, counterTypeEnum:RawPointer<GLuint>, counterDataTypeEnum:RawPointer<GLuint>, rawCounterMaxValue:RawPointer<GLuint64>):Void;

	@:native('glGetPerfQueryDataINTEL')
	static function getPerfQueryDataINTEL(queryHandle:GLuint, flags:GLuint, dataSize:GLsizei, data:RawPointer<cpp.Void>, bytesWritten:RawPointer<GLuint>):Void;

	@:native('glGetPerfQueryIdByNameINTEL')
	static function getPerfQueryIdByNameINTEL(queryName:CastGLcharStar, queryId:RawPointer<GLuint>):Void;

	@:native('glGetPerfQueryInfoINTEL')
	static function getPerfQueryInfoINTEL(queryId:GLuint, queryNameLength:GLuint, queryName:CastGLcharStar, dataSize:RawPointer<GLuint>, noCounters:RawPointer<GLuint>, noInstances:RawPointer<GLuint>, capsMask:RawPointer<GLuint>):Void;

	@:native('glBlendBarrierKHR')
	static function blendBarrierKHR():Void;

	@:native('glDebugMessageControlKHR')
	static function debugMessageControlKHR(source:GLenum, type:GLenum, severity:GLenum, count:GLsizei, ids:RawPointer<GLuint>, enabled:GLboolean):Void;

	@:native('glDebugMessageInsertKHR')
	static function debugMessageInsertKHR(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, buf:ConstGLcharStar):Void;

	@:native('glDebugMessageCallbackKHR')
	static function debugMessageCallbackKHR(callback:GLDEBUGPROCKHR, userParam:RawPointer<cpp.Void>):Void;

	@:native('glGetDebugMessageLogKHR')
	static function getDebugMessageLogKHR(count:GLuint, bufSize:GLsizei, sources:RawPointer<GLenum>, types:RawPointer<GLenum>, ids:RawPointer<GLuint>, severities:RawPointer<GLenum>, lengths:RawPointer<GLsizei>, messageLog:CastGLcharStar):GLuint;

	@:native('glPushDebugGroupKHR')
	static function pushDebugGroupKHR(source:GLenum, id:GLuint, length:GLsizei, message:ConstGLcharStar):Void;

	@:native('glPopDebugGroupKHR')
	static function popDebugGroupKHR():Void;

	@:native('glObjectLabelKHR')
	static function objectLabelKHR(identifier:GLenum, name:GLuint, length:GLsizei, label:ConstGLcharStar):Void;

	@:native('glGetObjectLabelKHR')
	static function getObjectLabelKHR(identifier:GLenum, name:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, label:CastGLcharStar):Void;

	@:native('glObjectPtrLabelKHR')
	static function objectPtrLabelKHR(ptr:RawPointer<cpp.Void>, length:GLsizei, label:ConstGLcharStar):Void;

	@:native('glGetObjectPtrLabelKHR')
	static function getObjectPtrLabelKHR(ptr:RawPointer<cpp.Void>, bufSize:GLsizei, length:RawPointer<GLsizei>, label:CastGLcharStar):Void;

	@:native('glGetPointervKHR')
	static function getPointervKHR(pname:GLenum, params:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glGetGraphicsResetStatusKHR')
	static function getGraphicsResetStatusKHR():GLenum;

	@:native('glReadnPixelsKHR')
	static function readnPixelsKHR(x:GLint, y:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, bufSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glGetnUniformfvKHR')
	static function getnUniformfvKHR(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLfloat>):Void;

	@:native('glGetnUniformivKHR')
	static function getnUniformivKHR(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLint>):Void;

	@:native('glGetnUniformuivKHR')
	static function getnUniformuivKHR(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLuint>):Void;

	@:native('glMaxShaderCompilerThreadsKHR')
	static function maxShaderCompilerThreadsKHR(count:GLuint):Void;

	@:native('glFramebufferParameteriMESA')
	static function framebufferParameteriMESA(target:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glGetFramebufferParameterivMESA')
	static function getFramebufferParameterivMESA(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetTextureHandleNV')
	static function getTextureHandleNV(texture:GLuint):GLuint64;

	@:native('glGetTextureSamplerHandleNV')
	static function getTextureSamplerHandleNV(texture:GLuint, sampler:GLuint):GLuint64;

	@:native('glMakeTextureHandleResidentNV')
	static function makeTextureHandleResidentNV(handle:GLuint64):Void;

	@:native('glMakeTextureHandleNonResidentNV')
	static function makeTextureHandleNonResidentNV(handle:GLuint64):Void;

	@:native('glGetImageHandleNV')
	static function getImageHandleNV(texture:GLuint, level:GLint, layered:GLboolean, layer:GLint, format:GLenum):GLuint64;

	@:native('glMakeImageHandleResidentNV')
	static function makeImageHandleResidentNV(handle:GLuint64, access:GLenum):Void;

	@:native('glMakeImageHandleNonResidentNV')
	static function makeImageHandleNonResidentNV(handle:GLuint64):Void;

	@:native('glUniformHandleui64NV')
	static function uniformHandleui64NV(location:GLint, value:GLuint64):Void;

	@:native('glUniformHandleui64vNV')
	static function uniformHandleui64vNV(location:GLint, count:GLsizei, value:RawPointer<GLuint64>):Void;

	@:native('glProgramUniformHandleui64NV')
	static function programUniformHandleui64NV(program:GLuint, location:GLint, value:GLuint64):Void;

	@:native('glProgramUniformHandleui64vNV')
	static function programUniformHandleui64vNV(program:GLuint, location:GLint, count:GLsizei, values:RawPointer<GLuint64>):Void;

	@:native('glIsTextureHandleResidentNV')
	static function isTextureHandleResidentNV(handle:GLuint64):GLboolean;

	@:native('glIsImageHandleResidentNV')
	static function isImageHandleResidentNV(handle:GLuint64):GLboolean;

	@:native('glBlendParameteriNV')
	static function blendParameteriNV(pname:GLenum, value:GLint):Void;

	@:native('glBlendBarrierNV')
	static function blendBarrierNV():Void;

	@:native('glViewportPositionWScaleNV')
	static function viewportPositionWScaleNV(index:GLuint, xcoeff:GLfloat, ycoeff:GLfloat):Void;

	@:native('glBeginConditionalRenderNV')
	static function beginConditionalRenderNV(id:GLuint, mode:GLenum):Void;

	@:native('glEndConditionalRenderNV')
	static function endConditionalRenderNV():Void;

	@:native('glSubpixelPrecisionBiasNV')
	static function subpixelPrecisionBiasNV(xbits:GLuint, ybits:GLuint):Void;

	@:native('glConservativeRasterParameteriNV')
	static function conservativeRasterParameteriNV(pname:GLenum, param:GLint):Void;

	@:native('glCopyBufferSubDataNV')
	static function copyBufferSubDataNV(readTarget:GLenum, writeTarget:GLenum, readOffset:GLintptr, writeOffset:GLintptr, size:GLsizeiptr):Void;

	@:native('glCoverageMaskNV')
	static function coverageMaskNV(mask:GLboolean):Void;

	@:native('glCoverageOperationNV')
	static function coverageOperationNV(operation:GLenum):Void;

	@:native('glDrawBuffersNV')
	static function drawBuffersNV(n:GLsizei, bufs:RawPointer<GLenum>):Void;

	@:native('glDrawArraysInstancedNV')
	static function drawArraysInstancedNV(mode:GLenum, first:GLint, count:GLsizei, primcount:GLsizei):Void;

	@:native('glDrawElementsInstancedNV')
	static function drawElementsInstancedNV(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, primcount:GLsizei):Void;

	@:native('glDrawVkImageNV')
	static function drawVkImageNV(vkImage:GLuint64, sampler:GLuint, x0:GLfloat, y0:GLfloat, x1:GLfloat, y1:GLfloat, z:GLfloat, s0:GLfloat, t0:GLfloat, s1:GLfloat, t1:GLfloat):Void;

	@:native('glGetVkProcAddrNV')
	static function getVkProcAddrNV(name:ConstGLcharStar):GLVULKANPROCNV;

	@:native('glWaitVkSemaphoreNV')
	static function waitVkSemaphoreNV(vkSemaphore:GLuint64):Void;

	@:native('glSignalVkSemaphoreNV')
	static function signalVkSemaphoreNV(vkSemaphore:GLuint64):Void;

	@:native('glSignalVkFenceNV')
	static function signalVkFenceNV(vkFence:GLuint64):Void;

	@:native('glDeleteFencesNV')
	static function deleteFencesNV(n:GLsizei, fences:RawPointer<GLuint>):Void;

	@:native('glGenFencesNV')
	static function genFencesNV(n:GLsizei, fences:RawPointer<GLuint>):Void;

	@:native('glIsFenceNV')
	static function isFenceNV(fence:GLuint):GLboolean;

	@:native('glTestFenceNV')
	static function testFenceNV(fence:GLuint):GLboolean;

	@:native('glGetFenceivNV')
	static function getFenceivNV(fence:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glFinishFenceNV')
	static function finishFenceNV(fence:GLuint):Void;

	@:native('glSetFenceNV')
	static function setFenceNV(fence:GLuint, condition:GLenum):Void;

	@:native('glFragmentCoverageColorNV')
	static function fragmentCoverageColorNV(color:GLuint):Void;

	@:native('glBlitFramebufferNV')
	static function blitFramebufferNV(srcX0:GLint, srcY0:GLint, srcX1:GLint, srcY1:GLint, dstX0:GLint, dstY0:GLint, dstX1:GLint, dstY1:GLint, mask:GLbitfield, filter:GLenum):Void;

	@:native('glCoverageModulationTableNV')
	static function coverageModulationTableNV(n:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glGetCoverageModulationTableNV')
	static function getCoverageModulationTableNV(bufSize:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glCoverageModulationNV')
	static function coverageModulationNV(components:GLenum):Void;

	@:native('glRenderbufferStorageMultisampleNV')
	static function renderbufferStorageMultisampleNV(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glUniform1i64NV')
	static function uniform1i64NV(location:GLint, x:GLint64EXT):Void;

	@:native('glUniform2i64NV')
	static function uniform2i64NV(location:GLint, x:GLint64EXT, y:GLint64EXT):Void;

	@:native('glUniform3i64NV')
	static function uniform3i64NV(location:GLint, x:GLint64EXT, y:GLint64EXT, z:GLint64EXT):Void;

	@:native('glUniform4i64NV')
	static function uniform4i64NV(location:GLint, x:GLint64EXT, y:GLint64EXT, z:GLint64EXT, w:GLint64EXT):Void;

	@:native('glUniform1i64vNV')
	static function uniform1i64vNV(location:GLint, count:GLsizei, value:RawPointer<GLint64EXT>):Void;

	@:native('glUniform2i64vNV')
	static function uniform2i64vNV(location:GLint, count:GLsizei, value:RawPointer<GLint64EXT>):Void;

	@:native('glUniform3i64vNV')
	static function uniform3i64vNV(location:GLint, count:GLsizei, value:RawPointer<GLint64EXT>):Void;

	@:native('glUniform4i64vNV')
	static function uniform4i64vNV(location:GLint, count:GLsizei, value:RawPointer<GLint64EXT>):Void;

	@:native('glUniform1ui64NV')
	static function uniform1ui64NV(location:GLint, x:GLuint64EXT):Void;

	@:native('glUniform2ui64NV')
	static function uniform2ui64NV(location:GLint, x:GLuint64EXT, y:GLuint64EXT):Void;

	@:native('glUniform3ui64NV')
	static function uniform3ui64NV(location:GLint, x:GLuint64EXT, y:GLuint64EXT, z:GLuint64EXT):Void;

	@:native('glUniform4ui64NV')
	static function uniform4ui64NV(location:GLint, x:GLuint64EXT, y:GLuint64EXT, z:GLuint64EXT, w:GLuint64EXT):Void;

	@:native('glUniform1ui64vNV')
	static function uniform1ui64vNV(location:GLint, count:GLsizei, value:RawPointer<GLuint64EXT>):Void;

	@:native('glUniform2ui64vNV')
	static function uniform2ui64vNV(location:GLint, count:GLsizei, value:RawPointer<GLuint64EXT>):Void;

	@:native('glUniform3ui64vNV')
	static function uniform3ui64vNV(location:GLint, count:GLsizei, value:RawPointer<GLuint64EXT>):Void;

	@:native('glUniform4ui64vNV')
	static function uniform4ui64vNV(location:GLint, count:GLsizei, value:RawPointer<GLuint64EXT>):Void;

	@:native('glGetUniformi64vNV')
	static function getUniformi64vNV(program:GLuint, location:GLint, params:RawPointer<GLint64EXT>):Void;

	@:native('glProgramUniform1i64NV')
	static function programUniform1i64NV(program:GLuint, location:GLint, x:GLint64EXT):Void;

	@:native('glProgramUniform2i64NV')
	static function programUniform2i64NV(program:GLuint, location:GLint, x:GLint64EXT, y:GLint64EXT):Void;

	@:native('glProgramUniform3i64NV')
	static function programUniform3i64NV(program:GLuint, location:GLint, x:GLint64EXT, y:GLint64EXT, z:GLint64EXT):Void;

	@:native('glProgramUniform4i64NV')
	static function programUniform4i64NV(program:GLuint, location:GLint, x:GLint64EXT, y:GLint64EXT, z:GLint64EXT, w:GLint64EXT):Void;

	@:native('glProgramUniform1i64vNV')
	static function programUniform1i64vNV(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint64EXT>):Void;

	@:native('glProgramUniform2i64vNV')
	static function programUniform2i64vNV(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint64EXT>):Void;

	@:native('glProgramUniform3i64vNV')
	static function programUniform3i64vNV(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint64EXT>):Void;

	@:native('glProgramUniform4i64vNV')
	static function programUniform4i64vNV(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint64EXT>):Void;

	@:native('glProgramUniform1ui64NV')
	static function programUniform1ui64NV(program:GLuint, location:GLint, x:GLuint64EXT):Void;

	@:native('glProgramUniform2ui64NV')
	static function programUniform2ui64NV(program:GLuint, location:GLint, x:GLuint64EXT, y:GLuint64EXT):Void;

	@:native('glProgramUniform3ui64NV')
	static function programUniform3ui64NV(program:GLuint, location:GLint, x:GLuint64EXT, y:GLuint64EXT, z:GLuint64EXT):Void;

	@:native('glProgramUniform4ui64NV')
	static function programUniform4ui64NV(program:GLuint, location:GLint, x:GLuint64EXT, y:GLuint64EXT, z:GLuint64EXT, w:GLuint64EXT):Void;

	@:native('glProgramUniform1ui64vNV')
	static function programUniform1ui64vNV(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint64EXT>):Void;

	@:native('glProgramUniform2ui64vNV')
	static function programUniform2ui64vNV(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint64EXT>):Void;

	@:native('glProgramUniform3ui64vNV')
	static function programUniform3ui64vNV(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint64EXT>):Void;

	@:native('glProgramUniform4ui64vNV')
	static function programUniform4ui64vNV(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint64EXT>):Void;

	@:native('glVertexAttribDivisorNV')
	static function vertexAttribDivisorNV(index:GLuint, divisor:GLuint):Void;

	@:native('glGetInternalformatSampleivNV')
	static function getInternalformatSampleivNV(target:GLenum, internalformat:GLenum, samples:GLsizei, pname:GLenum, count:GLsizei, params:RawPointer<GLint>):Void;

	@:native('glGetMemoryObjectDetachedResourcesuivNV')
	static function getMemoryObjectDetachedResourcesuivNV(memory:GLuint, pname:GLenum, first:GLint, count:GLsizei, params:RawPointer<GLuint>):Void;

	@:native('glResetMemoryObjectParameterNV')
	static function resetMemoryObjectParameterNV(memory:GLuint, pname:GLenum):Void;

	@:native('glTexAttachMemoryNV')
	static function texAttachMemoryNV(target:GLenum, memory:GLuint, offset:GLuint64):Void;

	@:native('glBufferAttachMemoryNV')
	static function bufferAttachMemoryNV(target:GLenum, memory:GLuint, offset:GLuint64):Void;

	@:native('glTextureAttachMemoryNV')
	static function textureAttachMemoryNV(texture:GLuint, memory:GLuint, offset:GLuint64):Void;

	@:native('glNamedBufferAttachMemoryNV')
	static function namedBufferAttachMemoryNV(buffer:GLuint, memory:GLuint, offset:GLuint64):Void;

	@:native('glBufferPageCommitmentMemNV')
	static function bufferPageCommitmentMemNV(target:GLenum, offset:GLintptr, size:GLsizeiptr, memory:GLuint, memOffset:GLuint64, commit:GLboolean):Void;

	@:native('glTexPageCommitmentMemNV')
	static function texPageCommitmentMemNV(target:GLenum, layer:GLint, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, memory:GLuint, offset:GLuint64, commit:GLboolean):Void;

	@:native('glNamedBufferPageCommitmentMemNV')
	static function namedBufferPageCommitmentMemNV(buffer:GLuint, offset:GLintptr, size:GLsizeiptr, memory:GLuint, memOffset:GLuint64, commit:GLboolean):Void;

	@:native('glTexturePageCommitmentMemNV')
	static function texturePageCommitmentMemNV(texture:GLuint, layer:GLint, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, memory:GLuint, offset:GLuint64, commit:GLboolean):Void;

	@:native('glDrawMeshTasksNV')
	static function drawMeshTasksNV(first:GLuint, count:GLuint):Void;

	@:native('glDrawMeshTasksIndirectNV')
	static function drawMeshTasksIndirectNV(indirect:GLintptr):Void;

	@:native('glMultiDrawMeshTasksIndirectNV')
	static function multiDrawMeshTasksIndirectNV(indirect:GLintptr, drawcount:GLsizei, stride:GLsizei):Void;

	@:native('glMultiDrawMeshTasksIndirectCountNV')
	static function multiDrawMeshTasksIndirectCountNV(indirect:GLintptr, drawcount:GLintptr, maxdrawcount:GLsizei, stride:GLsizei):Void;

	@:native('glUniformMatrix2x3fvNV')
	static function uniformMatrix2x3fvNV(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix3x2fvNV')
	static function uniformMatrix3x2fvNV(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix2x4fvNV')
	static function uniformMatrix2x4fvNV(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix4x2fvNV')
	static function uniformMatrix4x2fvNV(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix3x4fvNV')
	static function uniformMatrix3x4fvNV(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix4x3fvNV')
	static function uniformMatrix4x3fvNV(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glGenPathsNV')
	static function genPathsNV(range:GLsizei):GLuint;

	@:native('glDeletePathsNV')
	static function deletePathsNV(path:GLuint, range:GLsizei):Void;

	@:native('glIsPathNV')
	static function isPathNV(path:GLuint):GLboolean;

	@:native('glPathCommandsNV')
	static function pathCommandsNV(path:GLuint, numCommands:GLsizei, commands:RawPointer<GLubyte>, numCoords:GLsizei, coordType:GLenum, coords:RawPointer<cpp.Void>):Void;

	@:native('glPathCoordsNV')
	static function pathCoordsNV(path:GLuint, numCoords:GLsizei, coordType:GLenum, coords:RawPointer<cpp.Void>):Void;

	@:native('glPathSubCommandsNV')
	static function pathSubCommandsNV(path:GLuint, commandStart:GLsizei, commandsToDelete:GLsizei, numCommands:GLsizei, commands:RawPointer<GLubyte>, numCoords:GLsizei, coordType:GLenum, coords:RawPointer<cpp.Void>):Void;

	@:native('glPathSubCoordsNV')
	static function pathSubCoordsNV(path:GLuint, coordStart:GLsizei, numCoords:GLsizei, coordType:GLenum, coords:RawPointer<cpp.Void>):Void;

	@:native('glPathStringNV')
	static function pathStringNV(path:GLuint, format:GLenum, length:GLsizei, pathString:RawPointer<cpp.Void>):Void;

	@:native('glPathGlyphsNV')
	static function pathGlyphsNV(firstPathName:GLuint, fontTarget:GLenum, fontName:RawPointer<cpp.Void>, fontStyle:GLbitfield, numGlyphs:GLsizei, type:GLenum, charcodes:RawPointer<cpp.Void>, handleMissingGlyphs:GLenum, pathParameterTemplate:GLuint, emScale:GLfloat):Void;

	@:native('glPathGlyphRangeNV')
	static function pathGlyphRangeNV(firstPathName:GLuint, fontTarget:GLenum, fontName:RawPointer<cpp.Void>, fontStyle:GLbitfield, firstGlyph:GLuint, numGlyphs:GLsizei, handleMissingGlyphs:GLenum, pathParameterTemplate:GLuint, emScale:GLfloat):Void;

	@:native('glWeightPathsNV')
	static function weightPathsNV(resultPath:GLuint, numPaths:GLsizei, paths:RawPointer<GLuint>, weights:RawPointer<GLfloat>):Void;

	@:native('glCopyPathNV')
	static function copyPathNV(resultPath:GLuint, srcPath:GLuint):Void;

	@:native('glInterpolatePathsNV')
	static function interpolatePathsNV(resultPath:GLuint, pathA:GLuint, pathB:GLuint, weight:GLfloat):Void;

	@:native('glTransformPathNV')
	static function transformPathNV(resultPath:GLuint, srcPath:GLuint, transformType:GLenum, transformValues:RawPointer<GLfloat>):Void;

	@:native('glPathParameterivNV')
	static function pathParameterivNV(path:GLuint, pname:GLenum, value:RawPointer<GLint>):Void;

	@:native('glPathParameteriNV')
	static function pathParameteriNV(path:GLuint, pname:GLenum, value:GLint):Void;

	@:native('glPathParameterfvNV')
	static function pathParameterfvNV(path:GLuint, pname:GLenum, value:RawPointer<GLfloat>):Void;

	@:native('glPathParameterfNV')
	static function pathParameterfNV(path:GLuint, pname:GLenum, value:GLfloat):Void;

	@:native('glPathDashArrayNV')
	static function pathDashArrayNV(path:GLuint, dashCount:GLsizei, dashArray:RawPointer<GLfloat>):Void;

	@:native('glPathStencilFuncNV')
	static function pathStencilFuncNV(func:GLenum, ref:GLint, mask:GLuint):Void;

	@:native('glPathStencilDepthOffsetNV')
	static function pathStencilDepthOffsetNV(factor:GLfloat, units:GLfloat):Void;

	@:native('glStencilFillPathNV')
	static function stencilFillPathNV(path:GLuint, fillMode:GLenum, mask:GLuint):Void;

	@:native('glStencilStrokePathNV')
	static function stencilStrokePathNV(path:GLuint, reference:GLint, mask:GLuint):Void;

	@:native('glStencilFillPathInstancedNV')
	static function stencilFillPathInstancedNV(numPaths:GLsizei, pathNameType:GLenum, paths:RawPointer<cpp.Void>, pathBase:GLuint, fillMode:GLenum, mask:GLuint, transformType:GLenum, transformValues:RawPointer<GLfloat>):Void;

	@:native('glStencilStrokePathInstancedNV')
	static function stencilStrokePathInstancedNV(numPaths:GLsizei, pathNameType:GLenum, paths:RawPointer<cpp.Void>, pathBase:GLuint, reference:GLint, mask:GLuint, transformType:GLenum, transformValues:RawPointer<GLfloat>):Void;

	@:native('glPathCoverDepthFuncNV')
	static function pathCoverDepthFuncNV(func:GLenum):Void;

	@:native('glCoverFillPathNV')
	static function coverFillPathNV(path:GLuint, coverMode:GLenum):Void;

	@:native('glCoverStrokePathNV')
	static function coverStrokePathNV(path:GLuint, coverMode:GLenum):Void;

	@:native('glCoverFillPathInstancedNV')
	static function coverFillPathInstancedNV(numPaths:GLsizei, pathNameType:GLenum, paths:RawPointer<cpp.Void>, pathBase:GLuint, coverMode:GLenum, transformType:GLenum, transformValues:RawPointer<GLfloat>):Void;

	@:native('glCoverStrokePathInstancedNV')
	static function coverStrokePathInstancedNV(numPaths:GLsizei, pathNameType:GLenum, paths:RawPointer<cpp.Void>, pathBase:GLuint, coverMode:GLenum, transformType:GLenum, transformValues:RawPointer<GLfloat>):Void;

	@:native('glGetPathParameterivNV')
	static function getPathParameterivNV(path:GLuint, pname:GLenum, value:RawPointer<GLint>):Void;

	@:native('glGetPathParameterfvNV')
	static function getPathParameterfvNV(path:GLuint, pname:GLenum, value:RawPointer<GLfloat>):Void;

	@:native('glGetPathCommandsNV')
	static function getPathCommandsNV(path:GLuint, commands:RawPointer<GLubyte>):Void;

	@:native('glGetPathCoordsNV')
	static function getPathCoordsNV(path:GLuint, coords:RawPointer<GLfloat>):Void;

	@:native('glGetPathDashArrayNV')
	static function getPathDashArrayNV(path:GLuint, dashArray:RawPointer<GLfloat>):Void;

	@:native('glGetPathMetricsNV')
	static function getPathMetricsNV(metricQueryMask:GLbitfield, numPaths:GLsizei, pathNameType:GLenum, paths:RawPointer<cpp.Void>, pathBase:GLuint, stride:GLsizei, metrics:RawPointer<GLfloat>):Void;

	@:native('glGetPathMetricRangeNV')
	static function getPathMetricRangeNV(metricQueryMask:GLbitfield, firstPathName:GLuint, numPaths:GLsizei, stride:GLsizei, metrics:RawPointer<GLfloat>):Void;

	@:native('glGetPathSpacingNV')
	static function getPathSpacingNV(pathListMode:GLenum, numPaths:GLsizei, pathNameType:GLenum, paths:RawPointer<cpp.Void>, pathBase:GLuint, advanceScale:GLfloat, kerningScale:GLfloat, transformType:GLenum, returnedSpacing:RawPointer<GLfloat>):Void;

	@:native('glIsPointInFillPathNV')
	static function isPointInFillPathNV(path:GLuint, mask:GLuint, x:GLfloat, y:GLfloat):GLboolean;

	@:native('glIsPointInStrokePathNV')
	static function isPointInStrokePathNV(path:GLuint, x:GLfloat, y:GLfloat):GLboolean;

	@:native('glGetPathLengthNV')
	static function getPathLengthNV(path:GLuint, startSegment:GLsizei, numSegments:GLsizei):GLfloat;

	@:native('glPointAlongPathNV')
	static function pointAlongPathNV(path:GLuint, startSegment:GLsizei, numSegments:GLsizei, distance:GLfloat, x:RawPointer<GLfloat>, y:RawPointer<GLfloat>, tangentX:RawPointer<GLfloat>, tangentY:RawPointer<GLfloat>):GLboolean;

	@:native('glMatrixLoad3x2fNV')
	static function matrixLoad3x2fNV(matrixMode:GLenum, m:RawPointer<GLfloat>):Void;

	@:native('glMatrixLoad3x3fNV')
	static function matrixLoad3x3fNV(matrixMode:GLenum, m:RawPointer<GLfloat>):Void;

	@:native('glMatrixLoadTranspose3x3fNV')
	static function matrixLoadTranspose3x3fNV(matrixMode:GLenum, m:RawPointer<GLfloat>):Void;

	@:native('glMatrixMult3x2fNV')
	static function matrixMult3x2fNV(matrixMode:GLenum, m:RawPointer<GLfloat>):Void;

	@:native('glMatrixMult3x3fNV')
	static function matrixMult3x3fNV(matrixMode:GLenum, m:RawPointer<GLfloat>):Void;

	@:native('glMatrixMultTranspose3x3fNV')
	static function matrixMultTranspose3x3fNV(matrixMode:GLenum, m:RawPointer<GLfloat>):Void;

	@:native('glStencilThenCoverFillPathNV')
	static function stencilThenCoverFillPathNV(path:GLuint, fillMode:GLenum, mask:GLuint, coverMode:GLenum):Void;

	@:native('glStencilThenCoverStrokePathNV')
	static function stencilThenCoverStrokePathNV(path:GLuint, reference:GLint, mask:GLuint, coverMode:GLenum):Void;

	@:native('glStencilThenCoverFillPathInstancedNV')
	static function stencilThenCoverFillPathInstancedNV(numPaths:GLsizei, pathNameType:GLenum, paths:RawPointer<cpp.Void>, pathBase:GLuint, fillMode:GLenum, mask:GLuint, coverMode:GLenum, transformType:GLenum, transformValues:RawPointer<GLfloat>):Void;

	@:native('glStencilThenCoverStrokePathInstancedNV')
	static function stencilThenCoverStrokePathInstancedNV(numPaths:GLsizei, pathNameType:GLenum, paths:RawPointer<cpp.Void>, pathBase:GLuint, reference:GLint, mask:GLuint, coverMode:GLenum, transformType:GLenum, transformValues:RawPointer<GLfloat>):Void;

	@:native('glPathGlyphIndexRangeNV')
	static function pathGlyphIndexRangeNV(fontTarget:GLenum, fontName:RawPointer<cpp.Void>, fontStyle:GLbitfield, pathParameterTemplate:GLuint, emScale:GLfloat, baseAndCount:RawPointer<GLuint>):GLenum;

	@:native('glPathGlyphIndexArrayNV')
	static function pathGlyphIndexArrayNV(firstPathName:GLuint, fontTarget:GLenum, fontName:RawPointer<cpp.Void>, fontStyle:GLbitfield, firstGlyphIndex:GLuint, numGlyphs:GLsizei, pathParameterTemplate:GLuint, emScale:GLfloat):GLenum;

	@:native('glPathMemoryGlyphIndexArrayNV')
	static function pathMemoryGlyphIndexArrayNV(firstPathName:GLuint, fontTarget:GLenum, fontSize:GLsizeiptr, fontData:RawPointer<cpp.Void>, faceIndex:GLsizei, firstGlyphIndex:GLuint, numGlyphs:GLsizei, pathParameterTemplate:GLuint, emScale:GLfloat):GLenum;

	@:native('glProgramPathFragmentInputGenNV')
	static function programPathFragmentInputGenNV(program:GLuint, location:GLint, genMode:GLenum, components:GLint, coeffs:RawPointer<GLfloat>):Void;

	@:native('glGetProgramResourcefvNV')
	static function getProgramResourcefvNV(program:GLuint, programInterface:GLenum, index:GLuint, propCount:GLsizei, props:RawPointer<GLenum>, count:GLsizei, length:RawPointer<GLsizei>, params:RawPointer<GLfloat>):Void;

	@:native('glPathColorGenNV')
	static function pathColorGenNV(color:GLenum, genMode:GLenum, colorFormat:GLenum, coeffs:RawPointer<GLfloat>):Void;

	@:native('glPathTexGenNV')
	static function pathTexGenNV(texCoordSet:GLenum, genMode:GLenum, components:GLint, coeffs:RawPointer<GLfloat>):Void;

	@:native('glPathFogGenNV')
	static function pathFogGenNV(genMode:GLenum):Void;

	@:native('glGetPathColorGenivNV')
	static function getPathColorGenivNV(color:GLenum, pname:GLenum, value:RawPointer<GLint>):Void;

	@:native('glGetPathColorGenfvNV')
	static function getPathColorGenfvNV(color:GLenum, pname:GLenum, value:RawPointer<GLfloat>):Void;

	@:native('glGetPathTexGenivNV')
	static function getPathTexGenivNV(texCoordSet:GLenum, pname:GLenum, value:RawPointer<GLint>):Void;

	@:native('glGetPathTexGenfvNV')
	static function getPathTexGenfvNV(texCoordSet:GLenum, pname:GLenum, value:RawPointer<GLfloat>):Void;

	@:native('glMatrixFrustumEXT')
	static function matrixFrustumEXT(mode:GLenum, left:GLdouble, right:GLdouble, bottom:GLdouble, top:GLdouble, zNear:GLdouble, zFar:GLdouble):Void;

	@:native('glMatrixLoadIdentityEXT')
	static function matrixLoadIdentityEXT(mode:GLenum):Void;

	@:native('glMatrixLoadTransposefEXT')
	static function matrixLoadTransposefEXT(mode:GLenum, m:RawPointer<GLfloat>):Void;

	@:native('glMatrixLoadTransposedEXT')
	static function matrixLoadTransposedEXT(mode:GLenum, m:RawPointer<GLdouble>):Void;

	@:native('glMatrixLoadfEXT')
	static function matrixLoadfEXT(mode:GLenum, m:RawPointer<GLfloat>):Void;

	@:native('glMatrixLoaddEXT')
	static function matrixLoaddEXT(mode:GLenum, m:RawPointer<GLdouble>):Void;

	@:native('glMatrixMultTransposefEXT')
	static function matrixMultTransposefEXT(mode:GLenum, m:RawPointer<GLfloat>):Void;

	@:native('glMatrixMultTransposedEXT')
	static function matrixMultTransposedEXT(mode:GLenum, m:RawPointer<GLdouble>):Void;

	@:native('glMatrixMultfEXT')
	static function matrixMultfEXT(mode:GLenum, m:RawPointer<GLfloat>):Void;

	@:native('glMatrixMultdEXT')
	static function matrixMultdEXT(mode:GLenum, m:RawPointer<GLdouble>):Void;

	@:native('glMatrixOrthoEXT')
	static function matrixOrthoEXT(mode:GLenum, left:GLdouble, right:GLdouble, bottom:GLdouble, top:GLdouble, zNear:GLdouble, zFar:GLdouble):Void;

	@:native('glMatrixPopEXT')
	static function matrixPopEXT(mode:GLenum):Void;

	@:native('glMatrixPushEXT')
	static function matrixPushEXT(mode:GLenum):Void;

	@:native('glMatrixRotatefEXT')
	static function matrixRotatefEXT(mode:GLenum, angle:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glMatrixRotatedEXT')
	static function matrixRotatedEXT(mode:GLenum, angle:GLdouble, x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glMatrixScalefEXT')
	static function matrixScalefEXT(mode:GLenum, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glMatrixScaledEXT')
	static function matrixScaledEXT(mode:GLenum, x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glMatrixTranslatefEXT')
	static function matrixTranslatefEXT(mode:GLenum, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glMatrixTranslatedEXT')
	static function matrixTranslatedEXT(mode:GLenum, x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glPolygonModeNV')
	static function polygonModeNV(face:GLenum, mode:GLenum):Void;

	@:native('glReadBufferNV')
	static function readBufferNV(mode:GLenum):Void;

	@:native('glFramebufferSampleLocationsfvNV')
	static function framebufferSampleLocationsfvNV(target:GLenum, start:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glNamedFramebufferSampleLocationsfvNV')
	static function namedFramebufferSampleLocationsfvNV(framebuffer:GLuint, start:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glResolveDepthValuesNV')
	static function resolveDepthValuesNV():Void;

	@:native('glScissorExclusiveNV')
	static function scissorExclusiveNV(x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glScissorExclusiveArrayvNV')
	static function scissorExclusiveArrayvNV(first:GLuint, count:GLsizei, v:RawPointer<GLint>):Void;

	@:native('glBindShadingRateImageNV')
	static function bindShadingRateImageNV(texture:GLuint):Void;

	@:native('glGetShadingRateImagePaletteNV')
	static function getShadingRateImagePaletteNV(viewport:GLuint, entry:GLuint, rate:RawPointer<GLenum>):Void;

	@:native('glGetShadingRateSampleLocationivNV')
	static function getShadingRateSampleLocationivNV(rate:GLenum, samples:GLuint, index:GLuint, location:RawPointer<GLint>):Void;

	@:native('glShadingRateImageBarrierNV')
	static function shadingRateImageBarrierNV(synchronize:GLboolean):Void;

	@:native('glShadingRateImagePaletteNV')
	static function shadingRateImagePaletteNV(viewport:GLuint, first:GLuint, count:GLsizei, rates:RawPointer<GLenum>):Void;

	@:native('glShadingRateSampleOrderNV')
	static function shadingRateSampleOrderNV(order:GLenum):Void;

	@:native('glShadingRateSampleOrderCustomNV')
	static function shadingRateSampleOrderCustomNV(rate:GLenum, samples:GLuint, locations:RawPointer<GLint>):Void;

	@:native('glTextureBarrierNV')
	static function textureBarrierNV():Void;

	@:native('glViewportArrayvNV')
	static function viewportArrayvNV(first:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glViewportIndexedfNV')
	static function viewportIndexedfNV(index:GLuint, x:GLfloat, y:GLfloat, w:GLfloat, h:GLfloat):Void;

	@:native('glViewportIndexedfvNV')
	static function viewportIndexedfvNV(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glScissorArrayvNV')
	static function scissorArrayvNV(first:GLuint, count:GLsizei, v:RawPointer<GLint>):Void;

	@:native('glScissorIndexedNV')
	static function scissorIndexedNV(index:GLuint, left:GLint, bottom:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glScissorIndexedvNV')
	static function scissorIndexedvNV(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glDepthRangeArrayfvNV')
	static function depthRangeArrayfvNV(first:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glDepthRangeIndexedfNV')
	static function depthRangeIndexedfNV(index:GLuint, n:GLfloat, f:GLfloat):Void;

	@:native('glGetFloati_vNV')
	static function getFloati_vNV(target:GLenum, index:GLuint, data:RawPointer<GLfloat>):Void;

	@:native('glEnableiNV')
	static function enableiNV(target:GLenum, index:GLuint):Void;

	@:native('glDisableiNV')
	static function disableiNV(target:GLenum, index:GLuint):Void;

	@:native('glIsEnablediNV')
	static function isEnablediNV(target:GLenum, index:GLuint):GLboolean;

	@:native('glViewportSwizzleNV')
	static function viewportSwizzleNV(index:GLuint, swizzlex:GLenum, swizzley:GLenum, swizzlez:GLenum, swizzlew:GLenum):Void;

	@:native('glEGLImageTargetTexture2DOES')
	static function eGLImageTargetTexture2DOES(target:GLenum, image:GLeglImageOES):Void;

	@:native('glEGLImageTargetRenderbufferStorageOES')
	static function eGLImageTargetRenderbufferStorageOES(target:GLenum, image:GLeglImageOES):Void;

	@:native('glCopyImageSubDataOES')
	static function copyImageSubDataOES(srcName:GLuint, srcTarget:GLenum, srcLevel:GLint, srcX:GLint, srcY:GLint, srcZ:GLint, dstName:GLuint, dstTarget:GLenum, dstLevel:GLint, dstX:GLint, dstY:GLint, dstZ:GLint, srcWidth:GLsizei, srcHeight:GLsizei, srcDepth:GLsizei):Void;

	@:native('glEnableiOES')
	static function enableiOES(target:GLenum, index:GLuint):Void;

	@:native('glDisableiOES')
	static function disableiOES(target:GLenum, index:GLuint):Void;

	@:native('glBlendEquationiOES')
	static function blendEquationiOES(buf:GLuint, mode:GLenum):Void;

	@:native('glBlendEquationSeparateiOES')
	static function blendEquationSeparateiOES(buf:GLuint, modeRGB:GLenum, modeAlpha:GLenum):Void;

	@:native('glBlendFunciOES')
	static function blendFunciOES(buf:GLuint, src:GLenum, dst:GLenum):Void;

	@:native('glBlendFuncSeparateiOES')
	static function blendFuncSeparateiOES(buf:GLuint, srcRGB:GLenum, dstRGB:GLenum, srcAlpha:GLenum, dstAlpha:GLenum):Void;

	@:native('glColorMaskiOES')
	static function colorMaskiOES(index:GLuint, r:GLboolean, g:GLboolean, b:GLboolean, a:GLboolean):Void;

	@:native('glIsEnablediOES')
	static function isEnablediOES(target:GLenum, index:GLuint):GLboolean;

	@:native('glDrawElementsBaseVertexOES')
	static function drawElementsBaseVertexOES(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, basevertex:GLint):Void;

	@:native('glDrawRangeElementsBaseVertexOES')
	static function drawRangeElementsBaseVertexOES(mode:GLenum, start:GLuint, end:GLuint, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, basevertex:GLint):Void;

	@:native('glDrawElementsInstancedBaseVertexOES')
	static function drawElementsInstancedBaseVertexOES(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, instancecount:GLsizei, basevertex:GLint):Void;

	@:native('glFramebufferTextureOES')
	static function framebufferTextureOES(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint):Void;

	@:native('glGetProgramBinaryOES')
	static function getProgramBinaryOES(program:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, binaryFormat:RawPointer<GLenum>, binary:RawPointer<cpp.Void>):Void;

	@:native('glProgramBinaryOES')
	static function programBinaryOES(program:GLuint, binaryFormat:GLenum, binary:RawPointer<cpp.Void>, length:GLint):Void;

	@:native('glMapBufferOES')
	static function mapBufferOES(target:GLenum, access:GLenum):RawPointer<cpp.Void>;

	@:native('glUnmapBufferOES')
	static function unmapBufferOES(target:GLenum):GLboolean;

	@:native('glGetBufferPointervOES')
	static function getBufferPointervOES(target:GLenum, pname:GLenum, params:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glPrimitiveBoundingBoxOES')
	static function primitiveBoundingBoxOES(minX:GLfloat, minY:GLfloat, minZ:GLfloat, minW:GLfloat, maxX:GLfloat, maxY:GLfloat, maxZ:GLfloat, maxW:GLfloat):Void;

	@:native('glMinSampleShadingOES')
	static function minSampleShadingOES(value:GLfloat):Void;

	@:native('glPatchParameteriOES')
	static function patchParameteriOES(pname:GLenum, value:GLint):Void;

	@:native('glTexImage3DOES')
	static function texImage3DOES(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, border:GLint, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTexSubImage3DOES')
	static function texSubImage3DOES(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glCopyTexSubImage3DOES')
	static function copyTexSubImage3DOES(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glCompressedTexImage3DOES')
	static function compressedTexImage3DOES(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, border:GLint, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexSubImage3DOES')
	static function compressedTexSubImage3DOES(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glFramebufferTexture3DOES')
	static function framebufferTexture3DOES(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint, zoffset:GLint):Void;

	@:native('glTexParameterIivOES')
	static function texParameterIivOES(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glTexParameterIuivOES')
	static function texParameterIuivOES(target:GLenum, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glGetTexParameterIivOES')
	static function getTexParameterIivOES(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetTexParameterIuivOES')
	static function getTexParameterIuivOES(target:GLenum, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glSamplerParameterIivOES')
	static function samplerParameterIivOES(sampler:GLuint, pname:GLenum, param:RawPointer<GLint>):Void;

	@:native('glSamplerParameterIuivOES')
	static function samplerParameterIuivOES(sampler:GLuint, pname:GLenum, param:RawPointer<GLuint>):Void;

	@:native('glGetSamplerParameterIivOES')
	static function getSamplerParameterIivOES(sampler:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetSamplerParameterIuivOES')
	static function getSamplerParameterIuivOES(sampler:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glTexBufferOES')
	static function texBufferOES(target:GLenum, internalformat:GLenum, buffer:GLuint):Void;

	@:native('glTexBufferRangeOES')
	static function texBufferRangeOES(target:GLenum, internalformat:GLenum, buffer:GLuint, offset:GLintptr, size:GLsizeiptr):Void;

	@:native('glTexStorage3DMultisampleOES')
	static function texStorage3DMultisampleOES(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, fixedsamplelocations:GLboolean):Void;

	@:native('glTextureViewOES')
	static function textureViewOES(texture:GLuint, target:GLenum, origtexture:GLuint, internalformat:GLenum, minlevel:GLuint, numlevels:GLuint, minlayer:GLuint, numlayers:GLuint):Void;

	@:native('glBindVertexArrayOES')
	static function bindVertexArrayOES(array:GLuint):Void;

	@:native('glDeleteVertexArraysOES')
	static function deleteVertexArraysOES(n:GLsizei, arrays:RawPointer<GLuint>):Void;

	@:native('glGenVertexArraysOES')
	static function genVertexArraysOES(n:GLsizei, arrays:RawPointer<GLuint>):Void;

	@:native('glIsVertexArrayOES')
	static function isVertexArrayOES(array:GLuint):GLboolean;

	@:native('glViewportArrayvOES')
	static function viewportArrayvOES(first:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glViewportIndexedfOES')
	static function viewportIndexedfOES(index:GLuint, x:GLfloat, y:GLfloat, w:GLfloat, h:GLfloat):Void;

	@:native('glViewportIndexedfvOES')
	static function viewportIndexedfvOES(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glScissorArrayvOES')
	static function scissorArrayvOES(first:GLuint, count:GLsizei, v:RawPointer<GLint>):Void;

	@:native('glScissorIndexedOES')
	static function scissorIndexedOES(index:GLuint, left:GLint, bottom:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glScissorIndexedvOES')
	static function scissorIndexedvOES(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glDepthRangeArrayfvOES')
	static function depthRangeArrayfvOES(first:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glDepthRangeIndexedfOES')
	static function depthRangeIndexedfOES(index:GLuint, n:GLfloat, f:GLfloat):Void;

	@:native('glGetFloati_vOES')
	static function getFloati_vOES(target:GLenum, index:GLuint, data:RawPointer<GLfloat>):Void;

	@:native('glFramebufferTextureMultiviewOVR')
	static function framebufferTextureMultiviewOVR(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint, baseViewIndex:GLint, numViews:GLsizei):Void;

	@:native('glNamedFramebufferTextureMultiviewOVR')
	static function namedFramebufferTextureMultiviewOVR(framebuffer:GLuint, attachment:GLenum, texture:GLuint, level:GLint, baseViewIndex:GLint, numViews:GLsizei):Void;

	@:native('glFramebufferTextureMultisampleMultiviewOVR')
	static function framebufferTextureMultisampleMultiviewOVR(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint, samples:GLsizei, baseViewIndex:GLint, numViews:GLsizei):Void;

	@:native('glAlphaFuncQCOM')
	static function alphaFuncQCOM(func:GLenum, ref:GLclampf):Void;

	@:native('glGetDriverControlsQCOM')
	static function getDriverControlsQCOM(num:RawPointer<GLint>, size:GLsizei, driverControls:RawPointer<GLuint>):Void;

	@:native('glGetDriverControlStringQCOM')
	static function getDriverControlStringQCOM(driverControl:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, driverControlString:CastGLcharStar):Void;

	@:native('glEnableDriverControlQCOM')
	static function enableDriverControlQCOM(driverControl:GLuint):Void;

	@:native('glDisableDriverControlQCOM')
	static function disableDriverControlQCOM(driverControl:GLuint):Void;

	@:native('glExtGetTexturesQCOM')
	static function extGetTexturesQCOM(textures:RawPointer<GLuint>, maxTextures:GLint, numTextures:RawPointer<GLint>):Void;

	@:native('glExtGetBuffersQCOM')
	static function extGetBuffersQCOM(buffers:RawPointer<GLuint>, maxBuffers:GLint, numBuffers:RawPointer<GLint>):Void;

	@:native('glExtGetRenderbuffersQCOM')
	static function extGetRenderbuffersQCOM(renderbuffers:RawPointer<GLuint>, maxRenderbuffers:GLint, numRenderbuffers:RawPointer<GLint>):Void;

	@:native('glExtGetFramebuffersQCOM')
	static function extGetFramebuffersQCOM(framebuffers:RawPointer<GLuint>, maxFramebuffers:GLint, numFramebuffers:RawPointer<GLint>):Void;

	@:native('glExtGetTexLevelParameterivQCOM')
	static function extGetTexLevelParameterivQCOM(texture:GLuint, face:GLenum, level:GLint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glExtTexObjectStateOverrideiQCOM')
	static function extTexObjectStateOverrideiQCOM(target:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glExtGetTexSubImageQCOM')
	static function extGetTexSubImageQCOM(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, type:GLenum, texels:RawPointer<cpp.Void>):Void;

	@:native('glExtGetBufferPointervQCOM')
	static function extGetBufferPointervQCOM(target:GLenum, params:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glExtGetShadersQCOM')
	static function extGetShadersQCOM(shaders:RawPointer<GLuint>, maxShaders:GLint, numShaders:RawPointer<GLint>):Void;

	@:native('glExtGetProgramsQCOM')
	static function extGetProgramsQCOM(programs:RawPointer<GLuint>, maxPrograms:GLint, numPrograms:RawPointer<GLint>):Void;

	@:native('glExtIsProgramBinaryQCOM')
	static function extIsProgramBinaryQCOM(program:GLuint):GLboolean;

	@:native('glExtGetProgramBinarySourceQCOM')
	static function extGetProgramBinarySourceQCOM(program:GLuint, shadertype:GLenum, source:CastGLcharStar, length:RawPointer<GLint>):Void;

	@:native('glFramebufferFoveationConfigQCOM')
	static function framebufferFoveationConfigQCOM(framebuffer:GLuint, numLayers:GLuint, focalPointsPerLayer:GLuint, requestedFeatures:GLuint, providedFeatures:RawPointer<GLuint>):Void;

	@:native('glFramebufferFoveationParametersQCOM')
	static function framebufferFoveationParametersQCOM(framebuffer:GLuint, layer:GLuint, focalPoint:GLuint, focalX:GLfloat, focalY:GLfloat, gainX:GLfloat, gainY:GLfloat, foveaArea:GLfloat):Void;

	@:native('glTexEstimateMotionQCOM')
	static function texEstimateMotionQCOM(ref:GLuint, target:GLuint, output:GLuint):Void;

	@:native('glTexEstimateMotionRegionsQCOM')
	static function texEstimateMotionRegionsQCOM(ref:GLuint, target:GLuint, output:GLuint, mask:GLuint):Void;

	@:native('glExtrapolateTex2DQCOM')
	static function extrapolateTex2DQCOM(src1:GLuint, src2:GLuint, output:GLuint, scaleFactor:GLfloat):Void;

	@:native('glTextureFoveationParametersQCOM')
	static function textureFoveationParametersQCOM(texture:GLuint, layer:GLuint, focalPoint:GLuint, focalX:GLfloat, focalY:GLfloat, gainX:GLfloat, gainY:GLfloat, foveaArea:GLfloat):Void;

	@:native('glFramebufferFetchBarrierQCOM')
	static function framebufferFetchBarrierQCOM():Void;

	@:native('glShadingRateQCOM')
	static function shadingRateQCOM(rate:GLenum):Void;

	@:native('glStartTilingQCOM')
	static function startTilingQCOM(x:GLuint, y:GLuint, width:GLuint, height:GLuint, preserveMask:GLbitfield):Void;

	@:native('glEndTilingQCOM')
	static function endTilingQCOM(preserveMask:GLbitfield):Void;
}
