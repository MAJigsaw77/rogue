package rogue.internal.externs.glad.opengl;

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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
@:native('GLfloat')
@:scalar
@:coreType
@:notNull
extern abstract GLfloat from Single to Single
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLfloat)');
	}
}

@:include('glad/gl.h')
@:native('GLclampf')
@:scalar
@:coreType
@:notNull
extern abstract GLclampf from Single to Single
{
	static inline function size():SizeT
	{
		return untyped __cpp__('sizeof(GLclampf)');
	}
}

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

extern abstract CastGLcharStar(RawPointer<GLchar>) to (RawPointer<GLchar>)
{
	inline function new(s:String)
		this = cast untyped s.__s;

	@:from
	static public inline function fromString(s:String):CastGLcharStar
		return new CastGLcharStar(s);

	@:to extern public inline function toPointer():RawPointer<GLchar>
		return this;
}

@:include('glad/gl.h')
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

extern abstract CastGLcharARBStar(RawPointer<GLcharARB>) to (RawPointer<GLcharARB>)
{
	inline function new(s:String)
		this = cast untyped s.__s;

	@:from
	static public inline function fromString(s:String):CastGLcharARBStar
		return new CastGLcharARBStar(s);

	@:to extern public inline function toPointer():RawPointer<GLcharARB>
		return this;
}

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
@:native('_cl_context')
extern class CL_Context {}

@:include('glad/gl.h')
@:native('_cl_event')
extern class CL_Event {}

typedef GLDEBUGPROC = Callable<(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, message:ConstGLcharStar, userParam:RawConstPointer<Void>)->Void>;

typedef GLDEBUGPROCARB = Callable<(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, message:ConstGLcharStar, userParam:RawConstPointer<Void>)->Void>;

typedef GLDEBUGPROCKHR = Callable<(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, message:ConstGLcharStar, userParam:RawConstPointer<Void>)->Void>;

typedef GLDEBUGPROCAMD = Callable<(id:GLuint, category:GLenum, severity:GLenum, length:GLsizei, message:ConstGLcharStar, userParam:RawPointer<Void>)->Void>;

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

@:include('glad/gl.h')
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

	@:native('GL_QUADS')
	static var QUADS:GLuint;

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

	@:native('GL_NONE')
	static var NONE:GLuint;

	@:native('GL_FRONT_LEFT')
	static var FRONT_LEFT:GLuint;

	@:native('GL_FRONT_RIGHT')
	static var FRONT_RIGHT:GLuint;

	@:native('GL_BACK_LEFT')
	static var BACK_LEFT:GLuint;

	@:native('GL_BACK_RIGHT')
	static var BACK_RIGHT:GLuint;

	@:native('GL_FRONT')
	static var FRONT:GLuint;

	@:native('GL_BACK')
	static var BACK:GLuint;

	@:native('GL_LEFT')
	static var LEFT:GLuint;

	@:native('GL_RIGHT')
	static var RIGHT:GLuint;

	@:native('GL_FRONT_AND_BACK')
	static var FRONT_AND_BACK:GLuint;

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

	@:native('GL_POINT_SIZE')
	static var POINT_SIZE:GLuint;

	@:native('GL_POINT_SIZE_RANGE')
	static var POINT_SIZE_RANGE:GLuint;

	@:native('GL_POINT_SIZE_GRANULARITY')
	static var POINT_SIZE_GRANULARITY:GLuint;

	@:native('GL_LINE_SMOOTH')
	static var LINE_SMOOTH:GLuint;

	@:native('GL_LINE_WIDTH')
	static var LINE_WIDTH:GLuint;

	@:native('GL_LINE_WIDTH_RANGE')
	static var LINE_WIDTH_RANGE:GLuint;

	@:native('GL_LINE_WIDTH_GRANULARITY')
	static var LINE_WIDTH_GRANULARITY:GLuint;

	@:native('GL_POLYGON_MODE')
	static var POLYGON_MODE:GLuint;

	@:native('GL_POLYGON_SMOOTH')
	static var POLYGON_SMOOTH:GLuint;

	@:native('GL_CULL_FACE')
	static var CULL_FACE:GLuint;

	@:native('GL_CULL_FACE_MODE')
	static var CULL_FACE_MODE:GLuint;

	@:native('GL_FRONT_FACE')
	static var FRONT_FACE:GLuint;

	@:native('GL_DEPTH_RANGE')
	static var DEPTH_RANGE:GLuint;

	@:native('GL_DEPTH_TEST')
	static var DEPTH_TEST:GLuint;

	@:native('GL_DEPTH_WRITEMASK')
	static var DEPTH_WRITEMASK:GLuint;

	@:native('GL_DEPTH_CLEAR_VALUE')
	static var DEPTH_CLEAR_VALUE:GLuint;

	@:native('GL_DEPTH_FUNC')
	static var DEPTH_FUNC:GLuint;

	@:native('GL_STENCIL_TEST')
	static var STENCIL_TEST:GLuint;

	@:native('GL_STENCIL_CLEAR_VALUE')
	static var STENCIL_CLEAR_VALUE:GLuint;

	@:native('GL_STENCIL_FUNC')
	static var STENCIL_FUNC:GLuint;

	@:native('GL_STENCIL_VALUE_MASK')
	static var STENCIL_VALUE_MASK:GLuint;

	@:native('GL_STENCIL_FAIL')
	static var STENCIL_FAIL:GLuint;

	@:native('GL_STENCIL_PASS_DEPTH_FAIL')
	static var STENCIL_PASS_DEPTH_FAIL:GLuint;

	@:native('GL_STENCIL_PASS_DEPTH_PASS')
	static var STENCIL_PASS_DEPTH_PASS:GLuint;

	@:native('GL_STENCIL_REF')
	static var STENCIL_REF:GLuint;

	@:native('GL_STENCIL_WRITEMASK')
	static var STENCIL_WRITEMASK:GLuint;

	@:native('GL_VIEWPORT')
	static var VIEWPORT:GLuint;

	@:native('GL_DITHER')
	static var DITHER:GLuint;

	@:native('GL_BLEND_DST')
	static var BLEND_DST:GLuint;

	@:native('GL_BLEND_SRC')
	static var BLEND_SRC:GLuint;

	@:native('GL_BLEND')
	static var BLEND:GLuint;

	@:native('GL_LOGIC_OP_MODE')
	static var LOGIC_OP_MODE:GLuint;

	@:native('GL_DRAW_BUFFER')
	static var DRAW_BUFFER:GLuint;

	@:native('GL_READ_BUFFER')
	static var READ_BUFFER:GLuint;

	@:native('GL_SCISSOR_BOX')
	static var SCISSOR_BOX:GLuint;

	@:native('GL_SCISSOR_TEST')
	static var SCISSOR_TEST:GLuint;

	@:native('GL_COLOR_CLEAR_VALUE')
	static var COLOR_CLEAR_VALUE:GLuint;

	@:native('GL_COLOR_WRITEMASK')
	static var COLOR_WRITEMASK:GLuint;

	@:native('GL_DOUBLEBUFFER')
	static var DOUBLEBUFFER:GLuint;

	@:native('GL_STEREO')
	static var STEREO:GLuint;

	@:native('GL_LINE_SMOOTH_HINT')
	static var LINE_SMOOTH_HINT:GLuint;

	@:native('GL_POLYGON_SMOOTH_HINT')
	static var POLYGON_SMOOTH_HINT:GLuint;

	@:native('GL_UNPACK_SWAP_BYTES')
	static var UNPACK_SWAP_BYTES:GLuint;

	@:native('GL_UNPACK_LSB_FIRST')
	static var UNPACK_LSB_FIRST:GLuint;

	@:native('GL_UNPACK_ROW_LENGTH')
	static var UNPACK_ROW_LENGTH:GLuint;

	@:native('GL_UNPACK_SKIP_ROWS')
	static var UNPACK_SKIP_ROWS:GLuint;

	@:native('GL_UNPACK_SKIP_PIXELS')
	static var UNPACK_SKIP_PIXELS:GLuint;

	@:native('GL_UNPACK_ALIGNMENT')
	static var UNPACK_ALIGNMENT:GLuint;

	@:native('GL_PACK_SWAP_BYTES')
	static var PACK_SWAP_BYTES:GLuint;

	@:native('GL_PACK_LSB_FIRST')
	static var PACK_LSB_FIRST:GLuint;

	@:native('GL_PACK_ROW_LENGTH')
	static var PACK_ROW_LENGTH:GLuint;

	@:native('GL_PACK_SKIP_ROWS')
	static var PACK_SKIP_ROWS:GLuint;

	@:native('GL_PACK_SKIP_PIXELS')
	static var PACK_SKIP_PIXELS:GLuint;

	@:native('GL_PACK_ALIGNMENT')
	static var PACK_ALIGNMENT:GLuint;

	@:native('GL_MAX_TEXTURE_SIZE')
	static var MAX_TEXTURE_SIZE:GLuint;

	@:native('GL_MAX_VIEWPORT_DIMS')
	static var MAX_VIEWPORT_DIMS:GLuint;

	@:native('GL_SUBPIXEL_BITS')
	static var SUBPIXEL_BITS:GLuint;

	@:native('GL_TEXTURE_1D')
	static var TEXTURE_1D:GLuint;

	@:native('GL_TEXTURE_2D')
	static var TEXTURE_2D:GLuint;

	@:native('GL_TEXTURE_WIDTH')
	static var TEXTURE_WIDTH:GLuint;

	@:native('GL_TEXTURE_HEIGHT')
	static var TEXTURE_HEIGHT:GLuint;

	@:native('GL_TEXTURE_BORDER_COLOR')
	static var TEXTURE_BORDER_COLOR:GLuint;

	@:native('GL_DONT_CARE')
	static var DONT_CARE:GLuint;

	@:native('GL_FASTEST')
	static var FASTEST:GLuint;

	@:native('GL_NICEST')
	static var NICEST:GLuint;

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

	@:native('GL_STACK_OVERFLOW')
	static var STACK_OVERFLOW:GLuint;

	@:native('GL_STACK_UNDERFLOW')
	static var STACK_UNDERFLOW:GLuint;

	@:native('GL_CLEAR')
	static var CLEAR:GLuint;

	@:native('GL_AND')
	static var AND:GLuint;

	@:native('GL_AND_REVERSE')
	static var AND_REVERSE:GLuint;

	@:native('GL_COPY')
	static var COPY:GLuint;

	@:native('GL_AND_INVERTED')
	static var AND_INVERTED:GLuint;

	@:native('GL_NOOP')
	static var NOOP:GLuint;

	@:native('GL_XOR')
	static var XOR:GLuint;

	@:native('GL_OR')
	static var OR:GLuint;

	@:native('GL_NOR')
	static var NOR:GLuint;

	@:native('GL_EQUIV')
	static var EQUIV:GLuint;

	@:native('GL_INVERT')
	static var INVERT:GLuint;

	@:native('GL_OR_REVERSE')
	static var OR_REVERSE:GLuint;

	@:native('GL_COPY_INVERTED')
	static var COPY_INVERTED:GLuint;

	@:native('GL_OR_INVERTED')
	static var OR_INVERTED:GLuint;

	@:native('GL_NAND')
	static var NAND:GLuint;

	@:native('GL_SET')
	static var SET:GLuint;

	@:native('GL_TEXTURE')
	static var TEXTURE:GLuint;

	@:native('GL_COLOR')
	static var COLOR:GLuint;

	@:native('GL_DEPTH')
	static var DEPTH:GLuint;

	@:native('GL_STENCIL')
	static var STENCIL:GLuint;

	@:native('GL_STENCIL_INDEX')
	static var STENCIL_INDEX:GLuint;

	@:native('GL_DEPTH_COMPONENT')
	static var DEPTH_COMPONENT:GLuint;

	@:native('GL_RED')
	static var RED:GLuint;

	@:native('GL_GREEN')
	static var GREEN:GLuint;

	@:native('GL_BLUE')
	static var BLUE:GLuint;

	@:native('GL_ALPHA')
	static var ALPHA:GLuint;

	@:native('GL_RGB')
	static var RGB:GLuint;

	@:native('GL_RGBA')
	static var RGBA:GLuint;

	@:native('GL_POINT')
	static var POINT:GLuint;

	@:native('GL_LINE')
	static var LINE:GLuint;

	@:native('GL_FILL')
	static var FILL:GLuint;

	@:native('GL_KEEP')
	static var KEEP:GLuint;

	@:native('GL_REPLACE')
	static var REPLACE:GLuint;

	@:native('GL_INCR')
	static var INCR:GLuint;

	@:native('GL_DECR')
	static var DECR:GLuint;

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

	@:native('GL_REPEAT')
	static var REPEAT:GLuint;

	@:native('GL_CURRENT_BIT')
	static var CURRENT_BIT:GLuint;

	@:native('GL_POINT_BIT')
	static var POINT_BIT:GLuint;

	@:native('GL_LINE_BIT')
	static var LINE_BIT:GLuint;

	@:native('GL_POLYGON_BIT')
	static var POLYGON_BIT:GLuint;

	@:native('GL_POLYGON_STIPPLE_BIT')
	static var POLYGON_STIPPLE_BIT:GLuint;

	@:native('GL_PIXEL_MODE_BIT')
	static var PIXEL_MODE_BIT:GLuint;

	@:native('GL_LIGHTING_BIT')
	static var LIGHTING_BIT:GLuint;

	@:native('GL_FOG_BIT')
	static var FOG_BIT:GLuint;

	@:native('GL_ACCUM_BUFFER_BIT')
	static var ACCUM_BUFFER_BIT:GLuint;

	@:native('GL_VIEWPORT_BIT')
	static var VIEWPORT_BIT:GLuint;

	@:native('GL_TRANSFORM_BIT')
	static var TRANSFORM_BIT:GLuint;

	@:native('GL_ENABLE_BIT')
	static var ENABLE_BIT:GLuint;

	@:native('GL_HINT_BIT')
	static var HINT_BIT:GLuint;

	@:native('GL_EVAL_BIT')
	static var EVAL_BIT:GLuint;

	@:native('GL_LIST_BIT')
	static var LIST_BIT:GLuint;

	@:native('GL_TEXTURE_BIT')
	static var TEXTURE_BIT:GLuint;

	@:native('GL_SCISSOR_BIT')
	static var SCISSOR_BIT:GLuint;

	@:native('GL_ALL_ATTRIB_BITS')
	static var ALL_ATTRIB_BITS:GLuint;

	@:native('GL_QUAD_STRIP')
	static var QUAD_STRIP:GLuint;

	@:native('GL_POLYGON')
	static var POLYGON:GLuint;

	@:native('GL_ACCUM')
	static var ACCUM:GLuint;

	@:native('GL_LOAD')
	static var LOAD:GLuint;

	@:native('GL_RETURN')
	static var RETURN:GLuint;

	@:native('GL_MULT')
	static var MULT:GLuint;

	@:native('GL_ADD')
	static var ADD:GLuint;

	@:native('GL_AUX0')
	static var AUX0:GLuint;

	@:native('GL_AUX1')
	static var AUX1:GLuint;

	@:native('GL_AUX2')
	static var AUX2:GLuint;

	@:native('GL_AUX3')
	static var AUX3:GLuint;

	@:native('GL_2D')
	static var _2D:GLuint;

	@:native('GL_3D')
	static var _3D:GLuint;

	@:native('GL_3D_COLOR')
	static var _3D_COLOR:GLuint;

	@:native('GL_3D_COLOR_TEXTURE')
	static var _3D_COLOR_TEXTURE:GLuint;

	@:native('GL_4D_COLOR_TEXTURE')
	static var _4D_COLOR_TEXTURE:GLuint;

	@:native('GL_PASS_THROUGH_TOKEN')
	static var PASS_THROUGH_TOKEN:GLuint;

	@:native('GL_POINT_TOKEN')
	static var POINT_TOKEN:GLuint;

	@:native('GL_LINE_TOKEN')
	static var LINE_TOKEN:GLuint;

	@:native('GL_POLYGON_TOKEN')
	static var POLYGON_TOKEN:GLuint;

	@:native('GL_BITMAP_TOKEN')
	static var BITMAP_TOKEN:GLuint;

	@:native('GL_DRAW_PIXEL_TOKEN')
	static var DRAW_PIXEL_TOKEN:GLuint;

	@:native('GL_COPY_PIXEL_TOKEN')
	static var COPY_PIXEL_TOKEN:GLuint;

	@:native('GL_LINE_RESET_TOKEN')
	static var LINE_RESET_TOKEN:GLuint;

	@:native('GL_EXP')
	static var EXP:GLuint;

	@:native('GL_EXP2')
	static var EXP2:GLuint;

	@:native('GL_COEFF')
	static var COEFF:GLuint;

	@:native('GL_ORDER')
	static var ORDER:GLuint;

	@:native('GL_DOMAIN')
	static var DOMAIN:GLuint;

	@:native('GL_PIXEL_MAP_I_TO_I')
	static var PIXEL_MAP_I_TO_I:GLuint;

	@:native('GL_PIXEL_MAP_S_TO_S')
	static var PIXEL_MAP_S_TO_S:GLuint;

	@:native('GL_PIXEL_MAP_I_TO_R')
	static var PIXEL_MAP_I_TO_R:GLuint;

	@:native('GL_PIXEL_MAP_I_TO_G')
	static var PIXEL_MAP_I_TO_G:GLuint;

	@:native('GL_PIXEL_MAP_I_TO_B')
	static var PIXEL_MAP_I_TO_B:GLuint;

	@:native('GL_PIXEL_MAP_I_TO_A')
	static var PIXEL_MAP_I_TO_A:GLuint;

	@:native('GL_PIXEL_MAP_R_TO_R')
	static var PIXEL_MAP_R_TO_R:GLuint;

	@:native('GL_PIXEL_MAP_G_TO_G')
	static var PIXEL_MAP_G_TO_G:GLuint;

	@:native('GL_PIXEL_MAP_B_TO_B')
	static var PIXEL_MAP_B_TO_B:GLuint;

	@:native('GL_PIXEL_MAP_A_TO_A')
	static var PIXEL_MAP_A_TO_A:GLuint;

	@:native('GL_CURRENT_COLOR')
	static var CURRENT_COLOR:GLuint;

	@:native('GL_CURRENT_INDEX')
	static var CURRENT_INDEX:GLuint;

	@:native('GL_CURRENT_NORMAL')
	static var CURRENT_NORMAL:GLuint;

	@:native('GL_CURRENT_TEXTURE_COORDS')
	static var CURRENT_TEXTURE_COORDS:GLuint;

	@:native('GL_CURRENT_RASTER_COLOR')
	static var CURRENT_RASTER_COLOR:GLuint;

	@:native('GL_CURRENT_RASTER_INDEX')
	static var CURRENT_RASTER_INDEX:GLuint;

	@:native('GL_CURRENT_RASTER_TEXTURE_COORDS')
	static var CURRENT_RASTER_TEXTURE_COORDS:GLuint;

	@:native('GL_CURRENT_RASTER_POSITION')
	static var CURRENT_RASTER_POSITION:GLuint;

	@:native('GL_CURRENT_RASTER_POSITION_VALID')
	static var CURRENT_RASTER_POSITION_VALID:GLuint;

	@:native('GL_CURRENT_RASTER_DISTANCE')
	static var CURRENT_RASTER_DISTANCE:GLuint;

	@:native('GL_POINT_SMOOTH')
	static var POINT_SMOOTH:GLuint;

	@:native('GL_LINE_STIPPLE')
	static var LINE_STIPPLE:GLuint;

	@:native('GL_LINE_STIPPLE_PATTERN')
	static var LINE_STIPPLE_PATTERN:GLuint;

	@:native('GL_LINE_STIPPLE_REPEAT')
	static var LINE_STIPPLE_REPEAT:GLuint;

	@:native('GL_LIST_MODE')
	static var LIST_MODE:GLuint;

	@:native('GL_MAX_LIST_NESTING')
	static var MAX_LIST_NESTING:GLuint;

	@:native('GL_LIST_BASE')
	static var LIST_BASE:GLuint;

	@:native('GL_LIST_INDEX')
	static var LIST_INDEX:GLuint;

	@:native('GL_POLYGON_STIPPLE')
	static var POLYGON_STIPPLE:GLuint;

	@:native('GL_EDGE_FLAG')
	static var EDGE_FLAG:GLuint;

	@:native('GL_LIGHTING')
	static var LIGHTING:GLuint;

	@:native('GL_LIGHT_MODEL_LOCAL_VIEWER')
	static var LIGHT_MODEL_LOCAL_VIEWER:GLuint;

	@:native('GL_LIGHT_MODEL_TWO_SIDE')
	static var LIGHT_MODEL_TWO_SIDE:GLuint;

	@:native('GL_LIGHT_MODEL_AMBIENT')
	static var LIGHT_MODEL_AMBIENT:GLuint;

	@:native('GL_SHADE_MODEL')
	static var SHADE_MODEL:GLuint;

	@:native('GL_COLOR_MATERIAL_FACE')
	static var COLOR_MATERIAL_FACE:GLuint;

	@:native('GL_COLOR_MATERIAL_PARAMETER')
	static var COLOR_MATERIAL_PARAMETER:GLuint;

	@:native('GL_COLOR_MATERIAL')
	static var COLOR_MATERIAL:GLuint;

	@:native('GL_FOG')
	static var FOG:GLuint;

	@:native('GL_FOG_INDEX')
	static var FOG_INDEX:GLuint;

	@:native('GL_FOG_DENSITY')
	static var FOG_DENSITY:GLuint;

	@:native('GL_FOG_START')
	static var FOG_START:GLuint;

	@:native('GL_FOG_END')
	static var FOG_END:GLuint;

	@:native('GL_FOG_MODE')
	static var FOG_MODE:GLuint;

	@:native('GL_FOG_COLOR')
	static var FOG_COLOR:GLuint;

	@:native('GL_ACCUM_CLEAR_VALUE')
	static var ACCUM_CLEAR_VALUE:GLuint;

	@:native('GL_MATRIX_MODE')
	static var MATRIX_MODE:GLuint;

	@:native('GL_NORMALIZE')
	static var NORMALIZE:GLuint;

	@:native('GL_MODELVIEW_STACK_DEPTH')
	static var MODELVIEW_STACK_DEPTH:GLuint;

	@:native('GL_PROJECTION_STACK_DEPTH')
	static var PROJECTION_STACK_DEPTH:GLuint;

	@:native('GL_TEXTURE_STACK_DEPTH')
	static var TEXTURE_STACK_DEPTH:GLuint;

	@:native('GL_MODELVIEW_MATRIX')
	static var MODELVIEW_MATRIX:GLuint;

	@:native('GL_PROJECTION_MATRIX')
	static var PROJECTION_MATRIX:GLuint;

	@:native('GL_TEXTURE_MATRIX')
	static var TEXTURE_MATRIX:GLuint;

	@:native('GL_ATTRIB_STACK_DEPTH')
	static var ATTRIB_STACK_DEPTH:GLuint;

	@:native('GL_ALPHA_TEST')
	static var ALPHA_TEST:GLuint;

	@:native('GL_ALPHA_TEST_FUNC')
	static var ALPHA_TEST_FUNC:GLuint;

	@:native('GL_ALPHA_TEST_REF')
	static var ALPHA_TEST_REF:GLuint;

	@:native('GL_LOGIC_OP')
	static var LOGIC_OP:GLuint;

	@:native('GL_AUX_BUFFERS')
	static var AUX_BUFFERS:GLuint;

	@:native('GL_INDEX_CLEAR_VALUE')
	static var INDEX_CLEAR_VALUE:GLuint;

	@:native('GL_INDEX_WRITEMASK')
	static var INDEX_WRITEMASK:GLuint;

	@:native('GL_INDEX_MODE')
	static var INDEX_MODE:GLuint;

	@:native('GL_RGBA_MODE')
	static var RGBA_MODE:GLuint;

	@:native('GL_RENDER_MODE')
	static var RENDER_MODE:GLuint;

	@:native('GL_PERSPECTIVE_CORRECTION_HINT')
	static var PERSPECTIVE_CORRECTION_HINT:GLuint;

	@:native('GL_POINT_SMOOTH_HINT')
	static var POINT_SMOOTH_HINT:GLuint;

	@:native('GL_FOG_HINT')
	static var FOG_HINT:GLuint;

	@:native('GL_TEXTURE_GEN_S')
	static var TEXTURE_GEN_S:GLuint;

	@:native('GL_TEXTURE_GEN_T')
	static var TEXTURE_GEN_T:GLuint;

	@:native('GL_TEXTURE_GEN_R')
	static var TEXTURE_GEN_R:GLuint;

	@:native('GL_TEXTURE_GEN_Q')
	static var TEXTURE_GEN_Q:GLuint;

	@:native('GL_PIXEL_MAP_I_TO_I_SIZE')
	static var PIXEL_MAP_I_TO_I_SIZE:GLuint;

	@:native('GL_PIXEL_MAP_S_TO_S_SIZE')
	static var PIXEL_MAP_S_TO_S_SIZE:GLuint;

	@:native('GL_PIXEL_MAP_I_TO_R_SIZE')
	static var PIXEL_MAP_I_TO_R_SIZE:GLuint;

	@:native('GL_PIXEL_MAP_I_TO_G_SIZE')
	static var PIXEL_MAP_I_TO_G_SIZE:GLuint;

	@:native('GL_PIXEL_MAP_I_TO_B_SIZE')
	static var PIXEL_MAP_I_TO_B_SIZE:GLuint;

	@:native('GL_PIXEL_MAP_I_TO_A_SIZE')
	static var PIXEL_MAP_I_TO_A_SIZE:GLuint;

	@:native('GL_PIXEL_MAP_R_TO_R_SIZE')
	static var PIXEL_MAP_R_TO_R_SIZE:GLuint;

	@:native('GL_PIXEL_MAP_G_TO_G_SIZE')
	static var PIXEL_MAP_G_TO_G_SIZE:GLuint;

	@:native('GL_PIXEL_MAP_B_TO_B_SIZE')
	static var PIXEL_MAP_B_TO_B_SIZE:GLuint;

	@:native('GL_PIXEL_MAP_A_TO_A_SIZE')
	static var PIXEL_MAP_A_TO_A_SIZE:GLuint;

	@:native('GL_MAP_COLOR')
	static var MAP_COLOR:GLuint;

	@:native('GL_MAP_STENCIL')
	static var MAP_STENCIL:GLuint;

	@:native('GL_INDEX_SHIFT')
	static var INDEX_SHIFT:GLuint;

	@:native('GL_INDEX_OFFSET')
	static var INDEX_OFFSET:GLuint;

	@:native('GL_RED_SCALE')
	static var RED_SCALE:GLuint;

	@:native('GL_RED_BIAS')
	static var RED_BIAS:GLuint;

	@:native('GL_ZOOM_X')
	static var ZOOM_X:GLuint;

	@:native('GL_ZOOM_Y')
	static var ZOOM_Y:GLuint;

	@:native('GL_GREEN_SCALE')
	static var GREEN_SCALE:GLuint;

	@:native('GL_GREEN_BIAS')
	static var GREEN_BIAS:GLuint;

	@:native('GL_BLUE_SCALE')
	static var BLUE_SCALE:GLuint;

	@:native('GL_BLUE_BIAS')
	static var BLUE_BIAS:GLuint;

	@:native('GL_ALPHA_SCALE')
	static var ALPHA_SCALE:GLuint;

	@:native('GL_ALPHA_BIAS')
	static var ALPHA_BIAS:GLuint;

	@:native('GL_DEPTH_SCALE')
	static var DEPTH_SCALE:GLuint;

	@:native('GL_DEPTH_BIAS')
	static var DEPTH_BIAS:GLuint;

	@:native('GL_MAX_EVAL_ORDER')
	static var MAX_EVAL_ORDER:GLuint;

	@:native('GL_MAX_LIGHTS')
	static var MAX_LIGHTS:GLuint;

	@:native('GL_MAX_CLIP_PLANES')
	static var MAX_CLIP_PLANES:GLuint;

	@:native('GL_MAX_PIXEL_MAP_TABLE')
	static var MAX_PIXEL_MAP_TABLE:GLuint;

	@:native('GL_MAX_ATTRIB_STACK_DEPTH')
	static var MAX_ATTRIB_STACK_DEPTH:GLuint;

	@:native('GL_MAX_MODELVIEW_STACK_DEPTH')
	static var MAX_MODELVIEW_STACK_DEPTH:GLuint;

	@:native('GL_MAX_NAME_STACK_DEPTH')
	static var MAX_NAME_STACK_DEPTH:GLuint;

	@:native('GL_MAX_PROJECTION_STACK_DEPTH')
	static var MAX_PROJECTION_STACK_DEPTH:GLuint;

	@:native('GL_MAX_TEXTURE_STACK_DEPTH')
	static var MAX_TEXTURE_STACK_DEPTH:GLuint;

	@:native('GL_INDEX_BITS')
	static var INDEX_BITS:GLuint;

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

	@:native('GL_ACCUM_RED_BITS')
	static var ACCUM_RED_BITS:GLuint;

	@:native('GL_ACCUM_GREEN_BITS')
	static var ACCUM_GREEN_BITS:GLuint;

	@:native('GL_ACCUM_BLUE_BITS')
	static var ACCUM_BLUE_BITS:GLuint;

	@:native('GL_ACCUM_ALPHA_BITS')
	static var ACCUM_ALPHA_BITS:GLuint;

	@:native('GL_NAME_STACK_DEPTH')
	static var NAME_STACK_DEPTH:GLuint;

	@:native('GL_AUTO_NORMAL')
	static var AUTO_NORMAL:GLuint;

	@:native('GL_MAP1_COLOR_4')
	static var MAP1_COLOR_4:GLuint;

	@:native('GL_MAP1_INDEX')
	static var MAP1_INDEX:GLuint;

	@:native('GL_MAP1_NORMAL')
	static var MAP1_NORMAL:GLuint;

	@:native('GL_MAP1_TEXTURE_COORD_1')
	static var MAP1_TEXTURE_COORD_1:GLuint;

	@:native('GL_MAP1_TEXTURE_COORD_2')
	static var MAP1_TEXTURE_COORD_2:GLuint;

	@:native('GL_MAP1_TEXTURE_COORD_3')
	static var MAP1_TEXTURE_COORD_3:GLuint;

	@:native('GL_MAP1_TEXTURE_COORD_4')
	static var MAP1_TEXTURE_COORD_4:GLuint;

	@:native('GL_MAP1_VERTEX_3')
	static var MAP1_VERTEX_3:GLuint;

	@:native('GL_MAP1_VERTEX_4')
	static var MAP1_VERTEX_4:GLuint;

	@:native('GL_MAP2_COLOR_4')
	static var MAP2_COLOR_4:GLuint;

	@:native('GL_MAP2_INDEX')
	static var MAP2_INDEX:GLuint;

	@:native('GL_MAP2_NORMAL')
	static var MAP2_NORMAL:GLuint;

	@:native('GL_MAP2_TEXTURE_COORD_1')
	static var MAP2_TEXTURE_COORD_1:GLuint;

	@:native('GL_MAP2_TEXTURE_COORD_2')
	static var MAP2_TEXTURE_COORD_2:GLuint;

	@:native('GL_MAP2_TEXTURE_COORD_3')
	static var MAP2_TEXTURE_COORD_3:GLuint;

	@:native('GL_MAP2_TEXTURE_COORD_4')
	static var MAP2_TEXTURE_COORD_4:GLuint;

	@:native('GL_MAP2_VERTEX_3')
	static var MAP2_VERTEX_3:GLuint;

	@:native('GL_MAP2_VERTEX_4')
	static var MAP2_VERTEX_4:GLuint;

	@:native('GL_MAP1_GRID_DOMAIN')
	static var MAP1_GRID_DOMAIN:GLuint;

	@:native('GL_MAP1_GRID_SEGMENTS')
	static var MAP1_GRID_SEGMENTS:GLuint;

	@:native('GL_MAP2_GRID_DOMAIN')
	static var MAP2_GRID_DOMAIN:GLuint;

	@:native('GL_MAP2_GRID_SEGMENTS')
	static var MAP2_GRID_SEGMENTS:GLuint;

	@:native('GL_TEXTURE_COMPONENTS')
	static var TEXTURE_COMPONENTS:GLuint;

	@:native('GL_TEXTURE_BORDER')
	static var TEXTURE_BORDER:GLuint;

	@:native('GL_AMBIENT')
	static var AMBIENT:GLuint;

	@:native('GL_DIFFUSE')
	static var DIFFUSE:GLuint;

	@:native('GL_SPECULAR')
	static var SPECULAR:GLuint;

	@:native('GL_POSITION')
	static var POSITION:GLuint;

	@:native('GL_SPOT_DIRECTION')
	static var SPOT_DIRECTION:GLuint;

	@:native('GL_SPOT_EXPONENT')
	static var SPOT_EXPONENT:GLuint;

	@:native('GL_SPOT_CUTOFF')
	static var SPOT_CUTOFF:GLuint;

	@:native('GL_CONSTANT_ATTENUATION')
	static var CONSTANT_ATTENUATION:GLuint;

	@:native('GL_LINEAR_ATTENUATION')
	static var LINEAR_ATTENUATION:GLuint;

	@:native('GL_QUADRATIC_ATTENUATION')
	static var QUADRATIC_ATTENUATION:GLuint;

	@:native('GL_COMPILE')
	static var COMPILE:GLuint;

	@:native('GL_COMPILE_AND_EXECUTE')
	static var COMPILE_AND_EXECUTE:GLuint;

	@:native('GL_2_BYTES')
	static var _2_BYTES:GLuint;

	@:native('GL_3_BYTES')
	static var _3_BYTES:GLuint;

	@:native('GL_4_BYTES')
	static var _4_BYTES:GLuint;

	@:native('GL_EMISSION')
	static var EMISSION:GLuint;

	@:native('GL_SHININESS')
	static var SHININESS:GLuint;

	@:native('GL_AMBIENT_AND_DIFFUSE')
	static var AMBIENT_AND_DIFFUSE:GLuint;

	@:native('GL_COLOR_INDEXES')
	static var COLOR_INDEXES:GLuint;

	@:native('GL_MODELVIEW')
	static var MODELVIEW:GLuint;

	@:native('GL_PROJECTION')
	static var PROJECTION:GLuint;

	@:native('GL_COLOR_INDEX')
	static var COLOR_INDEX:GLuint;

	@:native('GL_LUMINANCE')
	static var LUMINANCE:GLuint;

	@:native('GL_LUMINANCE_ALPHA')
	static var LUMINANCE_ALPHA:GLuint;

	@:native('GL_BITMAP')
	static var BITMAP:GLuint;

	@:native('GL_RENDER')
	static var RENDER:GLuint;

	@:native('GL_FEEDBACK')
	static var FEEDBACK:GLuint;

	@:native('GL_SELECT')
	static var SELECT:GLuint;

	@:native('GL_FLAT')
	static var FLAT:GLuint;

	@:native('GL_SMOOTH')
	static var SMOOTH:GLuint;

	@:native('GL_S')
	static var S:GLuint;

	@:native('GL_T')
	static var T:GLuint;

	@:native('GL_R')
	static var R:GLuint;

	@:native('GL_Q')
	static var Q:GLuint;

	@:native('GL_MODULATE')
	static var MODULATE:GLuint;

	@:native('GL_DECAL')
	static var DECAL:GLuint;

	@:native('GL_TEXTURE_ENV_MODE')
	static var TEXTURE_ENV_MODE:GLuint;

	@:native('GL_TEXTURE_ENV_COLOR')
	static var TEXTURE_ENV_COLOR:GLuint;

	@:native('GL_TEXTURE_ENV')
	static var TEXTURE_ENV:GLuint;

	@:native('GL_EYE_LINEAR')
	static var EYE_LINEAR:GLuint;

	@:native('GL_OBJECT_LINEAR')
	static var OBJECT_LINEAR:GLuint;

	@:native('GL_SPHERE_MAP')
	static var SPHERE_MAP:GLuint;

	@:native('GL_TEXTURE_GEN_MODE')
	static var TEXTURE_GEN_MODE:GLuint;

	@:native('GL_OBJECT_PLANE')
	static var OBJECT_PLANE:GLuint;

	@:native('GL_EYE_PLANE')
	static var EYE_PLANE:GLuint;

	@:native('GL_CLAMP')
	static var CLAMP:GLuint;

	@:native('GL_CLIP_PLANE0')
	static var CLIP_PLANE0:GLuint;

	@:native('GL_CLIP_PLANE1')
	static var CLIP_PLANE1:GLuint;

	@:native('GL_CLIP_PLANE2')
	static var CLIP_PLANE2:GLuint;

	@:native('GL_CLIP_PLANE3')
	static var CLIP_PLANE3:GLuint;

	@:native('GL_CLIP_PLANE4')
	static var CLIP_PLANE4:GLuint;

	@:native('GL_CLIP_PLANE5')
	static var CLIP_PLANE5:GLuint;

	@:native('GL_LIGHT0')
	static var LIGHT0:GLuint;

	@:native('GL_LIGHT1')
	static var LIGHT1:GLuint;

	@:native('GL_LIGHT2')
	static var LIGHT2:GLuint;

	@:native('GL_LIGHT3')
	static var LIGHT3:GLuint;

	@:native('GL_LIGHT4')
	static var LIGHT4:GLuint;

	@:native('GL_LIGHT5')
	static var LIGHT5:GLuint;

	@:native('GL_LIGHT6')
	static var LIGHT6:GLuint;

	@:native('GL_LIGHT7')
	static var LIGHT7:GLuint;

	@:native('GL_COLOR_LOGIC_OP')
	static var COLOR_LOGIC_OP:GLuint;

	@:native('GL_POLYGON_OFFSET_UNITS')
	static var POLYGON_OFFSET_UNITS:GLuint;

	@:native('GL_POLYGON_OFFSET_POINT')
	static var POLYGON_OFFSET_POINT:GLuint;

	@:native('GL_POLYGON_OFFSET_LINE')
	static var POLYGON_OFFSET_LINE:GLuint;

	@:native('GL_POLYGON_OFFSET_FILL')
	static var POLYGON_OFFSET_FILL:GLuint;

	@:native('GL_POLYGON_OFFSET_FACTOR')
	static var POLYGON_OFFSET_FACTOR:GLuint;

	@:native('GL_TEXTURE_BINDING_1D')
	static var TEXTURE_BINDING_1D:GLuint;

	@:native('GL_TEXTURE_BINDING_2D')
	static var TEXTURE_BINDING_2D:GLuint;

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

	@:native('GL_DOUBLE')
	static var DOUBLE:GLuint;

	@:native('GL_PROXY_TEXTURE_1D')
	static var PROXY_TEXTURE_1D:GLuint;

	@:native('GL_PROXY_TEXTURE_2D')
	static var PROXY_TEXTURE_2D:GLuint;

	@:native('GL_R3_G3_B2')
	static var R3_G3_B2:GLuint;

	@:native('GL_RGB4')
	static var RGB4:GLuint;

	@:native('GL_RGB5')
	static var RGB5:GLuint;

	@:native('GL_RGB8')
	static var RGB8:GLuint;

	@:native('GL_RGB10')
	static var RGB10:GLuint;

	@:native('GL_RGB12')
	static var RGB12:GLuint;

	@:native('GL_RGB16')
	static var RGB16:GLuint;

	@:native('GL_RGBA2')
	static var RGBA2:GLuint;

	@:native('GL_RGBA4')
	static var RGBA4:GLuint;

	@:native('GL_RGB5_A1')
	static var RGB5_A1:GLuint;

	@:native('GL_RGBA8')
	static var RGBA8:GLuint;

	@:native('GL_RGB10_A2')
	static var RGB10_A2:GLuint;

	@:native('GL_RGBA12')
	static var RGBA12:GLuint;

	@:native('GL_RGBA16')
	static var RGBA16:GLuint;

	@:native('GL_CLIENT_PIXEL_STORE_BIT')
	static var CLIENT_PIXEL_STORE_BIT:GLuint;

	@:native('GL_CLIENT_VERTEX_ARRAY_BIT')
	static var CLIENT_VERTEX_ARRAY_BIT:GLuint;

	@:native('GL_CLIENT_ALL_ATTRIB_BITS')
	static var CLIENT_ALL_ATTRIB_BITS:GLuint;

	@:native('GL_VERTEX_ARRAY_POINTER')
	static var VERTEX_ARRAY_POINTER:GLuint;

	@:native('GL_NORMAL_ARRAY_POINTER')
	static var NORMAL_ARRAY_POINTER:GLuint;

	@:native('GL_COLOR_ARRAY_POINTER')
	static var COLOR_ARRAY_POINTER:GLuint;

	@:native('GL_INDEX_ARRAY_POINTER')
	static var INDEX_ARRAY_POINTER:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_POINTER')
	static var TEXTURE_COORD_ARRAY_POINTER:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY_POINTER')
	static var EDGE_FLAG_ARRAY_POINTER:GLuint;

	@:native('GL_FEEDBACK_BUFFER_POINTER')
	static var FEEDBACK_BUFFER_POINTER:GLuint;

	@:native('GL_SELECTION_BUFFER_POINTER')
	static var SELECTION_BUFFER_POINTER:GLuint;

	@:native('GL_CLIENT_ATTRIB_STACK_DEPTH')
	static var CLIENT_ATTRIB_STACK_DEPTH:GLuint;

	@:native('GL_INDEX_LOGIC_OP')
	static var INDEX_LOGIC_OP:GLuint;

	@:native('GL_MAX_CLIENT_ATTRIB_STACK_DEPTH')
	static var MAX_CLIENT_ATTRIB_STACK_DEPTH:GLuint;

	@:native('GL_FEEDBACK_BUFFER_SIZE')
	static var FEEDBACK_BUFFER_SIZE:GLuint;

	@:native('GL_FEEDBACK_BUFFER_TYPE')
	static var FEEDBACK_BUFFER_TYPE:GLuint;

	@:native('GL_SELECTION_BUFFER_SIZE')
	static var SELECTION_BUFFER_SIZE:GLuint;

	@:native('GL_VERTEX_ARRAY')
	static var VERTEX_ARRAY:GLuint;

	@:native('GL_NORMAL_ARRAY')
	static var NORMAL_ARRAY:GLuint;

	@:native('GL_COLOR_ARRAY')
	static var COLOR_ARRAY:GLuint;

	@:native('GL_INDEX_ARRAY')
	static var INDEX_ARRAY:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY')
	static var TEXTURE_COORD_ARRAY:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY')
	static var EDGE_FLAG_ARRAY:GLuint;

	@:native('GL_VERTEX_ARRAY_SIZE')
	static var VERTEX_ARRAY_SIZE:GLuint;

	@:native('GL_VERTEX_ARRAY_TYPE')
	static var VERTEX_ARRAY_TYPE:GLuint;

	@:native('GL_VERTEX_ARRAY_STRIDE')
	static var VERTEX_ARRAY_STRIDE:GLuint;

	@:native('GL_NORMAL_ARRAY_TYPE')
	static var NORMAL_ARRAY_TYPE:GLuint;

	@:native('GL_NORMAL_ARRAY_STRIDE')
	static var NORMAL_ARRAY_STRIDE:GLuint;

	@:native('GL_COLOR_ARRAY_SIZE')
	static var COLOR_ARRAY_SIZE:GLuint;

	@:native('GL_COLOR_ARRAY_TYPE')
	static var COLOR_ARRAY_TYPE:GLuint;

	@:native('GL_COLOR_ARRAY_STRIDE')
	static var COLOR_ARRAY_STRIDE:GLuint;

	@:native('GL_INDEX_ARRAY_TYPE')
	static var INDEX_ARRAY_TYPE:GLuint;

	@:native('GL_INDEX_ARRAY_STRIDE')
	static var INDEX_ARRAY_STRIDE:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_SIZE')
	static var TEXTURE_COORD_ARRAY_SIZE:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_TYPE')
	static var TEXTURE_COORD_ARRAY_TYPE:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_STRIDE')
	static var TEXTURE_COORD_ARRAY_STRIDE:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY_STRIDE')
	static var EDGE_FLAG_ARRAY_STRIDE:GLuint;

	@:native('GL_TEXTURE_LUMINANCE_SIZE')
	static var TEXTURE_LUMINANCE_SIZE:GLuint;

	@:native('GL_TEXTURE_INTENSITY_SIZE')
	static var TEXTURE_INTENSITY_SIZE:GLuint;

	@:native('GL_TEXTURE_PRIORITY')
	static var TEXTURE_PRIORITY:GLuint;

	@:native('GL_TEXTURE_RESIDENT')
	static var TEXTURE_RESIDENT:GLuint;

	@:native('GL_ALPHA4')
	static var ALPHA4:GLuint;

	@:native('GL_ALPHA8')
	static var ALPHA8:GLuint;

	@:native('GL_ALPHA12')
	static var ALPHA12:GLuint;

	@:native('GL_ALPHA16')
	static var ALPHA16:GLuint;

	@:native('GL_LUMINANCE4')
	static var LUMINANCE4:GLuint;

	@:native('GL_LUMINANCE8')
	static var LUMINANCE8:GLuint;

	@:native('GL_LUMINANCE12')
	static var LUMINANCE12:GLuint;

	@:native('GL_LUMINANCE16')
	static var LUMINANCE16:GLuint;

	@:native('GL_LUMINANCE4_ALPHA4')
	static var LUMINANCE4_ALPHA4:GLuint;

	@:native('GL_LUMINANCE6_ALPHA2')
	static var LUMINANCE6_ALPHA2:GLuint;

	@:native('GL_LUMINANCE8_ALPHA8')
	static var LUMINANCE8_ALPHA8:GLuint;

	@:native('GL_LUMINANCE12_ALPHA4')
	static var LUMINANCE12_ALPHA4:GLuint;

	@:native('GL_LUMINANCE12_ALPHA12')
	static var LUMINANCE12_ALPHA12:GLuint;

	@:native('GL_LUMINANCE16_ALPHA16')
	static var LUMINANCE16_ALPHA16:GLuint;

	@:native('GL_INTENSITY')
	static var INTENSITY:GLuint;

	@:native('GL_INTENSITY4')
	static var INTENSITY4:GLuint;

	@:native('GL_INTENSITY8')
	static var INTENSITY8:GLuint;

	@:native('GL_INTENSITY12')
	static var INTENSITY12:GLuint;

	@:native('GL_INTENSITY16')
	static var INTENSITY16:GLuint;

	@:native('GL_V2F')
	static var V2F:GLuint;

	@:native('GL_V3F')
	static var V3F:GLuint;

	@:native('GL_C4UB_V2F')
	static var C4UB_V2F:GLuint;

	@:native('GL_C4UB_V3F')
	static var C4UB_V3F:GLuint;

	@:native('GL_C3F_V3F')
	static var C3F_V3F:GLuint;

	@:native('GL_N3F_V3F')
	static var N3F_V3F:GLuint;

	@:native('GL_C4F_N3F_V3F')
	static var C4F_N3F_V3F:GLuint;

	@:native('GL_T2F_V3F')
	static var T2F_V3F:GLuint;

	@:native('GL_T4F_V4F')
	static var T4F_V4F:GLuint;

	@:native('GL_T2F_C4UB_V3F')
	static var T2F_C4UB_V3F:GLuint;

	@:native('GL_T2F_C3F_V3F')
	static var T2F_C3F_V3F:GLuint;

	@:native('GL_T2F_N3F_V3F')
	static var T2F_N3F_V3F:GLuint;

	@:native('GL_T2F_C4F_N3F_V3F')
	static var T2F_C4F_N3F_V3F:GLuint;

	@:native('GL_T4F_C4F_N3F_V4F')
	static var T4F_C4F_N3F_V4F:GLuint;

	@:native('GL_UNSIGNED_BYTE_3_3_2')
	static var UNSIGNED_BYTE_3_3_2:GLuint;

	@:native('GL_UNSIGNED_SHORT_4_4_4_4')
	static var UNSIGNED_SHORT_4_4_4_4:GLuint;

	@:native('GL_UNSIGNED_SHORT_5_5_5_1')
	static var UNSIGNED_SHORT_5_5_5_1:GLuint;

	@:native('GL_UNSIGNED_INT_8_8_8_8')
	static var UNSIGNED_INT_8_8_8_8:GLuint;

	@:native('GL_UNSIGNED_INT_10_10_10_2')
	static var UNSIGNED_INT_10_10_10_2:GLuint;

	@:native('GL_TEXTURE_BINDING_3D')
	static var TEXTURE_BINDING_3D:GLuint;

	@:native('GL_PACK_SKIP_IMAGES')
	static var PACK_SKIP_IMAGES:GLuint;

	@:native('GL_PACK_IMAGE_HEIGHT')
	static var PACK_IMAGE_HEIGHT:GLuint;

	@:native('GL_UNPACK_SKIP_IMAGES')
	static var UNPACK_SKIP_IMAGES:GLuint;

	@:native('GL_UNPACK_IMAGE_HEIGHT')
	static var UNPACK_IMAGE_HEIGHT:GLuint;

	@:native('GL_TEXTURE_3D')
	static var TEXTURE_3D:GLuint;

	@:native('GL_PROXY_TEXTURE_3D')
	static var PROXY_TEXTURE_3D:GLuint;

	@:native('GL_TEXTURE_DEPTH')
	static var TEXTURE_DEPTH:GLuint;

	@:native('GL_TEXTURE_WRAP_R')
	static var TEXTURE_WRAP_R:GLuint;

	@:native('GL_MAX_3D_TEXTURE_SIZE')
	static var MAX_3D_TEXTURE_SIZE:GLuint;

	@:native('GL_UNSIGNED_BYTE_2_3_3_REV')
	static var UNSIGNED_BYTE_2_3_3_REV:GLuint;

	@:native('GL_UNSIGNED_SHORT_5_6_5')
	static var UNSIGNED_SHORT_5_6_5:GLuint;

	@:native('GL_UNSIGNED_SHORT_5_6_5_REV')
	static var UNSIGNED_SHORT_5_6_5_REV:GLuint;

	@:native('GL_UNSIGNED_SHORT_4_4_4_4_REV')
	static var UNSIGNED_SHORT_4_4_4_4_REV:GLuint;

	@:native('GL_UNSIGNED_SHORT_1_5_5_5_REV')
	static var UNSIGNED_SHORT_1_5_5_5_REV:GLuint;

	@:native('GL_UNSIGNED_INT_8_8_8_8_REV')
	static var UNSIGNED_INT_8_8_8_8_REV:GLuint;

	@:native('GL_UNSIGNED_INT_2_10_10_10_REV')
	static var UNSIGNED_INT_2_10_10_10_REV:GLuint;

	@:native('GL_BGR')
	static var BGR:GLuint;

	@:native('GL_BGRA')
	static var BGRA:GLuint;

	@:native('GL_MAX_ELEMENTS_VERTICES')
	static var MAX_ELEMENTS_VERTICES:GLuint;

	@:native('GL_MAX_ELEMENTS_INDICES')
	static var MAX_ELEMENTS_INDICES:GLuint;

	@:native('GL_CLAMP_TO_EDGE')
	static var CLAMP_TO_EDGE:GLuint;

	@:native('GL_TEXTURE_MIN_LOD')
	static var TEXTURE_MIN_LOD:GLuint;

	@:native('GL_TEXTURE_MAX_LOD')
	static var TEXTURE_MAX_LOD:GLuint;

	@:native('GL_TEXTURE_BASE_LEVEL')
	static var TEXTURE_BASE_LEVEL:GLuint;

	@:native('GL_TEXTURE_MAX_LEVEL')
	static var TEXTURE_MAX_LEVEL:GLuint;

	@:native('GL_SMOOTH_POINT_SIZE_RANGE')
	static var SMOOTH_POINT_SIZE_RANGE:GLuint;

	@:native('GL_SMOOTH_POINT_SIZE_GRANULARITY')
	static var SMOOTH_POINT_SIZE_GRANULARITY:GLuint;

	@:native('GL_SMOOTH_LINE_WIDTH_RANGE')
	static var SMOOTH_LINE_WIDTH_RANGE:GLuint;

	@:native('GL_SMOOTH_LINE_WIDTH_GRANULARITY')
	static var SMOOTH_LINE_WIDTH_GRANULARITY:GLuint;

	@:native('GL_ALIASED_LINE_WIDTH_RANGE')
	static var ALIASED_LINE_WIDTH_RANGE:GLuint;

	@:native('GL_RESCALE_NORMAL')
	static var RESCALE_NORMAL:GLuint;

	@:native('GL_LIGHT_MODEL_COLOR_CONTROL')
	static var LIGHT_MODEL_COLOR_CONTROL:GLuint;

	@:native('GL_SINGLE_COLOR')
	static var SINGLE_COLOR:GLuint;

	@:native('GL_SEPARATE_SPECULAR_COLOR')
	static var SEPARATE_SPECULAR_COLOR:GLuint;

	@:native('GL_ALIASED_POINT_SIZE_RANGE')
	static var ALIASED_POINT_SIZE_RANGE:GLuint;

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

	@:native('GL_MULTISAMPLE')
	static var MULTISAMPLE:GLuint;

	@:native('GL_SAMPLE_ALPHA_TO_COVERAGE')
	static var SAMPLE_ALPHA_TO_COVERAGE:GLuint;

	@:native('GL_SAMPLE_ALPHA_TO_ONE')
	static var SAMPLE_ALPHA_TO_ONE:GLuint;

	@:native('GL_SAMPLE_COVERAGE')
	static var SAMPLE_COVERAGE:GLuint;

	@:native('GL_SAMPLE_BUFFERS')
	static var SAMPLE_BUFFERS:GLuint;

	@:native('GL_SAMPLES')
	static var SAMPLES:GLuint;

	@:native('GL_SAMPLE_COVERAGE_VALUE')
	static var SAMPLE_COVERAGE_VALUE:GLuint;

	@:native('GL_SAMPLE_COVERAGE_INVERT')
	static var SAMPLE_COVERAGE_INVERT:GLuint;

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

	@:native('GL_PROXY_TEXTURE_CUBE_MAP')
	static var PROXY_TEXTURE_CUBE_MAP:GLuint;

	@:native('GL_MAX_CUBE_MAP_TEXTURE_SIZE')
	static var MAX_CUBE_MAP_TEXTURE_SIZE:GLuint;

	@:native('GL_COMPRESSED_RGB')
	static var COMPRESSED_RGB:GLuint;

	@:native('GL_COMPRESSED_RGBA')
	static var COMPRESSED_RGBA:GLuint;

	@:native('GL_TEXTURE_COMPRESSION_HINT')
	static var TEXTURE_COMPRESSION_HINT:GLuint;

	@:native('GL_TEXTURE_COMPRESSED_IMAGE_SIZE')
	static var TEXTURE_COMPRESSED_IMAGE_SIZE:GLuint;

	@:native('GL_TEXTURE_COMPRESSED')
	static var TEXTURE_COMPRESSED:GLuint;

	@:native('GL_NUM_COMPRESSED_TEXTURE_FORMATS')
	static var NUM_COMPRESSED_TEXTURE_FORMATS:GLuint;

	@:native('GL_COMPRESSED_TEXTURE_FORMATS')
	static var COMPRESSED_TEXTURE_FORMATS:GLuint;

	@:native('GL_CLAMP_TO_BORDER')
	static var CLAMP_TO_BORDER:GLuint;

	@:native('GL_CLIENT_ACTIVE_TEXTURE')
	static var CLIENT_ACTIVE_TEXTURE:GLuint;

	@:native('GL_MAX_TEXTURE_UNITS')
	static var MAX_TEXTURE_UNITS:GLuint;

	@:native('GL_TRANSPOSE_MODELVIEW_MATRIX')
	static var TRANSPOSE_MODELVIEW_MATRIX:GLuint;

	@:native('GL_TRANSPOSE_PROJECTION_MATRIX')
	static var TRANSPOSE_PROJECTION_MATRIX:GLuint;

	@:native('GL_TRANSPOSE_TEXTURE_MATRIX')
	static var TRANSPOSE_TEXTURE_MATRIX:GLuint;

	@:native('GL_TRANSPOSE_COLOR_MATRIX')
	static var TRANSPOSE_COLOR_MATRIX:GLuint;

	@:native('GL_MULTISAMPLE_BIT')
	static var MULTISAMPLE_BIT:GLuint;

	@:native('GL_NORMAL_MAP')
	static var NORMAL_MAP:GLuint;

	@:native('GL_REFLECTION_MAP')
	static var REFLECTION_MAP:GLuint;

	@:native('GL_COMPRESSED_ALPHA')
	static var COMPRESSED_ALPHA:GLuint;

	@:native('GL_COMPRESSED_LUMINANCE')
	static var COMPRESSED_LUMINANCE:GLuint;

	@:native('GL_COMPRESSED_LUMINANCE_ALPHA')
	static var COMPRESSED_LUMINANCE_ALPHA:GLuint;

	@:native('GL_COMPRESSED_INTENSITY')
	static var COMPRESSED_INTENSITY:GLuint;

	@:native('GL_COMBINE')
	static var COMBINE:GLuint;

	@:native('GL_COMBINE_RGB')
	static var COMBINE_RGB:GLuint;

	@:native('GL_COMBINE_ALPHA')
	static var COMBINE_ALPHA:GLuint;

	@:native('GL_SOURCE0_RGB')
	static var SOURCE0_RGB:GLuint;

	@:native('GL_SOURCE1_RGB')
	static var SOURCE1_RGB:GLuint;

	@:native('GL_SOURCE2_RGB')
	static var SOURCE2_RGB:GLuint;

	@:native('GL_SOURCE0_ALPHA')
	static var SOURCE0_ALPHA:GLuint;

	@:native('GL_SOURCE1_ALPHA')
	static var SOURCE1_ALPHA:GLuint;

	@:native('GL_SOURCE2_ALPHA')
	static var SOURCE2_ALPHA:GLuint;

	@:native('GL_OPERAND0_RGB')
	static var OPERAND0_RGB:GLuint;

	@:native('GL_OPERAND1_RGB')
	static var OPERAND1_RGB:GLuint;

	@:native('GL_OPERAND2_RGB')
	static var OPERAND2_RGB:GLuint;

	@:native('GL_OPERAND0_ALPHA')
	static var OPERAND0_ALPHA:GLuint;

	@:native('GL_OPERAND1_ALPHA')
	static var OPERAND1_ALPHA:GLuint;

	@:native('GL_OPERAND2_ALPHA')
	static var OPERAND2_ALPHA:GLuint;

	@:native('GL_RGB_SCALE')
	static var RGB_SCALE:GLuint;

	@:native('GL_ADD_SIGNED')
	static var ADD_SIGNED:GLuint;

	@:native('GL_INTERPOLATE')
	static var INTERPOLATE:GLuint;

	@:native('GL_SUBTRACT')
	static var SUBTRACT:GLuint;

	@:native('GL_CONSTANT')
	static var CONSTANT:GLuint;

	@:native('GL_PRIMARY_COLOR')
	static var PRIMARY_COLOR:GLuint;

	@:native('GL_PREVIOUS')
	static var PREVIOUS:GLuint;

	@:native('GL_DOT3_RGB')
	static var DOT3_RGB:GLuint;

	@:native('GL_DOT3_RGBA')
	static var DOT3_RGBA:GLuint;

	@:native('GL_BLEND_DST_RGB')
	static var BLEND_DST_RGB:GLuint;

	@:native('GL_BLEND_SRC_RGB')
	static var BLEND_SRC_RGB:GLuint;

	@:native('GL_BLEND_DST_ALPHA')
	static var BLEND_DST_ALPHA:GLuint;

	@:native('GL_BLEND_SRC_ALPHA')
	static var BLEND_SRC_ALPHA:GLuint;

	@:native('GL_POINT_FADE_THRESHOLD_SIZE')
	static var POINT_FADE_THRESHOLD_SIZE:GLuint;

	@:native('GL_DEPTH_COMPONENT16')
	static var DEPTH_COMPONENT16:GLuint;

	@:native('GL_DEPTH_COMPONENT24')
	static var DEPTH_COMPONENT24:GLuint;

	@:native('GL_DEPTH_COMPONENT32')
	static var DEPTH_COMPONENT32:GLuint;

	@:native('GL_MIRRORED_REPEAT')
	static var MIRRORED_REPEAT:GLuint;

	@:native('GL_MAX_TEXTURE_LOD_BIAS')
	static var MAX_TEXTURE_LOD_BIAS:GLuint;

	@:native('GL_TEXTURE_LOD_BIAS')
	static var TEXTURE_LOD_BIAS:GLuint;

	@:native('GL_INCR_WRAP')
	static var INCR_WRAP:GLuint;

	@:native('GL_DECR_WRAP')
	static var DECR_WRAP:GLuint;

	@:native('GL_TEXTURE_DEPTH_SIZE')
	static var TEXTURE_DEPTH_SIZE:GLuint;

	@:native('GL_TEXTURE_COMPARE_MODE')
	static var TEXTURE_COMPARE_MODE:GLuint;

	@:native('GL_TEXTURE_COMPARE_FUNC')
	static var TEXTURE_COMPARE_FUNC:GLuint;

	@:native('GL_POINT_SIZE_MIN')
	static var POINT_SIZE_MIN:GLuint;

	@:native('GL_POINT_SIZE_MAX')
	static var POINT_SIZE_MAX:GLuint;

	@:native('GL_POINT_DISTANCE_ATTENUATION')
	static var POINT_DISTANCE_ATTENUATION:GLuint;

	@:native('GL_GENERATE_MIPMAP')
	static var GENERATE_MIPMAP:GLuint;

	@:native('GL_GENERATE_MIPMAP_HINT')
	static var GENERATE_MIPMAP_HINT:GLuint;

	@:native('GL_FOG_COORDINATE_SOURCE')
	static var FOG_COORDINATE_SOURCE:GLuint;

	@:native('GL_FOG_COORDINATE')
	static var FOG_COORDINATE:GLuint;

	@:native('GL_FRAGMENT_DEPTH')
	static var FRAGMENT_DEPTH:GLuint;

	@:native('GL_CURRENT_FOG_COORDINATE')
	static var CURRENT_FOG_COORDINATE:GLuint;

	@:native('GL_FOG_COORDINATE_ARRAY_TYPE')
	static var FOG_COORDINATE_ARRAY_TYPE:GLuint;

	@:native('GL_FOG_COORDINATE_ARRAY_STRIDE')
	static var FOG_COORDINATE_ARRAY_STRIDE:GLuint;

	@:native('GL_FOG_COORDINATE_ARRAY_POINTER')
	static var FOG_COORDINATE_ARRAY_POINTER:GLuint;

	@:native('GL_FOG_COORDINATE_ARRAY')
	static var FOG_COORDINATE_ARRAY:GLuint;

	@:native('GL_COLOR_SUM')
	static var COLOR_SUM:GLuint;

	@:native('GL_CURRENT_SECONDARY_COLOR')
	static var CURRENT_SECONDARY_COLOR:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_SIZE')
	static var SECONDARY_COLOR_ARRAY_SIZE:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_TYPE')
	static var SECONDARY_COLOR_ARRAY_TYPE:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_STRIDE')
	static var SECONDARY_COLOR_ARRAY_STRIDE:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_POINTER')
	static var SECONDARY_COLOR_ARRAY_POINTER:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY')
	static var SECONDARY_COLOR_ARRAY:GLuint;

	@:native('GL_TEXTURE_FILTER_CONTROL')
	static var TEXTURE_FILTER_CONTROL:GLuint;

	@:native('GL_DEPTH_TEXTURE_MODE')
	static var DEPTH_TEXTURE_MODE:GLuint;

	@:native('GL_COMPARE_R_TO_TEXTURE')
	static var COMPARE_R_TO_TEXTURE:GLuint;

	@:native('GL_BLEND_COLOR')
	static var BLEND_COLOR:GLuint;

	@:native('GL_BLEND_EQUATION')
	static var BLEND_EQUATION:GLuint;

	@:native('GL_CONSTANT_COLOR')
	static var CONSTANT_COLOR:GLuint;

	@:native('GL_ONE_MINUS_CONSTANT_COLOR')
	static var ONE_MINUS_CONSTANT_COLOR:GLuint;

	@:native('GL_CONSTANT_ALPHA')
	static var CONSTANT_ALPHA:GLuint;

	@:native('GL_ONE_MINUS_CONSTANT_ALPHA')
	static var ONE_MINUS_CONSTANT_ALPHA:GLuint;

	@:native('GL_FUNC_ADD')
	static var FUNC_ADD:GLuint;

	@:native('GL_FUNC_REVERSE_SUBTRACT')
	static var FUNC_REVERSE_SUBTRACT:GLuint;

	@:native('GL_FUNC_SUBTRACT')
	static var FUNC_SUBTRACT:GLuint;

	@:native('GL_MIN')
	static var MIN:GLuint;

	@:native('GL_MAX')
	static var MAX:GLuint;

	@:native('GL_BUFFER_SIZE')
	static var BUFFER_SIZE:GLuint;

	@:native('GL_BUFFER_USAGE')
	static var BUFFER_USAGE:GLuint;

	@:native('GL_QUERY_COUNTER_BITS')
	static var QUERY_COUNTER_BITS:GLuint;

	@:native('GL_CURRENT_QUERY')
	static var CURRENT_QUERY:GLuint;

	@:native('GL_QUERY_RESULT')
	static var QUERY_RESULT:GLuint;

	@:native('GL_QUERY_RESULT_AVAILABLE')
	static var QUERY_RESULT_AVAILABLE:GLuint;

	@:native('GL_ARRAY_BUFFER')
	static var ARRAY_BUFFER:GLuint;

	@:native('GL_ELEMENT_ARRAY_BUFFER')
	static var ELEMENT_ARRAY_BUFFER:GLuint;

	@:native('GL_ARRAY_BUFFER_BINDING')
	static var ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_ELEMENT_ARRAY_BUFFER_BINDING')
	static var ELEMENT_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING')
	static var VERTEX_ATTRIB_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_READ_ONLY')
	static var READ_ONLY:GLuint;

	@:native('GL_WRITE_ONLY')
	static var WRITE_ONLY:GLuint;

	@:native('GL_READ_WRITE')
	static var READ_WRITE:GLuint;

	@:native('GL_BUFFER_ACCESS')
	static var BUFFER_ACCESS:GLuint;

	@:native('GL_BUFFER_MAPPED')
	static var BUFFER_MAPPED:GLuint;

	@:native('GL_BUFFER_MAP_POINTER')
	static var BUFFER_MAP_POINTER:GLuint;

	@:native('GL_STREAM_DRAW')
	static var STREAM_DRAW:GLuint;

	@:native('GL_STREAM_READ')
	static var STREAM_READ:GLuint;

	@:native('GL_STREAM_COPY')
	static var STREAM_COPY:GLuint;

	@:native('GL_STATIC_DRAW')
	static var STATIC_DRAW:GLuint;

	@:native('GL_STATIC_READ')
	static var STATIC_READ:GLuint;

	@:native('GL_STATIC_COPY')
	static var STATIC_COPY:GLuint;

	@:native('GL_DYNAMIC_DRAW')
	static var DYNAMIC_DRAW:GLuint;

	@:native('GL_DYNAMIC_READ')
	static var DYNAMIC_READ:GLuint;

	@:native('GL_DYNAMIC_COPY')
	static var DYNAMIC_COPY:GLuint;

	@:native('GL_SAMPLES_PASSED')
	static var SAMPLES_PASSED:GLuint;

	@:native('GL_SRC1_ALPHA')
	static var SRC1_ALPHA:GLuint;

	@:native('GL_VERTEX_ARRAY_BUFFER_BINDING')
	static var VERTEX_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_NORMAL_ARRAY_BUFFER_BINDING')
	static var NORMAL_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_COLOR_ARRAY_BUFFER_BINDING')
	static var COLOR_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_INDEX_ARRAY_BUFFER_BINDING')
	static var INDEX_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING')
	static var TEXTURE_COORD_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY_BUFFER_BINDING')
	static var EDGE_FLAG_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING')
	static var SECONDARY_COLOR_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING')
	static var FOG_COORDINATE_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_WEIGHT_ARRAY_BUFFER_BINDING')
	static var WEIGHT_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_FOG_COORD_SRC')
	static var FOG_COORD_SRC:GLuint;

	@:native('GL_FOG_COORD')
	static var FOG_COORD:GLuint;

	@:native('GL_CURRENT_FOG_COORD')
	static var CURRENT_FOG_COORD:GLuint;

	@:native('GL_FOG_COORD_ARRAY_TYPE')
	static var FOG_COORD_ARRAY_TYPE:GLuint;

	@:native('GL_FOG_COORD_ARRAY_STRIDE')
	static var FOG_COORD_ARRAY_STRIDE:GLuint;

	@:native('GL_FOG_COORD_ARRAY_POINTER')
	static var FOG_COORD_ARRAY_POINTER:GLuint;

	@:native('GL_FOG_COORD_ARRAY')
	static var FOG_COORD_ARRAY:GLuint;

	@:native('GL_FOG_COORD_ARRAY_BUFFER_BINDING')
	static var FOG_COORD_ARRAY_BUFFER_BINDING:GLuint;

	@:native('GL_SRC0_RGB')
	static var SRC0_RGB:GLuint;

	@:native('GL_SRC1_RGB')
	static var SRC1_RGB:GLuint;

	@:native('GL_SRC2_RGB')
	static var SRC2_RGB:GLuint;

	@:native('GL_SRC0_ALPHA')
	static var SRC0_ALPHA:GLuint;

	@:native('GL_SRC2_ALPHA')
	static var SRC2_ALPHA:GLuint;

	@:native('GL_BLEND_EQUATION_RGB')
	static var BLEND_EQUATION_RGB:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_ENABLED')
	static var VERTEX_ATTRIB_ARRAY_ENABLED:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_SIZE')
	static var VERTEX_ATTRIB_ARRAY_SIZE:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_STRIDE')
	static var VERTEX_ATTRIB_ARRAY_STRIDE:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_TYPE')
	static var VERTEX_ATTRIB_ARRAY_TYPE:GLuint;

	@:native('GL_CURRENT_VERTEX_ATTRIB')
	static var CURRENT_VERTEX_ATTRIB:GLuint;

	@:native('GL_VERTEX_PROGRAM_POINT_SIZE')
	static var VERTEX_PROGRAM_POINT_SIZE:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_POINTER')
	static var VERTEX_ATTRIB_ARRAY_POINTER:GLuint;

	@:native('GL_STENCIL_BACK_FUNC')
	static var STENCIL_BACK_FUNC:GLuint;

	@:native('GL_STENCIL_BACK_FAIL')
	static var STENCIL_BACK_FAIL:GLuint;

	@:native('GL_STENCIL_BACK_PASS_DEPTH_FAIL')
	static var STENCIL_BACK_PASS_DEPTH_FAIL:GLuint;

	@:native('GL_STENCIL_BACK_PASS_DEPTH_PASS')
	static var STENCIL_BACK_PASS_DEPTH_PASS:GLuint;

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

	@:native('GL_BLEND_EQUATION_ALPHA')
	static var BLEND_EQUATION_ALPHA:GLuint;

	@:native('GL_MAX_VERTEX_ATTRIBS')
	static var MAX_VERTEX_ATTRIBS:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_NORMALIZED')
	static var VERTEX_ATTRIB_ARRAY_NORMALIZED:GLuint;

	@:native('GL_MAX_TEXTURE_IMAGE_UNITS')
	static var MAX_TEXTURE_IMAGE_UNITS:GLuint;

	@:native('GL_FRAGMENT_SHADER')
	static var FRAGMENT_SHADER:GLuint;

	@:native('GL_VERTEX_SHADER')
	static var VERTEX_SHADER:GLuint;

	@:native('GL_MAX_FRAGMENT_UNIFORM_COMPONENTS')
	static var MAX_FRAGMENT_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_VERTEX_UNIFORM_COMPONENTS')
	static var MAX_VERTEX_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_VARYING_FLOATS')
	static var MAX_VARYING_FLOATS:GLuint;

	@:native('GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS')
	static var MAX_VERTEX_TEXTURE_IMAGE_UNITS:GLuint;

	@:native('GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS')
	static var MAX_COMBINED_TEXTURE_IMAGE_UNITS:GLuint;

	@:native('GL_SHADER_TYPE')
	static var SHADER_TYPE:GLuint;

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

	@:native('GL_SAMPLER_1D')
	static var SAMPLER_1D:GLuint;

	@:native('GL_SAMPLER_2D')
	static var SAMPLER_2D:GLuint;

	@:native('GL_SAMPLER_3D')
	static var SAMPLER_3D:GLuint;

	@:native('GL_SAMPLER_CUBE')
	static var SAMPLER_CUBE:GLuint;

	@:native('GL_SAMPLER_1D_SHADOW')
	static var SAMPLER_1D_SHADOW:GLuint;

	@:native('GL_SAMPLER_2D_SHADOW')
	static var SAMPLER_2D_SHADOW:GLuint;

	@:native('GL_DELETE_STATUS')
	static var DELETE_STATUS:GLuint;

	@:native('GL_COMPILE_STATUS')
	static var COMPILE_STATUS:GLuint;

	@:native('GL_LINK_STATUS')
	static var LINK_STATUS:GLuint;

	@:native('GL_VALIDATE_STATUS')
	static var VALIDATE_STATUS:GLuint;

	@:native('GL_INFO_LOG_LENGTH')
	static var INFO_LOG_LENGTH:GLuint;

	@:native('GL_ATTACHED_SHADERS')
	static var ATTACHED_SHADERS:GLuint;

	@:native('GL_ACTIVE_UNIFORMS')
	static var ACTIVE_UNIFORMS:GLuint;

	@:native('GL_ACTIVE_UNIFORM_MAX_LENGTH')
	static var ACTIVE_UNIFORM_MAX_LENGTH:GLuint;

	@:native('GL_SHADER_SOURCE_LENGTH')
	static var SHADER_SOURCE_LENGTH:GLuint;

	@:native('GL_ACTIVE_ATTRIBUTES')
	static var ACTIVE_ATTRIBUTES:GLuint;

	@:native('GL_ACTIVE_ATTRIBUTE_MAX_LENGTH')
	static var ACTIVE_ATTRIBUTE_MAX_LENGTH:GLuint;

	@:native('GL_FRAGMENT_SHADER_DERIVATIVE_HINT')
	static var FRAGMENT_SHADER_DERIVATIVE_HINT:GLuint;

	@:native('GL_SHADING_LANGUAGE_VERSION')
	static var SHADING_LANGUAGE_VERSION:GLuint;

	@:native('GL_CURRENT_PROGRAM')
	static var CURRENT_PROGRAM:GLuint;

	@:native('GL_POINT_SPRITE_COORD_ORIGIN')
	static var POINT_SPRITE_COORD_ORIGIN:GLuint;

	@:native('GL_LOWER_LEFT')
	static var LOWER_LEFT:GLuint;

	@:native('GL_UPPER_LEFT')
	static var UPPER_LEFT:GLuint;

	@:native('GL_STENCIL_BACK_REF')
	static var STENCIL_BACK_REF:GLuint;

	@:native('GL_STENCIL_BACK_VALUE_MASK')
	static var STENCIL_BACK_VALUE_MASK:GLuint;

	@:native('GL_STENCIL_BACK_WRITEMASK')
	static var STENCIL_BACK_WRITEMASK:GLuint;

	@:native('GL_VERTEX_PROGRAM_TWO_SIDE')
	static var VERTEX_PROGRAM_TWO_SIDE:GLuint;

	@:native('GL_POINT_SPRITE')
	static var POINT_SPRITE:GLuint;

	@:native('GL_COORD_REPLACE')
	static var COORD_REPLACE:GLuint;

	@:native('GL_MAX_TEXTURE_COORDS')
	static var MAX_TEXTURE_COORDS:GLuint;

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

	@:native('GL_SRGB_ALPHA')
	static var SRGB_ALPHA:GLuint;

	@:native('GL_SRGB8_ALPHA8')
	static var SRGB8_ALPHA8:GLuint;

	@:native('GL_COMPRESSED_SRGB')
	static var COMPRESSED_SRGB:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA')
	static var COMPRESSED_SRGB_ALPHA:GLuint;

	@:native('GL_CURRENT_RASTER_SECONDARY_COLOR')
	static var CURRENT_RASTER_SECONDARY_COLOR:GLuint;

	@:native('GL_SLUMINANCE_ALPHA')
	static var SLUMINANCE_ALPHA:GLuint;

	@:native('GL_SLUMINANCE8_ALPHA8')
	static var SLUMINANCE8_ALPHA8:GLuint;

	@:native('GL_SLUMINANCE')
	static var SLUMINANCE:GLuint;

	@:native('GL_SLUMINANCE8')
	static var SLUMINANCE8:GLuint;

	@:native('GL_COMPRESSED_SLUMINANCE')
	static var COMPRESSED_SLUMINANCE:GLuint;

	@:native('GL_COMPRESSED_SLUMINANCE_ALPHA')
	static var COMPRESSED_SLUMINANCE_ALPHA:GLuint;

	@:native('GL_COMPARE_REF_TO_TEXTURE')
	static var COMPARE_REF_TO_TEXTURE:GLuint;

	@:native('GL_CLIP_DISTANCE0')
	static var CLIP_DISTANCE0:GLuint;

	@:native('GL_CLIP_DISTANCE1')
	static var CLIP_DISTANCE1:GLuint;

	@:native('GL_CLIP_DISTANCE2')
	static var CLIP_DISTANCE2:GLuint;

	@:native('GL_CLIP_DISTANCE3')
	static var CLIP_DISTANCE3:GLuint;

	@:native('GL_CLIP_DISTANCE4')
	static var CLIP_DISTANCE4:GLuint;

	@:native('GL_CLIP_DISTANCE5')
	static var CLIP_DISTANCE5:GLuint;

	@:native('GL_CLIP_DISTANCE6')
	static var CLIP_DISTANCE6:GLuint;

	@:native('GL_CLIP_DISTANCE7')
	static var CLIP_DISTANCE7:GLuint;

	@:native('GL_MAX_CLIP_DISTANCES')
	static var MAX_CLIP_DISTANCES:GLuint;

	@:native('GL_MAJOR_VERSION')
	static var MAJOR_VERSION:GLuint;

	@:native('GL_MINOR_VERSION')
	static var MINOR_VERSION:GLuint;

	@:native('GL_NUM_EXTENSIONS')
	static var NUM_EXTENSIONS:GLuint;

	@:native('GL_CONTEXT_FLAGS')
	static var CONTEXT_FLAGS:GLuint;

	@:native('GL_COMPRESSED_RED')
	static var COMPRESSED_RED:GLuint;

	@:native('GL_COMPRESSED_RG')
	static var COMPRESSED_RG:GLuint;

	@:native('GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT')
	static var CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT:GLuint;

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

	@:native('GL_CLAMP_READ_COLOR')
	static var CLAMP_READ_COLOR:GLuint;

	@:native('GL_FIXED_ONLY')
	static var FIXED_ONLY:GLuint;

	@:native('GL_MAX_VARYING_COMPONENTS')
	static var MAX_VARYING_COMPONENTS:GLuint;

	@:native('GL_TEXTURE_1D_ARRAY')
	static var TEXTURE_1D_ARRAY:GLuint;

	@:native('GL_PROXY_TEXTURE_1D_ARRAY')
	static var PROXY_TEXTURE_1D_ARRAY:GLuint;

	@:native('GL_TEXTURE_2D_ARRAY')
	static var TEXTURE_2D_ARRAY:GLuint;

	@:native('GL_PROXY_TEXTURE_2D_ARRAY')
	static var PROXY_TEXTURE_2D_ARRAY:GLuint;

	@:native('GL_TEXTURE_BINDING_1D_ARRAY')
	static var TEXTURE_BINDING_1D_ARRAY:GLuint;

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

	@:native('GL_TEXTURE_SHARED_SIZE')
	static var TEXTURE_SHARED_SIZE:GLuint;

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

	@:native('GL_PRIMITIVES_GENERATED')
	static var PRIMITIVES_GENERATED:GLuint;

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

	@:native('GL_GREEN_INTEGER')
	static var GREEN_INTEGER:GLuint;

	@:native('GL_BLUE_INTEGER')
	static var BLUE_INTEGER:GLuint;

	@:native('GL_RGB_INTEGER')
	static var RGB_INTEGER:GLuint;

	@:native('GL_RGBA_INTEGER')
	static var RGBA_INTEGER:GLuint;

	@:native('GL_BGR_INTEGER')
	static var BGR_INTEGER:GLuint;

	@:native('GL_BGRA_INTEGER')
	static var BGRA_INTEGER:GLuint;

	@:native('GL_SAMPLER_1D_ARRAY')
	static var SAMPLER_1D_ARRAY:GLuint;

	@:native('GL_SAMPLER_2D_ARRAY')
	static var SAMPLER_2D_ARRAY:GLuint;

	@:native('GL_SAMPLER_1D_ARRAY_SHADOW')
	static var SAMPLER_1D_ARRAY_SHADOW:GLuint;

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

	@:native('GL_INT_SAMPLER_1D')
	static var INT_SAMPLER_1D:GLuint;

	@:native('GL_INT_SAMPLER_2D')
	static var INT_SAMPLER_2D:GLuint;

	@:native('GL_INT_SAMPLER_3D')
	static var INT_SAMPLER_3D:GLuint;

	@:native('GL_INT_SAMPLER_CUBE')
	static var INT_SAMPLER_CUBE:GLuint;

	@:native('GL_INT_SAMPLER_1D_ARRAY')
	static var INT_SAMPLER_1D_ARRAY:GLuint;

	@:native('GL_INT_SAMPLER_2D_ARRAY')
	static var INT_SAMPLER_2D_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_1D')
	static var UNSIGNED_INT_SAMPLER_1D:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D')
	static var UNSIGNED_INT_SAMPLER_2D:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_3D')
	static var UNSIGNED_INT_SAMPLER_3D:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_CUBE')
	static var UNSIGNED_INT_SAMPLER_CUBE:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_1D_ARRAY')
	static var UNSIGNED_INT_SAMPLER_1D_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D_ARRAY')
	static var UNSIGNED_INT_SAMPLER_2D_ARRAY:GLuint;

	@:native('GL_QUERY_WAIT')
	static var QUERY_WAIT:GLuint;

	@:native('GL_QUERY_NO_WAIT')
	static var QUERY_NO_WAIT:GLuint;

	@:native('GL_QUERY_BY_REGION_WAIT')
	static var QUERY_BY_REGION_WAIT:GLuint;

	@:native('GL_QUERY_BY_REGION_NO_WAIT')
	static var QUERY_BY_REGION_NO_WAIT:GLuint;

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

	@:native('GL_INVALID_FRAMEBUFFER_OPERATION')
	static var INVALID_FRAMEBUFFER_OPERATION:GLuint;

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

	@:native('GL_MAX_RENDERBUFFER_SIZE')
	static var MAX_RENDERBUFFER_SIZE:GLuint;

	@:native('GL_DEPTH_STENCIL')
	static var DEPTH_STENCIL:GLuint;

	@:native('GL_UNSIGNED_INT_24_8')
	static var UNSIGNED_INT_24_8:GLuint;

	@:native('GL_DEPTH24_STENCIL8')
	static var DEPTH24_STENCIL8:GLuint;

	@:native('GL_TEXTURE_STENCIL_SIZE')
	static var TEXTURE_STENCIL_SIZE:GLuint;

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

	@:native('GL_UNSIGNED_NORMALIZED')
	static var UNSIGNED_NORMALIZED:GLuint;

	@:native('GL_FRAMEBUFFER_BINDING')
	static var FRAMEBUFFER_BINDING:GLuint;

	@:native('GL_DRAW_FRAMEBUFFER_BINDING')
	static var DRAW_FRAMEBUFFER_BINDING:GLuint;

	@:native('GL_RENDERBUFFER_BINDING')
	static var RENDERBUFFER_BINDING:GLuint;

	@:native('GL_READ_FRAMEBUFFER')
	static var READ_FRAMEBUFFER:GLuint;

	@:native('GL_DRAW_FRAMEBUFFER')
	static var DRAW_FRAMEBUFFER:GLuint;

	@:native('GL_READ_FRAMEBUFFER_BINDING')
	static var READ_FRAMEBUFFER_BINDING:GLuint;

	@:native('GL_RENDERBUFFER_SAMPLES')
	static var RENDERBUFFER_SAMPLES:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE')
	static var FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME')
	static var FRAMEBUFFER_ATTACHMENT_OBJECT_NAME:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER:GLuint;

	@:native('GL_FRAMEBUFFER_COMPLETE')
	static var FRAMEBUFFER_COMPLETE:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT')
	static var FRAMEBUFFER_INCOMPLETE_ATTACHMENT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT')
	static var FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER')
	static var FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER')
	static var FRAMEBUFFER_INCOMPLETE_READ_BUFFER:GLuint;

	@:native('GL_FRAMEBUFFER_UNSUPPORTED')
	static var FRAMEBUFFER_UNSUPPORTED:GLuint;

	@:native('GL_MAX_COLOR_ATTACHMENTS')
	static var MAX_COLOR_ATTACHMENTS:GLuint;

	@:native('GL_COLOR_ATTACHMENT0')
	static var COLOR_ATTACHMENT0:GLuint;

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

	@:native('GL_DEPTH_ATTACHMENT')
	static var DEPTH_ATTACHMENT:GLuint;

	@:native('GL_STENCIL_ATTACHMENT')
	static var STENCIL_ATTACHMENT:GLuint;

	@:native('GL_FRAMEBUFFER')
	static var FRAMEBUFFER:GLuint;

	@:native('GL_RENDERBUFFER')
	static var RENDERBUFFER:GLuint;

	@:native('GL_RENDERBUFFER_WIDTH')
	static var RENDERBUFFER_WIDTH:GLuint;

	@:native('GL_RENDERBUFFER_HEIGHT')
	static var RENDERBUFFER_HEIGHT:GLuint;

	@:native('GL_RENDERBUFFER_INTERNAL_FORMAT')
	static var RENDERBUFFER_INTERNAL_FORMAT:GLuint;

	@:native('GL_STENCIL_INDEX1')
	static var STENCIL_INDEX1:GLuint;

	@:native('GL_STENCIL_INDEX4')
	static var STENCIL_INDEX4:GLuint;

	@:native('GL_STENCIL_INDEX8')
	static var STENCIL_INDEX8:GLuint;

	@:native('GL_STENCIL_INDEX16')
	static var STENCIL_INDEX16:GLuint;

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

	@:native('GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE')
	static var FRAMEBUFFER_INCOMPLETE_MULTISAMPLE:GLuint;

	@:native('GL_MAX_SAMPLES')
	static var MAX_SAMPLES:GLuint;

	@:native('GL_INDEX')
	static var INDEX:GLuint;

	@:native('GL_TEXTURE_LUMINANCE_TYPE')
	static var TEXTURE_LUMINANCE_TYPE:GLuint;

	@:native('GL_TEXTURE_INTENSITY_TYPE')
	static var TEXTURE_INTENSITY_TYPE:GLuint;

	@:native('GL_FRAMEBUFFER_SRGB')
	static var FRAMEBUFFER_SRGB:GLuint;

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

	@:native('GL_COMPRESSED_RED_RGTC1')
	static var COMPRESSED_RED_RGTC1:GLuint;

	@:native('GL_COMPRESSED_SIGNED_RED_RGTC1')
	static var COMPRESSED_SIGNED_RED_RGTC1:GLuint;

	@:native('GL_COMPRESSED_RG_RGTC2')
	static var COMPRESSED_RG_RGTC2:GLuint;

	@:native('GL_COMPRESSED_SIGNED_RG_RGTC2')
	static var COMPRESSED_SIGNED_RG_RGTC2:GLuint;

	@:native('GL_RG')
	static var RG:GLuint;

	@:native('GL_RG_INTEGER')
	static var RG_INTEGER:GLuint;

	@:native('GL_R8')
	static var R8:GLuint;

	@:native('GL_R16')
	static var R16:GLuint;

	@:native('GL_RG8')
	static var RG8:GLuint;

	@:native('GL_RG16')
	static var RG16:GLuint;

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

	@:native('GL_CLAMP_VERTEX_COLOR')
	static var CLAMP_VERTEX_COLOR:GLuint;

	@:native('GL_CLAMP_FRAGMENT_COLOR')
	static var CLAMP_FRAGMENT_COLOR:GLuint;

	@:native('GL_ALPHA_INTEGER')
	static var ALPHA_INTEGER:GLuint;

	@:native('GL_SAMPLER_2D_RECT')
	static var SAMPLER_2D_RECT:GLuint;

	@:native('GL_SAMPLER_2D_RECT_SHADOW')
	static var SAMPLER_2D_RECT_SHADOW:GLuint;

	@:native('GL_SAMPLER_BUFFER')
	static var SAMPLER_BUFFER:GLuint;

	@:native('GL_INT_SAMPLER_2D_RECT')
	static var INT_SAMPLER_2D_RECT:GLuint;

	@:native('GL_INT_SAMPLER_BUFFER')
	static var INT_SAMPLER_BUFFER:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D_RECT')
	static var UNSIGNED_INT_SAMPLER_2D_RECT:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_BUFFER')
	static var UNSIGNED_INT_SAMPLER_BUFFER:GLuint;

	@:native('GL_TEXTURE_BUFFER')
	static var TEXTURE_BUFFER:GLuint;

	@:native('GL_MAX_TEXTURE_BUFFER_SIZE')
	static var MAX_TEXTURE_BUFFER_SIZE:GLuint;

	@:native('GL_TEXTURE_BINDING_BUFFER')
	static var TEXTURE_BINDING_BUFFER:GLuint;

	@:native('GL_TEXTURE_BUFFER_DATA_STORE_BINDING')
	static var TEXTURE_BUFFER_DATA_STORE_BINDING:GLuint;

	@:native('GL_TEXTURE_RECTANGLE')
	static var TEXTURE_RECTANGLE:GLuint;

	@:native('GL_TEXTURE_BINDING_RECTANGLE')
	static var TEXTURE_BINDING_RECTANGLE:GLuint;

	@:native('GL_PROXY_TEXTURE_RECTANGLE')
	static var PROXY_TEXTURE_RECTANGLE:GLuint;

	@:native('GL_MAX_RECTANGLE_TEXTURE_SIZE')
	static var MAX_RECTANGLE_TEXTURE_SIZE:GLuint;

	@:native('GL_R8_SNORM')
	static var R8_SNORM:GLuint;

	@:native('GL_RG8_SNORM')
	static var RG8_SNORM:GLuint;

	@:native('GL_RGB8_SNORM')
	static var RGB8_SNORM:GLuint;

	@:native('GL_RGBA8_SNORM')
	static var RGBA8_SNORM:GLuint;

	@:native('GL_R16_SNORM')
	static var R16_SNORM:GLuint;

	@:native('GL_RG16_SNORM')
	static var RG16_SNORM:GLuint;

	@:native('GL_RGB16_SNORM')
	static var RGB16_SNORM:GLuint;

	@:native('GL_RGBA16_SNORM')
	static var RGBA16_SNORM:GLuint;

	@:native('GL_SIGNED_NORMALIZED')
	static var SIGNED_NORMALIZED:GLuint;

	@:native('GL_PRIMITIVE_RESTART')
	static var PRIMITIVE_RESTART:GLuint;

	@:native('GL_PRIMITIVE_RESTART_INDEX')
	static var PRIMITIVE_RESTART_INDEX:GLuint;

	@:native('GL_COPY_READ_BUFFER')
	static var COPY_READ_BUFFER:GLuint;

	@:native('GL_COPY_WRITE_BUFFER')
	static var COPY_WRITE_BUFFER:GLuint;

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

	@:native('GL_MAX_GEOMETRY_UNIFORM_BLOCKS')
	static var MAX_GEOMETRY_UNIFORM_BLOCKS:GLuint;

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

	@:native('GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS')
	static var MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS:GLuint;

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

	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER')
	static var UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER:GLuint;

	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER')
	static var UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER:GLuint;

	@:native('GL_INVALID_INDEX')
	static var INVALID_INDEX:GLuint;

	@:native('GL_CONTEXT_CORE_PROFILE_BIT')
	static var CONTEXT_CORE_PROFILE_BIT:GLuint;

	@:native('GL_CONTEXT_COMPATIBILITY_PROFILE_BIT')
	static var CONTEXT_COMPATIBILITY_PROFILE_BIT:GLuint;

	@:native('GL_LINES_ADJACENCY')
	static var LINES_ADJACENCY:GLuint;

	@:native('GL_LINE_STRIP_ADJACENCY')
	static var LINE_STRIP_ADJACENCY:GLuint;

	@:native('GL_TRIANGLES_ADJACENCY')
	static var TRIANGLES_ADJACENCY:GLuint;

	@:native('GL_TRIANGLE_STRIP_ADJACENCY')
	static var TRIANGLE_STRIP_ADJACENCY:GLuint;

	@:native('GL_PROGRAM_POINT_SIZE')
	static var PROGRAM_POINT_SIZE:GLuint;

	@:native('GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS')
	static var MAX_GEOMETRY_TEXTURE_IMAGE_UNITS:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_LAYERED')
	static var FRAMEBUFFER_ATTACHMENT_LAYERED:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS')
	static var FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS:GLuint;

	@:native('GL_GEOMETRY_SHADER')
	static var GEOMETRY_SHADER:GLuint;

	@:native('GL_GEOMETRY_VERTICES_OUT')
	static var GEOMETRY_VERTICES_OUT:GLuint;

	@:native('GL_GEOMETRY_INPUT_TYPE')
	static var GEOMETRY_INPUT_TYPE:GLuint;

	@:native('GL_GEOMETRY_OUTPUT_TYPE')
	static var GEOMETRY_OUTPUT_TYPE:GLuint;

	@:native('GL_MAX_GEOMETRY_UNIFORM_COMPONENTS')
	static var MAX_GEOMETRY_UNIFORM_COMPONENTS:GLuint;

	@:native('GL_MAX_GEOMETRY_OUTPUT_VERTICES')
	static var MAX_GEOMETRY_OUTPUT_VERTICES:GLuint;

	@:native('GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS')
	static var MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_VERTEX_OUTPUT_COMPONENTS')
	static var MAX_VERTEX_OUTPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_GEOMETRY_INPUT_COMPONENTS')
	static var MAX_GEOMETRY_INPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_GEOMETRY_OUTPUT_COMPONENTS')
	static var MAX_GEOMETRY_OUTPUT_COMPONENTS:GLuint;

	@:native('GL_MAX_FRAGMENT_INPUT_COMPONENTS')
	static var MAX_FRAGMENT_INPUT_COMPONENTS:GLuint;

	@:native('GL_CONTEXT_PROFILE_MASK')
	static var CONTEXT_PROFILE_MASK:GLuint;

	@:native('GL_DEPTH_CLAMP')
	static var DEPTH_CLAMP:GLuint;

	@:native('GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION')
	static var QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION:GLuint;

	@:native('GL_FIRST_VERTEX_CONVENTION')
	static var FIRST_VERTEX_CONVENTION:GLuint;

	@:native('GL_LAST_VERTEX_CONVENTION')
	static var LAST_VERTEX_CONVENTION:GLuint;

	@:native('GL_PROVOKING_VERTEX')
	static var PROVOKING_VERTEX:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_SEAMLESS')
	static var TEXTURE_CUBE_MAP_SEAMLESS:GLuint;

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

	@:native('GL_TIMEOUT_IGNORED')
	static var TIMEOUT_IGNORED:GLuint64;

	@:native('GL_SYNC_FLUSH_COMMANDS_BIT')
	static var SYNC_FLUSH_COMMANDS_BIT:GLuint;

	@:native('GL_SAMPLE_POSITION')
	static var SAMPLE_POSITION:GLuint;

	@:native('GL_SAMPLE_MASK')
	static var SAMPLE_MASK:GLuint;

	@:native('GL_SAMPLE_MASK_VALUE')
	static var SAMPLE_MASK_VALUE:GLuint;

	@:native('GL_MAX_SAMPLE_MASK_WORDS')
	static var MAX_SAMPLE_MASK_WORDS:GLuint;

	@:native('GL_TEXTURE_2D_MULTISAMPLE')
	static var TEXTURE_2D_MULTISAMPLE:GLuint;

	@:native('GL_PROXY_TEXTURE_2D_MULTISAMPLE')
	static var PROXY_TEXTURE_2D_MULTISAMPLE:GLuint;

	@:native('GL_TEXTURE_2D_MULTISAMPLE_ARRAY')
	static var TEXTURE_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY')
	static var PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_TEXTURE_BINDING_2D_MULTISAMPLE')
	static var TEXTURE_BINDING_2D_MULTISAMPLE:GLuint;

	@:native('GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY')
	static var TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_TEXTURE_SAMPLES')
	static var TEXTURE_SAMPLES:GLuint;

	@:native('GL_TEXTURE_FIXED_SAMPLE_LOCATIONS')
	static var TEXTURE_FIXED_SAMPLE_LOCATIONS:GLuint;

	@:native('GL_SAMPLER_2D_MULTISAMPLE')
	static var SAMPLER_2D_MULTISAMPLE:GLuint;

	@:native('GL_INT_SAMPLER_2D_MULTISAMPLE')
	static var INT_SAMPLER_2D_MULTISAMPLE:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE')
	static var UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE:GLuint;

	@:native('GL_SAMPLER_2D_MULTISAMPLE_ARRAY')
	static var SAMPLER_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY')
	static var INT_SAMPLER_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY')
	static var UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_MAX_COLOR_TEXTURE_SAMPLES')
	static var MAX_COLOR_TEXTURE_SAMPLES:GLuint;

	@:native('GL_MAX_DEPTH_TEXTURE_SAMPLES')
	static var MAX_DEPTH_TEXTURE_SAMPLES:GLuint;

	@:native('GL_MAX_INTEGER_SAMPLES')
	static var MAX_INTEGER_SAMPLES:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_DIVISOR')
	static var VERTEX_ATTRIB_ARRAY_DIVISOR:GLuint;

	@:native('GL_SRC1_COLOR')
	static var SRC1_COLOR:GLuint;

	@:native('GL_ONE_MINUS_SRC1_COLOR')
	static var ONE_MINUS_SRC1_COLOR:GLuint;

	@:native('GL_ONE_MINUS_SRC1_ALPHA')
	static var ONE_MINUS_SRC1_ALPHA:GLuint;

	@:native('GL_MAX_DUAL_SOURCE_DRAW_BUFFERS')
	static var MAX_DUAL_SOURCE_DRAW_BUFFERS:GLuint;

	@:native('GL_ANY_SAMPLES_PASSED')
	static var ANY_SAMPLES_PASSED:GLuint;

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

	@:native('GL_TEXTURE_SWIZZLE_RGBA')
	static var TEXTURE_SWIZZLE_RGBA:GLuint;

	@:native('GL_TIME_ELAPSED')
	static var TIME_ELAPSED:GLuint;

	@:native('GL_TIMESTAMP')
	static var TIMESTAMP:GLuint;

	@:native('GL_INT_2_10_10_10_REV')
	static var INT_2_10_10_10_REV:GLuint;

	@:native('GL_SAMPLE_SHADING')
	static var SAMPLE_SHADING:GLuint;

	@:native('GL_MIN_SAMPLE_SHADING_VALUE')
	static var MIN_SAMPLE_SHADING_VALUE:GLuint;

	@:native('GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET')
	static var MIN_PROGRAM_TEXTURE_GATHER_OFFSET:GLuint;

	@:native('GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET')
	static var MAX_PROGRAM_TEXTURE_GATHER_OFFSET:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_ARRAY')
	static var TEXTURE_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_TEXTURE_BINDING_CUBE_MAP_ARRAY')
	static var TEXTURE_BINDING_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_PROXY_TEXTURE_CUBE_MAP_ARRAY')
	static var PROXY_TEXTURE_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_SAMPLER_CUBE_MAP_ARRAY')
	static var SAMPLER_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW')
	static var SAMPLER_CUBE_MAP_ARRAY_SHADOW:GLuint;

	@:native('GL_INT_SAMPLER_CUBE_MAP_ARRAY')
	static var INT_SAMPLER_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY')
	static var UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_DRAW_INDIRECT_BUFFER')
	static var DRAW_INDIRECT_BUFFER:GLuint;

	@:native('GL_DRAW_INDIRECT_BUFFER_BINDING')
	static var DRAW_INDIRECT_BUFFER_BINDING:GLuint;

	@:native('GL_GEOMETRY_SHADER_INVOCATIONS')
	static var GEOMETRY_SHADER_INVOCATIONS:GLuint;

	@:native('GL_MAX_GEOMETRY_SHADER_INVOCATIONS')
	static var MAX_GEOMETRY_SHADER_INVOCATIONS:GLuint;

	@:native('GL_MIN_FRAGMENT_INTERPOLATION_OFFSET')
	static var MIN_FRAGMENT_INTERPOLATION_OFFSET:GLuint;

	@:native('GL_MAX_FRAGMENT_INTERPOLATION_OFFSET')
	static var MAX_FRAGMENT_INTERPOLATION_OFFSET:GLuint;

	@:native('GL_FRAGMENT_INTERPOLATION_OFFSET_BITS')
	static var FRAGMENT_INTERPOLATION_OFFSET_BITS:GLuint;

	@:native('GL_MAX_VERTEX_STREAMS')
	static var MAX_VERTEX_STREAMS:GLuint;

	@:native('GL_DOUBLE_VEC2')
	static var DOUBLE_VEC2:GLuint;

	@:native('GL_DOUBLE_VEC3')
	static var DOUBLE_VEC3:GLuint;

	@:native('GL_DOUBLE_VEC4')
	static var DOUBLE_VEC4:GLuint;

	@:native('GL_DOUBLE_MAT2')
	static var DOUBLE_MAT2:GLuint;

	@:native('GL_DOUBLE_MAT3')
	static var DOUBLE_MAT3:GLuint;

	@:native('GL_DOUBLE_MAT4')
	static var DOUBLE_MAT4:GLuint;

	@:native('GL_DOUBLE_MAT2x3')
	static var DOUBLE_MAT2x3:GLuint;

	@:native('GL_DOUBLE_MAT2x4')
	static var DOUBLE_MAT2x4:GLuint;

	@:native('GL_DOUBLE_MAT3x2')
	static var DOUBLE_MAT3x2:GLuint;

	@:native('GL_DOUBLE_MAT3x4')
	static var DOUBLE_MAT3x4:GLuint;

	@:native('GL_DOUBLE_MAT4x2')
	static var DOUBLE_MAT4x2:GLuint;

	@:native('GL_DOUBLE_MAT4x3')
	static var DOUBLE_MAT4x3:GLuint;

	@:native('GL_ACTIVE_SUBROUTINES')
	static var ACTIVE_SUBROUTINES:GLuint;

	@:native('GL_ACTIVE_SUBROUTINE_UNIFORMS')
	static var ACTIVE_SUBROUTINE_UNIFORMS:GLuint;

	@:native('GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS')
	static var ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS:GLuint;

	@:native('GL_ACTIVE_SUBROUTINE_MAX_LENGTH')
	static var ACTIVE_SUBROUTINE_MAX_LENGTH:GLuint;

	@:native('GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH')
	static var ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH:GLuint;

	@:native('GL_MAX_SUBROUTINES')
	static var MAX_SUBROUTINES:GLuint;

	@:native('GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS')
	static var MAX_SUBROUTINE_UNIFORM_LOCATIONS:GLuint;

	@:native('GL_NUM_COMPATIBLE_SUBROUTINES')
	static var NUM_COMPATIBLE_SUBROUTINES:GLuint;

	@:native('GL_COMPATIBLE_SUBROUTINES')
	static var COMPATIBLE_SUBROUTINES:GLuint;

	@:native('GL_PATCHES')
	static var PATCHES:GLuint;

	@:native('GL_PATCH_VERTICES')
	static var PATCH_VERTICES:GLuint;

	@:native('GL_PATCH_DEFAULT_INNER_LEVEL')
	static var PATCH_DEFAULT_INNER_LEVEL:GLuint;

	@:native('GL_PATCH_DEFAULT_OUTER_LEVEL')
	static var PATCH_DEFAULT_OUTER_LEVEL:GLuint;

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

	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER')
	static var UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER:GLuint;

	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER')
	static var UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER:GLuint;

	@:native('GL_TESS_EVALUATION_SHADER')
	static var TESS_EVALUATION_SHADER:GLuint;

	@:native('GL_TESS_CONTROL_SHADER')
	static var TESS_CONTROL_SHADER:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK')
	static var TRANSFORM_FEEDBACK:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED')
	static var TRANSFORM_FEEDBACK_BUFFER_PAUSED:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE')
	static var TRANSFORM_FEEDBACK_BUFFER_ACTIVE:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BINDING')
	static var TRANSFORM_FEEDBACK_BINDING:GLuint;

	@:native('GL_MAX_TRANSFORM_FEEDBACK_BUFFERS')
	static var MAX_TRANSFORM_FEEDBACK_BUFFERS:GLuint;

	@:native('GL_FIXED')
	static var FIXED:GLuint;

	@:native('GL_IMPLEMENTATION_COLOR_READ_TYPE')
	static var IMPLEMENTATION_COLOR_READ_TYPE:GLuint;

	@:native('GL_IMPLEMENTATION_COLOR_READ_FORMAT')
	static var IMPLEMENTATION_COLOR_READ_FORMAT:GLuint;

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

	@:native('GL_SHADER_COMPILER')
	static var SHADER_COMPILER:GLuint;

	@:native('GL_SHADER_BINARY_FORMATS')
	static var SHADER_BINARY_FORMATS:GLuint;

	@:native('GL_NUM_SHADER_BINARY_FORMATS')
	static var NUM_SHADER_BINARY_FORMATS:GLuint;

	@:native('GL_MAX_VERTEX_UNIFORM_VECTORS')
	static var MAX_VERTEX_UNIFORM_VECTORS:GLuint;

	@:native('GL_MAX_VARYING_VECTORS')
	static var MAX_VARYING_VECTORS:GLuint;

	@:native('GL_MAX_FRAGMENT_UNIFORM_VECTORS')
	static var MAX_FRAGMENT_UNIFORM_VECTORS:GLuint;

	@:native('GL_RGB565')
	static var RGB565:GLuint;

	@:native('GL_PROGRAM_BINARY_RETRIEVABLE_HINT')
	static var PROGRAM_BINARY_RETRIEVABLE_HINT:GLuint;

	@:native('GL_PROGRAM_BINARY_LENGTH')
	static var PROGRAM_BINARY_LENGTH:GLuint;

	@:native('GL_NUM_PROGRAM_BINARY_FORMATS')
	static var NUM_PROGRAM_BINARY_FORMATS:GLuint;

	@:native('GL_PROGRAM_BINARY_FORMATS')
	static var PROGRAM_BINARY_FORMATS:GLuint;

	@:native('GL_VERTEX_SHADER_BIT')
	static var VERTEX_SHADER_BIT:GLuint;

	@:native('GL_FRAGMENT_SHADER_BIT')
	static var FRAGMENT_SHADER_BIT:GLuint;

	@:native('GL_GEOMETRY_SHADER_BIT')
	static var GEOMETRY_SHADER_BIT:GLuint;

	@:native('GL_TESS_CONTROL_SHADER_BIT')
	static var TESS_CONTROL_SHADER_BIT:GLuint;

	@:native('GL_TESS_EVALUATION_SHADER_BIT')
	static var TESS_EVALUATION_SHADER_BIT:GLuint;

	@:native('GL_ALL_SHADER_BITS')
	static var ALL_SHADER_BITS:GLuint;

	@:native('GL_PROGRAM_SEPARABLE')
	static var PROGRAM_SEPARABLE:GLuint;

	@:native('GL_ACTIVE_PROGRAM')
	static var ACTIVE_PROGRAM:GLuint;

	@:native('GL_PROGRAM_PIPELINE_BINDING')
	static var PROGRAM_PIPELINE_BINDING:GLuint;

	@:native('GL_MAX_VIEWPORTS')
	static var MAX_VIEWPORTS:GLuint;

	@:native('GL_VIEWPORT_SUBPIXEL_BITS')
	static var VIEWPORT_SUBPIXEL_BITS:GLuint;

	@:native('GL_VIEWPORT_BOUNDS_RANGE')
	static var VIEWPORT_BOUNDS_RANGE:GLuint;

	@:native('GL_LAYER_PROVOKING_VERTEX')
	static var LAYER_PROVOKING_VERTEX:GLuint;

	@:native('GL_VIEWPORT_INDEX_PROVOKING_VERTEX')
	static var VIEWPORT_INDEX_PROVOKING_VERTEX:GLuint;

	@:native('GL_UNDEFINED_VERTEX')
	static var UNDEFINED_VERTEX:GLuint;

	@:native('GL_COPY_READ_BUFFER_BINDING')
	static var COPY_READ_BUFFER_BINDING:GLuint;

	@:native('GL_COPY_WRITE_BUFFER_BINDING')
	static var COPY_WRITE_BUFFER_BINDING:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_ACTIVE')
	static var TRANSFORM_FEEDBACK_ACTIVE:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_PAUSED')
	static var TRANSFORM_FEEDBACK_PAUSED:GLuint;

	@:native('GL_UNPACK_COMPRESSED_BLOCK_WIDTH')
	static var UNPACK_COMPRESSED_BLOCK_WIDTH:GLuint;

	@:native('GL_UNPACK_COMPRESSED_BLOCK_HEIGHT')
	static var UNPACK_COMPRESSED_BLOCK_HEIGHT:GLuint;

	@:native('GL_UNPACK_COMPRESSED_BLOCK_DEPTH')
	static var UNPACK_COMPRESSED_BLOCK_DEPTH:GLuint;

	@:native('GL_UNPACK_COMPRESSED_BLOCK_SIZE')
	static var UNPACK_COMPRESSED_BLOCK_SIZE:GLuint;

	@:native('GL_PACK_COMPRESSED_BLOCK_WIDTH')
	static var PACK_COMPRESSED_BLOCK_WIDTH:GLuint;

	@:native('GL_PACK_COMPRESSED_BLOCK_HEIGHT')
	static var PACK_COMPRESSED_BLOCK_HEIGHT:GLuint;

	@:native('GL_PACK_COMPRESSED_BLOCK_DEPTH')
	static var PACK_COMPRESSED_BLOCK_DEPTH:GLuint;

	@:native('GL_PACK_COMPRESSED_BLOCK_SIZE')
	static var PACK_COMPRESSED_BLOCK_SIZE:GLuint;

	@:native('GL_NUM_SAMPLE_COUNTS')
	static var NUM_SAMPLE_COUNTS:GLuint;

	@:native('GL_MIN_MAP_BUFFER_ALIGNMENT')
	static var MIN_MAP_BUFFER_ALIGNMENT:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER')
	static var ATOMIC_COUNTER_BUFFER:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_BINDING')
	static var ATOMIC_COUNTER_BUFFER_BINDING:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_START')
	static var ATOMIC_COUNTER_BUFFER_START:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_SIZE')
	static var ATOMIC_COUNTER_BUFFER_SIZE:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE')
	static var ATOMIC_COUNTER_BUFFER_DATA_SIZE:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS')
	static var ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES')
	static var ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER')
	static var ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER')
	static var ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER')
	static var ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER')
	static var ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER')
	static var ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER:GLuint;

	@:native('GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS')
	static var MAX_VERTEX_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS')
	static var MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS')
	static var MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS')
	static var MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS')
	static var MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS')
	static var MAX_COMBINED_ATOMIC_COUNTER_BUFFERS:GLuint;

	@:native('GL_MAX_VERTEX_ATOMIC_COUNTERS')
	static var MAX_VERTEX_ATOMIC_COUNTERS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS')
	static var MAX_TESS_CONTROL_ATOMIC_COUNTERS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS')
	static var MAX_TESS_EVALUATION_ATOMIC_COUNTERS:GLuint;

	@:native('GL_MAX_GEOMETRY_ATOMIC_COUNTERS')
	static var MAX_GEOMETRY_ATOMIC_COUNTERS:GLuint;

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

	@:native('GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX')
	static var UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX:GLuint;

	@:native('GL_UNSIGNED_INT_ATOMIC_COUNTER')
	static var UNSIGNED_INT_ATOMIC_COUNTER:GLuint;

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

	@:native('GL_MAX_IMAGE_UNITS')
	static var MAX_IMAGE_UNITS:GLuint;

	@:native('GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS')
	static var MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS:GLuint;

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

	@:native('GL_IMAGE_1D')
	static var IMAGE_1D:GLuint;

	@:native('GL_IMAGE_2D')
	static var IMAGE_2D:GLuint;

	@:native('GL_IMAGE_3D')
	static var IMAGE_3D:GLuint;

	@:native('GL_IMAGE_2D_RECT')
	static var IMAGE_2D_RECT:GLuint;

	@:native('GL_IMAGE_CUBE')
	static var IMAGE_CUBE:GLuint;

	@:native('GL_IMAGE_BUFFER')
	static var IMAGE_BUFFER:GLuint;

	@:native('GL_IMAGE_1D_ARRAY')
	static var IMAGE_1D_ARRAY:GLuint;

	@:native('GL_IMAGE_2D_ARRAY')
	static var IMAGE_2D_ARRAY:GLuint;

	@:native('GL_IMAGE_CUBE_MAP_ARRAY')
	static var IMAGE_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_IMAGE_2D_MULTISAMPLE')
	static var IMAGE_2D_MULTISAMPLE:GLuint;

	@:native('GL_IMAGE_2D_MULTISAMPLE_ARRAY')
	static var IMAGE_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_INT_IMAGE_1D')
	static var INT_IMAGE_1D:GLuint;

	@:native('GL_INT_IMAGE_2D')
	static var INT_IMAGE_2D:GLuint;

	@:native('GL_INT_IMAGE_3D')
	static var INT_IMAGE_3D:GLuint;

	@:native('GL_INT_IMAGE_2D_RECT')
	static var INT_IMAGE_2D_RECT:GLuint;

	@:native('GL_INT_IMAGE_CUBE')
	static var INT_IMAGE_CUBE:GLuint;

	@:native('GL_INT_IMAGE_BUFFER')
	static var INT_IMAGE_BUFFER:GLuint;

	@:native('GL_INT_IMAGE_1D_ARRAY')
	static var INT_IMAGE_1D_ARRAY:GLuint;

	@:native('GL_INT_IMAGE_2D_ARRAY')
	static var INT_IMAGE_2D_ARRAY:GLuint;

	@:native('GL_INT_IMAGE_CUBE_MAP_ARRAY')
	static var INT_IMAGE_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_INT_IMAGE_2D_MULTISAMPLE')
	static var INT_IMAGE_2D_MULTISAMPLE:GLuint;

	@:native('GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY')
	static var INT_IMAGE_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_1D')
	static var UNSIGNED_INT_IMAGE_1D:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_2D')
	static var UNSIGNED_INT_IMAGE_2D:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_3D')
	static var UNSIGNED_INT_IMAGE_3D:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_2D_RECT')
	static var UNSIGNED_INT_IMAGE_2D_RECT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_CUBE')
	static var UNSIGNED_INT_IMAGE_CUBE:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_BUFFER')
	static var UNSIGNED_INT_IMAGE_BUFFER:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_1D_ARRAY')
	static var UNSIGNED_INT_IMAGE_1D_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_2D_ARRAY')
	static var UNSIGNED_INT_IMAGE_2D_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY')
	static var UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE')
	static var UNSIGNED_INT_IMAGE_2D_MULTISAMPLE:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY')
	static var UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY:GLuint;

	@:native('GL_MAX_IMAGE_SAMPLES')
	static var MAX_IMAGE_SAMPLES:GLuint;

	@:native('GL_IMAGE_BINDING_FORMAT')
	static var IMAGE_BINDING_FORMAT:GLuint;

	@:native('GL_IMAGE_FORMAT_COMPATIBILITY_TYPE')
	static var IMAGE_FORMAT_COMPATIBILITY_TYPE:GLuint;

	@:native('GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE')
	static var IMAGE_FORMAT_COMPATIBILITY_BY_SIZE:GLuint;

	@:native('GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS')
	static var IMAGE_FORMAT_COMPATIBILITY_BY_CLASS:GLuint;

	@:native('GL_MAX_VERTEX_IMAGE_UNIFORMS')
	static var MAX_VERTEX_IMAGE_UNIFORMS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS')
	static var MAX_TESS_CONTROL_IMAGE_UNIFORMS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS')
	static var MAX_TESS_EVALUATION_IMAGE_UNIFORMS:GLuint;

	@:native('GL_MAX_GEOMETRY_IMAGE_UNIFORMS')
	static var MAX_GEOMETRY_IMAGE_UNIFORMS:GLuint;

	@:native('GL_MAX_FRAGMENT_IMAGE_UNIFORMS')
	static var MAX_FRAGMENT_IMAGE_UNIFORMS:GLuint;

	@:native('GL_MAX_COMBINED_IMAGE_UNIFORMS')
	static var MAX_COMBINED_IMAGE_UNIFORMS:GLuint;

	@:native('GL_COMPRESSED_RGBA_BPTC_UNORM')
	static var COMPRESSED_RGBA_BPTC_UNORM:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM')
	static var COMPRESSED_SRGB_ALPHA_BPTC_UNORM:GLuint;

	@:native('GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT')
	static var COMPRESSED_RGB_BPTC_SIGNED_FLOAT:GLuint;

	@:native('GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT')
	static var COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT:GLuint;

	@:native('GL_TEXTURE_IMMUTABLE_FORMAT')
	static var TEXTURE_IMMUTABLE_FORMAT:GLuint;

	@:native('GL_NUM_SHADING_LANGUAGE_VERSIONS')
	static var NUM_SHADING_LANGUAGE_VERSIONS:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_LONG')
	static var VERTEX_ATTRIB_ARRAY_LONG:GLuint;

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

	@:native('GL_COMPRESSED_R11_EAC')
	static var COMPRESSED_R11_EAC:GLuint;

	@:native('GL_COMPRESSED_SIGNED_R11_EAC')
	static var COMPRESSED_SIGNED_R11_EAC:GLuint;

	@:native('GL_COMPRESSED_RG11_EAC')
	static var COMPRESSED_RG11_EAC:GLuint;

	@:native('GL_COMPRESSED_SIGNED_RG11_EAC')
	static var COMPRESSED_SIGNED_RG11_EAC:GLuint;

	@:native('GL_PRIMITIVE_RESTART_FIXED_INDEX')
	static var PRIMITIVE_RESTART_FIXED_INDEX:GLuint;

	@:native('GL_ANY_SAMPLES_PASSED_CONSERVATIVE')
	static var ANY_SAMPLES_PASSED_CONSERVATIVE:GLuint;

	@:native('GL_MAX_ELEMENT_INDEX')
	static var MAX_ELEMENT_INDEX:GLuint;

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

	@:native('GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER')
	static var UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER:GLuint;

	@:native('GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER')
	static var ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER:GLuint;

	@:native('GL_DISPATCH_INDIRECT_BUFFER')
	static var DISPATCH_INDIRECT_BUFFER:GLuint;

	@:native('GL_DISPATCH_INDIRECT_BUFFER_BINDING')
	static var DISPATCH_INDIRECT_BUFFER_BINDING:GLuint;

	@:native('GL_COMPUTE_SHADER_BIT')
	static var COMPUTE_SHADER_BIT:GLuint;

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

	@:native('GL_QUERY')
	static var QUERY:GLuint;

	@:native('GL_PROGRAM_PIPELINE')
	static var PROGRAM_PIPELINE:GLuint;

	@:native('GL_SAMPLER')
	static var SAMPLER:GLuint;

	@:native('GL_MAX_LABEL_LENGTH')
	static var MAX_LABEL_LENGTH:GLuint;

	@:native('GL_DEBUG_OUTPUT')
	static var DEBUG_OUTPUT:GLuint;

	@:native('GL_CONTEXT_FLAG_DEBUG_BIT')
	static var CONTEXT_FLAG_DEBUG_BIT:GLuint;

	@:native('GL_MAX_UNIFORM_LOCATIONS')
	static var MAX_UNIFORM_LOCATIONS:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT_WIDTH')
	static var FRAMEBUFFER_DEFAULT_WIDTH:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT_HEIGHT')
	static var FRAMEBUFFER_DEFAULT_HEIGHT:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT_LAYERS')
	static var FRAMEBUFFER_DEFAULT_LAYERS:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT_SAMPLES')
	static var FRAMEBUFFER_DEFAULT_SAMPLES:GLuint;

	@:native('GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS')
	static var FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS:GLuint;

	@:native('GL_MAX_FRAMEBUFFER_WIDTH')
	static var MAX_FRAMEBUFFER_WIDTH:GLuint;

	@:native('GL_MAX_FRAMEBUFFER_HEIGHT')
	static var MAX_FRAMEBUFFER_HEIGHT:GLuint;

	@:native('GL_MAX_FRAMEBUFFER_LAYERS')
	static var MAX_FRAMEBUFFER_LAYERS:GLuint;

	@:native('GL_MAX_FRAMEBUFFER_SAMPLES')
	static var MAX_FRAMEBUFFER_SAMPLES:GLuint;

	@:native('GL_INTERNALFORMAT_SUPPORTED')
	static var INTERNALFORMAT_SUPPORTED:GLuint;

	@:native('GL_INTERNALFORMAT_PREFERRED')
	static var INTERNALFORMAT_PREFERRED:GLuint;

	@:native('GL_INTERNALFORMAT_RED_SIZE')
	static var INTERNALFORMAT_RED_SIZE:GLuint;

	@:native('GL_INTERNALFORMAT_GREEN_SIZE')
	static var INTERNALFORMAT_GREEN_SIZE:GLuint;

	@:native('GL_INTERNALFORMAT_BLUE_SIZE')
	static var INTERNALFORMAT_BLUE_SIZE:GLuint;

	@:native('GL_INTERNALFORMAT_ALPHA_SIZE')
	static var INTERNALFORMAT_ALPHA_SIZE:GLuint;

	@:native('GL_INTERNALFORMAT_DEPTH_SIZE')
	static var INTERNALFORMAT_DEPTH_SIZE:GLuint;

	@:native('GL_INTERNALFORMAT_STENCIL_SIZE')
	static var INTERNALFORMAT_STENCIL_SIZE:GLuint;

	@:native('GL_INTERNALFORMAT_SHARED_SIZE')
	static var INTERNALFORMAT_SHARED_SIZE:GLuint;

	@:native('GL_INTERNALFORMAT_RED_TYPE')
	static var INTERNALFORMAT_RED_TYPE:GLuint;

	@:native('GL_INTERNALFORMAT_GREEN_TYPE')
	static var INTERNALFORMAT_GREEN_TYPE:GLuint;

	@:native('GL_INTERNALFORMAT_BLUE_TYPE')
	static var INTERNALFORMAT_BLUE_TYPE:GLuint;

	@:native('GL_INTERNALFORMAT_ALPHA_TYPE')
	static var INTERNALFORMAT_ALPHA_TYPE:GLuint;

	@:native('GL_INTERNALFORMAT_DEPTH_TYPE')
	static var INTERNALFORMAT_DEPTH_TYPE:GLuint;

	@:native('GL_INTERNALFORMAT_STENCIL_TYPE')
	static var INTERNALFORMAT_STENCIL_TYPE:GLuint;

	@:native('GL_MAX_WIDTH')
	static var MAX_WIDTH:GLuint;

	@:native('GL_MAX_HEIGHT')
	static var MAX_HEIGHT:GLuint;

	@:native('GL_MAX_DEPTH')
	static var MAX_DEPTH:GLuint;

	@:native('GL_MAX_LAYERS')
	static var MAX_LAYERS:GLuint;

	@:native('GL_MAX_COMBINED_DIMENSIONS')
	static var MAX_COMBINED_DIMENSIONS:GLuint;

	@:native('GL_COLOR_COMPONENTS')
	static var COLOR_COMPONENTS:GLuint;

	@:native('GL_DEPTH_COMPONENTS')
	static var DEPTH_COMPONENTS:GLuint;

	@:native('GL_STENCIL_COMPONENTS')
	static var STENCIL_COMPONENTS:GLuint;

	@:native('GL_COLOR_RENDERABLE')
	static var COLOR_RENDERABLE:GLuint;

	@:native('GL_DEPTH_RENDERABLE')
	static var DEPTH_RENDERABLE:GLuint;

	@:native('GL_STENCIL_RENDERABLE')
	static var STENCIL_RENDERABLE:GLuint;

	@:native('GL_FRAMEBUFFER_RENDERABLE')
	static var FRAMEBUFFER_RENDERABLE:GLuint;

	@:native('GL_FRAMEBUFFER_RENDERABLE_LAYERED')
	static var FRAMEBUFFER_RENDERABLE_LAYERED:GLuint;

	@:native('GL_FRAMEBUFFER_BLEND')
	static var FRAMEBUFFER_BLEND:GLuint;

	@:native('GL_READ_PIXELS')
	static var READ_PIXELS:GLuint;

	@:native('GL_READ_PIXELS_FORMAT')
	static var READ_PIXELS_FORMAT:GLuint;

	@:native('GL_READ_PIXELS_TYPE')
	static var READ_PIXELS_TYPE:GLuint;

	@:native('GL_TEXTURE_IMAGE_FORMAT')
	static var TEXTURE_IMAGE_FORMAT:GLuint;

	@:native('GL_TEXTURE_IMAGE_TYPE')
	static var TEXTURE_IMAGE_TYPE:GLuint;

	@:native('GL_GET_TEXTURE_IMAGE_FORMAT')
	static var GET_TEXTURE_IMAGE_FORMAT:GLuint;

	@:native('GL_GET_TEXTURE_IMAGE_TYPE')
	static var GET_TEXTURE_IMAGE_TYPE:GLuint;

	@:native('GL_MIPMAP')
	static var MIPMAP:GLuint;

	@:native('GL_MANUAL_GENERATE_MIPMAP')
	static var MANUAL_GENERATE_MIPMAP:GLuint;

	@:native('GL_AUTO_GENERATE_MIPMAP')
	static var AUTO_GENERATE_MIPMAP:GLuint;

	@:native('GL_COLOR_ENCODING')
	static var COLOR_ENCODING:GLuint;

	@:native('GL_SRGB_READ')
	static var SRGB_READ:GLuint;

	@:native('GL_SRGB_WRITE')
	static var SRGB_WRITE:GLuint;

	@:native('GL_FILTER')
	static var FILTER:GLuint;

	@:native('GL_VERTEX_TEXTURE')
	static var VERTEX_TEXTURE:GLuint;

	@:native('GL_TESS_CONTROL_TEXTURE')
	static var TESS_CONTROL_TEXTURE:GLuint;

	@:native('GL_TESS_EVALUATION_TEXTURE')
	static var TESS_EVALUATION_TEXTURE:GLuint;

	@:native('GL_GEOMETRY_TEXTURE')
	static var GEOMETRY_TEXTURE:GLuint;

	@:native('GL_FRAGMENT_TEXTURE')
	static var FRAGMENT_TEXTURE:GLuint;

	@:native('GL_COMPUTE_TEXTURE')
	static var COMPUTE_TEXTURE:GLuint;

	@:native('GL_TEXTURE_SHADOW')
	static var TEXTURE_SHADOW:GLuint;

	@:native('GL_TEXTURE_GATHER')
	static var TEXTURE_GATHER:GLuint;

	@:native('GL_TEXTURE_GATHER_SHADOW')
	static var TEXTURE_GATHER_SHADOW:GLuint;

	@:native('GL_SHADER_IMAGE_LOAD')
	static var SHADER_IMAGE_LOAD:GLuint;

	@:native('GL_SHADER_IMAGE_STORE')
	static var SHADER_IMAGE_STORE:GLuint;

	@:native('GL_SHADER_IMAGE_ATOMIC')
	static var SHADER_IMAGE_ATOMIC:GLuint;

	@:native('GL_IMAGE_TEXEL_SIZE')
	static var IMAGE_TEXEL_SIZE:GLuint;

	@:native('GL_IMAGE_COMPATIBILITY_CLASS')
	static var IMAGE_COMPATIBILITY_CLASS:GLuint;

	@:native('GL_IMAGE_PIXEL_FORMAT')
	static var IMAGE_PIXEL_FORMAT:GLuint;

	@:native('GL_IMAGE_PIXEL_TYPE')
	static var IMAGE_PIXEL_TYPE:GLuint;

	@:native('GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST')
	static var SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST:GLuint;

	@:native('GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST')
	static var SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST:GLuint;

	@:native('GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE')
	static var SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE:GLuint;

	@:native('GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE')
	static var SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE:GLuint;

	@:native('GL_TEXTURE_COMPRESSED_BLOCK_WIDTH')
	static var TEXTURE_COMPRESSED_BLOCK_WIDTH:GLuint;

	@:native('GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT')
	static var TEXTURE_COMPRESSED_BLOCK_HEIGHT:GLuint;

	@:native('GL_TEXTURE_COMPRESSED_BLOCK_SIZE')
	static var TEXTURE_COMPRESSED_BLOCK_SIZE:GLuint;

	@:native('GL_CLEAR_BUFFER')
	static var CLEAR_BUFFER:GLuint;

	@:native('GL_TEXTURE_VIEW')
	static var TEXTURE_VIEW:GLuint;

	@:native('GL_VIEW_COMPATIBILITY_CLASS')
	static var VIEW_COMPATIBILITY_CLASS:GLuint;

	@:native('GL_FULL_SUPPORT')
	static var FULL_SUPPORT:GLuint;

	@:native('GL_CAVEAT_SUPPORT')
	static var CAVEAT_SUPPORT:GLuint;

	@:native('GL_IMAGE_CLASS_4_X_32')
	static var IMAGE_CLASS_4_X_32:GLuint;

	@:native('GL_IMAGE_CLASS_2_X_32')
	static var IMAGE_CLASS_2_X_32:GLuint;

	@:native('GL_IMAGE_CLASS_1_X_32')
	static var IMAGE_CLASS_1_X_32:GLuint;

	@:native('GL_IMAGE_CLASS_4_X_16')
	static var IMAGE_CLASS_4_X_16:GLuint;

	@:native('GL_IMAGE_CLASS_2_X_16')
	static var IMAGE_CLASS_2_X_16:GLuint;

	@:native('GL_IMAGE_CLASS_1_X_16')
	static var IMAGE_CLASS_1_X_16:GLuint;

	@:native('GL_IMAGE_CLASS_4_X_8')
	static var IMAGE_CLASS_4_X_8:GLuint;

	@:native('GL_IMAGE_CLASS_2_X_8')
	static var IMAGE_CLASS_2_X_8:GLuint;

	@:native('GL_IMAGE_CLASS_1_X_8')
	static var IMAGE_CLASS_1_X_8:GLuint;

	@:native('GL_IMAGE_CLASS_11_11_10')
	static var IMAGE_CLASS_11_11_10:GLuint;

	@:native('GL_IMAGE_CLASS_10_10_10_2')
	static var IMAGE_CLASS_10_10_10_2:GLuint;

	@:native('GL_VIEW_CLASS_128_BITS')
	static var VIEW_CLASS_128_BITS:GLuint;

	@:native('GL_VIEW_CLASS_96_BITS')
	static var VIEW_CLASS_96_BITS:GLuint;

	@:native('GL_VIEW_CLASS_64_BITS')
	static var VIEW_CLASS_64_BITS:GLuint;

	@:native('GL_VIEW_CLASS_48_BITS')
	static var VIEW_CLASS_48_BITS:GLuint;

	@:native('GL_VIEW_CLASS_32_BITS')
	static var VIEW_CLASS_32_BITS:GLuint;

	@:native('GL_VIEW_CLASS_24_BITS')
	static var VIEW_CLASS_24_BITS:GLuint;

	@:native('GL_VIEW_CLASS_16_BITS')
	static var VIEW_CLASS_16_BITS:GLuint;

	@:native('GL_VIEW_CLASS_8_BITS')
	static var VIEW_CLASS_8_BITS:GLuint;

	@:native('GL_VIEW_CLASS_S3TC_DXT1_RGB')
	static var VIEW_CLASS_S3TC_DXT1_RGB:GLuint;

	@:native('GL_VIEW_CLASS_S3TC_DXT1_RGBA')
	static var VIEW_CLASS_S3TC_DXT1_RGBA:GLuint;

	@:native('GL_VIEW_CLASS_S3TC_DXT3_RGBA')
	static var VIEW_CLASS_S3TC_DXT3_RGBA:GLuint;

	@:native('GL_VIEW_CLASS_S3TC_DXT5_RGBA')
	static var VIEW_CLASS_S3TC_DXT5_RGBA:GLuint;

	@:native('GL_VIEW_CLASS_RGTC1_RED')
	static var VIEW_CLASS_RGTC1_RED:GLuint;

	@:native('GL_VIEW_CLASS_RGTC2_RG')
	static var VIEW_CLASS_RGTC2_RG:GLuint;

	@:native('GL_VIEW_CLASS_BPTC_UNORM')
	static var VIEW_CLASS_BPTC_UNORM:GLuint;

	@:native('GL_VIEW_CLASS_BPTC_FLOAT')
	static var VIEW_CLASS_BPTC_FLOAT:GLuint;

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

	@:native('GL_VERTEX_SUBROUTINE')
	static var VERTEX_SUBROUTINE:GLuint;

	@:native('GL_TESS_CONTROL_SUBROUTINE')
	static var TESS_CONTROL_SUBROUTINE:GLuint;

	@:native('GL_TESS_EVALUATION_SUBROUTINE')
	static var TESS_EVALUATION_SUBROUTINE:GLuint;

	@:native('GL_GEOMETRY_SUBROUTINE')
	static var GEOMETRY_SUBROUTINE:GLuint;

	@:native('GL_FRAGMENT_SUBROUTINE')
	static var FRAGMENT_SUBROUTINE:GLuint;

	@:native('GL_COMPUTE_SUBROUTINE')
	static var COMPUTE_SUBROUTINE:GLuint;

	@:native('GL_VERTEX_SUBROUTINE_UNIFORM')
	static var VERTEX_SUBROUTINE_UNIFORM:GLuint;

	@:native('GL_TESS_CONTROL_SUBROUTINE_UNIFORM')
	static var TESS_CONTROL_SUBROUTINE_UNIFORM:GLuint;

	@:native('GL_TESS_EVALUATION_SUBROUTINE_UNIFORM')
	static var TESS_EVALUATION_SUBROUTINE_UNIFORM:GLuint;

	@:native('GL_GEOMETRY_SUBROUTINE_UNIFORM')
	static var GEOMETRY_SUBROUTINE_UNIFORM:GLuint;

	@:native('GL_FRAGMENT_SUBROUTINE_UNIFORM')
	static var FRAGMENT_SUBROUTINE_UNIFORM:GLuint;

	@:native('GL_COMPUTE_SUBROUTINE_UNIFORM')
	static var COMPUTE_SUBROUTINE_UNIFORM:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_VARYING')
	static var TRANSFORM_FEEDBACK_VARYING:GLuint;

	@:native('GL_ACTIVE_RESOURCES')
	static var ACTIVE_RESOURCES:GLuint;

	@:native('GL_MAX_NAME_LENGTH')
	static var MAX_NAME_LENGTH:GLuint;

	@:native('GL_MAX_NUM_ACTIVE_VARIABLES')
	static var MAX_NUM_ACTIVE_VARIABLES:GLuint;

	@:native('GL_MAX_NUM_COMPATIBLE_SUBROUTINES')
	static var MAX_NUM_COMPATIBLE_SUBROUTINES:GLuint;

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

	@:native('GL_REFERENCED_BY_TESS_CONTROL_SHADER')
	static var REFERENCED_BY_TESS_CONTROL_SHADER:GLuint;

	@:native('GL_REFERENCED_BY_TESS_EVALUATION_SHADER')
	static var REFERENCED_BY_TESS_EVALUATION_SHADER:GLuint;

	@:native('GL_REFERENCED_BY_GEOMETRY_SHADER')
	static var REFERENCED_BY_GEOMETRY_SHADER:GLuint;

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

	@:native('GL_LOCATION_INDEX')
	static var LOCATION_INDEX:GLuint;

	@:native('GL_IS_PER_PATCH')
	static var IS_PER_PATCH:GLuint;

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

	@:native('GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS')
	static var MAX_GEOMETRY_SHADER_STORAGE_BLOCKS:GLuint;

	@:native('GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS')
	static var MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS:GLuint;

	@:native('GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS')
	static var MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS:GLuint;

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

	@:native('GL_TEXTURE_BUFFER_OFFSET')
	static var TEXTURE_BUFFER_OFFSET:GLuint;

	@:native('GL_TEXTURE_BUFFER_SIZE')
	static var TEXTURE_BUFFER_SIZE:GLuint;

	@:native('GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT')
	static var TEXTURE_BUFFER_OFFSET_ALIGNMENT:GLuint;

	@:native('GL_TEXTURE_VIEW_MIN_LEVEL')
	static var TEXTURE_VIEW_MIN_LEVEL:GLuint;

	@:native('GL_TEXTURE_VIEW_NUM_LEVELS')
	static var TEXTURE_VIEW_NUM_LEVELS:GLuint;

	@:native('GL_TEXTURE_VIEW_MIN_LAYER')
	static var TEXTURE_VIEW_MIN_LAYER:GLuint;

	@:native('GL_TEXTURE_VIEW_NUM_LAYERS')
	static var TEXTURE_VIEW_NUM_LAYERS:GLuint;

	@:native('GL_TEXTURE_IMMUTABLE_LEVELS')
	static var TEXTURE_IMMUTABLE_LEVELS:GLuint;

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

	@:native('GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET')
	static var MAX_VERTEX_ATTRIB_RELATIVE_OFFSET:GLuint;

	@:native('GL_MAX_VERTEX_ATTRIB_BINDINGS')
	static var MAX_VERTEX_ATTRIB_BINDINGS:GLuint;

	@:native('GL_VERTEX_BINDING_BUFFER')
	static var VERTEX_BINDING_BUFFER:GLuint;

	@:native('GL_DISPLAY_LIST')
	static var DISPLAY_LIST:GLuint;

	@:native('GL_MAX_VERTEX_ATTRIB_STRIDE')
	static var MAX_VERTEX_ATTRIB_STRIDE:GLuint;

	@:native('GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED')
	static var PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED:GLuint;

	@:native('GL_TEXTURE_BUFFER_BINDING')
	static var TEXTURE_BUFFER_BINDING:GLuint;

	@:native('GL_MAP_PERSISTENT_BIT')
	static var MAP_PERSISTENT_BIT:GLuint;

	@:native('GL_MAP_COHERENT_BIT')
	static var MAP_COHERENT_BIT:GLuint;

	@:native('GL_DYNAMIC_STORAGE_BIT')
	static var DYNAMIC_STORAGE_BIT:GLuint;

	@:native('GL_CLIENT_STORAGE_BIT')
	static var CLIENT_STORAGE_BIT:GLuint;

	@:native('GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT')
	static var CLIENT_MAPPED_BUFFER_BARRIER_BIT:GLuint;

	@:native('GL_BUFFER_IMMUTABLE_STORAGE')
	static var BUFFER_IMMUTABLE_STORAGE:GLuint;

	@:native('GL_BUFFER_STORAGE_FLAGS')
	static var BUFFER_STORAGE_FLAGS:GLuint;

	@:native('GL_CLEAR_TEXTURE')
	static var CLEAR_TEXTURE:GLuint;

	@:native('GL_LOCATION_COMPONENT')
	static var LOCATION_COMPONENT:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_INDEX')
	static var TRANSFORM_FEEDBACK_BUFFER_INDEX:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE')
	static var TRANSFORM_FEEDBACK_BUFFER_STRIDE:GLuint;

	@:native('GL_QUERY_BUFFER')
	static var QUERY_BUFFER:GLuint;

	@:native('GL_QUERY_BUFFER_BARRIER_BIT')
	static var QUERY_BUFFER_BARRIER_BIT:GLuint;

	@:native('GL_QUERY_BUFFER_BINDING')
	static var QUERY_BUFFER_BINDING:GLuint;

	@:native('GL_QUERY_RESULT_NO_WAIT')
	static var QUERY_RESULT_NO_WAIT:GLuint;

	@:native('GL_MIRROR_CLAMP_TO_EDGE')
	static var MIRROR_CLAMP_TO_EDGE:GLuint;

	@:native('GL_CONTEXT_LOST')
	static var CONTEXT_LOST:GLuint;

	@:native('GL_NEGATIVE_ONE_TO_ONE')
	static var NEGATIVE_ONE_TO_ONE:GLuint;

	@:native('GL_ZERO_TO_ONE')
	static var ZERO_TO_ONE:GLuint;

	@:native('GL_CLIP_ORIGIN')
	static var CLIP_ORIGIN:GLuint;

	@:native('GL_CLIP_DEPTH_MODE')
	static var CLIP_DEPTH_MODE:GLuint;

	@:native('GL_QUERY_WAIT_INVERTED')
	static var QUERY_WAIT_INVERTED:GLuint;

	@:native('GL_QUERY_NO_WAIT_INVERTED')
	static var QUERY_NO_WAIT_INVERTED:GLuint;

	@:native('GL_QUERY_BY_REGION_WAIT_INVERTED')
	static var QUERY_BY_REGION_WAIT_INVERTED:GLuint;

	@:native('GL_QUERY_BY_REGION_NO_WAIT_INVERTED')
	static var QUERY_BY_REGION_NO_WAIT_INVERTED:GLuint;

	@:native('GL_MAX_CULL_DISTANCES')
	static var MAX_CULL_DISTANCES:GLuint;

	@:native('GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES')
	static var MAX_COMBINED_CLIP_AND_CULL_DISTANCES:GLuint;

	@:native('GL_TEXTURE_TARGET')
	static var TEXTURE_TARGET:GLuint;

	@:native('GL_QUERY_TARGET')
	static var QUERY_TARGET:GLuint;

	@:native('GL_GUILTY_CONTEXT_RESET')
	static var GUILTY_CONTEXT_RESET:GLuint;

	@:native('GL_INNOCENT_CONTEXT_RESET')
	static var INNOCENT_CONTEXT_RESET:GLuint;

	@:native('GL_UNKNOWN_CONTEXT_RESET')
	static var UNKNOWN_CONTEXT_RESET:GLuint;

	@:native('GL_RESET_NOTIFICATION_STRATEGY')
	static var RESET_NOTIFICATION_STRATEGY:GLuint;

	@:native('GL_LOSE_CONTEXT_ON_RESET')
	static var LOSE_CONTEXT_ON_RESET:GLuint;

	@:native('GL_NO_RESET_NOTIFICATION')
	static var NO_RESET_NOTIFICATION:GLuint;

	@:native('GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT')
	static var CONTEXT_FLAG_ROBUST_ACCESS_BIT:GLuint;

	@:native('GL_COLOR_TABLE')
	static var COLOR_TABLE:GLuint;

	@:native('GL_POST_CONVOLUTION_COLOR_TABLE')
	static var POST_CONVOLUTION_COLOR_TABLE:GLuint;

	@:native('GL_POST_COLOR_MATRIX_COLOR_TABLE')
	static var POST_COLOR_MATRIX_COLOR_TABLE:GLuint;

	@:native('GL_PROXY_COLOR_TABLE')
	static var PROXY_COLOR_TABLE:GLuint;

	@:native('GL_PROXY_POST_CONVOLUTION_COLOR_TABLE')
	static var PROXY_POST_CONVOLUTION_COLOR_TABLE:GLuint;

	@:native('GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE')
	static var PROXY_POST_COLOR_MATRIX_COLOR_TABLE:GLuint;

	@:native('GL_CONVOLUTION_1D')
	static var CONVOLUTION_1D:GLuint;

	@:native('GL_CONVOLUTION_2D')
	static var CONVOLUTION_2D:GLuint;

	@:native('GL_SEPARABLE_2D')
	static var SEPARABLE_2D:GLuint;

	@:native('GL_HISTOGRAM')
	static var HISTOGRAM:GLuint;

	@:native('GL_PROXY_HISTOGRAM')
	static var PROXY_HISTOGRAM:GLuint;

	@:native('GL_MINMAX')
	static var MINMAX:GLuint;

	@:native('GL_CONTEXT_RELEASE_BEHAVIOR')
	static var CONTEXT_RELEASE_BEHAVIOR:GLuint;

	@:native('GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH')
	static var CONTEXT_RELEASE_BEHAVIOR_FLUSH:GLuint;

	@:native('GL_SHADER_BINARY_FORMAT_SPIR_V')
	static var SHADER_BINARY_FORMAT_SPIR_V:GLuint;

	@:native('GL_SPIR_V_BINARY')
	static var SPIR_V_BINARY:GLuint;

	@:native('GL_PARAMETER_BUFFER')
	static var PARAMETER_BUFFER:GLuint;

	@:native('GL_PARAMETER_BUFFER_BINDING')
	static var PARAMETER_BUFFER_BINDING:GLuint;

	@:native('GL_CONTEXT_FLAG_NO_ERROR_BIT')
	static var CONTEXT_FLAG_NO_ERROR_BIT:GLuint;

	@:native('GL_VERTICES_SUBMITTED')
	static var VERTICES_SUBMITTED:GLuint;

	@:native('GL_PRIMITIVES_SUBMITTED')
	static var PRIMITIVES_SUBMITTED:GLuint;

	@:native('GL_VERTEX_SHADER_INVOCATIONS')
	static var VERTEX_SHADER_INVOCATIONS:GLuint;

	@:native('GL_TESS_CONTROL_SHADER_PATCHES')
	static var TESS_CONTROL_SHADER_PATCHES:GLuint;

	@:native('GL_TESS_EVALUATION_SHADER_INVOCATIONS')
	static var TESS_EVALUATION_SHADER_INVOCATIONS:GLuint;

	@:native('GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED')
	static var GEOMETRY_SHADER_PRIMITIVES_EMITTED:GLuint;

	@:native('GL_FRAGMENT_SHADER_INVOCATIONS')
	static var FRAGMENT_SHADER_INVOCATIONS:GLuint;

	@:native('GL_COMPUTE_SHADER_INVOCATIONS')
	static var COMPUTE_SHADER_INVOCATIONS:GLuint;

	@:native('GL_CLIPPING_INPUT_PRIMITIVES')
	static var CLIPPING_INPUT_PRIMITIVES:GLuint;

	@:native('GL_CLIPPING_OUTPUT_PRIMITIVES')
	static var CLIPPING_OUTPUT_PRIMITIVES:GLuint;

	@:native('GL_POLYGON_OFFSET_CLAMP')
	static var POLYGON_OFFSET_CLAMP:GLuint;

	@:native('GL_SPIR_V_EXTENSIONS')
	static var SPIR_V_EXTENSIONS:GLuint;

	@:native('GL_NUM_SPIR_V_EXTENSIONS')
	static var NUM_SPIR_V_EXTENSIONS:GLuint;

	@:native('GL_TEXTURE_MAX_ANISOTROPY')
	static var TEXTURE_MAX_ANISOTROPY:GLuint;

	@:native('GL_MAX_TEXTURE_MAX_ANISOTROPY')
	static var MAX_TEXTURE_MAX_ANISOTROPY:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_OVERFLOW')
	static var TRANSFORM_FEEDBACK_OVERFLOW:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW')
	static var TRANSFORM_FEEDBACK_STREAM_OVERFLOW:GLuint;

	@:native('GL_MULTISAMPLE_3DFX')
	static var MULTISAMPLE_3DFX:GLuint;

	@:native('GL_SAMPLE_BUFFERS_3DFX')
	static var SAMPLE_BUFFERS_3DFX:GLuint;

	@:native('GL_SAMPLES_3DFX')
	static var SAMPLES_3DFX:GLuint;

	@:native('GL_MULTISAMPLE_BIT_3DFX')
	static var MULTISAMPLE_BIT_3DFX:GLuint;

	@:native('GL_COMPRESSED_RGB_FXT1_3DFX')
	static var COMPRESSED_RGB_FXT1_3DFX:GLuint;

	@:native('GL_COMPRESSED_RGBA_FXT1_3DFX')
	static var COMPRESSED_RGBA_FXT1_3DFX:GLuint;

	@:native('GL_FACTOR_MIN_AMD')
	static var FACTOR_MIN_AMD:GLuint;

	@:native('GL_FACTOR_MAX_AMD')
	static var FACTOR_MAX_AMD:GLuint;

	@:native('GL_MAX_DEBUG_MESSAGE_LENGTH_AMD')
	static var MAX_DEBUG_MESSAGE_LENGTH_AMD:GLuint;

	@:native('GL_MAX_DEBUG_LOGGED_MESSAGES_AMD')
	static var MAX_DEBUG_LOGGED_MESSAGES_AMD:GLuint;

	@:native('GL_DEBUG_LOGGED_MESSAGES_AMD')
	static var DEBUG_LOGGED_MESSAGES_AMD:GLuint;

	@:native('GL_DEBUG_SEVERITY_HIGH_AMD')
	static var DEBUG_SEVERITY_HIGH_AMD:GLuint;

	@:native('GL_DEBUG_SEVERITY_MEDIUM_AMD')
	static var DEBUG_SEVERITY_MEDIUM_AMD:GLuint;

	@:native('GL_DEBUG_SEVERITY_LOW_AMD')
	static var DEBUG_SEVERITY_LOW_AMD:GLuint;

	@:native('GL_DEBUG_CATEGORY_API_ERROR_AMD')
	static var DEBUG_CATEGORY_API_ERROR_AMD:GLuint;

	@:native('GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD')
	static var DEBUG_CATEGORY_WINDOW_SYSTEM_AMD:GLuint;

	@:native('GL_DEBUG_CATEGORY_DEPRECATION_AMD')
	static var DEBUG_CATEGORY_DEPRECATION_AMD:GLuint;

	@:native('GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD')
	static var DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD:GLuint;

	@:native('GL_DEBUG_CATEGORY_PERFORMANCE_AMD')
	static var DEBUG_CATEGORY_PERFORMANCE_AMD:GLuint;

	@:native('GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD')
	static var DEBUG_CATEGORY_SHADER_COMPILER_AMD:GLuint;

	@:native('GL_DEBUG_CATEGORY_APPLICATION_AMD')
	static var DEBUG_CATEGORY_APPLICATION_AMD:GLuint;

	@:native('GL_DEBUG_CATEGORY_OTHER_AMD')
	static var DEBUG_CATEGORY_OTHER_AMD:GLuint;

	@:native('GL_DEPTH_CLAMP_NEAR_AMD')
	static var DEPTH_CLAMP_NEAR_AMD:GLuint;

	@:native('GL_DEPTH_CLAMP_FAR_AMD')
	static var DEPTH_CLAMP_FAR_AMD:GLuint;

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

	@:native('GL_SUBSAMPLE_DISTANCE_AMD')
	static var SUBSAMPLE_DISTANCE_AMD:GLuint;

	@:native('GL_PIXELS_PER_SAMPLE_PATTERN_X_AMD')
	static var PIXELS_PER_SAMPLE_PATTERN_X_AMD:GLuint;

	@:native('GL_PIXELS_PER_SAMPLE_PATTERN_Y_AMD')
	static var PIXELS_PER_SAMPLE_PATTERN_Y_AMD:GLuint;

	@:native('GL_ALL_PIXELS_AMD')
	static var ALL_PIXELS_AMD:GLuint;

	@:native('GL_FLOAT16_NV')
	static var FLOAT16_NV:GLuint;

	@:native('GL_FLOAT16_VEC2_NV')
	static var FLOAT16_VEC2_NV:GLuint;

	@:native('GL_FLOAT16_VEC3_NV')
	static var FLOAT16_VEC3_NV:GLuint;

	@:native('GL_FLOAT16_VEC4_NV')
	static var FLOAT16_VEC4_NV:GLuint;

	@:native('GL_FLOAT16_MAT2_AMD')
	static var FLOAT16_MAT2_AMD:GLuint;

	@:native('GL_FLOAT16_MAT3_AMD')
	static var FLOAT16_MAT3_AMD:GLuint;

	@:native('GL_FLOAT16_MAT4_AMD')
	static var FLOAT16_MAT4_AMD:GLuint;

	@:native('GL_FLOAT16_MAT2x3_AMD')
	static var FLOAT16_MAT2x3_AMD:GLuint;

	@:native('GL_FLOAT16_MAT2x4_AMD')
	static var FLOAT16_MAT2x4_AMD:GLuint;

	@:native('GL_FLOAT16_MAT3x2_AMD')
	static var FLOAT16_MAT3x2_AMD:GLuint;

	@:native('GL_FLOAT16_MAT3x4_AMD')
	static var FLOAT16_MAT3x4_AMD:GLuint;

	@:native('GL_FLOAT16_MAT4x2_AMD')
	static var FLOAT16_MAT4x2_AMD:GLuint;

	@:native('GL_FLOAT16_MAT4x3_AMD')
	static var FLOAT16_MAT4x3_AMD:GLuint;

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

	@:native('GL_VERTEX_ELEMENT_SWIZZLE_AMD')
	static var VERTEX_ELEMENT_SWIZZLE_AMD:GLuint;

	@:native('GL_VERTEX_ID_SWIZZLE_AMD')
	static var VERTEX_ID_SWIZZLE_AMD:GLuint;

	@:native('GL_DATA_BUFFER_AMD')
	static var DATA_BUFFER_AMD:GLuint;

	@:native('GL_PERFORMANCE_MONITOR_AMD')
	static var PERFORMANCE_MONITOR_AMD:GLuint;

	@:native('GL_QUERY_OBJECT_AMD')
	static var QUERY_OBJECT_AMD:GLuint;

	@:native('GL_VERTEX_ARRAY_OBJECT_AMD')
	static var VERTEX_ARRAY_OBJECT_AMD:GLuint;

	@:native('GL_SAMPLER_OBJECT_AMD')
	static var SAMPLER_OBJECT_AMD:GLuint;

	@:native('GL_OCCLUSION_QUERY_EVENT_MASK_AMD')
	static var OCCLUSION_QUERY_EVENT_MASK_AMD:GLuint;

	@:native('GL_QUERY_DEPTH_PASS_EVENT_BIT_AMD')
	static var QUERY_DEPTH_PASS_EVENT_BIT_AMD:GLuint;

	@:native('GL_QUERY_DEPTH_FAIL_EVENT_BIT_AMD')
	static var QUERY_DEPTH_FAIL_EVENT_BIT_AMD:GLuint;

	@:native('GL_QUERY_STENCIL_FAIL_EVENT_BIT_AMD')
	static var QUERY_STENCIL_FAIL_EVENT_BIT_AMD:GLuint;

	@:native('GL_QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD')
	static var QUERY_DEPTH_BOUNDS_FAIL_EVENT_BIT_AMD:GLuint;

	@:native('GL_QUERY_ALL_EVENT_BITS_AMD')
	static var QUERY_ALL_EVENT_BITS_AMD:GLuint;

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

	@:native('GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD')
	static var EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD:GLuint;

	@:native('GL_QUERY_BUFFER_AMD')
	static var QUERY_BUFFER_AMD:GLuint;

	@:native('GL_QUERY_BUFFER_BINDING_AMD')
	static var QUERY_BUFFER_BINDING_AMD:GLuint;

	@:native('GL_QUERY_RESULT_NO_WAIT_AMD')
	static var QUERY_RESULT_NO_WAIT_AMD:GLuint;

	@:native('GL_VIRTUAL_PAGE_SIZE_X_AMD')
	static var VIRTUAL_PAGE_SIZE_X_AMD:GLuint;

	@:native('GL_VIRTUAL_PAGE_SIZE_Y_AMD')
	static var VIRTUAL_PAGE_SIZE_Y_AMD:GLuint;

	@:native('GL_VIRTUAL_PAGE_SIZE_Z_AMD')
	static var VIRTUAL_PAGE_SIZE_Z_AMD:GLuint;

	@:native('GL_MAX_SPARSE_TEXTURE_SIZE_AMD')
	static var MAX_SPARSE_TEXTURE_SIZE_AMD:GLuint;

	@:native('GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD')
	static var MAX_SPARSE_3D_TEXTURE_SIZE_AMD:GLuint;

	@:native('GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS')
	static var MAX_SPARSE_ARRAY_TEXTURE_LAYERS:GLuint;

	@:native('GL_MIN_SPARSE_LEVEL_AMD')
	static var MIN_SPARSE_LEVEL_AMD:GLuint;

	@:native('GL_MIN_LOD_WARNING_AMD')
	static var MIN_LOD_WARNING_AMD:GLuint;

	@:native('GL_TEXTURE_STORAGE_SPARSE_BIT_AMD')
	static var TEXTURE_STORAGE_SPARSE_BIT_AMD:GLuint;

	@:native('GL_SET_AMD')
	static var SET_AMD:GLuint;

	@:native('GL_REPLACE_VALUE_AMD')
	static var REPLACE_VALUE_AMD:GLuint;

	@:native('GL_STENCIL_OP_VALUE_AMD')
	static var STENCIL_OP_VALUE_AMD:GLuint;

	@:native('GL_STENCIL_BACK_OP_VALUE_AMD')
	static var STENCIL_BACK_OP_VALUE_AMD:GLuint;

	@:native('GL_STREAM_RASTERIZATION_AMD')
	static var STREAM_RASTERIZATION_AMD:GLuint;

	@:native('GL_SAMPLER_BUFFER_AMD')
	static var SAMPLER_BUFFER_AMD:GLuint;

	@:native('GL_INT_SAMPLER_BUFFER_AMD')
	static var INT_SAMPLER_BUFFER_AMD:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD')
	static var UNSIGNED_INT_SAMPLER_BUFFER_AMD:GLuint;

	@:native('GL_TESSELLATION_MODE_AMD')
	static var TESSELLATION_MODE_AMD:GLuint;

	@:native('GL_TESSELLATION_FACTOR_AMD')
	static var TESSELLATION_FACTOR_AMD:GLuint;

	@:native('GL_DISCRETE_AMD')
	static var DISCRETE_AMD:GLuint;

	@:native('GL_CONTINUOUS_AMD')
	static var CONTINUOUS_AMD:GLuint;

	@:native('GL_AUX_DEPTH_STENCIL_APPLE')
	static var AUX_DEPTH_STENCIL_APPLE:GLuint;

	@:native('GL_UNPACK_CLIENT_STORAGE_APPLE')
	static var UNPACK_CLIENT_STORAGE_APPLE:GLuint;

	@:native('GL_ELEMENT_ARRAY_APPLE')
	static var ELEMENT_ARRAY_APPLE:GLuint;

	@:native('GL_ELEMENT_ARRAY_TYPE_APPLE')
	static var ELEMENT_ARRAY_TYPE_APPLE:GLuint;

	@:native('GL_ELEMENT_ARRAY_POINTER_APPLE')
	static var ELEMENT_ARRAY_POINTER_APPLE:GLuint;

	@:native('GL_DRAW_PIXELS_APPLE')
	static var DRAW_PIXELS_APPLE:GLuint;

	@:native('GL_FENCE_APPLE')
	static var FENCE_APPLE:GLuint;

	@:native('GL_HALF_APPLE')
	static var HALF_APPLE:GLuint;

	@:native('GL_RGBA_FLOAT32_APPLE')
	static var RGBA_FLOAT32_APPLE:GLuint;

	@:native('GL_RGB_FLOAT32_APPLE')
	static var RGB_FLOAT32_APPLE:GLuint;

	@:native('GL_ALPHA_FLOAT32_APPLE')
	static var ALPHA_FLOAT32_APPLE:GLuint;

	@:native('GL_INTENSITY_FLOAT32_APPLE')
	static var INTENSITY_FLOAT32_APPLE:GLuint;

	@:native('GL_LUMINANCE_FLOAT32_APPLE')
	static var LUMINANCE_FLOAT32_APPLE:GLuint;

	@:native('GL_LUMINANCE_ALPHA_FLOAT32_APPLE')
	static var LUMINANCE_ALPHA_FLOAT32_APPLE:GLuint;

	@:native('GL_RGBA_FLOAT16_APPLE')
	static var RGBA_FLOAT16_APPLE:GLuint;

	@:native('GL_RGB_FLOAT16_APPLE')
	static var RGB_FLOAT16_APPLE:GLuint;

	@:native('GL_ALPHA_FLOAT16_APPLE')
	static var ALPHA_FLOAT16_APPLE:GLuint;

	@:native('GL_INTENSITY_FLOAT16_APPLE')
	static var INTENSITY_FLOAT16_APPLE:GLuint;

	@:native('GL_LUMINANCE_FLOAT16_APPLE')
	static var LUMINANCE_FLOAT16_APPLE:GLuint;

	@:native('GL_LUMINANCE_ALPHA_FLOAT16_APPLE')
	static var LUMINANCE_ALPHA_FLOAT16_APPLE:GLuint;

	@:native('GL_COLOR_FLOAT_APPLE')
	static var COLOR_FLOAT_APPLE:GLuint;

	@:native('GL_BUFFER_SERIALIZED_MODIFY_APPLE')
	static var BUFFER_SERIALIZED_MODIFY_APPLE:GLuint;

	@:native('GL_BUFFER_FLUSHING_UNMAP_APPLE')
	static var BUFFER_FLUSHING_UNMAP_APPLE:GLuint;

	@:native('GL_BUFFER_OBJECT_APPLE')
	static var BUFFER_OBJECT_APPLE:GLuint;

	@:native('GL_RELEASED_APPLE')
	static var RELEASED_APPLE:GLuint;

	@:native('GL_VOLATILE_APPLE')
	static var VOLATILE_APPLE:GLuint;

	@:native('GL_RETAINED_APPLE')
	static var RETAINED_APPLE:GLuint;

	@:native('GL_UNDEFINED_APPLE')
	static var UNDEFINED_APPLE:GLuint;

	@:native('GL_PURGEABLE_APPLE')
	static var PURGEABLE_APPLE:GLuint;

	@:native('GL_RGB_422_APPLE')
	static var RGB_422_APPLE:GLuint;

	@:native('GL_UNSIGNED_SHORT_8_8_APPLE')
	static var UNSIGNED_SHORT_8_8_APPLE:GLuint;

	@:native('GL_UNSIGNED_SHORT_8_8_REV_APPLE')
	static var UNSIGNED_SHORT_8_8_REV_APPLE:GLuint;

	@:native('GL_PACK_ROW_BYTES_APPLE')
	static var PACK_ROW_BYTES_APPLE:GLuint;

	@:native('GL_UNPACK_ROW_BYTES_APPLE')
	static var UNPACK_ROW_BYTES_APPLE:GLuint;

	@:native('GL_LIGHT_MODEL_SPECULAR_VECTOR_APPLE')
	static var LIGHT_MODEL_SPECULAR_VECTOR_APPLE:GLuint;

	@:native('GL_TEXTURE_RANGE_LENGTH_APPLE')
	static var TEXTURE_RANGE_LENGTH_APPLE:GLuint;

	@:native('GL_TEXTURE_RANGE_POINTER_APPLE')
	static var TEXTURE_RANGE_POINTER_APPLE:GLuint;

	@:native('GL_TEXTURE_STORAGE_HINT_APPLE')
	static var TEXTURE_STORAGE_HINT_APPLE:GLuint;

	@:native('GL_STORAGE_PRIVATE_APPLE')
	static var STORAGE_PRIVATE_APPLE:GLuint;

	@:native('GL_STORAGE_CACHED_APPLE')
	static var STORAGE_CACHED_APPLE:GLuint;

	@:native('GL_STORAGE_SHARED_APPLE')
	static var STORAGE_SHARED_APPLE:GLuint;

	@:native('GL_TRANSFORM_HINT_APPLE')
	static var TRANSFORM_HINT_APPLE:GLuint;

	@:native('GL_VERTEX_ARRAY_BINDING_APPLE')
	static var VERTEX_ARRAY_BINDING_APPLE:GLuint;

	@:native('GL_VERTEX_ARRAY_RANGE_APPLE')
	static var VERTEX_ARRAY_RANGE_APPLE:GLuint;

	@:native('GL_VERTEX_ARRAY_RANGE_LENGTH_APPLE')
	static var VERTEX_ARRAY_RANGE_LENGTH_APPLE:GLuint;

	@:native('GL_VERTEX_ARRAY_STORAGE_HINT_APPLE')
	static var VERTEX_ARRAY_STORAGE_HINT_APPLE:GLuint;

	@:native('GL_VERTEX_ARRAY_RANGE_POINTER_APPLE')
	static var VERTEX_ARRAY_RANGE_POINTER_APPLE:GLuint;

	@:native('GL_STORAGE_CLIENT_APPLE')
	static var STORAGE_CLIENT_APPLE:GLuint;

	@:native('GL_VERTEX_ATTRIB_MAP1_APPLE')
	static var VERTEX_ATTRIB_MAP1_APPLE:GLuint;

	@:native('GL_VERTEX_ATTRIB_MAP2_APPLE')
	static var VERTEX_ATTRIB_MAP2_APPLE:GLuint;

	@:native('GL_VERTEX_ATTRIB_MAP1_SIZE_APPLE')
	static var VERTEX_ATTRIB_MAP1_SIZE_APPLE:GLuint;

	@:native('GL_VERTEX_ATTRIB_MAP1_COEFF_APPLE')
	static var VERTEX_ATTRIB_MAP1_COEFF_APPLE:GLuint;

	@:native('GL_VERTEX_ATTRIB_MAP1_ORDER_APPLE')
	static var VERTEX_ATTRIB_MAP1_ORDER_APPLE:GLuint;

	@:native('GL_VERTEX_ATTRIB_MAP1_DOMAIN_APPLE')
	static var VERTEX_ATTRIB_MAP1_DOMAIN_APPLE:GLuint;

	@:native('GL_VERTEX_ATTRIB_MAP2_SIZE_APPLE')
	static var VERTEX_ATTRIB_MAP2_SIZE_APPLE:GLuint;

	@:native('GL_VERTEX_ATTRIB_MAP2_COEFF_APPLE')
	static var VERTEX_ATTRIB_MAP2_COEFF_APPLE:GLuint;

	@:native('GL_VERTEX_ATTRIB_MAP2_ORDER_APPLE')
	static var VERTEX_ATTRIB_MAP2_ORDER_APPLE:GLuint;

	@:native('GL_VERTEX_ATTRIB_MAP2_DOMAIN_APPLE')
	static var VERTEX_ATTRIB_MAP2_DOMAIN_APPLE:GLuint;

	@:native('GL_YCBCR_422_APPLE')
	static var YCBCR_422_APPLE:GLuint;

	@:native('GL_PRIMITIVE_BOUNDING_BOX_ARB')
	static var PRIMITIVE_BOUNDING_BOX_ARB:GLuint;

	@:native('GL_MULTISAMPLE_LINE_WIDTH_RANGE_ARB')
	static var MULTISAMPLE_LINE_WIDTH_RANGE_ARB:GLuint;

	@:native('GL_MULTISAMPLE_LINE_WIDTH_GRANULARITY_ARB')
	static var MULTISAMPLE_LINE_WIDTH_GRANULARITY_ARB:GLuint;

	@:native('GL_UNSIGNED_INT64_ARB')
	static var UNSIGNED_INT64_ARB:GLuint;

	@:native('GL_SYNC_CL_EVENT_ARB')
	static var SYNC_CL_EVENT_ARB:GLuint;

	@:native('GL_SYNC_CL_EVENT_COMPLETE_ARB')
	static var SYNC_CL_EVENT_COMPLETE_ARB:GLuint;

	@:native('GL_RGBA_FLOAT_MODE_ARB')
	static var RGBA_FLOAT_MODE_ARB:GLuint;

	@:native('GL_CLAMP_VERTEX_COLOR_ARB')
	static var CLAMP_VERTEX_COLOR_ARB:GLuint;

	@:native('GL_CLAMP_FRAGMENT_COLOR_ARB')
	static var CLAMP_FRAGMENT_COLOR_ARB:GLuint;

	@:native('GL_CLAMP_READ_COLOR_ARB')
	static var CLAMP_READ_COLOR_ARB:GLuint;

	@:native('GL_FIXED_ONLY_ARB')
	static var FIXED_ONLY_ARB:GLuint;

	@:native('GL_MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB')
	static var MAX_COMPUTE_VARIABLE_GROUP_INVOCATIONS_ARB:GLuint;

	@:native('GL_MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB')
	static var MAX_COMPUTE_FIXED_GROUP_INVOCATIONS_ARB:GLuint;

	@:native('GL_MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB')
	static var MAX_COMPUTE_VARIABLE_GROUP_SIZE_ARB:GLuint;

	@:native('GL_MAX_COMPUTE_FIXED_GROUP_SIZE_ARB')
	static var MAX_COMPUTE_FIXED_GROUP_SIZE_ARB:GLuint;

	@:native('GL_DEBUG_OUTPUT_SYNCHRONOUS_ARB')
	static var DEBUG_OUTPUT_SYNCHRONOUS_ARB:GLuint;

	@:native('GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB')
	static var DEBUG_NEXT_LOGGED_MESSAGE_LENGTH_ARB:GLuint;

	@:native('GL_DEBUG_CALLBACK_FUNCTION_ARB')
	static var DEBUG_CALLBACK_FUNCTION_ARB:GLuint;

	@:native('GL_DEBUG_CALLBACK_USER_PARAM_ARB')
	static var DEBUG_CALLBACK_USER_PARAM_ARB:GLuint;

	@:native('GL_DEBUG_SOURCE_API_ARB')
	static var DEBUG_SOURCE_API_ARB:GLuint;

	@:native('GL_DEBUG_SOURCE_WINDOW_SYSTEM_ARB')
	static var DEBUG_SOURCE_WINDOW_SYSTEM_ARB:GLuint;

	@:native('GL_DEBUG_SOURCE_SHADER_COMPILER_ARB')
	static var DEBUG_SOURCE_SHADER_COMPILER_ARB:GLuint;

	@:native('GL_DEBUG_SOURCE_THIRD_PARTY_ARB')
	static var DEBUG_SOURCE_THIRD_PARTY_ARB:GLuint;

	@:native('GL_DEBUG_SOURCE_APPLICATION_ARB')
	static var DEBUG_SOURCE_APPLICATION_ARB:GLuint;

	@:native('GL_DEBUG_SOURCE_OTHER_ARB')
	static var DEBUG_SOURCE_OTHER_ARB:GLuint;

	@:native('GL_DEBUG_TYPE_ERROR_ARB')
	static var DEBUG_TYPE_ERROR_ARB:GLuint;

	@:native('GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB')
	static var DEBUG_TYPE_DEPRECATED_BEHAVIOR_ARB:GLuint;

	@:native('GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB')
	static var DEBUG_TYPE_UNDEFINED_BEHAVIOR_ARB:GLuint;

	@:native('GL_DEBUG_TYPE_PORTABILITY_ARB')
	static var DEBUG_TYPE_PORTABILITY_ARB:GLuint;

	@:native('GL_DEBUG_TYPE_PERFORMANCE_ARB')
	static var DEBUG_TYPE_PERFORMANCE_ARB:GLuint;

	@:native('GL_DEBUG_TYPE_OTHER_ARB')
	static var DEBUG_TYPE_OTHER_ARB:GLuint;

	@:native('GL_MAX_DEBUG_MESSAGE_LENGTH_ARB')
	static var MAX_DEBUG_MESSAGE_LENGTH_ARB:GLuint;

	@:native('GL_MAX_DEBUG_LOGGED_MESSAGES_ARB')
	static var MAX_DEBUG_LOGGED_MESSAGES_ARB:GLuint;

	@:native('GL_DEBUG_LOGGED_MESSAGES_ARB')
	static var DEBUG_LOGGED_MESSAGES_ARB:GLuint;

	@:native('GL_DEBUG_SEVERITY_HIGH_ARB')
	static var DEBUG_SEVERITY_HIGH_ARB:GLuint;

	@:native('GL_DEBUG_SEVERITY_MEDIUM_ARB')
	static var DEBUG_SEVERITY_MEDIUM_ARB:GLuint;

	@:native('GL_DEBUG_SEVERITY_LOW_ARB')
	static var DEBUG_SEVERITY_LOW_ARB:GLuint;

	@:native('GL_DEPTH_COMPONENT16_ARB')
	static var DEPTH_COMPONENT16_ARB:GLuint;

	@:native('GL_DEPTH_COMPONENT24_ARB')
	static var DEPTH_COMPONENT24_ARB:GLuint;

	@:native('GL_DEPTH_COMPONENT32_ARB')
	static var DEPTH_COMPONENT32_ARB:GLuint;

	@:native('GL_TEXTURE_DEPTH_SIZE_ARB')
	static var TEXTURE_DEPTH_SIZE_ARB:GLuint;

	@:native('GL_DEPTH_TEXTURE_MODE_ARB')
	static var DEPTH_TEXTURE_MODE_ARB:GLuint;

	@:native('GL_MAX_DRAW_BUFFERS_ARB')
	static var MAX_DRAW_BUFFERS_ARB:GLuint;

	@:native('GL_DRAW_BUFFER0_ARB')
	static var DRAW_BUFFER0_ARB:GLuint;

	@:native('GL_DRAW_BUFFER1_ARB')
	static var DRAW_BUFFER1_ARB:GLuint;

	@:native('GL_DRAW_BUFFER2_ARB')
	static var DRAW_BUFFER2_ARB:GLuint;

	@:native('GL_DRAW_BUFFER3_ARB')
	static var DRAW_BUFFER3_ARB:GLuint;

	@:native('GL_DRAW_BUFFER4_ARB')
	static var DRAW_BUFFER4_ARB:GLuint;

	@:native('GL_DRAW_BUFFER5_ARB')
	static var DRAW_BUFFER5_ARB:GLuint;

	@:native('GL_DRAW_BUFFER6_ARB')
	static var DRAW_BUFFER6_ARB:GLuint;

	@:native('GL_DRAW_BUFFER7_ARB')
	static var DRAW_BUFFER7_ARB:GLuint;

	@:native('GL_DRAW_BUFFER8_ARB')
	static var DRAW_BUFFER8_ARB:GLuint;

	@:native('GL_DRAW_BUFFER9_ARB')
	static var DRAW_BUFFER9_ARB:GLuint;

	@:native('GL_DRAW_BUFFER10_ARB')
	static var DRAW_BUFFER10_ARB:GLuint;

	@:native('GL_DRAW_BUFFER11_ARB')
	static var DRAW_BUFFER11_ARB:GLuint;

	@:native('GL_DRAW_BUFFER12_ARB')
	static var DRAW_BUFFER12_ARB:GLuint;

	@:native('GL_DRAW_BUFFER13_ARB')
	static var DRAW_BUFFER13_ARB:GLuint;

	@:native('GL_DRAW_BUFFER14_ARB')
	static var DRAW_BUFFER14_ARB:GLuint;

	@:native('GL_DRAW_BUFFER15_ARB')
	static var DRAW_BUFFER15_ARB:GLuint;

	@:native('GL_FRAGMENT_PROGRAM_ARB')
	static var FRAGMENT_PROGRAM_ARB:GLuint;

	@:native('GL_PROGRAM_FORMAT_ASCII_ARB')
	static var PROGRAM_FORMAT_ASCII_ARB:GLuint;

	@:native('GL_PROGRAM_LENGTH_ARB')
	static var PROGRAM_LENGTH_ARB:GLuint;

	@:native('GL_PROGRAM_FORMAT_ARB')
	static var PROGRAM_FORMAT_ARB:GLuint;

	@:native('GL_PROGRAM_BINDING_ARB')
	static var PROGRAM_BINDING_ARB:GLuint;

	@:native('GL_PROGRAM_INSTRUCTIONS_ARB')
	static var PROGRAM_INSTRUCTIONS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_INSTRUCTIONS_ARB')
	static var MAX_PROGRAM_INSTRUCTIONS_ARB:GLuint;

	@:native('GL_PROGRAM_NATIVE_INSTRUCTIONS_ARB')
	static var PROGRAM_NATIVE_INSTRUCTIONS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB')
	static var MAX_PROGRAM_NATIVE_INSTRUCTIONS_ARB:GLuint;

	@:native('GL_PROGRAM_TEMPORARIES_ARB')
	static var PROGRAM_TEMPORARIES_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_TEMPORARIES_ARB')
	static var MAX_PROGRAM_TEMPORARIES_ARB:GLuint;

	@:native('GL_PROGRAM_NATIVE_TEMPORARIES_ARB')
	static var PROGRAM_NATIVE_TEMPORARIES_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_NATIVE_TEMPORARIES_ARB')
	static var MAX_PROGRAM_NATIVE_TEMPORARIES_ARB:GLuint;

	@:native('GL_PROGRAM_PARAMETERS_ARB')
	static var PROGRAM_PARAMETERS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_PARAMETERS_ARB')
	static var MAX_PROGRAM_PARAMETERS_ARB:GLuint;

	@:native('GL_PROGRAM_NATIVE_PARAMETERS_ARB')
	static var PROGRAM_NATIVE_PARAMETERS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_NATIVE_PARAMETERS_ARB')
	static var MAX_PROGRAM_NATIVE_PARAMETERS_ARB:GLuint;

	@:native('GL_PROGRAM_ATTRIBS_ARB')
	static var PROGRAM_ATTRIBS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_ATTRIBS_ARB')
	static var MAX_PROGRAM_ATTRIBS_ARB:GLuint;

	@:native('GL_PROGRAM_NATIVE_ATTRIBS_ARB')
	static var PROGRAM_NATIVE_ATTRIBS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_NATIVE_ATTRIBS_ARB')
	static var MAX_PROGRAM_NATIVE_ATTRIBS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_LOCAL_PARAMETERS_ARB')
	static var MAX_PROGRAM_LOCAL_PARAMETERS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_ENV_PARAMETERS_ARB')
	static var MAX_PROGRAM_ENV_PARAMETERS_ARB:GLuint;

	@:native('GL_PROGRAM_UNDER_NATIVE_LIMITS_ARB')
	static var PROGRAM_UNDER_NATIVE_LIMITS_ARB:GLuint;

	@:native('GL_PROGRAM_ALU_INSTRUCTIONS_ARB')
	static var PROGRAM_ALU_INSTRUCTIONS_ARB:GLuint;

	@:native('GL_PROGRAM_TEX_INSTRUCTIONS_ARB')
	static var PROGRAM_TEX_INSTRUCTIONS_ARB:GLuint;

	@:native('GL_PROGRAM_TEX_INDIRECTIONS_ARB')
	static var PROGRAM_TEX_INDIRECTIONS_ARB:GLuint;

	@:native('GL_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB')
	static var PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB:GLuint;

	@:native('GL_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB')
	static var PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB:GLuint;

	@:native('GL_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB')
	static var PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_ALU_INSTRUCTIONS_ARB')
	static var MAX_PROGRAM_ALU_INSTRUCTIONS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_TEX_INSTRUCTIONS_ARB')
	static var MAX_PROGRAM_TEX_INSTRUCTIONS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_TEX_INDIRECTIONS_ARB')
	static var MAX_PROGRAM_TEX_INDIRECTIONS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB')
	static var MAX_PROGRAM_NATIVE_ALU_INSTRUCTIONS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB')
	static var MAX_PROGRAM_NATIVE_TEX_INSTRUCTIONS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB')
	static var MAX_PROGRAM_NATIVE_TEX_INDIRECTIONS_ARB:GLuint;

	@:native('GL_PROGRAM_STRING_ARB')
	static var PROGRAM_STRING_ARB:GLuint;

	@:native('GL_PROGRAM_ERROR_POSITION_ARB')
	static var PROGRAM_ERROR_POSITION_ARB:GLuint;

	@:native('GL_CURRENT_MATRIX_ARB')
	static var CURRENT_MATRIX_ARB:GLuint;

	@:native('GL_TRANSPOSE_CURRENT_MATRIX_ARB')
	static var TRANSPOSE_CURRENT_MATRIX_ARB:GLuint;

	@:native('GL_CURRENT_MATRIX_STACK_DEPTH_ARB')
	static var CURRENT_MATRIX_STACK_DEPTH_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_MATRICES_ARB')
	static var MAX_PROGRAM_MATRICES_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB')
	static var MAX_PROGRAM_MATRIX_STACK_DEPTH_ARB:GLuint;

	@:native('GL_MAX_TEXTURE_COORDS_ARB')
	static var MAX_TEXTURE_COORDS_ARB:GLuint;

	@:native('GL_MAX_TEXTURE_IMAGE_UNITS_ARB')
	static var MAX_TEXTURE_IMAGE_UNITS_ARB:GLuint;

	@:native('GL_PROGRAM_ERROR_STRING_ARB')
	static var PROGRAM_ERROR_STRING_ARB:GLuint;

	@:native('GL_MATRIX0_ARB')
	static var MATRIX0_ARB:GLuint;

	@:native('GL_MATRIX1_ARB')
	static var MATRIX1_ARB:GLuint;

	@:native('GL_MATRIX2_ARB')
	static var MATRIX2_ARB:GLuint;

	@:native('GL_MATRIX3_ARB')
	static var MATRIX3_ARB:GLuint;

	@:native('GL_MATRIX4_ARB')
	static var MATRIX4_ARB:GLuint;

	@:native('GL_MATRIX5_ARB')
	static var MATRIX5_ARB:GLuint;

	@:native('GL_MATRIX6_ARB')
	static var MATRIX6_ARB:GLuint;

	@:native('GL_MATRIX7_ARB')
	static var MATRIX7_ARB:GLuint;

	@:native('GL_MATRIX8_ARB')
	static var MATRIX8_ARB:GLuint;

	@:native('GL_MATRIX9_ARB')
	static var MATRIX9_ARB:GLuint;

	@:native('GL_MATRIX10_ARB')
	static var MATRIX10_ARB:GLuint;

	@:native('GL_MATRIX11_ARB')
	static var MATRIX11_ARB:GLuint;

	@:native('GL_MATRIX12_ARB')
	static var MATRIX12_ARB:GLuint;

	@:native('GL_MATRIX13_ARB')
	static var MATRIX13_ARB:GLuint;

	@:native('GL_MATRIX14_ARB')
	static var MATRIX14_ARB:GLuint;

	@:native('GL_MATRIX15_ARB')
	static var MATRIX15_ARB:GLuint;

	@:native('GL_MATRIX16_ARB')
	static var MATRIX16_ARB:GLuint;

	@:native('GL_MATRIX17_ARB')
	static var MATRIX17_ARB:GLuint;

	@:native('GL_MATRIX18_ARB')
	static var MATRIX18_ARB:GLuint;

	@:native('GL_MATRIX19_ARB')
	static var MATRIX19_ARB:GLuint;

	@:native('GL_MATRIX20_ARB')
	static var MATRIX20_ARB:GLuint;

	@:native('GL_MATRIX21_ARB')
	static var MATRIX21_ARB:GLuint;

	@:native('GL_MATRIX22_ARB')
	static var MATRIX22_ARB:GLuint;

	@:native('GL_MATRIX23_ARB')
	static var MATRIX23_ARB:GLuint;

	@:native('GL_MATRIX24_ARB')
	static var MATRIX24_ARB:GLuint;

	@:native('GL_MATRIX25_ARB')
	static var MATRIX25_ARB:GLuint;

	@:native('GL_MATRIX26_ARB')
	static var MATRIX26_ARB:GLuint;

	@:native('GL_MATRIX27_ARB')
	static var MATRIX27_ARB:GLuint;

	@:native('GL_MATRIX28_ARB')
	static var MATRIX28_ARB:GLuint;

	@:native('GL_MATRIX29_ARB')
	static var MATRIX29_ARB:GLuint;

	@:native('GL_MATRIX30_ARB')
	static var MATRIX30_ARB:GLuint;

	@:native('GL_MATRIX31_ARB')
	static var MATRIX31_ARB:GLuint;

	@:native('GL_FRAGMENT_SHADER_ARB')
	static var FRAGMENT_SHADER_ARB:GLuint;

	@:native('GL_MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB')
	static var MAX_FRAGMENT_UNIFORM_COMPONENTS_ARB:GLuint;

	@:native('GL_FRAGMENT_SHADER_DERIVATIVE_HINT_ARB')
	static var FRAGMENT_SHADER_DERIVATIVE_HINT_ARB:GLuint;

	@:native('GL_LINES_ADJACENCY_ARB')
	static var LINES_ADJACENCY_ARB:GLuint;

	@:native('GL_LINE_STRIP_ADJACENCY_ARB')
	static var LINE_STRIP_ADJACENCY_ARB:GLuint;

	@:native('GL_TRIANGLES_ADJACENCY_ARB')
	static var TRIANGLES_ADJACENCY_ARB:GLuint;

	@:native('GL_TRIANGLE_STRIP_ADJACENCY_ARB')
	static var TRIANGLE_STRIP_ADJACENCY_ARB:GLuint;

	@:native('GL_PROGRAM_POINT_SIZE_ARB')
	static var PROGRAM_POINT_SIZE_ARB:GLuint;

	@:native('GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB')
	static var MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_ARB:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_LAYERED_ARB')
	static var FRAMEBUFFER_ATTACHMENT_LAYERED_ARB:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB')
	static var FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_ARB:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB')
	static var FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_ARB:GLuint;

	@:native('GL_GEOMETRY_SHADER_ARB')
	static var GEOMETRY_SHADER_ARB:GLuint;

	@:native('GL_GEOMETRY_VERTICES_OUT_ARB')
	static var GEOMETRY_VERTICES_OUT_ARB:GLuint;

	@:native('GL_GEOMETRY_INPUT_TYPE_ARB')
	static var GEOMETRY_INPUT_TYPE_ARB:GLuint;

	@:native('GL_GEOMETRY_OUTPUT_TYPE_ARB')
	static var GEOMETRY_OUTPUT_TYPE_ARB:GLuint;

	@:native('GL_MAX_GEOMETRY_VARYING_COMPONENTS_ARB')
	static var MAX_GEOMETRY_VARYING_COMPONENTS_ARB:GLuint;

	@:native('GL_MAX_VERTEX_VARYING_COMPONENTS_ARB')
	static var MAX_VERTEX_VARYING_COMPONENTS_ARB:GLuint;

	@:native('GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB')
	static var MAX_GEOMETRY_UNIFORM_COMPONENTS_ARB:GLuint;

	@:native('GL_MAX_GEOMETRY_OUTPUT_VERTICES_ARB')
	static var MAX_GEOMETRY_OUTPUT_VERTICES_ARB:GLuint;

	@:native('GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB')
	static var MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_ARB:GLuint;

	@:native('GL_SHADER_BINARY_FORMAT_SPIR_V_ARB')
	static var SHADER_BINARY_FORMAT_SPIR_V_ARB:GLuint;

	@:native('GL_SPIR_V_BINARY_ARB')
	static var SPIR_V_BINARY_ARB:GLuint;

	@:native('GL_INT64_ARB')
	static var INT64_ARB:GLuint;

	@:native('GL_INT64_VEC2_ARB')
	static var INT64_VEC2_ARB:GLuint;

	@:native('GL_INT64_VEC3_ARB')
	static var INT64_VEC3_ARB:GLuint;

	@:native('GL_INT64_VEC4_ARB')
	static var INT64_VEC4_ARB:GLuint;

	@:native('GL_UNSIGNED_INT64_VEC2_ARB')
	static var UNSIGNED_INT64_VEC2_ARB:GLuint;

	@:native('GL_UNSIGNED_INT64_VEC3_ARB')
	static var UNSIGNED_INT64_VEC3_ARB:GLuint;

	@:native('GL_UNSIGNED_INT64_VEC4_ARB')
	static var UNSIGNED_INT64_VEC4_ARB:GLuint;

	@:native('GL_HALF_FLOAT_ARB')
	static var HALF_FLOAT_ARB:GLuint;

	@:native('GL_PARAMETER_BUFFER_ARB')
	static var PARAMETER_BUFFER_ARB:GLuint;

	@:native('GL_PARAMETER_BUFFER_BINDING_ARB')
	static var PARAMETER_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_DIVISOR_ARB')
	static var VERTEX_ATTRIB_ARRAY_DIVISOR_ARB:GLuint;

	@:native('GL_SRGB_DECODE_ARB')
	static var SRGB_DECODE_ARB:GLuint;

	@:native('GL_MATRIX_PALETTE_ARB')
	static var MATRIX_PALETTE_ARB:GLuint;

	@:native('GL_MAX_MATRIX_PALETTE_STACK_DEPTH_ARB')
	static var MAX_MATRIX_PALETTE_STACK_DEPTH_ARB:GLuint;

	@:native('GL_MAX_PALETTE_MATRICES_ARB')
	static var MAX_PALETTE_MATRICES_ARB:GLuint;

	@:native('GL_CURRENT_PALETTE_MATRIX_ARB')
	static var CURRENT_PALETTE_MATRIX_ARB:GLuint;

	@:native('GL_MATRIX_INDEX_ARRAY_ARB')
	static var MATRIX_INDEX_ARRAY_ARB:GLuint;

	@:native('GL_CURRENT_MATRIX_INDEX_ARB')
	static var CURRENT_MATRIX_INDEX_ARB:GLuint;

	@:native('GL_MATRIX_INDEX_ARRAY_SIZE_ARB')
	static var MATRIX_INDEX_ARRAY_SIZE_ARB:GLuint;

	@:native('GL_MATRIX_INDEX_ARRAY_TYPE_ARB')
	static var MATRIX_INDEX_ARRAY_TYPE_ARB:GLuint;

	@:native('GL_MATRIX_INDEX_ARRAY_STRIDE_ARB')
	static var MATRIX_INDEX_ARRAY_STRIDE_ARB:GLuint;

	@:native('GL_MATRIX_INDEX_ARRAY_POINTER_ARB')
	static var MATRIX_INDEX_ARRAY_POINTER_ARB:GLuint;

	@:native('GL_MULTISAMPLE_ARB')
	static var MULTISAMPLE_ARB:GLuint;

	@:native('GL_SAMPLE_ALPHA_TO_COVERAGE_ARB')
	static var SAMPLE_ALPHA_TO_COVERAGE_ARB:GLuint;

	@:native('GL_SAMPLE_ALPHA_TO_ONE_ARB')
	static var SAMPLE_ALPHA_TO_ONE_ARB:GLuint;

	@:native('GL_SAMPLE_COVERAGE_ARB')
	static var SAMPLE_COVERAGE_ARB:GLuint;

	@:native('GL_SAMPLE_BUFFERS_ARB')
	static var SAMPLE_BUFFERS_ARB:GLuint;

	@:native('GL_SAMPLES_ARB')
	static var SAMPLES_ARB:GLuint;

	@:native('GL_SAMPLE_COVERAGE_VALUE_ARB')
	static var SAMPLE_COVERAGE_VALUE_ARB:GLuint;

	@:native('GL_SAMPLE_COVERAGE_INVERT_ARB')
	static var SAMPLE_COVERAGE_INVERT_ARB:GLuint;

	@:native('GL_MULTISAMPLE_BIT_ARB')
	static var MULTISAMPLE_BIT_ARB:GLuint;

	@:native('GL_TEXTURE0_ARB')
	static var TEXTURE0_ARB:GLuint;

	@:native('GL_TEXTURE1_ARB')
	static var TEXTURE1_ARB:GLuint;

	@:native('GL_TEXTURE2_ARB')
	static var TEXTURE2_ARB:GLuint;

	@:native('GL_TEXTURE3_ARB')
	static var TEXTURE3_ARB:GLuint;

	@:native('GL_TEXTURE4_ARB')
	static var TEXTURE4_ARB:GLuint;

	@:native('GL_TEXTURE5_ARB')
	static var TEXTURE5_ARB:GLuint;

	@:native('GL_TEXTURE6_ARB')
	static var TEXTURE6_ARB:GLuint;

	@:native('GL_TEXTURE7_ARB')
	static var TEXTURE7_ARB:GLuint;

	@:native('GL_TEXTURE8_ARB')
	static var TEXTURE8_ARB:GLuint;

	@:native('GL_TEXTURE9_ARB')
	static var TEXTURE9_ARB:GLuint;

	@:native('GL_TEXTURE10_ARB')
	static var TEXTURE10_ARB:GLuint;

	@:native('GL_TEXTURE11_ARB')
	static var TEXTURE11_ARB:GLuint;

	@:native('GL_TEXTURE12_ARB')
	static var TEXTURE12_ARB:GLuint;

	@:native('GL_TEXTURE13_ARB')
	static var TEXTURE13_ARB:GLuint;

	@:native('GL_TEXTURE14_ARB')
	static var TEXTURE14_ARB:GLuint;

	@:native('GL_TEXTURE15_ARB')
	static var TEXTURE15_ARB:GLuint;

	@:native('GL_TEXTURE16_ARB')
	static var TEXTURE16_ARB:GLuint;

	@:native('GL_TEXTURE17_ARB')
	static var TEXTURE17_ARB:GLuint;

	@:native('GL_TEXTURE18_ARB')
	static var TEXTURE18_ARB:GLuint;

	@:native('GL_TEXTURE19_ARB')
	static var TEXTURE19_ARB:GLuint;

	@:native('GL_TEXTURE20_ARB')
	static var TEXTURE20_ARB:GLuint;

	@:native('GL_TEXTURE21_ARB')
	static var TEXTURE21_ARB:GLuint;

	@:native('GL_TEXTURE22_ARB')
	static var TEXTURE22_ARB:GLuint;

	@:native('GL_TEXTURE23_ARB')
	static var TEXTURE23_ARB:GLuint;

	@:native('GL_TEXTURE24_ARB')
	static var TEXTURE24_ARB:GLuint;

	@:native('GL_TEXTURE25_ARB')
	static var TEXTURE25_ARB:GLuint;

	@:native('GL_TEXTURE26_ARB')
	static var TEXTURE26_ARB:GLuint;

	@:native('GL_TEXTURE27_ARB')
	static var TEXTURE27_ARB:GLuint;

	@:native('GL_TEXTURE28_ARB')
	static var TEXTURE28_ARB:GLuint;

	@:native('GL_TEXTURE29_ARB')
	static var TEXTURE29_ARB:GLuint;

	@:native('GL_TEXTURE30_ARB')
	static var TEXTURE30_ARB:GLuint;

	@:native('GL_TEXTURE31_ARB')
	static var TEXTURE31_ARB:GLuint;

	@:native('GL_ACTIVE_TEXTURE_ARB')
	static var ACTIVE_TEXTURE_ARB:GLuint;

	@:native('GL_CLIENT_ACTIVE_TEXTURE_ARB')
	static var CLIENT_ACTIVE_TEXTURE_ARB:GLuint;

	@:native('GL_MAX_TEXTURE_UNITS_ARB')
	static var MAX_TEXTURE_UNITS_ARB:GLuint;

	@:native('GL_QUERY_COUNTER_BITS_ARB')
	static var QUERY_COUNTER_BITS_ARB:GLuint;

	@:native('GL_CURRENT_QUERY_ARB')
	static var CURRENT_QUERY_ARB:GLuint;

	@:native('GL_QUERY_RESULT_ARB')
	static var QUERY_RESULT_ARB:GLuint;

	@:native('GL_QUERY_RESULT_AVAILABLE_ARB')
	static var QUERY_RESULT_AVAILABLE_ARB:GLuint;

	@:native('GL_SAMPLES_PASSED_ARB')
	static var SAMPLES_PASSED_ARB:GLuint;

	@:native('GL_MAX_SHADER_COMPILER_THREADS_ARB')
	static var MAX_SHADER_COMPILER_THREADS_ARB:GLuint;

	@:native('GL_COMPLETION_STATUS_ARB')
	static var COMPLETION_STATUS_ARB:GLuint;

	@:native('GL_VERTICES_SUBMITTED_ARB')
	static var VERTICES_SUBMITTED_ARB:GLuint;

	@:native('GL_PRIMITIVES_SUBMITTED_ARB')
	static var PRIMITIVES_SUBMITTED_ARB:GLuint;

	@:native('GL_VERTEX_SHADER_INVOCATIONS_ARB')
	static var VERTEX_SHADER_INVOCATIONS_ARB:GLuint;

	@:native('GL_TESS_CONTROL_SHADER_PATCHES_ARB')
	static var TESS_CONTROL_SHADER_PATCHES_ARB:GLuint;

	@:native('GL_TESS_EVALUATION_SHADER_INVOCATIONS_ARB')
	static var TESS_EVALUATION_SHADER_INVOCATIONS_ARB:GLuint;

	@:native('GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB')
	static var GEOMETRY_SHADER_PRIMITIVES_EMITTED_ARB:GLuint;

	@:native('GL_FRAGMENT_SHADER_INVOCATIONS_ARB')
	static var FRAGMENT_SHADER_INVOCATIONS_ARB:GLuint;

	@:native('GL_COMPUTE_SHADER_INVOCATIONS_ARB')
	static var COMPUTE_SHADER_INVOCATIONS_ARB:GLuint;

	@:native('GL_CLIPPING_INPUT_PRIMITIVES_ARB')
	static var CLIPPING_INPUT_PRIMITIVES_ARB:GLuint;

	@:native('GL_CLIPPING_OUTPUT_PRIMITIVES_ARB')
	static var CLIPPING_OUTPUT_PRIMITIVES_ARB:GLuint;

	@:native('GL_PIXEL_PACK_BUFFER_ARB')
	static var PIXEL_PACK_BUFFER_ARB:GLuint;

	@:native('GL_PIXEL_UNPACK_BUFFER_ARB')
	static var PIXEL_UNPACK_BUFFER_ARB:GLuint;

	@:native('GL_PIXEL_PACK_BUFFER_BINDING_ARB')
	static var PIXEL_PACK_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_PIXEL_UNPACK_BUFFER_BINDING_ARB')
	static var PIXEL_UNPACK_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_POINT_SIZE_MIN_ARB')
	static var POINT_SIZE_MIN_ARB:GLuint;

	@:native('GL_POINT_SIZE_MAX_ARB')
	static var POINT_SIZE_MAX_ARB:GLuint;

	@:native('GL_POINT_FADE_THRESHOLD_SIZE_ARB')
	static var POINT_FADE_THRESHOLD_SIZE_ARB:GLuint;

	@:native('GL_POINT_DISTANCE_ATTENUATION_ARB')
	static var POINT_DISTANCE_ATTENUATION_ARB:GLuint;

	@:native('GL_POINT_SPRITE_ARB')
	static var POINT_SPRITE_ARB:GLuint;

	@:native('GL_COORD_REPLACE_ARB')
	static var COORD_REPLACE_ARB:GLuint;

	@:native('GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB')
	static var CONTEXT_FLAG_ROBUST_ACCESS_BIT_ARB:GLuint;

	@:native('GL_LOSE_CONTEXT_ON_RESET_ARB')
	static var LOSE_CONTEXT_ON_RESET_ARB:GLuint;

	@:native('GL_GUILTY_CONTEXT_RESET_ARB')
	static var GUILTY_CONTEXT_RESET_ARB:GLuint;

	@:native('GL_INNOCENT_CONTEXT_RESET_ARB')
	static var INNOCENT_CONTEXT_RESET_ARB:GLuint;

	@:native('GL_UNKNOWN_CONTEXT_RESET_ARB')
	static var UNKNOWN_CONTEXT_RESET_ARB:GLuint;

	@:native('GL_RESET_NOTIFICATION_STRATEGY_ARB')
	static var RESET_NOTIFICATION_STRATEGY_ARB:GLuint;

	@:native('GL_NO_RESET_NOTIFICATION_ARB')
	static var NO_RESET_NOTIFICATION_ARB:GLuint;

	@:native('GL_SAMPLE_LOCATION_SUBPIXEL_BITS_ARB')
	static var SAMPLE_LOCATION_SUBPIXEL_BITS_ARB:GLuint;

	@:native('GL_SAMPLE_LOCATION_PIXEL_GRID_WIDTH_ARB')
	static var SAMPLE_LOCATION_PIXEL_GRID_WIDTH_ARB:GLuint;

	@:native('GL_SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_ARB')
	static var SAMPLE_LOCATION_PIXEL_GRID_HEIGHT_ARB:GLuint;

	@:native('GL_PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_ARB')
	static var PROGRAMMABLE_SAMPLE_LOCATION_TABLE_SIZE_ARB:GLuint;

	@:native('GL_SAMPLE_LOCATION_ARB')
	static var SAMPLE_LOCATION_ARB:GLuint;

	@:native('GL_PROGRAMMABLE_SAMPLE_LOCATION_ARB')
	static var PROGRAMMABLE_SAMPLE_LOCATION_ARB:GLuint;

	@:native('GL_FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_ARB')
	static var FRAMEBUFFER_PROGRAMMABLE_SAMPLE_LOCATIONS_ARB:GLuint;

	@:native('GL_FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_ARB')
	static var FRAMEBUFFER_SAMPLE_LOCATION_PIXEL_GRID_ARB:GLuint;

	@:native('GL_SAMPLE_SHADING_ARB')
	static var SAMPLE_SHADING_ARB:GLuint;

	@:native('GL_MIN_SAMPLE_SHADING_VALUE_ARB')
	static var MIN_SAMPLE_SHADING_VALUE_ARB:GLuint;

	@:native('GL_PROGRAM_OBJECT_ARB')
	static var PROGRAM_OBJECT_ARB:GLuint;

	@:native('GL_SHADER_OBJECT_ARB')
	static var SHADER_OBJECT_ARB:GLuint;

	@:native('GL_OBJECT_TYPE_ARB')
	static var OBJECT_TYPE_ARB:GLuint;

	@:native('GL_OBJECT_SUBTYPE_ARB')
	static var OBJECT_SUBTYPE_ARB:GLuint;

	@:native('GL_FLOAT_VEC2_ARB')
	static var FLOAT_VEC2_ARB:GLuint;

	@:native('GL_FLOAT_VEC3_ARB')
	static var FLOAT_VEC3_ARB:GLuint;

	@:native('GL_FLOAT_VEC4_ARB')
	static var FLOAT_VEC4_ARB:GLuint;

	@:native('GL_INT_VEC2_ARB')
	static var INT_VEC2_ARB:GLuint;

	@:native('GL_INT_VEC3_ARB')
	static var INT_VEC3_ARB:GLuint;

	@:native('GL_INT_VEC4_ARB')
	static var INT_VEC4_ARB:GLuint;

	@:native('GL_BOOL_ARB')
	static var BOOL_ARB:GLuint;

	@:native('GL_BOOL_VEC2_ARB')
	static var BOOL_VEC2_ARB:GLuint;

	@:native('GL_BOOL_VEC3_ARB')
	static var BOOL_VEC3_ARB:GLuint;

	@:native('GL_BOOL_VEC4_ARB')
	static var BOOL_VEC4_ARB:GLuint;

	@:native('GL_FLOAT_MAT2_ARB')
	static var FLOAT_MAT2_ARB:GLuint;

	@:native('GL_FLOAT_MAT3_ARB')
	static var FLOAT_MAT3_ARB:GLuint;

	@:native('GL_FLOAT_MAT4_ARB')
	static var FLOAT_MAT4_ARB:GLuint;

	@:native('GL_SAMPLER_1D_ARB')
	static var SAMPLER_1D_ARB:GLuint;

	@:native('GL_SAMPLER_2D_ARB')
	static var SAMPLER_2D_ARB:GLuint;

	@:native('GL_SAMPLER_3D_ARB')
	static var SAMPLER_3D_ARB:GLuint;

	@:native('GL_SAMPLER_CUBE_ARB')
	static var SAMPLER_CUBE_ARB:GLuint;

	@:native('GL_SAMPLER_1D_SHADOW_ARB')
	static var SAMPLER_1D_SHADOW_ARB:GLuint;

	@:native('GL_SAMPLER_2D_SHADOW_ARB')
	static var SAMPLER_2D_SHADOW_ARB:GLuint;

	@:native('GL_SAMPLER_2D_RECT_ARB')
	static var SAMPLER_2D_RECT_ARB:GLuint;

	@:native('GL_SAMPLER_2D_RECT_SHADOW_ARB')
	static var SAMPLER_2D_RECT_SHADOW_ARB:GLuint;

	@:native('GL_OBJECT_DELETE_STATUS_ARB')
	static var OBJECT_DELETE_STATUS_ARB:GLuint;

	@:native('GL_OBJECT_COMPILE_STATUS_ARB')
	static var OBJECT_COMPILE_STATUS_ARB:GLuint;

	@:native('GL_OBJECT_LINK_STATUS_ARB')
	static var OBJECT_LINK_STATUS_ARB:GLuint;

	@:native('GL_OBJECT_VALIDATE_STATUS_ARB')
	static var OBJECT_VALIDATE_STATUS_ARB:GLuint;

	@:native('GL_OBJECT_INFO_LOG_LENGTH_ARB')
	static var OBJECT_INFO_LOG_LENGTH_ARB:GLuint;

	@:native('GL_OBJECT_ATTACHED_OBJECTS_ARB')
	static var OBJECT_ATTACHED_OBJECTS_ARB:GLuint;

	@:native('GL_OBJECT_ACTIVE_UNIFORMS_ARB')
	static var OBJECT_ACTIVE_UNIFORMS_ARB:GLuint;

	@:native('GL_OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB')
	static var OBJECT_ACTIVE_UNIFORM_MAX_LENGTH_ARB:GLuint;

	@:native('GL_OBJECT_SHADER_SOURCE_LENGTH_ARB')
	static var OBJECT_SHADER_SOURCE_LENGTH_ARB:GLuint;

	@:native('GL_SHADING_LANGUAGE_VERSION_ARB')
	static var SHADING_LANGUAGE_VERSION_ARB:GLuint;

	@:native('GL_SHADER_INCLUDE_ARB')
	static var SHADER_INCLUDE_ARB:GLuint;

	@:native('GL_NAMED_STRING_LENGTH_ARB')
	static var NAMED_STRING_LENGTH_ARB:GLuint;

	@:native('GL_NAMED_STRING_TYPE_ARB')
	static var NAMED_STRING_TYPE_ARB:GLuint;

	@:native('GL_TEXTURE_COMPARE_MODE_ARB')
	static var TEXTURE_COMPARE_MODE_ARB:GLuint;

	@:native('GL_TEXTURE_COMPARE_FUNC_ARB')
	static var TEXTURE_COMPARE_FUNC_ARB:GLuint;

	@:native('GL_COMPARE_R_TO_TEXTURE_ARB')
	static var COMPARE_R_TO_TEXTURE_ARB:GLuint;

	@:native('GL_TEXTURE_COMPARE_FAIL_VALUE_ARB')
	static var TEXTURE_COMPARE_FAIL_VALUE_ARB:GLuint;

	@:native('GL_SPARSE_STORAGE_BIT_ARB')
	static var SPARSE_STORAGE_BIT_ARB:GLuint;

	@:native('GL_SPARSE_BUFFER_PAGE_SIZE_ARB')
	static var SPARSE_BUFFER_PAGE_SIZE_ARB:GLuint;

	@:native('GL_TEXTURE_SPARSE_ARB')
	static var TEXTURE_SPARSE_ARB:GLuint;

	@:native('GL_VIRTUAL_PAGE_SIZE_INDEX_ARB')
	static var VIRTUAL_PAGE_SIZE_INDEX_ARB:GLuint;

	@:native('GL_NUM_SPARSE_LEVELS_ARB')
	static var NUM_SPARSE_LEVELS_ARB:GLuint;

	@:native('GL_NUM_VIRTUAL_PAGE_SIZES_ARB')
	static var NUM_VIRTUAL_PAGE_SIZES_ARB:GLuint;

	@:native('GL_VIRTUAL_PAGE_SIZE_X_ARB')
	static var VIRTUAL_PAGE_SIZE_X_ARB:GLuint;

	@:native('GL_VIRTUAL_PAGE_SIZE_Y_ARB')
	static var VIRTUAL_PAGE_SIZE_Y_ARB:GLuint;

	@:native('GL_VIRTUAL_PAGE_SIZE_Z_ARB')
	static var VIRTUAL_PAGE_SIZE_Z_ARB:GLuint;

	@:native('GL_MAX_SPARSE_TEXTURE_SIZE_ARB')
	static var MAX_SPARSE_TEXTURE_SIZE_ARB:GLuint;

	@:native('GL_MAX_SPARSE_3D_TEXTURE_SIZE_ARB')
	static var MAX_SPARSE_3D_TEXTURE_SIZE_ARB:GLuint;

	@:native('GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB')
	static var MAX_SPARSE_ARRAY_TEXTURE_LAYERS_ARB:GLuint;

	@:native('GL_SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB')
	static var SPARSE_TEXTURE_FULL_ARRAY_CUBE_MIPMAPS_ARB:GLuint;

	@:native('GL_CLAMP_TO_BORDER_ARB')
	static var CLAMP_TO_BORDER_ARB:GLuint;

	@:native('GL_TEXTURE_BUFFER_ARB')
	static var TEXTURE_BUFFER_ARB:GLuint;

	@:native('GL_MAX_TEXTURE_BUFFER_SIZE_ARB')
	static var MAX_TEXTURE_BUFFER_SIZE_ARB:GLuint;

	@:native('GL_TEXTURE_BINDING_BUFFER_ARB')
	static var TEXTURE_BINDING_BUFFER_ARB:GLuint;

	@:native('GL_TEXTURE_BUFFER_DATA_STORE_BINDING_ARB')
	static var TEXTURE_BUFFER_DATA_STORE_BINDING_ARB:GLuint;

	@:native('GL_TEXTURE_BUFFER_FORMAT_ARB')
	static var TEXTURE_BUFFER_FORMAT_ARB:GLuint;

	@:native('GL_COMPRESSED_ALPHA_ARB')
	static var COMPRESSED_ALPHA_ARB:GLuint;

	@:native('GL_COMPRESSED_LUMINANCE_ARB')
	static var COMPRESSED_LUMINANCE_ARB:GLuint;

	@:native('GL_COMPRESSED_LUMINANCE_ALPHA_ARB')
	static var COMPRESSED_LUMINANCE_ALPHA_ARB:GLuint;

	@:native('GL_COMPRESSED_INTENSITY_ARB')
	static var COMPRESSED_INTENSITY_ARB:GLuint;

	@:native('GL_COMPRESSED_RGB_ARB')
	static var COMPRESSED_RGB_ARB:GLuint;

	@:native('GL_COMPRESSED_RGBA_ARB')
	static var COMPRESSED_RGBA_ARB:GLuint;

	@:native('GL_TEXTURE_COMPRESSION_HINT_ARB')
	static var TEXTURE_COMPRESSION_HINT_ARB:GLuint;

	@:native('GL_TEXTURE_COMPRESSED_IMAGE_SIZE_ARB')
	static var TEXTURE_COMPRESSED_IMAGE_SIZE_ARB:GLuint;

	@:native('GL_TEXTURE_COMPRESSED_ARB')
	static var TEXTURE_COMPRESSED_ARB:GLuint;

	@:native('GL_NUM_COMPRESSED_TEXTURE_FORMATS_ARB')
	static var NUM_COMPRESSED_TEXTURE_FORMATS_ARB:GLuint;

	@:native('GL_COMPRESSED_TEXTURE_FORMATS_ARB')
	static var COMPRESSED_TEXTURE_FORMATS_ARB:GLuint;

	@:native('GL_COMPRESSED_RGBA_BPTC_UNORM_ARB')
	static var COMPRESSED_RGBA_BPTC_UNORM_ARB:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB')
	static var COMPRESSED_SRGB_ALPHA_BPTC_UNORM_ARB:GLuint;

	@:native('GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB')
	static var COMPRESSED_RGB_BPTC_SIGNED_FLOAT_ARB:GLuint;

	@:native('GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB')
	static var COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_ARB:GLuint;

	@:native('GL_NORMAL_MAP_ARB')
	static var NORMAL_MAP_ARB:GLuint;

	@:native('GL_REFLECTION_MAP_ARB')
	static var REFLECTION_MAP_ARB:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_ARB')
	static var TEXTURE_CUBE_MAP_ARB:GLuint;

	@:native('GL_TEXTURE_BINDING_CUBE_MAP_ARB')
	static var TEXTURE_BINDING_CUBE_MAP_ARB:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB')
	static var TEXTURE_CUBE_MAP_POSITIVE_X_ARB:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB')
	static var TEXTURE_CUBE_MAP_NEGATIVE_X_ARB:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB')
	static var TEXTURE_CUBE_MAP_POSITIVE_Y_ARB:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB')
	static var TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB')
	static var TEXTURE_CUBE_MAP_POSITIVE_Z_ARB:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB')
	static var TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB:GLuint;

	@:native('GL_PROXY_TEXTURE_CUBE_MAP_ARB')
	static var PROXY_TEXTURE_CUBE_MAP_ARB:GLuint;

	@:native('GL_MAX_CUBE_MAP_TEXTURE_SIZE_ARB')
	static var MAX_CUBE_MAP_TEXTURE_SIZE_ARB:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_ARRAY_ARB')
	static var TEXTURE_CUBE_MAP_ARRAY_ARB:GLuint;

	@:native('GL_TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB')
	static var TEXTURE_BINDING_CUBE_MAP_ARRAY_ARB:GLuint;

	@:native('GL_PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB')
	static var PROXY_TEXTURE_CUBE_MAP_ARRAY_ARB:GLuint;

	@:native('GL_SAMPLER_CUBE_MAP_ARRAY_ARB')
	static var SAMPLER_CUBE_MAP_ARRAY_ARB:GLuint;

	@:native('GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB')
	static var SAMPLER_CUBE_MAP_ARRAY_SHADOW_ARB:GLuint;

	@:native('GL_INT_SAMPLER_CUBE_MAP_ARRAY_ARB')
	static var INT_SAMPLER_CUBE_MAP_ARRAY_ARB:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB')
	static var UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY_ARB:GLuint;

	@:native('GL_COMBINE_ARB')
	static var COMBINE_ARB:GLuint;

	@:native('GL_COMBINE_RGB_ARB')
	static var COMBINE_RGB_ARB:GLuint;

	@:native('GL_COMBINE_ALPHA_ARB')
	static var COMBINE_ALPHA_ARB:GLuint;

	@:native('GL_SOURCE0_RGB_ARB')
	static var SOURCE0_RGB_ARB:GLuint;

	@:native('GL_SOURCE1_RGB_ARB')
	static var SOURCE1_RGB_ARB:GLuint;

	@:native('GL_SOURCE2_RGB_ARB')
	static var SOURCE2_RGB_ARB:GLuint;

	@:native('GL_SOURCE0_ALPHA_ARB')
	static var SOURCE0_ALPHA_ARB:GLuint;

	@:native('GL_SOURCE1_ALPHA_ARB')
	static var SOURCE1_ALPHA_ARB:GLuint;

	@:native('GL_SOURCE2_ALPHA_ARB')
	static var SOURCE2_ALPHA_ARB:GLuint;

	@:native('GL_OPERAND0_RGB_ARB')
	static var OPERAND0_RGB_ARB:GLuint;

	@:native('GL_OPERAND1_RGB_ARB')
	static var OPERAND1_RGB_ARB:GLuint;

	@:native('GL_OPERAND2_RGB_ARB')
	static var OPERAND2_RGB_ARB:GLuint;

	@:native('GL_OPERAND0_ALPHA_ARB')
	static var OPERAND0_ALPHA_ARB:GLuint;

	@:native('GL_OPERAND1_ALPHA_ARB')
	static var OPERAND1_ALPHA_ARB:GLuint;

	@:native('GL_OPERAND2_ALPHA_ARB')
	static var OPERAND2_ALPHA_ARB:GLuint;

	@:native('GL_RGB_SCALE_ARB')
	static var RGB_SCALE_ARB:GLuint;

	@:native('GL_ADD_SIGNED_ARB')
	static var ADD_SIGNED_ARB:GLuint;

	@:native('GL_INTERPOLATE_ARB')
	static var INTERPOLATE_ARB:GLuint;

	@:native('GL_SUBTRACT_ARB')
	static var SUBTRACT_ARB:GLuint;

	@:native('GL_CONSTANT_ARB')
	static var CONSTANT_ARB:GLuint;

	@:native('GL_PRIMARY_COLOR_ARB')
	static var PRIMARY_COLOR_ARB:GLuint;

	@:native('GL_PREVIOUS_ARB')
	static var PREVIOUS_ARB:GLuint;

	@:native('GL_DOT3_RGB_ARB')
	static var DOT3_RGB_ARB:GLuint;

	@:native('GL_DOT3_RGBA_ARB')
	static var DOT3_RGBA_ARB:GLuint;

	@:native('GL_TEXTURE_REDUCTION_MODE_ARB')
	static var TEXTURE_REDUCTION_MODE_ARB:GLuint;

	@:native('GL_WEIGHTED_AVERAGE_ARB')
	static var WEIGHTED_AVERAGE_ARB:GLuint;

	@:native('GL_TEXTURE_RED_TYPE_ARB')
	static var TEXTURE_RED_TYPE_ARB:GLuint;

	@:native('GL_TEXTURE_GREEN_TYPE_ARB')
	static var TEXTURE_GREEN_TYPE_ARB:GLuint;

	@:native('GL_TEXTURE_BLUE_TYPE_ARB')
	static var TEXTURE_BLUE_TYPE_ARB:GLuint;

	@:native('GL_TEXTURE_ALPHA_TYPE_ARB')
	static var TEXTURE_ALPHA_TYPE_ARB:GLuint;

	@:native('GL_TEXTURE_LUMINANCE_TYPE_ARB')
	static var TEXTURE_LUMINANCE_TYPE_ARB:GLuint;

	@:native('GL_TEXTURE_INTENSITY_TYPE_ARB')
	static var TEXTURE_INTENSITY_TYPE_ARB:GLuint;

	@:native('GL_TEXTURE_DEPTH_TYPE_ARB')
	static var TEXTURE_DEPTH_TYPE_ARB:GLuint;

	@:native('GL_UNSIGNED_NORMALIZED_ARB')
	static var UNSIGNED_NORMALIZED_ARB:GLuint;

	@:native('GL_RGBA32F_ARB')
	static var RGBA32F_ARB:GLuint;

	@:native('GL_RGB32F_ARB')
	static var RGB32F_ARB:GLuint;

	@:native('GL_ALPHA32F_ARB')
	static var ALPHA32F_ARB:GLuint;

	@:native('GL_INTENSITY32F_ARB')
	static var INTENSITY32F_ARB:GLuint;

	@:native('GL_LUMINANCE32F_ARB')
	static var LUMINANCE32F_ARB:GLuint;

	@:native('GL_LUMINANCE_ALPHA32F_ARB')
	static var LUMINANCE_ALPHA32F_ARB:GLuint;

	@:native('GL_RGBA16F_ARB')
	static var RGBA16F_ARB:GLuint;

	@:native('GL_RGB16F_ARB')
	static var RGB16F_ARB:GLuint;

	@:native('GL_ALPHA16F_ARB')
	static var ALPHA16F_ARB:GLuint;

	@:native('GL_INTENSITY16F_ARB')
	static var INTENSITY16F_ARB:GLuint;

	@:native('GL_LUMINANCE16F_ARB')
	static var LUMINANCE16F_ARB:GLuint;

	@:native('GL_LUMINANCE_ALPHA16F_ARB')
	static var LUMINANCE_ALPHA16F_ARB:GLuint;

	@:native('GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB')
	static var MIN_PROGRAM_TEXTURE_GATHER_OFFSET_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB')
	static var MAX_PROGRAM_TEXTURE_GATHER_OFFSET_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB')
	static var MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS_ARB:GLuint;

	@:native('GL_MIRRORED_REPEAT_ARB')
	static var MIRRORED_REPEAT_ARB:GLuint;

	@:native('GL_TEXTURE_RECTANGLE_ARB')
	static var TEXTURE_RECTANGLE_ARB:GLuint;

	@:native('GL_TEXTURE_BINDING_RECTANGLE_ARB')
	static var TEXTURE_BINDING_RECTANGLE_ARB:GLuint;

	@:native('GL_PROXY_TEXTURE_RECTANGLE_ARB')
	static var PROXY_TEXTURE_RECTANGLE_ARB:GLuint;

	@:native('GL_MAX_RECTANGLE_TEXTURE_SIZE_ARB')
	static var MAX_RECTANGLE_TEXTURE_SIZE_ARB:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_OVERFLOW_ARB')
	static var TRANSFORM_FEEDBACK_OVERFLOW_ARB:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB')
	static var TRANSFORM_FEEDBACK_STREAM_OVERFLOW_ARB:GLuint;

	@:native('GL_TRANSPOSE_MODELVIEW_MATRIX_ARB')
	static var TRANSPOSE_MODELVIEW_MATRIX_ARB:GLuint;

	@:native('GL_TRANSPOSE_PROJECTION_MATRIX_ARB')
	static var TRANSPOSE_PROJECTION_MATRIX_ARB:GLuint;

	@:native('GL_TRANSPOSE_TEXTURE_MATRIX_ARB')
	static var TRANSPOSE_TEXTURE_MATRIX_ARB:GLuint;

	@:native('GL_TRANSPOSE_COLOR_MATRIX_ARB')
	static var TRANSPOSE_COLOR_MATRIX_ARB:GLuint;

	@:native('GL_MAX_VERTEX_UNITS_ARB')
	static var MAX_VERTEX_UNITS_ARB:GLuint;

	@:native('GL_ACTIVE_VERTEX_UNITS_ARB')
	static var ACTIVE_VERTEX_UNITS_ARB:GLuint;

	@:native('GL_WEIGHT_SUM_UNITY_ARB')
	static var WEIGHT_SUM_UNITY_ARB:GLuint;

	@:native('GL_VERTEX_BLEND_ARB')
	static var VERTEX_BLEND_ARB:GLuint;

	@:native('GL_CURRENT_WEIGHT_ARB')
	static var CURRENT_WEIGHT_ARB:GLuint;

	@:native('GL_WEIGHT_ARRAY_TYPE_ARB')
	static var WEIGHT_ARRAY_TYPE_ARB:GLuint;

	@:native('GL_WEIGHT_ARRAY_STRIDE_ARB')
	static var WEIGHT_ARRAY_STRIDE_ARB:GLuint;

	@:native('GL_WEIGHT_ARRAY_SIZE_ARB')
	static var WEIGHT_ARRAY_SIZE_ARB:GLuint;

	@:native('GL_WEIGHT_ARRAY_POINTER_ARB')
	static var WEIGHT_ARRAY_POINTER_ARB:GLuint;

	@:native('GL_WEIGHT_ARRAY_ARB')
	static var WEIGHT_ARRAY_ARB:GLuint;

	@:native('GL_MODELVIEW0_ARB')
	static var MODELVIEW0_ARB:GLuint;

	@:native('GL_MODELVIEW1_ARB')
	static var MODELVIEW1_ARB:GLuint;

	@:native('GL_MODELVIEW2_ARB')
	static var MODELVIEW2_ARB:GLuint;

	@:native('GL_MODELVIEW3_ARB')
	static var MODELVIEW3_ARB:GLuint;

	@:native('GL_MODELVIEW4_ARB')
	static var MODELVIEW4_ARB:GLuint;

	@:native('GL_MODELVIEW5_ARB')
	static var MODELVIEW5_ARB:GLuint;

	@:native('GL_MODELVIEW6_ARB')
	static var MODELVIEW6_ARB:GLuint;

	@:native('GL_MODELVIEW7_ARB')
	static var MODELVIEW7_ARB:GLuint;

	@:native('GL_MODELVIEW8_ARB')
	static var MODELVIEW8_ARB:GLuint;

	@:native('GL_MODELVIEW9_ARB')
	static var MODELVIEW9_ARB:GLuint;

	@:native('GL_MODELVIEW10_ARB')
	static var MODELVIEW10_ARB:GLuint;

	@:native('GL_MODELVIEW11_ARB')
	static var MODELVIEW11_ARB:GLuint;

	@:native('GL_MODELVIEW12_ARB')
	static var MODELVIEW12_ARB:GLuint;

	@:native('GL_MODELVIEW13_ARB')
	static var MODELVIEW13_ARB:GLuint;

	@:native('GL_MODELVIEW14_ARB')
	static var MODELVIEW14_ARB:GLuint;

	@:native('GL_MODELVIEW15_ARB')
	static var MODELVIEW15_ARB:GLuint;

	@:native('GL_MODELVIEW16_ARB')
	static var MODELVIEW16_ARB:GLuint;

	@:native('GL_MODELVIEW17_ARB')
	static var MODELVIEW17_ARB:GLuint;

	@:native('GL_MODELVIEW18_ARB')
	static var MODELVIEW18_ARB:GLuint;

	@:native('GL_MODELVIEW19_ARB')
	static var MODELVIEW19_ARB:GLuint;

	@:native('GL_MODELVIEW20_ARB')
	static var MODELVIEW20_ARB:GLuint;

	@:native('GL_MODELVIEW21_ARB')
	static var MODELVIEW21_ARB:GLuint;

	@:native('GL_MODELVIEW22_ARB')
	static var MODELVIEW22_ARB:GLuint;

	@:native('GL_MODELVIEW23_ARB')
	static var MODELVIEW23_ARB:GLuint;

	@:native('GL_MODELVIEW24_ARB')
	static var MODELVIEW24_ARB:GLuint;

	@:native('GL_MODELVIEW25_ARB')
	static var MODELVIEW25_ARB:GLuint;

	@:native('GL_MODELVIEW26_ARB')
	static var MODELVIEW26_ARB:GLuint;

	@:native('GL_MODELVIEW27_ARB')
	static var MODELVIEW27_ARB:GLuint;

	@:native('GL_MODELVIEW28_ARB')
	static var MODELVIEW28_ARB:GLuint;

	@:native('GL_MODELVIEW29_ARB')
	static var MODELVIEW29_ARB:GLuint;

	@:native('GL_MODELVIEW30_ARB')
	static var MODELVIEW30_ARB:GLuint;

	@:native('GL_MODELVIEW31_ARB')
	static var MODELVIEW31_ARB:GLuint;

	@:native('GL_BUFFER_SIZE_ARB')
	static var BUFFER_SIZE_ARB:GLuint;

	@:native('GL_BUFFER_USAGE_ARB')
	static var BUFFER_USAGE_ARB:GLuint;

	@:native('GL_ARRAY_BUFFER_ARB')
	static var ARRAY_BUFFER_ARB:GLuint;

	@:native('GL_ELEMENT_ARRAY_BUFFER_ARB')
	static var ELEMENT_ARRAY_BUFFER_ARB:GLuint;

	@:native('GL_ARRAY_BUFFER_BINDING_ARB')
	static var ARRAY_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_ELEMENT_ARRAY_BUFFER_BINDING_ARB')
	static var ELEMENT_ARRAY_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_VERTEX_ARRAY_BUFFER_BINDING_ARB')
	static var VERTEX_ARRAY_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_NORMAL_ARRAY_BUFFER_BINDING_ARB')
	static var NORMAL_ARRAY_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_COLOR_ARRAY_BUFFER_BINDING_ARB')
	static var COLOR_ARRAY_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_INDEX_ARRAY_BUFFER_BINDING_ARB')
	static var INDEX_ARRAY_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB')
	static var TEXTURE_COORD_ARRAY_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB')
	static var EDGE_FLAG_ARRAY_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB')
	static var SECONDARY_COLOR_ARRAY_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB')
	static var FOG_COORDINATE_ARRAY_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_WEIGHT_ARRAY_BUFFER_BINDING_ARB')
	static var WEIGHT_ARRAY_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB')
	static var VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ARB:GLuint;

	@:native('GL_READ_ONLY_ARB')
	static var READ_ONLY_ARB:GLuint;

	@:native('GL_WRITE_ONLY_ARB')
	static var WRITE_ONLY_ARB:GLuint;

	@:native('GL_READ_WRITE_ARB')
	static var READ_WRITE_ARB:GLuint;

	@:native('GL_BUFFER_ACCESS_ARB')
	static var BUFFER_ACCESS_ARB:GLuint;

	@:native('GL_BUFFER_MAPPED_ARB')
	static var BUFFER_MAPPED_ARB:GLuint;

	@:native('GL_BUFFER_MAP_POINTER_ARB')
	static var BUFFER_MAP_POINTER_ARB:GLuint;

	@:native('GL_STREAM_DRAW_ARB')
	static var STREAM_DRAW_ARB:GLuint;

	@:native('GL_STREAM_READ_ARB')
	static var STREAM_READ_ARB:GLuint;

	@:native('GL_STREAM_COPY_ARB')
	static var STREAM_COPY_ARB:GLuint;

	@:native('GL_STATIC_DRAW_ARB')
	static var STATIC_DRAW_ARB:GLuint;

	@:native('GL_STATIC_READ_ARB')
	static var STATIC_READ_ARB:GLuint;

	@:native('GL_STATIC_COPY_ARB')
	static var STATIC_COPY_ARB:GLuint;

	@:native('GL_DYNAMIC_DRAW_ARB')
	static var DYNAMIC_DRAW_ARB:GLuint;

	@:native('GL_DYNAMIC_READ_ARB')
	static var DYNAMIC_READ_ARB:GLuint;

	@:native('GL_DYNAMIC_COPY_ARB')
	static var DYNAMIC_COPY_ARB:GLuint;

	@:native('GL_COLOR_SUM_ARB')
	static var COLOR_SUM_ARB:GLuint;

	@:native('GL_VERTEX_PROGRAM_ARB')
	static var VERTEX_PROGRAM_ARB:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_ENABLED_ARB')
	static var VERTEX_ATTRIB_ARRAY_ENABLED_ARB:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_SIZE_ARB')
	static var VERTEX_ATTRIB_ARRAY_SIZE_ARB:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_STRIDE_ARB')
	static var VERTEX_ATTRIB_ARRAY_STRIDE_ARB:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_TYPE_ARB')
	static var VERTEX_ATTRIB_ARRAY_TYPE_ARB:GLuint;

	@:native('GL_CURRENT_VERTEX_ATTRIB_ARB')
	static var CURRENT_VERTEX_ATTRIB_ARB:GLuint;

	@:native('GL_VERTEX_PROGRAM_POINT_SIZE_ARB')
	static var VERTEX_PROGRAM_POINT_SIZE_ARB:GLuint;

	@:native('GL_VERTEX_PROGRAM_TWO_SIDE_ARB')
	static var VERTEX_PROGRAM_TWO_SIDE_ARB:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_POINTER_ARB')
	static var VERTEX_ATTRIB_ARRAY_POINTER_ARB:GLuint;

	@:native('GL_MAX_VERTEX_ATTRIBS_ARB')
	static var MAX_VERTEX_ATTRIBS_ARB:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB')
	static var VERTEX_ATTRIB_ARRAY_NORMALIZED_ARB:GLuint;

	@:native('GL_PROGRAM_ADDRESS_REGISTERS_ARB')
	static var PROGRAM_ADDRESS_REGISTERS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_ADDRESS_REGISTERS_ARB')
	static var MAX_PROGRAM_ADDRESS_REGISTERS_ARB:GLuint;

	@:native('GL_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB')
	static var PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB:GLuint;

	@:native('GL_MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB')
	static var MAX_PROGRAM_NATIVE_ADDRESS_REGISTERS_ARB:GLuint;

	@:native('GL_VERTEX_SHADER_ARB')
	static var VERTEX_SHADER_ARB:GLuint;

	@:native('GL_MAX_VERTEX_UNIFORM_COMPONENTS_ARB')
	static var MAX_VERTEX_UNIFORM_COMPONENTS_ARB:GLuint;

	@:native('GL_MAX_VARYING_FLOATS_ARB')
	static var MAX_VARYING_FLOATS_ARB:GLuint;

	@:native('GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB')
	static var MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB:GLuint;

	@:native('GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB')
	static var MAX_COMBINED_TEXTURE_IMAGE_UNITS_ARB:GLuint;

	@:native('GL_OBJECT_ACTIVE_ATTRIBUTES_ARB')
	static var OBJECT_ACTIVE_ATTRIBUTES_ARB:GLuint;

	@:native('GL_OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB')
	static var OBJECT_ACTIVE_ATTRIBUTE_MAX_LENGTH_ARB:GLuint;

	@:native('GL_MAX_DRAW_BUFFERS_ATI')
	static var MAX_DRAW_BUFFERS_ATI:GLuint;

	@:native('GL_DRAW_BUFFER0_ATI')
	static var DRAW_BUFFER0_ATI:GLuint;

	@:native('GL_DRAW_BUFFER1_ATI')
	static var DRAW_BUFFER1_ATI:GLuint;

	@:native('GL_DRAW_BUFFER2_ATI')
	static var DRAW_BUFFER2_ATI:GLuint;

	@:native('GL_DRAW_BUFFER3_ATI')
	static var DRAW_BUFFER3_ATI:GLuint;

	@:native('GL_DRAW_BUFFER4_ATI')
	static var DRAW_BUFFER4_ATI:GLuint;

	@:native('GL_DRAW_BUFFER5_ATI')
	static var DRAW_BUFFER5_ATI:GLuint;

	@:native('GL_DRAW_BUFFER6_ATI')
	static var DRAW_BUFFER6_ATI:GLuint;

	@:native('GL_DRAW_BUFFER7_ATI')
	static var DRAW_BUFFER7_ATI:GLuint;

	@:native('GL_DRAW_BUFFER8_ATI')
	static var DRAW_BUFFER8_ATI:GLuint;

	@:native('GL_DRAW_BUFFER9_ATI')
	static var DRAW_BUFFER9_ATI:GLuint;

	@:native('GL_DRAW_BUFFER10_ATI')
	static var DRAW_BUFFER10_ATI:GLuint;

	@:native('GL_DRAW_BUFFER11_ATI')
	static var DRAW_BUFFER11_ATI:GLuint;

	@:native('GL_DRAW_BUFFER12_ATI')
	static var DRAW_BUFFER12_ATI:GLuint;

	@:native('GL_DRAW_BUFFER13_ATI')
	static var DRAW_BUFFER13_ATI:GLuint;

	@:native('GL_DRAW_BUFFER14_ATI')
	static var DRAW_BUFFER14_ATI:GLuint;

	@:native('GL_DRAW_BUFFER15_ATI')
	static var DRAW_BUFFER15_ATI:GLuint;

	@:native('GL_ELEMENT_ARRAY_ATI')
	static var ELEMENT_ARRAY_ATI:GLuint;

	@:native('GL_ELEMENT_ARRAY_TYPE_ATI')
	static var ELEMENT_ARRAY_TYPE_ATI:GLuint;

	@:native('GL_ELEMENT_ARRAY_POINTER_ATI')
	static var ELEMENT_ARRAY_POINTER_ATI:GLuint;

	@:native('GL_BUMP_ROT_MATRIX_ATI')
	static var BUMP_ROT_MATRIX_ATI:GLuint;

	@:native('GL_BUMP_ROT_MATRIX_SIZE_ATI')
	static var BUMP_ROT_MATRIX_SIZE_ATI:GLuint;

	@:native('GL_BUMP_NUM_TEX_UNITS_ATI')
	static var BUMP_NUM_TEX_UNITS_ATI:GLuint;

	@:native('GL_BUMP_TEX_UNITS_ATI')
	static var BUMP_TEX_UNITS_ATI:GLuint;

	@:native('GL_DUDV_ATI')
	static var DUDV_ATI:GLuint;

	@:native('GL_DU8DV8_ATI')
	static var DU8DV8_ATI:GLuint;

	@:native('GL_BUMP_ENVMAP_ATI')
	static var BUMP_ENVMAP_ATI:GLuint;

	@:native('GL_BUMP_TARGET_ATI')
	static var BUMP_TARGET_ATI:GLuint;

	@:native('GL_FRAGMENT_SHADER_ATI')
	static var FRAGMENT_SHADER_ATI:GLuint;

	@:native('GL_REG_0_ATI')
	static var REG_0_ATI:GLuint;

	@:native('GL_REG_1_ATI')
	static var REG_1_ATI:GLuint;

	@:native('GL_REG_2_ATI')
	static var REG_2_ATI:GLuint;

	@:native('GL_REG_3_ATI')
	static var REG_3_ATI:GLuint;

	@:native('GL_REG_4_ATI')
	static var REG_4_ATI:GLuint;

	@:native('GL_REG_5_ATI')
	static var REG_5_ATI:GLuint;

	@:native('GL_REG_6_ATI')
	static var REG_6_ATI:GLuint;

	@:native('GL_REG_7_ATI')
	static var REG_7_ATI:GLuint;

	@:native('GL_REG_8_ATI')
	static var REG_8_ATI:GLuint;

	@:native('GL_REG_9_ATI')
	static var REG_9_ATI:GLuint;

	@:native('GL_REG_10_ATI')
	static var REG_10_ATI:GLuint;

	@:native('GL_REG_11_ATI')
	static var REG_11_ATI:GLuint;

	@:native('GL_REG_12_ATI')
	static var REG_12_ATI:GLuint;

	@:native('GL_REG_13_ATI')
	static var REG_13_ATI:GLuint;

	@:native('GL_REG_14_ATI')
	static var REG_14_ATI:GLuint;

	@:native('GL_REG_15_ATI')
	static var REG_15_ATI:GLuint;

	@:native('GL_REG_16_ATI')
	static var REG_16_ATI:GLuint;

	@:native('GL_REG_17_ATI')
	static var REG_17_ATI:GLuint;

	@:native('GL_REG_18_ATI')
	static var REG_18_ATI:GLuint;

	@:native('GL_REG_19_ATI')
	static var REG_19_ATI:GLuint;

	@:native('GL_REG_20_ATI')
	static var REG_20_ATI:GLuint;

	@:native('GL_REG_21_ATI')
	static var REG_21_ATI:GLuint;

	@:native('GL_REG_22_ATI')
	static var REG_22_ATI:GLuint;

	@:native('GL_REG_23_ATI')
	static var REG_23_ATI:GLuint;

	@:native('GL_REG_24_ATI')
	static var REG_24_ATI:GLuint;

	@:native('GL_REG_25_ATI')
	static var REG_25_ATI:GLuint;

	@:native('GL_REG_26_ATI')
	static var REG_26_ATI:GLuint;

	@:native('GL_REG_27_ATI')
	static var REG_27_ATI:GLuint;

	@:native('GL_REG_28_ATI')
	static var REG_28_ATI:GLuint;

	@:native('GL_REG_29_ATI')
	static var REG_29_ATI:GLuint;

	@:native('GL_REG_30_ATI')
	static var REG_30_ATI:GLuint;

	@:native('GL_REG_31_ATI')
	static var REG_31_ATI:GLuint;

	@:native('GL_CON_0_ATI')
	static var CON_0_ATI:GLuint;

	@:native('GL_CON_1_ATI')
	static var CON_1_ATI:GLuint;

	@:native('GL_CON_2_ATI')
	static var CON_2_ATI:GLuint;

	@:native('GL_CON_3_ATI')
	static var CON_3_ATI:GLuint;

	@:native('GL_CON_4_ATI')
	static var CON_4_ATI:GLuint;

	@:native('GL_CON_5_ATI')
	static var CON_5_ATI:GLuint;

	@:native('GL_CON_6_ATI')
	static var CON_6_ATI:GLuint;

	@:native('GL_CON_7_ATI')
	static var CON_7_ATI:GLuint;

	@:native('GL_CON_8_ATI')
	static var CON_8_ATI:GLuint;

	@:native('GL_CON_9_ATI')
	static var CON_9_ATI:GLuint;

	@:native('GL_CON_10_ATI')
	static var CON_10_ATI:GLuint;

	@:native('GL_CON_11_ATI')
	static var CON_11_ATI:GLuint;

	@:native('GL_CON_12_ATI')
	static var CON_12_ATI:GLuint;

	@:native('GL_CON_13_ATI')
	static var CON_13_ATI:GLuint;

	@:native('GL_CON_14_ATI')
	static var CON_14_ATI:GLuint;

	@:native('GL_CON_15_ATI')
	static var CON_15_ATI:GLuint;

	@:native('GL_CON_16_ATI')
	static var CON_16_ATI:GLuint;

	@:native('GL_CON_17_ATI')
	static var CON_17_ATI:GLuint;

	@:native('GL_CON_18_ATI')
	static var CON_18_ATI:GLuint;

	@:native('GL_CON_19_ATI')
	static var CON_19_ATI:GLuint;

	@:native('GL_CON_20_ATI')
	static var CON_20_ATI:GLuint;

	@:native('GL_CON_21_ATI')
	static var CON_21_ATI:GLuint;

	@:native('GL_CON_22_ATI')
	static var CON_22_ATI:GLuint;

	@:native('GL_CON_23_ATI')
	static var CON_23_ATI:GLuint;

	@:native('GL_CON_24_ATI')
	static var CON_24_ATI:GLuint;

	@:native('GL_CON_25_ATI')
	static var CON_25_ATI:GLuint;

	@:native('GL_CON_26_ATI')
	static var CON_26_ATI:GLuint;

	@:native('GL_CON_27_ATI')
	static var CON_27_ATI:GLuint;

	@:native('GL_CON_28_ATI')
	static var CON_28_ATI:GLuint;

	@:native('GL_CON_29_ATI')
	static var CON_29_ATI:GLuint;

	@:native('GL_CON_30_ATI')
	static var CON_30_ATI:GLuint;

	@:native('GL_CON_31_ATI')
	static var CON_31_ATI:GLuint;

	@:native('GL_MOV_ATI')
	static var MOV_ATI:GLuint;

	@:native('GL_ADD_ATI')
	static var ADD_ATI:GLuint;

	@:native('GL_MUL_ATI')
	static var MUL_ATI:GLuint;

	@:native('GL_SUB_ATI')
	static var SUB_ATI:GLuint;

	@:native('GL_DOT3_ATI')
	static var DOT3_ATI:GLuint;

	@:native('GL_DOT4_ATI')
	static var DOT4_ATI:GLuint;

	@:native('GL_MAD_ATI')
	static var MAD_ATI:GLuint;

	@:native('GL_LERP_ATI')
	static var LERP_ATI:GLuint;

	@:native('GL_CND_ATI')
	static var CND_ATI:GLuint;

	@:native('GL_CND0_ATI')
	static var CND0_ATI:GLuint;

	@:native('GL_DOT2_ADD_ATI')
	static var DOT2_ADD_ATI:GLuint;

	@:native('GL_SECONDARY_INTERPOLATOR_ATI')
	static var SECONDARY_INTERPOLATOR_ATI:GLuint;

	@:native('GL_NUM_FRAGMENT_REGISTERS_ATI')
	static var NUM_FRAGMENT_REGISTERS_ATI:GLuint;

	@:native('GL_NUM_FRAGMENT_CONSTANTS_ATI')
	static var NUM_FRAGMENT_CONSTANTS_ATI:GLuint;

	@:native('GL_NUM_PASSES_ATI')
	static var NUM_PASSES_ATI:GLuint;

	@:native('GL_NUM_INSTRUCTIONS_PER_PASS_ATI')
	static var NUM_INSTRUCTIONS_PER_PASS_ATI:GLuint;

	@:native('GL_NUM_INSTRUCTIONS_TOTAL_ATI')
	static var NUM_INSTRUCTIONS_TOTAL_ATI:GLuint;

	@:native('GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI')
	static var NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI:GLuint;

	@:native('GL_NUM_LOOPBACK_COMPONENTS_ATI')
	static var NUM_LOOPBACK_COMPONENTS_ATI:GLuint;

	@:native('GL_COLOR_ALPHA_PAIRING_ATI')
	static var COLOR_ALPHA_PAIRING_ATI:GLuint;

	@:native('GL_SWIZZLE_STR_ATI')
	static var SWIZZLE_STR_ATI:GLuint;

	@:native('GL_SWIZZLE_STQ_ATI')
	static var SWIZZLE_STQ_ATI:GLuint;

	@:native('GL_SWIZZLE_STR_DR_ATI')
	static var SWIZZLE_STR_DR_ATI:GLuint;

	@:native('GL_SWIZZLE_STQ_DQ_ATI')
	static var SWIZZLE_STQ_DQ_ATI:GLuint;

	@:native('GL_SWIZZLE_STRQ_ATI')
	static var SWIZZLE_STRQ_ATI:GLuint;

	@:native('GL_SWIZZLE_STRQ_DQ_ATI')
	static var SWIZZLE_STRQ_DQ_ATI:GLuint;

	@:native('GL_RED_BIT_ATI')
	static var RED_BIT_ATI:GLuint;

	@:native('GL_GREEN_BIT_ATI')
	static var GREEN_BIT_ATI:GLuint;

	@:native('GL_BLUE_BIT_ATI')
	static var BLUE_BIT_ATI:GLuint;

	@:native('GL_2X_BIT_ATI')
	static var _2X_BIT_ATI:GLuint;

	@:native('GL_4X_BIT_ATI')
	static var _4X_BIT_ATI:GLuint;

	@:native('GL_8X_BIT_ATI')
	static var _8X_BIT_ATI:GLuint;

	@:native('GL_HALF_BIT_ATI')
	static var HALF_BIT_ATI:GLuint;

	@:native('GL_QUARTER_BIT_ATI')
	static var QUARTER_BIT_ATI:GLuint;

	@:native('GL_EIGHTH_BIT_ATI')
	static var EIGHTH_BIT_ATI:GLuint;

	@:native('GL_SATURATE_BIT_ATI')
	static var SATURATE_BIT_ATI:GLuint;

	@:native('GL_COMP_BIT_ATI')
	static var COMP_BIT_ATI:GLuint;

	@:native('GL_NEGATE_BIT_ATI')
	static var NEGATE_BIT_ATI:GLuint;

	@:native('GL_BIAS_BIT_ATI')
	static var BIAS_BIT_ATI:GLuint;

	@:native('GL_VBO_FREE_MEMORY_ATI')
	static var VBO_FREE_MEMORY_ATI:GLuint;

	@:native('GL_TEXTURE_FREE_MEMORY_ATI')
	static var TEXTURE_FREE_MEMORY_ATI:GLuint;

	@:native('GL_RENDERBUFFER_FREE_MEMORY_ATI')
	static var RENDERBUFFER_FREE_MEMORY_ATI:GLuint;

	@:native('GL_RGBA_FLOAT_MODE_ATI')
	static var RGBA_FLOAT_MODE_ATI:GLuint;

	@:native('GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI')
	static var COLOR_CLEAR_UNCLAMPED_VALUE_ATI:GLuint;

	@:native('GL_PN_TRIANGLES_ATI')
	static var PN_TRIANGLES_ATI:GLuint;

	@:native('GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI')
	static var MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI:GLuint;

	@:native('GL_PN_TRIANGLES_POINT_MODE_ATI')
	static var PN_TRIANGLES_POINT_MODE_ATI:GLuint;

	@:native('GL_PN_TRIANGLES_NORMAL_MODE_ATI')
	static var PN_TRIANGLES_NORMAL_MODE_ATI:GLuint;

	@:native('GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI')
	static var PN_TRIANGLES_TESSELATION_LEVEL_ATI:GLuint;

	@:native('GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI')
	static var PN_TRIANGLES_POINT_MODE_LINEAR_ATI:GLuint;

	@:native('GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI')
	static var PN_TRIANGLES_POINT_MODE_CUBIC_ATI:GLuint;

	@:native('GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI')
	static var PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI:GLuint;

	@:native('GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI')
	static var PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI:GLuint;

	@:native('GL_STENCIL_BACK_FUNC_ATI')
	static var STENCIL_BACK_FUNC_ATI:GLuint;

	@:native('GL_STENCIL_BACK_FAIL_ATI')
	static var STENCIL_BACK_FAIL_ATI:GLuint;

	@:native('GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI')
	static var STENCIL_BACK_PASS_DEPTH_FAIL_ATI:GLuint;

	@:native('GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI')
	static var STENCIL_BACK_PASS_DEPTH_PASS_ATI:GLuint;

	@:native('GL_TEXT_FRAGMENT_SHADER_ATI')
	static var TEXT_FRAGMENT_SHADER_ATI:GLuint;

	@:native('GL_MODULATE_ADD_ATI')
	static var MODULATE_ADD_ATI:GLuint;

	@:native('GL_MODULATE_SIGNED_ADD_ATI')
	static var MODULATE_SIGNED_ADD_ATI:GLuint;

	@:native('GL_MODULATE_SUBTRACT_ATI')
	static var MODULATE_SUBTRACT_ATI:GLuint;

	@:native('GL_RGBA_FLOAT32_ATI')
	static var RGBA_FLOAT32_ATI:GLuint;

	@:native('GL_RGB_FLOAT32_ATI')
	static var RGB_FLOAT32_ATI:GLuint;

	@:native('GL_ALPHA_FLOAT32_ATI')
	static var ALPHA_FLOAT32_ATI:GLuint;

	@:native('GL_INTENSITY_FLOAT32_ATI')
	static var INTENSITY_FLOAT32_ATI:GLuint;

	@:native('GL_LUMINANCE_FLOAT32_ATI')
	static var LUMINANCE_FLOAT32_ATI:GLuint;

	@:native('GL_LUMINANCE_ALPHA_FLOAT32_ATI')
	static var LUMINANCE_ALPHA_FLOAT32_ATI:GLuint;

	@:native('GL_RGBA_FLOAT16_ATI')
	static var RGBA_FLOAT16_ATI:GLuint;

	@:native('GL_RGB_FLOAT16_ATI')
	static var RGB_FLOAT16_ATI:GLuint;

	@:native('GL_ALPHA_FLOAT16_ATI')
	static var ALPHA_FLOAT16_ATI:GLuint;

	@:native('GL_INTENSITY_FLOAT16_ATI')
	static var INTENSITY_FLOAT16_ATI:GLuint;

	@:native('GL_LUMINANCE_FLOAT16_ATI')
	static var LUMINANCE_FLOAT16_ATI:GLuint;

	@:native('GL_LUMINANCE_ALPHA_FLOAT16_ATI')
	static var LUMINANCE_ALPHA_FLOAT16_ATI:GLuint;

	@:native('GL_MIRROR_CLAMP_ATI')
	static var MIRROR_CLAMP_ATI:GLuint;

	@:native('GL_MIRROR_CLAMP_TO_EDGE_ATI')
	static var MIRROR_CLAMP_TO_EDGE_ATI:GLuint;

	@:native('GL_STATIC_ATI')
	static var STATIC_ATI:GLuint;

	@:native('GL_DYNAMIC_ATI')
	static var DYNAMIC_ATI:GLuint;

	@:native('GL_PRESERVE_ATI')
	static var PRESERVE_ATI:GLuint;

	@:native('GL_DISCARD_ATI')
	static var DISCARD_ATI:GLuint;

	@:native('GL_OBJECT_BUFFER_SIZE_ATI')
	static var OBJECT_BUFFER_SIZE_ATI:GLuint;

	@:native('GL_OBJECT_BUFFER_USAGE_ATI')
	static var OBJECT_BUFFER_USAGE_ATI:GLuint;

	@:native('GL_ARRAY_OBJECT_BUFFER_ATI')
	static var ARRAY_OBJECT_BUFFER_ATI:GLuint;

	@:native('GL_ARRAY_OBJECT_OFFSET_ATI')
	static var ARRAY_OBJECT_OFFSET_ATI:GLuint;

	@:native('GL_MAX_VERTEX_STREAMS_ATI')
	static var MAX_VERTEX_STREAMS_ATI:GLuint;

	@:native('GL_VERTEX_STREAM0_ATI')
	static var VERTEX_STREAM0_ATI:GLuint;

	@:native('GL_VERTEX_STREAM1_ATI')
	static var VERTEX_STREAM1_ATI:GLuint;

	@:native('GL_VERTEX_STREAM2_ATI')
	static var VERTEX_STREAM2_ATI:GLuint;

	@:native('GL_VERTEX_STREAM3_ATI')
	static var VERTEX_STREAM3_ATI:GLuint;

	@:native('GL_VERTEX_STREAM4_ATI')
	static var VERTEX_STREAM4_ATI:GLuint;

	@:native('GL_VERTEX_STREAM5_ATI')
	static var VERTEX_STREAM5_ATI:GLuint;

	@:native('GL_VERTEX_STREAM6_ATI')
	static var VERTEX_STREAM6_ATI:GLuint;

	@:native('GL_VERTEX_STREAM7_ATI')
	static var VERTEX_STREAM7_ATI:GLuint;

	@:native('GL_VERTEX_SOURCE_ATI')
	static var VERTEX_SOURCE_ATI:GLuint;

	@:native('GL_422_EXT')
	static var _422_EXT:GLuint;

	@:native('GL_422_REV_EXT')
	static var _422_REV_EXT:GLuint;

	@:native('GL_422_AVERAGE_EXT')
	static var _422_AVERAGE_EXT:GLuint;

	@:native('GL_422_REV_AVERAGE_EXT')
	static var _422_REV_AVERAGE_EXT:GLuint;

	@:native('GL_ABGR_EXT')
	static var ABGR_EXT:GLuint;

	@:native('GL_BGR_EXT')
	static var BGR_EXT:GLuint;

	@:native('GL_BGRA_EXT')
	static var BGRA_EXT:GLuint;

	@:native('GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT')
	static var MAX_VERTEX_BINDABLE_UNIFORMS_EXT:GLuint;

	@:native('GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT')
	static var MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT')
	static var MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT:GLuint;

	@:native('GL_MAX_BINDABLE_UNIFORM_SIZE_EXT')
	static var MAX_BINDABLE_UNIFORM_SIZE_EXT:GLuint;

	@:native('GL_UNIFORM_BUFFER_EXT')
	static var UNIFORM_BUFFER_EXT:GLuint;

	@:native('GL_UNIFORM_BUFFER_BINDING_EXT')
	static var UNIFORM_BUFFER_BINDING_EXT:GLuint;

	@:native('GL_CONSTANT_COLOR_EXT')
	static var CONSTANT_COLOR_EXT:GLuint;

	@:native('GL_ONE_MINUS_CONSTANT_COLOR_EXT')
	static var ONE_MINUS_CONSTANT_COLOR_EXT:GLuint;

	@:native('GL_CONSTANT_ALPHA_EXT')
	static var CONSTANT_ALPHA_EXT:GLuint;

	@:native('GL_ONE_MINUS_CONSTANT_ALPHA_EXT')
	static var ONE_MINUS_CONSTANT_ALPHA_EXT:GLuint;

	@:native('GL_BLEND_COLOR_EXT')
	static var BLEND_COLOR_EXT:GLuint;

	@:native('GL_BLEND_EQUATION_RGB_EXT')
	static var BLEND_EQUATION_RGB_EXT:GLuint;

	@:native('GL_BLEND_EQUATION_ALPHA_EXT')
	static var BLEND_EQUATION_ALPHA_EXT:GLuint;

	@:native('GL_BLEND_DST_RGB_EXT')
	static var BLEND_DST_RGB_EXT:GLuint;

	@:native('GL_BLEND_SRC_RGB_EXT')
	static var BLEND_SRC_RGB_EXT:GLuint;

	@:native('GL_BLEND_DST_ALPHA_EXT')
	static var BLEND_DST_ALPHA_EXT:GLuint;

	@:native('GL_BLEND_SRC_ALPHA_EXT')
	static var BLEND_SRC_ALPHA_EXT:GLuint;

	@:native('GL_MIN_EXT')
	static var MIN_EXT:GLuint;

	@:native('GL_MAX_EXT')
	static var MAX_EXT:GLuint;

	@:native('GL_FUNC_SUBTRACT_EXT')
	static var FUNC_SUBTRACT_EXT:GLuint;

	@:native('GL_FUNC_REVERSE_SUBTRACT_EXT')
	static var FUNC_REVERSE_SUBTRACT_EXT:GLuint;

	@:native('GL_CLIP_VOLUME_CLIPPING_HINT_EXT')
	static var CLIP_VOLUME_CLIPPING_HINT_EXT:GLuint;

	@:native('GL_CMYK_EXT')
	static var CMYK_EXT:GLuint;

	@:native('GL_CMYKA_EXT')
	static var CMYKA_EXT:GLuint;

	@:native('GL_PACK_CMYK_HINT_EXT')
	static var PACK_CMYK_HINT_EXT:GLuint;

	@:native('GL_UNPACK_CMYK_HINT_EXT')
	static var UNPACK_CMYK_HINT_EXT:GLuint;

	@:native('GL_ARRAY_ELEMENT_LOCK_FIRST_EXT')
	static var ARRAY_ELEMENT_LOCK_FIRST_EXT:GLuint;

	@:native('GL_ARRAY_ELEMENT_LOCK_COUNT_EXT')
	static var ARRAY_ELEMENT_LOCK_COUNT_EXT:GLuint;

	@:native('GL_CONVOLUTION_1D_EXT')
	static var CONVOLUTION_1D_EXT:GLuint;

	@:native('GL_CONVOLUTION_2D_EXT')
	static var CONVOLUTION_2D_EXT:GLuint;

	@:native('GL_SEPARABLE_2D_EXT')
	static var SEPARABLE_2D_EXT:GLuint;

	@:native('GL_CONVOLUTION_BORDER_MODE_EXT')
	static var CONVOLUTION_BORDER_MODE_EXT:GLuint;

	@:native('GL_CONVOLUTION_FILTER_SCALE_EXT')
	static var CONVOLUTION_FILTER_SCALE_EXT:GLuint;

	@:native('GL_CONVOLUTION_FILTER_BIAS_EXT')
	static var CONVOLUTION_FILTER_BIAS_EXT:GLuint;

	@:native('GL_REDUCE_EXT')
	static var REDUCE_EXT:GLuint;

	@:native('GL_CONVOLUTION_FORMAT_EXT')
	static var CONVOLUTION_FORMAT_EXT:GLuint;

	@:native('GL_CONVOLUTION_WIDTH_EXT')
	static var CONVOLUTION_WIDTH_EXT:GLuint;

	@:native('GL_CONVOLUTION_HEIGHT_EXT')
	static var CONVOLUTION_HEIGHT_EXT:GLuint;

	@:native('GL_MAX_CONVOLUTION_WIDTH_EXT')
	static var MAX_CONVOLUTION_WIDTH_EXT:GLuint;

	@:native('GL_MAX_CONVOLUTION_HEIGHT_EXT')
	static var MAX_CONVOLUTION_HEIGHT_EXT:GLuint;

	@:native('GL_POST_CONVOLUTION_RED_SCALE_EXT')
	static var POST_CONVOLUTION_RED_SCALE_EXT:GLuint;

	@:native('GL_POST_CONVOLUTION_GREEN_SCALE_EXT')
	static var POST_CONVOLUTION_GREEN_SCALE_EXT:GLuint;

	@:native('GL_POST_CONVOLUTION_BLUE_SCALE_EXT')
	static var POST_CONVOLUTION_BLUE_SCALE_EXT:GLuint;

	@:native('GL_POST_CONVOLUTION_ALPHA_SCALE_EXT')
	static var POST_CONVOLUTION_ALPHA_SCALE_EXT:GLuint;

	@:native('GL_POST_CONVOLUTION_RED_BIAS_EXT')
	static var POST_CONVOLUTION_RED_BIAS_EXT:GLuint;

	@:native('GL_POST_CONVOLUTION_GREEN_BIAS_EXT')
	static var POST_CONVOLUTION_GREEN_BIAS_EXT:GLuint;

	@:native('GL_POST_CONVOLUTION_BLUE_BIAS_EXT')
	static var POST_CONVOLUTION_BLUE_BIAS_EXT:GLuint;

	@:native('GL_POST_CONVOLUTION_ALPHA_BIAS_EXT')
	static var POST_CONVOLUTION_ALPHA_BIAS_EXT:GLuint;

	@:native('GL_TANGENT_ARRAY_EXT')
	static var TANGENT_ARRAY_EXT:GLuint;

	@:native('GL_BINORMAL_ARRAY_EXT')
	static var BINORMAL_ARRAY_EXT:GLuint;

	@:native('GL_CURRENT_TANGENT_EXT')
	static var CURRENT_TANGENT_EXT:GLuint;

	@:native('GL_CURRENT_BINORMAL_EXT')
	static var CURRENT_BINORMAL_EXT:GLuint;

	@:native('GL_TANGENT_ARRAY_TYPE_EXT')
	static var TANGENT_ARRAY_TYPE_EXT:GLuint;

	@:native('GL_TANGENT_ARRAY_STRIDE_EXT')
	static var TANGENT_ARRAY_STRIDE_EXT:GLuint;

	@:native('GL_BINORMAL_ARRAY_TYPE_EXT')
	static var BINORMAL_ARRAY_TYPE_EXT:GLuint;

	@:native('GL_BINORMAL_ARRAY_STRIDE_EXT')
	static var BINORMAL_ARRAY_STRIDE_EXT:GLuint;

	@:native('GL_TANGENT_ARRAY_POINTER_EXT')
	static var TANGENT_ARRAY_POINTER_EXT:GLuint;

	@:native('GL_BINORMAL_ARRAY_POINTER_EXT')
	static var BINORMAL_ARRAY_POINTER_EXT:GLuint;

	@:native('GL_MAP1_TANGENT_EXT')
	static var MAP1_TANGENT_EXT:GLuint;

	@:native('GL_MAP2_TANGENT_EXT')
	static var MAP2_TANGENT_EXT:GLuint;

	@:native('GL_MAP1_BINORMAL_EXT')
	static var MAP1_BINORMAL_EXT:GLuint;

	@:native('GL_MAP2_BINORMAL_EXT')
	static var MAP2_BINORMAL_EXT:GLuint;

	@:native('GL_CULL_VERTEX_EXT')
	static var CULL_VERTEX_EXT:GLuint;

	@:native('GL_CULL_VERTEX_EYE_POSITION_EXT')
	static var CULL_VERTEX_EYE_POSITION_EXT:GLuint;

	@:native('GL_CULL_VERTEX_OBJECT_POSITION_EXT')
	static var CULL_VERTEX_OBJECT_POSITION_EXT:GLuint;

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

	@:native('GL_DEPTH_BOUNDS_TEST_EXT')
	static var DEPTH_BOUNDS_TEST_EXT:GLuint;

	@:native('GL_DEPTH_BOUNDS_EXT')
	static var DEPTH_BOUNDS_EXT:GLuint;

	@:native('GL_PROGRAM_MATRIX_EXT')
	static var PROGRAM_MATRIX_EXT:GLuint;

	@:native('GL_TRANSPOSE_PROGRAM_MATRIX_EXT')
	static var TRANSPOSE_PROGRAM_MATRIX_EXT:GLuint;

	@:native('GL_PROGRAM_MATRIX_STACK_DEPTH_EXT')
	static var PROGRAM_MATRIX_STACK_DEPTH_EXT:GLuint;

	@:native('GL_MAX_ELEMENTS_VERTICES_EXT')
	static var MAX_ELEMENTS_VERTICES_EXT:GLuint;

	@:native('GL_MAX_ELEMENTS_INDICES_EXT')
	static var MAX_ELEMENTS_INDICES_EXT:GLuint;

	@:native('GL_FOG_COORDINATE_SOURCE_EXT')
	static var FOG_COORDINATE_SOURCE_EXT:GLuint;

	@:native('GL_FOG_COORDINATE_EXT')
	static var FOG_COORDINATE_EXT:GLuint;

	@:native('GL_FRAGMENT_DEPTH_EXT')
	static var FRAGMENT_DEPTH_EXT:GLuint;

	@:native('GL_CURRENT_FOG_COORDINATE_EXT')
	static var CURRENT_FOG_COORDINATE_EXT:GLuint;

	@:native('GL_FOG_COORDINATE_ARRAY_TYPE_EXT')
	static var FOG_COORDINATE_ARRAY_TYPE_EXT:GLuint;

	@:native('GL_FOG_COORDINATE_ARRAY_STRIDE_EXT')
	static var FOG_COORDINATE_ARRAY_STRIDE_EXT:GLuint;

	@:native('GL_FOG_COORDINATE_ARRAY_POINTER_EXT')
	static var FOG_COORDINATE_ARRAY_POINTER_EXT:GLuint;

	@:native('GL_FOG_COORDINATE_ARRAY_EXT')
	static var FOG_COORDINATE_ARRAY_EXT:GLuint;

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

	@:native('GL_READ_FRAMEBUFFER_EXT')
	static var READ_FRAMEBUFFER_EXT:GLuint;

	@:native('GL_DRAW_FRAMEBUFFER_EXT')
	static var DRAW_FRAMEBUFFER_EXT:GLuint;

	@:native('GL_DRAW_FRAMEBUFFER_BINDING_EXT')
	static var DRAW_FRAMEBUFFER_BINDING_EXT:GLuint;

	@:native('GL_READ_FRAMEBUFFER_BINDING_EXT')
	static var READ_FRAMEBUFFER_BINDING_EXT:GLuint;

	@:native('GL_RENDERBUFFER_SAMPLES_EXT')
	static var RENDERBUFFER_SAMPLES_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT')
	static var FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT:GLuint;

	@:native('GL_MAX_SAMPLES_EXT')
	static var MAX_SAMPLES_EXT:GLuint;

	@:native('GL_SCALED_RESOLVE_FASTEST_EXT')
	static var SCALED_RESOLVE_FASTEST_EXT:GLuint;

	@:native('GL_SCALED_RESOLVE_NICEST_EXT')
	static var SCALED_RESOLVE_NICEST_EXT:GLuint;

	@:native('GL_INVALID_FRAMEBUFFER_OPERATION_EXT')
	static var INVALID_FRAMEBUFFER_OPERATION_EXT:GLuint;

	@:native('GL_MAX_RENDERBUFFER_SIZE_EXT')
	static var MAX_RENDERBUFFER_SIZE_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_BINDING_EXT')
	static var FRAMEBUFFER_BINDING_EXT:GLuint;

	@:native('GL_RENDERBUFFER_BINDING_EXT')
	static var RENDERBUFFER_BINDING_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT')
	static var FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT')
	static var FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_COMPLETE_EXT')
	static var FRAMEBUFFER_COMPLETE_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT')
	static var FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT')
	static var FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT')
	static var FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT')
	static var FRAMEBUFFER_INCOMPLETE_FORMATS_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT')
	static var FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT')
	static var FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_UNSUPPORTED_EXT')
	static var FRAMEBUFFER_UNSUPPORTED_EXT:GLuint;

	@:native('GL_MAX_COLOR_ATTACHMENTS_EXT')
	static var MAX_COLOR_ATTACHMENTS_EXT:GLuint;

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

	@:native('GL_DEPTH_ATTACHMENT_EXT')
	static var DEPTH_ATTACHMENT_EXT:GLuint;

	@:native('GL_STENCIL_ATTACHMENT_EXT')
	static var STENCIL_ATTACHMENT_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_EXT')
	static var FRAMEBUFFER_EXT:GLuint;

	@:native('GL_RENDERBUFFER_EXT')
	static var RENDERBUFFER_EXT:GLuint;

	@:native('GL_RENDERBUFFER_WIDTH_EXT')
	static var RENDERBUFFER_WIDTH_EXT:GLuint;

	@:native('GL_RENDERBUFFER_HEIGHT_EXT')
	static var RENDERBUFFER_HEIGHT_EXT:GLuint;

	@:native('GL_RENDERBUFFER_INTERNAL_FORMAT_EXT')
	static var RENDERBUFFER_INTERNAL_FORMAT_EXT:GLuint;

	@:native('GL_STENCIL_INDEX1_EXT')
	static var STENCIL_INDEX1_EXT:GLuint;

	@:native('GL_STENCIL_INDEX4_EXT')
	static var STENCIL_INDEX4_EXT:GLuint;

	@:native('GL_STENCIL_INDEX8_EXT')
	static var STENCIL_INDEX8_EXT:GLuint;

	@:native('GL_STENCIL_INDEX16_EXT')
	static var STENCIL_INDEX16_EXT:GLuint;

	@:native('GL_RENDERBUFFER_RED_SIZE_EXT')
	static var RENDERBUFFER_RED_SIZE_EXT:GLuint;

	@:native('GL_RENDERBUFFER_GREEN_SIZE_EXT')
	static var RENDERBUFFER_GREEN_SIZE_EXT:GLuint;

	@:native('GL_RENDERBUFFER_BLUE_SIZE_EXT')
	static var RENDERBUFFER_BLUE_SIZE_EXT:GLuint;

	@:native('GL_RENDERBUFFER_ALPHA_SIZE_EXT')
	static var RENDERBUFFER_ALPHA_SIZE_EXT:GLuint;

	@:native('GL_RENDERBUFFER_DEPTH_SIZE_EXT')
	static var RENDERBUFFER_DEPTH_SIZE_EXT:GLuint;

	@:native('GL_RENDERBUFFER_STENCIL_SIZE_EXT')
	static var RENDERBUFFER_STENCIL_SIZE_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_SRGB_EXT')
	static var FRAMEBUFFER_SRGB_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_SRGB_CAPABLE_EXT')
	static var FRAMEBUFFER_SRGB_CAPABLE_EXT:GLuint;

	@:native('GL_GEOMETRY_SHADER_EXT')
	static var GEOMETRY_SHADER_EXT:GLuint;

	@:native('GL_GEOMETRY_VERTICES_OUT_EXT')
	static var GEOMETRY_VERTICES_OUT_EXT:GLuint;

	@:native('GL_GEOMETRY_INPUT_TYPE_EXT')
	static var GEOMETRY_INPUT_TYPE_EXT:GLuint;

	@:native('GL_GEOMETRY_OUTPUT_TYPE_EXT')
	static var GEOMETRY_OUTPUT_TYPE_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT')
	static var MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT')
	static var MAX_GEOMETRY_VARYING_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_VERTEX_VARYING_COMPONENTS_EXT')
	static var MAX_VERTEX_VARYING_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_VARYING_COMPONENTS_EXT')
	static var MAX_VARYING_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT')
	static var MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT')
	static var MAX_GEOMETRY_OUTPUT_VERTICES_EXT:GLuint;

	@:native('GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT')
	static var MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT:GLuint;

	@:native('GL_LINES_ADJACENCY_EXT')
	static var LINES_ADJACENCY_EXT:GLuint;

	@:native('GL_LINE_STRIP_ADJACENCY_EXT')
	static var LINE_STRIP_ADJACENCY_EXT:GLuint;

	@:native('GL_TRIANGLES_ADJACENCY_EXT')
	static var TRIANGLES_ADJACENCY_EXT:GLuint;

	@:native('GL_TRIANGLE_STRIP_ADJACENCY_EXT')
	static var TRIANGLE_STRIP_ADJACENCY_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT')
	static var FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT')
	static var FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT')
	static var FRAMEBUFFER_ATTACHMENT_LAYERED_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT:GLuint;

	@:native('GL_PROGRAM_POINT_SIZE_EXT')
	static var PROGRAM_POINT_SIZE_EXT:GLuint;

	@:native('GL_SAMPLER_1D_ARRAY_EXT')
	static var SAMPLER_1D_ARRAY_EXT:GLuint;

	@:native('GL_SAMPLER_2D_ARRAY_EXT')
	static var SAMPLER_2D_ARRAY_EXT:GLuint;

	@:native('GL_SAMPLER_BUFFER_EXT')
	static var SAMPLER_BUFFER_EXT:GLuint;

	@:native('GL_SAMPLER_1D_ARRAY_SHADOW_EXT')
	static var SAMPLER_1D_ARRAY_SHADOW_EXT:GLuint;

	@:native('GL_SAMPLER_2D_ARRAY_SHADOW_EXT')
	static var SAMPLER_2D_ARRAY_SHADOW_EXT:GLuint;

	@:native('GL_SAMPLER_CUBE_SHADOW_EXT')
	static var SAMPLER_CUBE_SHADOW_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_VEC2_EXT')
	static var UNSIGNED_INT_VEC2_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_VEC3_EXT')
	static var UNSIGNED_INT_VEC3_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_VEC4_EXT')
	static var UNSIGNED_INT_VEC4_EXT:GLuint;

	@:native('GL_INT_SAMPLER_1D_EXT')
	static var INT_SAMPLER_1D_EXT:GLuint;

	@:native('GL_INT_SAMPLER_2D_EXT')
	static var INT_SAMPLER_2D_EXT:GLuint;

	@:native('GL_INT_SAMPLER_3D_EXT')
	static var INT_SAMPLER_3D_EXT:GLuint;

	@:native('GL_INT_SAMPLER_CUBE_EXT')
	static var INT_SAMPLER_CUBE_EXT:GLuint;

	@:native('GL_INT_SAMPLER_2D_RECT_EXT')
	static var INT_SAMPLER_2D_RECT_EXT:GLuint;

	@:native('GL_INT_SAMPLER_1D_ARRAY_EXT')
	static var INT_SAMPLER_1D_ARRAY_EXT:GLuint;

	@:native('GL_INT_SAMPLER_2D_ARRAY_EXT')
	static var INT_SAMPLER_2D_ARRAY_EXT:GLuint;

	@:native('GL_INT_SAMPLER_BUFFER_EXT')
	static var INT_SAMPLER_BUFFER_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_1D_EXT')
	static var UNSIGNED_INT_SAMPLER_1D_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D_EXT')
	static var UNSIGNED_INT_SAMPLER_2D_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_3D_EXT')
	static var UNSIGNED_INT_SAMPLER_3D_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_CUBE_EXT')
	static var UNSIGNED_INT_SAMPLER_CUBE_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT')
	static var UNSIGNED_INT_SAMPLER_2D_RECT_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT')
	static var UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT')
	static var UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT')
	static var UNSIGNED_INT_SAMPLER_BUFFER_EXT:GLuint;

	@:native('GL_MIN_PROGRAM_TEXEL_OFFSET_EXT')
	static var MIN_PROGRAM_TEXEL_OFFSET_EXT:GLuint;

	@:native('GL_MAX_PROGRAM_TEXEL_OFFSET_EXT')
	static var MAX_PROGRAM_TEXEL_OFFSET_EXT:GLuint;

	@:native('GL_HISTOGRAM_EXT')
	static var HISTOGRAM_EXT:GLuint;

	@:native('GL_PROXY_HISTOGRAM_EXT')
	static var PROXY_HISTOGRAM_EXT:GLuint;

	@:native('GL_HISTOGRAM_WIDTH_EXT')
	static var HISTOGRAM_WIDTH_EXT:GLuint;

	@:native('GL_HISTOGRAM_FORMAT_EXT')
	static var HISTOGRAM_FORMAT_EXT:GLuint;

	@:native('GL_HISTOGRAM_RED_SIZE_EXT')
	static var HISTOGRAM_RED_SIZE_EXT:GLuint;

	@:native('GL_HISTOGRAM_GREEN_SIZE_EXT')
	static var HISTOGRAM_GREEN_SIZE_EXT:GLuint;

	@:native('GL_HISTOGRAM_BLUE_SIZE_EXT')
	static var HISTOGRAM_BLUE_SIZE_EXT:GLuint;

	@:native('GL_HISTOGRAM_ALPHA_SIZE_EXT')
	static var HISTOGRAM_ALPHA_SIZE_EXT:GLuint;

	@:native('GL_HISTOGRAM_LUMINANCE_SIZE_EXT')
	static var HISTOGRAM_LUMINANCE_SIZE_EXT:GLuint;

	@:native('GL_HISTOGRAM_SINK_EXT')
	static var HISTOGRAM_SINK_EXT:GLuint;

	@:native('GL_MINMAX_EXT')
	static var MINMAX_EXT:GLuint;

	@:native('GL_MINMAX_FORMAT_EXT')
	static var MINMAX_FORMAT_EXT:GLuint;

	@:native('GL_MINMAX_SINK_EXT')
	static var MINMAX_SINK_EXT:GLuint;

	@:native('GL_TABLE_TOO_LARGE_EXT')
	static var TABLE_TOO_LARGE_EXT:GLuint;

	@:native('GL_IUI_V2F_EXT')
	static var IUI_V2F_EXT:GLuint;

	@:native('GL_IUI_V3F_EXT')
	static var IUI_V3F_EXT:GLuint;

	@:native('GL_IUI_N3F_V2F_EXT')
	static var IUI_N3F_V2F_EXT:GLuint;

	@:native('GL_IUI_N3F_V3F_EXT')
	static var IUI_N3F_V3F_EXT:GLuint;

	@:native('GL_T2F_IUI_V2F_EXT')
	static var T2F_IUI_V2F_EXT:GLuint;

	@:native('GL_T2F_IUI_V3F_EXT')
	static var T2F_IUI_V3F_EXT:GLuint;

	@:native('GL_T2F_IUI_N3F_V2F_EXT')
	static var T2F_IUI_N3F_V2F_EXT:GLuint;

	@:native('GL_T2F_IUI_N3F_V3F_EXT')
	static var T2F_IUI_N3F_V3F_EXT:GLuint;

	@:native('GL_INDEX_TEST_EXT')
	static var INDEX_TEST_EXT:GLuint;

	@:native('GL_INDEX_TEST_FUNC_EXT')
	static var INDEX_TEST_FUNC_EXT:GLuint;

	@:native('GL_INDEX_TEST_REF_EXT')
	static var INDEX_TEST_REF_EXT:GLuint;

	@:native('GL_INDEX_MATERIAL_EXT')
	static var INDEX_MATERIAL_EXT:GLuint;

	@:native('GL_INDEX_MATERIAL_PARAMETER_EXT')
	static var INDEX_MATERIAL_PARAMETER_EXT:GLuint;

	@:native('GL_INDEX_MATERIAL_FACE_EXT')
	static var INDEX_MATERIAL_FACE_EXT:GLuint;

	@:native('GL_FRAGMENT_MATERIAL_EXT')
	static var FRAGMENT_MATERIAL_EXT:GLuint;

	@:native('GL_FRAGMENT_NORMAL_EXT')
	static var FRAGMENT_NORMAL_EXT:GLuint;

	@:native('GL_FRAGMENT_COLOR_EXT')
	static var FRAGMENT_COLOR_EXT:GLuint;

	@:native('GL_ATTENUATION_EXT')
	static var ATTENUATION_EXT:GLuint;

	@:native('GL_SHADOW_ATTENUATION_EXT')
	static var SHADOW_ATTENUATION_EXT:GLuint;

	@:native('GL_TEXTURE_APPLICATION_MODE_EXT')
	static var TEXTURE_APPLICATION_MODE_EXT:GLuint;

	@:native('GL_TEXTURE_LIGHT_EXT')
	static var TEXTURE_LIGHT_EXT:GLuint;

	@:native('GL_TEXTURE_MATERIAL_FACE_EXT')
	static var TEXTURE_MATERIAL_FACE_EXT:GLuint;

	@:native('GL_TEXTURE_MATERIAL_PARAMETER_EXT')
	static var TEXTURE_MATERIAL_PARAMETER_EXT:GLuint;

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

	@:native('GL_MULTISAMPLE_EXT')
	static var MULTISAMPLE_EXT:GLuint;

	@:native('GL_SAMPLE_ALPHA_TO_MASK_EXT')
	static var SAMPLE_ALPHA_TO_MASK_EXT:GLuint;

	@:native('GL_SAMPLE_ALPHA_TO_ONE_EXT')
	static var SAMPLE_ALPHA_TO_ONE_EXT:GLuint;

	@:native('GL_SAMPLE_MASK_EXT')
	static var SAMPLE_MASK_EXT:GLuint;

	@:native('GL_1PASS_EXT')
	static var _1PASS_EXT:GLuint;

	@:native('GL_2PASS_0_EXT')
	static var _2PASS_0_EXT:GLuint;

	@:native('GL_2PASS_1_EXT')
	static var _2PASS_1_EXT:GLuint;

	@:native('GL_4PASS_0_EXT')
	static var _4PASS_0_EXT:GLuint;

	@:native('GL_4PASS_1_EXT')
	static var _4PASS_1_EXT:GLuint;

	@:native('GL_4PASS_2_EXT')
	static var _4PASS_2_EXT:GLuint;

	@:native('GL_4PASS_3_EXT')
	static var _4PASS_3_EXT:GLuint;

	@:native('GL_SAMPLE_BUFFERS_EXT')
	static var SAMPLE_BUFFERS_EXT:GLuint;

	@:native('GL_SAMPLES_EXT')
	static var SAMPLES_EXT:GLuint;

	@:native('GL_SAMPLE_MASK_VALUE_EXT')
	static var SAMPLE_MASK_VALUE_EXT:GLuint;

	@:native('GL_SAMPLE_MASK_INVERT_EXT')
	static var SAMPLE_MASK_INVERT_EXT:GLuint;

	@:native('GL_SAMPLE_PATTERN_EXT')
	static var SAMPLE_PATTERN_EXT:GLuint;

	@:native('GL_MULTISAMPLE_BIT_EXT')
	static var MULTISAMPLE_BIT_EXT:GLuint;

	@:native('GL_DEPTH_STENCIL_EXT')
	static var DEPTH_STENCIL_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_24_8_EXT')
	static var UNSIGNED_INT_24_8_EXT:GLuint;

	@:native('GL_DEPTH24_STENCIL8_EXT')
	static var DEPTH24_STENCIL8_EXT:GLuint;

	@:native('GL_TEXTURE_STENCIL_SIZE_EXT')
	static var TEXTURE_STENCIL_SIZE_EXT:GLuint;

	@:native('GL_R11F_G11F_B10F_EXT')
	static var R11F_G11F_B10F_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_10F_11F_11F_REV_EXT')
	static var UNSIGNED_INT_10F_11F_11F_REV_EXT:GLuint;

	@:native('GL_RGBA_SIGNED_COMPONENTS_EXT')
	static var RGBA_SIGNED_COMPONENTS_EXT:GLuint;

	@:native('GL_UNSIGNED_BYTE_3_3_2_EXT')
	static var UNSIGNED_BYTE_3_3_2_EXT:GLuint;

	@:native('GL_UNSIGNED_SHORT_4_4_4_4_EXT')
	static var UNSIGNED_SHORT_4_4_4_4_EXT:GLuint;

	@:native('GL_UNSIGNED_SHORT_5_5_5_1_EXT')
	static var UNSIGNED_SHORT_5_5_5_1_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_8_8_8_8_EXT')
	static var UNSIGNED_INT_8_8_8_8_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_10_10_10_2_EXT')
	static var UNSIGNED_INT_10_10_10_2_EXT:GLuint;

	@:native('GL_COLOR_INDEX1_EXT')
	static var COLOR_INDEX1_EXT:GLuint;

	@:native('GL_COLOR_INDEX2_EXT')
	static var COLOR_INDEX2_EXT:GLuint;

	@:native('GL_COLOR_INDEX4_EXT')
	static var COLOR_INDEX4_EXT:GLuint;

	@:native('GL_COLOR_INDEX8_EXT')
	static var COLOR_INDEX8_EXT:GLuint;

	@:native('GL_COLOR_INDEX12_EXT')
	static var COLOR_INDEX12_EXT:GLuint;

	@:native('GL_COLOR_INDEX16_EXT')
	static var COLOR_INDEX16_EXT:GLuint;

	@:native('GL_TEXTURE_INDEX_SIZE_EXT')
	static var TEXTURE_INDEX_SIZE_EXT:GLuint;

	@:native('GL_PIXEL_PACK_BUFFER_EXT')
	static var PIXEL_PACK_BUFFER_EXT:GLuint;

	@:native('GL_PIXEL_UNPACK_BUFFER_EXT')
	static var PIXEL_UNPACK_BUFFER_EXT:GLuint;

	@:native('GL_PIXEL_PACK_BUFFER_BINDING_EXT')
	static var PIXEL_PACK_BUFFER_BINDING_EXT:GLuint;

	@:native('GL_PIXEL_UNPACK_BUFFER_BINDING_EXT')
	static var PIXEL_UNPACK_BUFFER_BINDING_EXT:GLuint;

	@:native('GL_PIXEL_TRANSFORM_2D_EXT')
	static var PIXEL_TRANSFORM_2D_EXT:GLuint;

	@:native('GL_PIXEL_MAG_FILTER_EXT')
	static var PIXEL_MAG_FILTER_EXT:GLuint;

	@:native('GL_PIXEL_MIN_FILTER_EXT')
	static var PIXEL_MIN_FILTER_EXT:GLuint;

	@:native('GL_PIXEL_CUBIC_WEIGHT_EXT')
	static var PIXEL_CUBIC_WEIGHT_EXT:GLuint;

	@:native('GL_CUBIC_EXT')
	static var CUBIC_EXT:GLuint;

	@:native('GL_AVERAGE_EXT')
	static var AVERAGE_EXT:GLuint;

	@:native('GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT')
	static var PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT:GLuint;

	@:native('GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT')
	static var MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT:GLuint;

	@:native('GL_PIXEL_TRANSFORM_2D_MATRIX_EXT')
	static var PIXEL_TRANSFORM_2D_MATRIX_EXT:GLuint;

	@:native('GL_POINT_SIZE_MIN_EXT')
	static var POINT_SIZE_MIN_EXT:GLuint;

	@:native('GL_POINT_SIZE_MAX_EXT')
	static var POINT_SIZE_MAX_EXT:GLuint;

	@:native('GL_POINT_FADE_THRESHOLD_SIZE_EXT')
	static var POINT_FADE_THRESHOLD_SIZE_EXT:GLuint;

	@:native('GL_DISTANCE_ATTENUATION_EXT')
	static var DISTANCE_ATTENUATION_EXT:GLuint;

	@:native('GL_POLYGON_OFFSET_EXT')
	static var POLYGON_OFFSET_EXT:GLuint;

	@:native('GL_POLYGON_OFFSET_FACTOR_EXT')
	static var POLYGON_OFFSET_FACTOR_EXT:GLuint;

	@:native('GL_POLYGON_OFFSET_BIAS_EXT')
	static var POLYGON_OFFSET_BIAS_EXT:GLuint;

	@:native('GL_POLYGON_OFFSET_CLAMP_EXT')
	static var POLYGON_OFFSET_CLAMP_EXT:GLuint;

	@:native('GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT')
	static var QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT:GLuint;

	@:native('GL_FIRST_VERTEX_CONVENTION_EXT')
	static var FIRST_VERTEX_CONVENTION_EXT:GLuint;

	@:native('GL_LAST_VERTEX_CONVENTION_EXT')
	static var LAST_VERTEX_CONVENTION_EXT:GLuint;

	@:native('GL_PROVOKING_VERTEX_EXT')
	static var PROVOKING_VERTEX_EXT:GLuint;

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

	@:native('GL_RESCALE_NORMAL_EXT')
	static var RESCALE_NORMAL_EXT:GLuint;

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

	@:native('GL_COLOR_SUM_EXT')
	static var COLOR_SUM_EXT:GLuint;

	@:native('GL_CURRENT_SECONDARY_COLOR_EXT')
	static var CURRENT_SECONDARY_COLOR_EXT:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_SIZE_EXT')
	static var SECONDARY_COLOR_ARRAY_SIZE_EXT:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_TYPE_EXT')
	static var SECONDARY_COLOR_ARRAY_TYPE_EXT:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT')
	static var SECONDARY_COLOR_ARRAY_STRIDE_EXT:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_POINTER_EXT')
	static var SECONDARY_COLOR_ARRAY_POINTER_EXT:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_EXT')
	static var SECONDARY_COLOR_ARRAY_EXT:GLuint;

	@:native('GL_ACTIVE_PROGRAM_EXT')
	static var ACTIVE_PROGRAM_EXT:GLuint;

	@:native('GL_LIGHT_MODEL_COLOR_CONTROL_EXT')
	static var LIGHT_MODEL_COLOR_CONTROL_EXT:GLuint;

	@:native('GL_SINGLE_COLOR_EXT')
	static var SINGLE_COLOR_EXT:GLuint;

	@:native('GL_SEPARATE_SPECULAR_COLOR_EXT')
	static var SEPARATE_SPECULAR_COLOR_EXT:GLuint;

	@:native('GL_FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT')
	static var FRAGMENT_SHADER_DISCARDS_SAMPLES_EXT:GLuint;

	@:native('GL_MAX_IMAGE_UNITS_EXT')
	static var MAX_IMAGE_UNITS_EXT:GLuint;

	@:native('GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT')
	static var MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT:GLuint;

	@:native('GL_IMAGE_BINDING_NAME_EXT')
	static var IMAGE_BINDING_NAME_EXT:GLuint;

	@:native('GL_IMAGE_BINDING_LEVEL_EXT')
	static var IMAGE_BINDING_LEVEL_EXT:GLuint;

	@:native('GL_IMAGE_BINDING_LAYERED_EXT')
	static var IMAGE_BINDING_LAYERED_EXT:GLuint;

	@:native('GL_IMAGE_BINDING_LAYER_EXT')
	static var IMAGE_BINDING_LAYER_EXT:GLuint;

	@:native('GL_IMAGE_BINDING_ACCESS_EXT')
	static var IMAGE_BINDING_ACCESS_EXT:GLuint;

	@:native('GL_IMAGE_1D_EXT')
	static var IMAGE_1D_EXT:GLuint;

	@:native('GL_IMAGE_2D_EXT')
	static var IMAGE_2D_EXT:GLuint;

	@:native('GL_IMAGE_3D_EXT')
	static var IMAGE_3D_EXT:GLuint;

	@:native('GL_IMAGE_2D_RECT_EXT')
	static var IMAGE_2D_RECT_EXT:GLuint;

	@:native('GL_IMAGE_CUBE_EXT')
	static var IMAGE_CUBE_EXT:GLuint;

	@:native('GL_IMAGE_BUFFER_EXT')
	static var IMAGE_BUFFER_EXT:GLuint;

	@:native('GL_IMAGE_1D_ARRAY_EXT')
	static var IMAGE_1D_ARRAY_EXT:GLuint;

	@:native('GL_IMAGE_2D_ARRAY_EXT')
	static var IMAGE_2D_ARRAY_EXT:GLuint;

	@:native('GL_IMAGE_CUBE_MAP_ARRAY_EXT')
	static var IMAGE_CUBE_MAP_ARRAY_EXT:GLuint;

	@:native('GL_IMAGE_2D_MULTISAMPLE_EXT')
	static var IMAGE_2D_MULTISAMPLE_EXT:GLuint;

	@:native('GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT')
	static var IMAGE_2D_MULTISAMPLE_ARRAY_EXT:GLuint;

	@:native('GL_INT_IMAGE_1D_EXT')
	static var INT_IMAGE_1D_EXT:GLuint;

	@:native('GL_INT_IMAGE_2D_EXT')
	static var INT_IMAGE_2D_EXT:GLuint;

	@:native('GL_INT_IMAGE_3D_EXT')
	static var INT_IMAGE_3D_EXT:GLuint;

	@:native('GL_INT_IMAGE_2D_RECT_EXT')
	static var INT_IMAGE_2D_RECT_EXT:GLuint;

	@:native('GL_INT_IMAGE_CUBE_EXT')
	static var INT_IMAGE_CUBE_EXT:GLuint;

	@:native('GL_INT_IMAGE_BUFFER_EXT')
	static var INT_IMAGE_BUFFER_EXT:GLuint;

	@:native('GL_INT_IMAGE_1D_ARRAY_EXT')
	static var INT_IMAGE_1D_ARRAY_EXT:GLuint;

	@:native('GL_INT_IMAGE_2D_ARRAY_EXT')
	static var INT_IMAGE_2D_ARRAY_EXT:GLuint;

	@:native('GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT')
	static var INT_IMAGE_CUBE_MAP_ARRAY_EXT:GLuint;

	@:native('GL_INT_IMAGE_2D_MULTISAMPLE_EXT')
	static var INT_IMAGE_2D_MULTISAMPLE_EXT:GLuint;

	@:native('GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT')
	static var INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_1D_EXT')
	static var UNSIGNED_INT_IMAGE_1D_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_2D_EXT')
	static var UNSIGNED_INT_IMAGE_2D_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_3D_EXT')
	static var UNSIGNED_INT_IMAGE_3D_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT')
	static var UNSIGNED_INT_IMAGE_2D_RECT_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_CUBE_EXT')
	static var UNSIGNED_INT_IMAGE_CUBE_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_BUFFER_EXT')
	static var UNSIGNED_INT_IMAGE_BUFFER_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT')
	static var UNSIGNED_INT_IMAGE_1D_ARRAY_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT')
	static var UNSIGNED_INT_IMAGE_2D_ARRAY_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT')
	static var UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT')
	static var UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT')
	static var UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT:GLuint;

	@:native('GL_MAX_IMAGE_SAMPLES_EXT')
	static var MAX_IMAGE_SAMPLES_EXT:GLuint;

	@:native('GL_IMAGE_BINDING_FORMAT_EXT')
	static var IMAGE_BINDING_FORMAT_EXT:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT')
	static var VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT:GLuint;

	@:native('GL_ELEMENT_ARRAY_BARRIER_BIT_EXT')
	static var ELEMENT_ARRAY_BARRIER_BIT_EXT:GLuint;

	@:native('GL_UNIFORM_BARRIER_BIT_EXT')
	static var UNIFORM_BARRIER_BIT_EXT:GLuint;

	@:native('GL_TEXTURE_FETCH_BARRIER_BIT_EXT')
	static var TEXTURE_FETCH_BARRIER_BIT_EXT:GLuint;

	@:native('GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT')
	static var SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT:GLuint;

	@:native('GL_COMMAND_BARRIER_BIT_EXT')
	static var COMMAND_BARRIER_BIT_EXT:GLuint;

	@:native('GL_PIXEL_BUFFER_BARRIER_BIT_EXT')
	static var PIXEL_BUFFER_BARRIER_BIT_EXT:GLuint;

	@:native('GL_TEXTURE_UPDATE_BARRIER_BIT_EXT')
	static var TEXTURE_UPDATE_BARRIER_BIT_EXT:GLuint;

	@:native('GL_BUFFER_UPDATE_BARRIER_BIT_EXT')
	static var BUFFER_UPDATE_BARRIER_BIT_EXT:GLuint;

	@:native('GL_FRAMEBUFFER_BARRIER_BIT_EXT')
	static var FRAMEBUFFER_BARRIER_BIT_EXT:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT')
	static var TRANSFORM_FEEDBACK_BARRIER_BIT_EXT:GLuint;

	@:native('GL_ATOMIC_COUNTER_BARRIER_BIT_EXT')
	static var ATOMIC_COUNTER_BARRIER_BIT_EXT:GLuint;

	@:native('GL_ALL_BARRIER_BITS_EXT')
	static var ALL_BARRIER_BITS_EXT:GLuint;

	@:native('GL_SHARED_TEXTURE_PALETTE_EXT')
	static var SHARED_TEXTURE_PALETTE_EXT:GLuint;

	@:native('GL_STENCIL_TAG_BITS_EXT')
	static var STENCIL_TAG_BITS_EXT:GLuint;

	@:native('GL_STENCIL_CLEAR_TAG_VALUE_EXT')
	static var STENCIL_CLEAR_TAG_VALUE_EXT:GLuint;

	@:native('GL_STENCIL_TEST_TWO_SIDE_EXT')
	static var STENCIL_TEST_TWO_SIDE_EXT:GLuint;

	@:native('GL_ACTIVE_STENCIL_FACE_EXT')
	static var ACTIVE_STENCIL_FACE_EXT:GLuint;

	@:native('GL_INCR_WRAP_EXT')
	static var INCR_WRAP_EXT:GLuint;

	@:native('GL_DECR_WRAP_EXT')
	static var DECR_WRAP_EXT:GLuint;

	@:native('GL_ALPHA4_EXT')
	static var ALPHA4_EXT:GLuint;

	@:native('GL_ALPHA8_EXT')
	static var ALPHA8_EXT:GLuint;

	@:native('GL_ALPHA12_EXT')
	static var ALPHA12_EXT:GLuint;

	@:native('GL_ALPHA16_EXT')
	static var ALPHA16_EXT:GLuint;

	@:native('GL_LUMINANCE4_EXT')
	static var LUMINANCE4_EXT:GLuint;

	@:native('GL_LUMINANCE8_EXT')
	static var LUMINANCE8_EXT:GLuint;

	@:native('GL_LUMINANCE12_EXT')
	static var LUMINANCE12_EXT:GLuint;

	@:native('GL_LUMINANCE16_EXT')
	static var LUMINANCE16_EXT:GLuint;

	@:native('GL_LUMINANCE4_ALPHA4_EXT')
	static var LUMINANCE4_ALPHA4_EXT:GLuint;

	@:native('GL_LUMINANCE6_ALPHA2_EXT')
	static var LUMINANCE6_ALPHA2_EXT:GLuint;

	@:native('GL_LUMINANCE8_ALPHA8_EXT')
	static var LUMINANCE8_ALPHA8_EXT:GLuint;

	@:native('GL_LUMINANCE12_ALPHA4_EXT')
	static var LUMINANCE12_ALPHA4_EXT:GLuint;

	@:native('GL_LUMINANCE12_ALPHA12_EXT')
	static var LUMINANCE12_ALPHA12_EXT:GLuint;

	@:native('GL_LUMINANCE16_ALPHA16_EXT')
	static var LUMINANCE16_ALPHA16_EXT:GLuint;

	@:native('GL_INTENSITY_EXT')
	static var INTENSITY_EXT:GLuint;

	@:native('GL_INTENSITY4_EXT')
	static var INTENSITY4_EXT:GLuint;

	@:native('GL_INTENSITY8_EXT')
	static var INTENSITY8_EXT:GLuint;

	@:native('GL_INTENSITY12_EXT')
	static var INTENSITY12_EXT:GLuint;

	@:native('GL_INTENSITY16_EXT')
	static var INTENSITY16_EXT:GLuint;

	@:native('GL_RGB2_EXT')
	static var RGB2_EXT:GLuint;

	@:native('GL_RGB4_EXT')
	static var RGB4_EXT:GLuint;

	@:native('GL_RGB5_EXT')
	static var RGB5_EXT:GLuint;

	@:native('GL_RGB8_EXT')
	static var RGB8_EXT:GLuint;

	@:native('GL_RGB10_EXT')
	static var RGB10_EXT:GLuint;

	@:native('GL_RGB12_EXT')
	static var RGB12_EXT:GLuint;

	@:native('GL_RGB16_EXT')
	static var RGB16_EXT:GLuint;

	@:native('GL_RGBA2_EXT')
	static var RGBA2_EXT:GLuint;

	@:native('GL_RGBA4_EXT')
	static var RGBA4_EXT:GLuint;

	@:native('GL_RGB5_A1_EXT')
	static var RGB5_A1_EXT:GLuint;

	@:native('GL_RGBA8_EXT')
	static var RGBA8_EXT:GLuint;

	@:native('GL_RGB10_A2_EXT')
	static var RGB10_A2_EXT:GLuint;

	@:native('GL_RGBA12_EXT')
	static var RGBA12_EXT:GLuint;

	@:native('GL_RGBA16_EXT')
	static var RGBA16_EXT:GLuint;

	@:native('GL_TEXTURE_RED_SIZE_EXT')
	static var TEXTURE_RED_SIZE_EXT:GLuint;

	@:native('GL_TEXTURE_GREEN_SIZE_EXT')
	static var TEXTURE_GREEN_SIZE_EXT:GLuint;

	@:native('GL_TEXTURE_BLUE_SIZE_EXT')
	static var TEXTURE_BLUE_SIZE_EXT:GLuint;

	@:native('GL_TEXTURE_ALPHA_SIZE_EXT')
	static var TEXTURE_ALPHA_SIZE_EXT:GLuint;

	@:native('GL_TEXTURE_LUMINANCE_SIZE_EXT')
	static var TEXTURE_LUMINANCE_SIZE_EXT:GLuint;

	@:native('GL_TEXTURE_INTENSITY_SIZE_EXT')
	static var TEXTURE_INTENSITY_SIZE_EXT:GLuint;

	@:native('GL_REPLACE_EXT')
	static var REPLACE_EXT:GLuint;

	@:native('GL_PROXY_TEXTURE_1D_EXT')
	static var PROXY_TEXTURE_1D_EXT:GLuint;

	@:native('GL_PROXY_TEXTURE_2D_EXT')
	static var PROXY_TEXTURE_2D_EXT:GLuint;

	@:native('GL_TEXTURE_TOO_LARGE_EXT')
	static var TEXTURE_TOO_LARGE_EXT:GLuint;

	@:native('GL_PACK_SKIP_IMAGES_EXT')
	static var PACK_SKIP_IMAGES_EXT:GLuint;

	@:native('GL_PACK_IMAGE_HEIGHT_EXT')
	static var PACK_IMAGE_HEIGHT_EXT:GLuint;

	@:native('GL_UNPACK_SKIP_IMAGES_EXT')
	static var UNPACK_SKIP_IMAGES_EXT:GLuint;

	@:native('GL_UNPACK_IMAGE_HEIGHT_EXT')
	static var UNPACK_IMAGE_HEIGHT_EXT:GLuint;

	@:native('GL_TEXTURE_3D_EXT')
	static var TEXTURE_3D_EXT:GLuint;

	@:native('GL_PROXY_TEXTURE_3D_EXT')
	static var PROXY_TEXTURE_3D_EXT:GLuint;

	@:native('GL_TEXTURE_DEPTH_EXT')
	static var TEXTURE_DEPTH_EXT:GLuint;

	@:native('GL_TEXTURE_WRAP_R_EXT')
	static var TEXTURE_WRAP_R_EXT:GLuint;

	@:native('GL_MAX_3D_TEXTURE_SIZE_EXT')
	static var MAX_3D_TEXTURE_SIZE_EXT:GLuint;

	@:native('GL_TEXTURE_1D_ARRAY_EXT')
	static var TEXTURE_1D_ARRAY_EXT:GLuint;

	@:native('GL_PROXY_TEXTURE_1D_ARRAY_EXT')
	static var PROXY_TEXTURE_1D_ARRAY_EXT:GLuint;

	@:native('GL_TEXTURE_2D_ARRAY_EXT')
	static var TEXTURE_2D_ARRAY_EXT:GLuint;

	@:native('GL_PROXY_TEXTURE_2D_ARRAY_EXT')
	static var PROXY_TEXTURE_2D_ARRAY_EXT:GLuint;

	@:native('GL_TEXTURE_BINDING_1D_ARRAY_EXT')
	static var TEXTURE_BINDING_1D_ARRAY_EXT:GLuint;

	@:native('GL_TEXTURE_BINDING_2D_ARRAY_EXT')
	static var TEXTURE_BINDING_2D_ARRAY_EXT:GLuint;

	@:native('GL_MAX_ARRAY_TEXTURE_LAYERS_EXT')
	static var MAX_ARRAY_TEXTURE_LAYERS_EXT:GLuint;

	@:native('GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT')
	static var COMPARE_REF_DEPTH_TO_TEXTURE_EXT:GLuint;

	@:native('GL_TEXTURE_BUFFER_EXT')
	static var TEXTURE_BUFFER_EXT:GLuint;

	@:native('GL_MAX_TEXTURE_BUFFER_SIZE_EXT')
	static var MAX_TEXTURE_BUFFER_SIZE_EXT:GLuint;

	@:native('GL_TEXTURE_BINDING_BUFFER_EXT')
	static var TEXTURE_BINDING_BUFFER_EXT:GLuint;

	@:native('GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT')
	static var TEXTURE_BUFFER_DATA_STORE_BINDING_EXT:GLuint;

	@:native('GL_TEXTURE_BUFFER_FORMAT_EXT')
	static var TEXTURE_BUFFER_FORMAT_EXT:GLuint;

	@:native('GL_COMPRESSED_LUMINANCE_LATC1_EXT')
	static var COMPRESSED_LUMINANCE_LATC1_EXT:GLuint;

	@:native('GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT')
	static var COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT:GLuint;

	@:native('GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT')
	static var COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT:GLuint;

	@:native('GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT')
	static var COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT:GLuint;

	@:native('GL_COMPRESSED_RED_RGTC1_EXT')
	static var COMPRESSED_RED_RGTC1_EXT:GLuint;

	@:native('GL_COMPRESSED_SIGNED_RED_RGTC1_EXT')
	static var COMPRESSED_SIGNED_RED_RGTC1_EXT:GLuint;

	@:native('GL_COMPRESSED_RED_GREEN_RGTC2_EXT')
	static var COMPRESSED_RED_GREEN_RGTC2_EXT:GLuint;

	@:native('GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT')
	static var COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT:GLuint;

	@:native('GL_COMPRESSED_RGB_S3TC_DXT1_EXT')
	static var COMPRESSED_RGB_S3TC_DXT1_EXT:GLuint;

	@:native('GL_COMPRESSED_RGBA_S3TC_DXT1_EXT')
	static var COMPRESSED_RGBA_S3TC_DXT1_EXT:GLuint;

	@:native('GL_COMPRESSED_RGBA_S3TC_DXT3_EXT')
	static var COMPRESSED_RGBA_S3TC_DXT3_EXT:GLuint;

	@:native('GL_COMPRESSED_RGBA_S3TC_DXT5_EXT')
	static var COMPRESSED_RGBA_S3TC_DXT5_EXT:GLuint;

	@:native('GL_NORMAL_MAP_EXT')
	static var NORMAL_MAP_EXT:GLuint;

	@:native('GL_REFLECTION_MAP_EXT')
	static var REFLECTION_MAP_EXT:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_EXT')
	static var TEXTURE_CUBE_MAP_EXT:GLuint;

	@:native('GL_TEXTURE_BINDING_CUBE_MAP_EXT')
	static var TEXTURE_BINDING_CUBE_MAP_EXT:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT')
	static var TEXTURE_CUBE_MAP_POSITIVE_X_EXT:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT')
	static var TEXTURE_CUBE_MAP_NEGATIVE_X_EXT:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT')
	static var TEXTURE_CUBE_MAP_POSITIVE_Y_EXT:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT')
	static var TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT')
	static var TEXTURE_CUBE_MAP_POSITIVE_Z_EXT:GLuint;

	@:native('GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT')
	static var TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT:GLuint;

	@:native('GL_PROXY_TEXTURE_CUBE_MAP_EXT')
	static var PROXY_TEXTURE_CUBE_MAP_EXT:GLuint;

	@:native('GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT')
	static var MAX_CUBE_MAP_TEXTURE_SIZE_EXT:GLuint;

	@:native('GL_COMBINE_EXT')
	static var COMBINE_EXT:GLuint;

	@:native('GL_COMBINE_RGB_EXT')
	static var COMBINE_RGB_EXT:GLuint;

	@:native('GL_COMBINE_ALPHA_EXT')
	static var COMBINE_ALPHA_EXT:GLuint;

	@:native('GL_RGB_SCALE_EXT')
	static var RGB_SCALE_EXT:GLuint;

	@:native('GL_ADD_SIGNED_EXT')
	static var ADD_SIGNED_EXT:GLuint;

	@:native('GL_INTERPOLATE_EXT')
	static var INTERPOLATE_EXT:GLuint;

	@:native('GL_CONSTANT_EXT')
	static var CONSTANT_EXT:GLuint;

	@:native('GL_PRIMARY_COLOR_EXT')
	static var PRIMARY_COLOR_EXT:GLuint;

	@:native('GL_PREVIOUS_EXT')
	static var PREVIOUS_EXT:GLuint;

	@:native('GL_SOURCE0_RGB_EXT')
	static var SOURCE0_RGB_EXT:GLuint;

	@:native('GL_SOURCE1_RGB_EXT')
	static var SOURCE1_RGB_EXT:GLuint;

	@:native('GL_SOURCE2_RGB_EXT')
	static var SOURCE2_RGB_EXT:GLuint;

	@:native('GL_SOURCE0_ALPHA_EXT')
	static var SOURCE0_ALPHA_EXT:GLuint;

	@:native('GL_SOURCE1_ALPHA_EXT')
	static var SOURCE1_ALPHA_EXT:GLuint;

	@:native('GL_SOURCE2_ALPHA_EXT')
	static var SOURCE2_ALPHA_EXT:GLuint;

	@:native('GL_OPERAND0_RGB_EXT')
	static var OPERAND0_RGB_EXT:GLuint;

	@:native('GL_OPERAND1_RGB_EXT')
	static var OPERAND1_RGB_EXT:GLuint;

	@:native('GL_OPERAND2_RGB_EXT')
	static var OPERAND2_RGB_EXT:GLuint;

	@:native('GL_OPERAND0_ALPHA_EXT')
	static var OPERAND0_ALPHA_EXT:GLuint;

	@:native('GL_OPERAND1_ALPHA_EXT')
	static var OPERAND1_ALPHA_EXT:GLuint;

	@:native('GL_OPERAND2_ALPHA_EXT')
	static var OPERAND2_ALPHA_EXT:GLuint;

	@:native('GL_DOT3_RGB_EXT')
	static var DOT3_RGB_EXT:GLuint;

	@:native('GL_DOT3_RGBA_EXT')
	static var DOT3_RGBA_EXT:GLuint;

	@:native('GL_TEXTURE_MAX_ANISOTROPY_EXT')
	static var TEXTURE_MAX_ANISOTROPY_EXT:GLuint;

	@:native('GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT')
	static var MAX_TEXTURE_MAX_ANISOTROPY_EXT:GLuint;

	@:native('GL_TEXTURE_REDUCTION_MODE_EXT')
	static var TEXTURE_REDUCTION_MODE_EXT:GLuint;

	@:native('GL_WEIGHTED_AVERAGE_EXT')
	static var WEIGHTED_AVERAGE_EXT:GLuint;

	@:native('GL_RGBA32UI_EXT')
	static var RGBA32UI_EXT:GLuint;

	@:native('GL_RGB32UI_EXT')
	static var RGB32UI_EXT:GLuint;

	@:native('GL_ALPHA32UI_EXT')
	static var ALPHA32UI_EXT:GLuint;

	@:native('GL_INTENSITY32UI_EXT')
	static var INTENSITY32UI_EXT:GLuint;

	@:native('GL_LUMINANCE32UI_EXT')
	static var LUMINANCE32UI_EXT:GLuint;

	@:native('GL_LUMINANCE_ALPHA32UI_EXT')
	static var LUMINANCE_ALPHA32UI_EXT:GLuint;

	@:native('GL_RGBA16UI_EXT')
	static var RGBA16UI_EXT:GLuint;

	@:native('GL_RGB16UI_EXT')
	static var RGB16UI_EXT:GLuint;

	@:native('GL_ALPHA16UI_EXT')
	static var ALPHA16UI_EXT:GLuint;

	@:native('GL_INTENSITY16UI_EXT')
	static var INTENSITY16UI_EXT:GLuint;

	@:native('GL_LUMINANCE16UI_EXT')
	static var LUMINANCE16UI_EXT:GLuint;

	@:native('GL_LUMINANCE_ALPHA16UI_EXT')
	static var LUMINANCE_ALPHA16UI_EXT:GLuint;

	@:native('GL_RGBA8UI_EXT')
	static var RGBA8UI_EXT:GLuint;

	@:native('GL_RGB8UI_EXT')
	static var RGB8UI_EXT:GLuint;

	@:native('GL_ALPHA8UI_EXT')
	static var ALPHA8UI_EXT:GLuint;

	@:native('GL_INTENSITY8UI_EXT')
	static var INTENSITY8UI_EXT:GLuint;

	@:native('GL_LUMINANCE8UI_EXT')
	static var LUMINANCE8UI_EXT:GLuint;

	@:native('GL_LUMINANCE_ALPHA8UI_EXT')
	static var LUMINANCE_ALPHA8UI_EXT:GLuint;

	@:native('GL_RGBA32I_EXT')
	static var RGBA32I_EXT:GLuint;

	@:native('GL_RGB32I_EXT')
	static var RGB32I_EXT:GLuint;

	@:native('GL_ALPHA32I_EXT')
	static var ALPHA32I_EXT:GLuint;

	@:native('GL_INTENSITY32I_EXT')
	static var INTENSITY32I_EXT:GLuint;

	@:native('GL_LUMINANCE32I_EXT')
	static var LUMINANCE32I_EXT:GLuint;

	@:native('GL_LUMINANCE_ALPHA32I_EXT')
	static var LUMINANCE_ALPHA32I_EXT:GLuint;

	@:native('GL_RGBA16I_EXT')
	static var RGBA16I_EXT:GLuint;

	@:native('GL_RGB16I_EXT')
	static var RGB16I_EXT:GLuint;

	@:native('GL_ALPHA16I_EXT')
	static var ALPHA16I_EXT:GLuint;

	@:native('GL_INTENSITY16I_EXT')
	static var INTENSITY16I_EXT:GLuint;

	@:native('GL_LUMINANCE16I_EXT')
	static var LUMINANCE16I_EXT:GLuint;

	@:native('GL_LUMINANCE_ALPHA16I_EXT')
	static var LUMINANCE_ALPHA16I_EXT:GLuint;

	@:native('GL_RGBA8I_EXT')
	static var RGBA8I_EXT:GLuint;

	@:native('GL_RGB8I_EXT')
	static var RGB8I_EXT:GLuint;

	@:native('GL_ALPHA8I_EXT')
	static var ALPHA8I_EXT:GLuint;

	@:native('GL_INTENSITY8I_EXT')
	static var INTENSITY8I_EXT:GLuint;

	@:native('GL_LUMINANCE8I_EXT')
	static var LUMINANCE8I_EXT:GLuint;

	@:native('GL_LUMINANCE_ALPHA8I_EXT')
	static var LUMINANCE_ALPHA8I_EXT:GLuint;

	@:native('GL_RED_INTEGER_EXT')
	static var RED_INTEGER_EXT:GLuint;

	@:native('GL_GREEN_INTEGER_EXT')
	static var GREEN_INTEGER_EXT:GLuint;

	@:native('GL_BLUE_INTEGER_EXT')
	static var BLUE_INTEGER_EXT:GLuint;

	@:native('GL_ALPHA_INTEGER_EXT')
	static var ALPHA_INTEGER_EXT:GLuint;

	@:native('GL_RGB_INTEGER_EXT')
	static var RGB_INTEGER_EXT:GLuint;

	@:native('GL_RGBA_INTEGER_EXT')
	static var RGBA_INTEGER_EXT:GLuint;

	@:native('GL_BGR_INTEGER_EXT')
	static var BGR_INTEGER_EXT:GLuint;

	@:native('GL_BGRA_INTEGER_EXT')
	static var BGRA_INTEGER_EXT:GLuint;

	@:native('GL_LUMINANCE_INTEGER_EXT')
	static var LUMINANCE_INTEGER_EXT:GLuint;

	@:native('GL_LUMINANCE_ALPHA_INTEGER_EXT')
	static var LUMINANCE_ALPHA_INTEGER_EXT:GLuint;

	@:native('GL_RGBA_INTEGER_MODE_EXT')
	static var RGBA_INTEGER_MODE_EXT:GLuint;

	@:native('GL_MAX_TEXTURE_LOD_BIAS_EXT')
	static var MAX_TEXTURE_LOD_BIAS_EXT:GLuint;

	@:native('GL_TEXTURE_FILTER_CONTROL_EXT')
	static var TEXTURE_FILTER_CONTROL_EXT:GLuint;

	@:native('GL_TEXTURE_LOD_BIAS_EXT')
	static var TEXTURE_LOD_BIAS_EXT:GLuint;

	@:native('GL_MIRROR_CLAMP_EXT')
	static var MIRROR_CLAMP_EXT:GLuint;

	@:native('GL_MIRROR_CLAMP_TO_EDGE_EXT')
	static var MIRROR_CLAMP_TO_EDGE_EXT:GLuint;

	@:native('GL_MIRROR_CLAMP_TO_BORDER_EXT')
	static var MIRROR_CLAMP_TO_BORDER_EXT:GLuint;

	@:native('GL_TEXTURE_PRIORITY_EXT')
	static var TEXTURE_PRIORITY_EXT:GLuint;

	@:native('GL_TEXTURE_RESIDENT_EXT')
	static var TEXTURE_RESIDENT_EXT:GLuint;

	@:native('GL_TEXTURE_1D_BINDING_EXT')
	static var TEXTURE_1D_BINDING_EXT:GLuint;

	@:native('GL_TEXTURE_2D_BINDING_EXT')
	static var TEXTURE_2D_BINDING_EXT:GLuint;

	@:native('GL_TEXTURE_3D_BINDING_EXT')
	static var TEXTURE_3D_BINDING_EXT:GLuint;

	@:native('GL_PERTURB_EXT')
	static var PERTURB_EXT:GLuint;

	@:native('GL_TEXTURE_NORMAL_EXT')
	static var TEXTURE_NORMAL_EXT:GLuint;

	@:native('GL_SRGB_EXT')
	static var SRGB_EXT:GLuint;

	@:native('GL_SRGB8_EXT')
	static var SRGB8_EXT:GLuint;

	@:native('GL_SRGB_ALPHA_EXT')
	static var SRGB_ALPHA_EXT:GLuint;

	@:native('GL_SRGB8_ALPHA8_EXT')
	static var SRGB8_ALPHA8_EXT:GLuint;

	@:native('GL_SLUMINANCE_ALPHA_EXT')
	static var SLUMINANCE_ALPHA_EXT:GLuint;

	@:native('GL_SLUMINANCE8_ALPHA8_EXT')
	static var SLUMINANCE8_ALPHA8_EXT:GLuint;

	@:native('GL_SLUMINANCE_EXT')
	static var SLUMINANCE_EXT:GLuint;

	@:native('GL_SLUMINANCE8_EXT')
	static var SLUMINANCE8_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_EXT')
	static var COMPRESSED_SRGB_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_EXT')
	static var COMPRESSED_SRGB_ALPHA_EXT:GLuint;

	@:native('GL_COMPRESSED_SLUMINANCE_EXT')
	static var COMPRESSED_SLUMINANCE_EXT:GLuint;

	@:native('GL_COMPRESSED_SLUMINANCE_ALPHA_EXT')
	static var COMPRESSED_SLUMINANCE_ALPHA_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_S3TC_DXT1_EXT')
	static var COMPRESSED_SRGB_S3TC_DXT1_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT')
	static var COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT')
	static var COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT:GLuint;

	@:native('GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT')
	static var COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT:GLuint;

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

	@:native('GL_RGB9_E5_EXT')
	static var RGB9_E5_EXT:GLuint;

	@:native('GL_UNSIGNED_INT_5_9_9_9_REV_EXT')
	static var UNSIGNED_INT_5_9_9_9_REV_EXT:GLuint;

	@:native('GL_TEXTURE_SHARED_SIZE_EXT')
	static var TEXTURE_SHARED_SIZE_EXT:GLuint;

	@:native('GL_ALPHA_SNORM')
	static var ALPHA_SNORM:GLuint;

	@:native('GL_LUMINANCE_SNORM')
	static var LUMINANCE_SNORM:GLuint;

	@:native('GL_LUMINANCE_ALPHA_SNORM')
	static var LUMINANCE_ALPHA_SNORM:GLuint;

	@:native('GL_INTENSITY_SNORM')
	static var INTENSITY_SNORM:GLuint;

	@:native('GL_ALPHA8_SNORM')
	static var ALPHA8_SNORM:GLuint;

	@:native('GL_LUMINANCE8_SNORM')
	static var LUMINANCE8_SNORM:GLuint;

	@:native('GL_LUMINANCE8_ALPHA8_SNORM')
	static var LUMINANCE8_ALPHA8_SNORM:GLuint;

	@:native('GL_INTENSITY8_SNORM')
	static var INTENSITY8_SNORM:GLuint;

	@:native('GL_ALPHA16_SNORM')
	static var ALPHA16_SNORM:GLuint;

	@:native('GL_LUMINANCE16_SNORM')
	static var LUMINANCE16_SNORM:GLuint;

	@:native('GL_LUMINANCE16_ALPHA16_SNORM')
	static var LUMINANCE16_ALPHA16_SNORM:GLuint;

	@:native('GL_INTENSITY16_SNORM')
	static var INTENSITY16_SNORM:GLuint;

	@:native('GL_RED_SNORM')
	static var RED_SNORM:GLuint;

	@:native('GL_RG_SNORM')
	static var RG_SNORM:GLuint;

	@:native('GL_RGB_SNORM')
	static var RGB_SNORM:GLuint;

	@:native('GL_RGBA_SNORM')
	static var RGBA_SNORM:GLuint;

	@:native('GL_TEXTURE_IMMUTABLE_FORMAT_EXT')
	static var TEXTURE_IMMUTABLE_FORMAT_EXT:GLuint;

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

	@:native('GL_RGBA16F_EXT')
	static var RGBA16F_EXT:GLuint;

	@:native('GL_RGB16F_EXT')
	static var RGB16F_EXT:GLuint;

	@:native('GL_ALPHA16F_EXT')
	static var ALPHA16F_EXT:GLuint;

	@:native('GL_LUMINANCE16F_EXT')
	static var LUMINANCE16F_EXT:GLuint;

	@:native('GL_LUMINANCE_ALPHA16F_EXT')
	static var LUMINANCE_ALPHA16F_EXT:GLuint;

	@:native('GL_BGRA8_EXT')
	static var BGRA8_EXT:GLuint;

	@:native('GL_R8_EXT')
	static var R8_EXT:GLuint;

	@:native('GL_RG8_EXT')
	static var RG8_EXT:GLuint;

	@:native('GL_R32F_EXT')
	static var R32F_EXT:GLuint;

	@:native('GL_RG32F_EXT')
	static var RG32F_EXT:GLuint;

	@:native('GL_R16F_EXT')
	static var R16F_EXT:GLuint;

	@:native('GL_RG16F_EXT')
	static var RG16F_EXT:GLuint;

	@:native('GL_TEXTURE_SWIZZLE_R_EXT')
	static var TEXTURE_SWIZZLE_R_EXT:GLuint;

	@:native('GL_TEXTURE_SWIZZLE_G_EXT')
	static var TEXTURE_SWIZZLE_G_EXT:GLuint;

	@:native('GL_TEXTURE_SWIZZLE_B_EXT')
	static var TEXTURE_SWIZZLE_B_EXT:GLuint;

	@:native('GL_TEXTURE_SWIZZLE_A_EXT')
	static var TEXTURE_SWIZZLE_A_EXT:GLuint;

	@:native('GL_TEXTURE_SWIZZLE_RGBA_EXT')
	static var TEXTURE_SWIZZLE_RGBA_EXT:GLuint;

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

	@:native('GL_TIME_ELAPSED_EXT')
	static var TIME_ELAPSED_EXT:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_EXT')
	static var TRANSFORM_FEEDBACK_BUFFER_EXT:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT')
	static var TRANSFORM_FEEDBACK_BUFFER_START_EXT:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT')
	static var TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT')
	static var TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT:GLuint;

	@:native('GL_INTERLEAVED_ATTRIBS_EXT')
	static var INTERLEAVED_ATTRIBS_EXT:GLuint;

	@:native('GL_SEPARATE_ATTRIBS_EXT')
	static var SEPARATE_ATTRIBS_EXT:GLuint;

	@:native('GL_PRIMITIVES_GENERATED_EXT')
	static var PRIMITIVES_GENERATED_EXT:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT')
	static var TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT:GLuint;

	@:native('GL_RASTERIZER_DISCARD_EXT')
	static var RASTERIZER_DISCARD_EXT:GLuint;

	@:native('GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT')
	static var MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT:GLuint;

	@:native('GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT')
	static var MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT:GLuint;

	@:native('GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT')
	static var MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_VARYINGS_EXT')
	static var TRANSFORM_FEEDBACK_VARYINGS_EXT:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT')
	static var TRANSFORM_FEEDBACK_BUFFER_MODE_EXT:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT')
	static var TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT:GLuint;

	@:native('GL_VERTEX_ARRAY_EXT')
	static var VERTEX_ARRAY_EXT:GLuint;

	@:native('GL_NORMAL_ARRAY_EXT')
	static var NORMAL_ARRAY_EXT:GLuint;

	@:native('GL_COLOR_ARRAY_EXT')
	static var COLOR_ARRAY_EXT:GLuint;

	@:native('GL_INDEX_ARRAY_EXT')
	static var INDEX_ARRAY_EXT:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_EXT')
	static var TEXTURE_COORD_ARRAY_EXT:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY_EXT')
	static var EDGE_FLAG_ARRAY_EXT:GLuint;

	@:native('GL_VERTEX_ARRAY_SIZE_EXT')
	static var VERTEX_ARRAY_SIZE_EXT:GLuint;

	@:native('GL_VERTEX_ARRAY_TYPE_EXT')
	static var VERTEX_ARRAY_TYPE_EXT:GLuint;

	@:native('GL_VERTEX_ARRAY_STRIDE_EXT')
	static var VERTEX_ARRAY_STRIDE_EXT:GLuint;

	@:native('GL_VERTEX_ARRAY_COUNT_EXT')
	static var VERTEX_ARRAY_COUNT_EXT:GLuint;

	@:native('GL_NORMAL_ARRAY_TYPE_EXT')
	static var NORMAL_ARRAY_TYPE_EXT:GLuint;

	@:native('GL_NORMAL_ARRAY_STRIDE_EXT')
	static var NORMAL_ARRAY_STRIDE_EXT:GLuint;

	@:native('GL_NORMAL_ARRAY_COUNT_EXT')
	static var NORMAL_ARRAY_COUNT_EXT:GLuint;

	@:native('GL_COLOR_ARRAY_SIZE_EXT')
	static var COLOR_ARRAY_SIZE_EXT:GLuint;

	@:native('GL_COLOR_ARRAY_TYPE_EXT')
	static var COLOR_ARRAY_TYPE_EXT:GLuint;

	@:native('GL_COLOR_ARRAY_STRIDE_EXT')
	static var COLOR_ARRAY_STRIDE_EXT:GLuint;

	@:native('GL_COLOR_ARRAY_COUNT_EXT')
	static var COLOR_ARRAY_COUNT_EXT:GLuint;

	@:native('GL_INDEX_ARRAY_TYPE_EXT')
	static var INDEX_ARRAY_TYPE_EXT:GLuint;

	@:native('GL_INDEX_ARRAY_STRIDE_EXT')
	static var INDEX_ARRAY_STRIDE_EXT:GLuint;

	@:native('GL_INDEX_ARRAY_COUNT_EXT')
	static var INDEX_ARRAY_COUNT_EXT:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_SIZE_EXT')
	static var TEXTURE_COORD_ARRAY_SIZE_EXT:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_TYPE_EXT')
	static var TEXTURE_COORD_ARRAY_TYPE_EXT:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_STRIDE_EXT')
	static var TEXTURE_COORD_ARRAY_STRIDE_EXT:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_COUNT_EXT')
	static var TEXTURE_COORD_ARRAY_COUNT_EXT:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY_STRIDE_EXT')
	static var EDGE_FLAG_ARRAY_STRIDE_EXT:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY_COUNT_EXT')
	static var EDGE_FLAG_ARRAY_COUNT_EXT:GLuint;

	@:native('GL_VERTEX_ARRAY_POINTER_EXT')
	static var VERTEX_ARRAY_POINTER_EXT:GLuint;

	@:native('GL_NORMAL_ARRAY_POINTER_EXT')
	static var NORMAL_ARRAY_POINTER_EXT:GLuint;

	@:native('GL_COLOR_ARRAY_POINTER_EXT')
	static var COLOR_ARRAY_POINTER_EXT:GLuint;

	@:native('GL_INDEX_ARRAY_POINTER_EXT')
	static var INDEX_ARRAY_POINTER_EXT:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_POINTER_EXT')
	static var TEXTURE_COORD_ARRAY_POINTER_EXT:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY_POINTER_EXT')
	static var EDGE_FLAG_ARRAY_POINTER_EXT:GLuint;

	@:native('GL_DOUBLE_VEC2_EXT')
	static var DOUBLE_VEC2_EXT:GLuint;

	@:native('GL_DOUBLE_VEC3_EXT')
	static var DOUBLE_VEC3_EXT:GLuint;

	@:native('GL_DOUBLE_VEC4_EXT')
	static var DOUBLE_VEC4_EXT:GLuint;

	@:native('GL_DOUBLE_MAT2_EXT')
	static var DOUBLE_MAT2_EXT:GLuint;

	@:native('GL_DOUBLE_MAT3_EXT')
	static var DOUBLE_MAT3_EXT:GLuint;

	@:native('GL_DOUBLE_MAT4_EXT')
	static var DOUBLE_MAT4_EXT:GLuint;

	@:native('GL_DOUBLE_MAT2x3_EXT')
	static var DOUBLE_MAT2x3_EXT:GLuint;

	@:native('GL_DOUBLE_MAT2x4_EXT')
	static var DOUBLE_MAT2x4_EXT:GLuint;

	@:native('GL_DOUBLE_MAT3x2_EXT')
	static var DOUBLE_MAT3x2_EXT:GLuint;

	@:native('GL_DOUBLE_MAT3x4_EXT')
	static var DOUBLE_MAT3x4_EXT:GLuint;

	@:native('GL_DOUBLE_MAT4x2_EXT')
	static var DOUBLE_MAT4x2_EXT:GLuint;

	@:native('GL_DOUBLE_MAT4x3_EXT')
	static var DOUBLE_MAT4x3_EXT:GLuint;

	@:native('GL_VERTEX_SHADER_EXT')
	static var VERTEX_SHADER_EXT:GLuint;

	@:native('GL_VERTEX_SHADER_BINDING_EXT')
	static var VERTEX_SHADER_BINDING_EXT:GLuint;

	@:native('GL_OP_INDEX_EXT')
	static var OP_INDEX_EXT:GLuint;

	@:native('GL_OP_NEGATE_EXT')
	static var OP_NEGATE_EXT:GLuint;

	@:native('GL_OP_DOT3_EXT')
	static var OP_DOT3_EXT:GLuint;

	@:native('GL_OP_DOT4_EXT')
	static var OP_DOT4_EXT:GLuint;

	@:native('GL_OP_MUL_EXT')
	static var OP_MUL_EXT:GLuint;

	@:native('GL_OP_ADD_EXT')
	static var OP_ADD_EXT:GLuint;

	@:native('GL_OP_MADD_EXT')
	static var OP_MADD_EXT:GLuint;

	@:native('GL_OP_FRAC_EXT')
	static var OP_FRAC_EXT:GLuint;

	@:native('GL_OP_MAX_EXT')
	static var OP_MAX_EXT:GLuint;

	@:native('GL_OP_MIN_EXT')
	static var OP_MIN_EXT:GLuint;

	@:native('GL_OP_SET_GE_EXT')
	static var OP_SET_GE_EXT:GLuint;

	@:native('GL_OP_SET_LT_EXT')
	static var OP_SET_LT_EXT:GLuint;

	@:native('GL_OP_CLAMP_EXT')
	static var OP_CLAMP_EXT:GLuint;

	@:native('GL_OP_FLOOR_EXT')
	static var OP_FLOOR_EXT:GLuint;

	@:native('GL_OP_ROUND_EXT')
	static var OP_ROUND_EXT:GLuint;

	@:native('GL_OP_EXP_BASE_2_EXT')
	static var OP_EXP_BASE_2_EXT:GLuint;

	@:native('GL_OP_LOG_BASE_2_EXT')
	static var OP_LOG_BASE_2_EXT:GLuint;

	@:native('GL_OP_POWER_EXT')
	static var OP_POWER_EXT:GLuint;

	@:native('GL_OP_RECIP_EXT')
	static var OP_RECIP_EXT:GLuint;

	@:native('GL_OP_RECIP_SQRT_EXT')
	static var OP_RECIP_SQRT_EXT:GLuint;

	@:native('GL_OP_SUB_EXT')
	static var OP_SUB_EXT:GLuint;

	@:native('GL_OP_CROSS_PRODUCT_EXT')
	static var OP_CROSS_PRODUCT_EXT:GLuint;

	@:native('GL_OP_MULTIPLY_MATRIX_EXT')
	static var OP_MULTIPLY_MATRIX_EXT:GLuint;

	@:native('GL_OP_MOV_EXT')
	static var OP_MOV_EXT:GLuint;

	@:native('GL_OUTPUT_VERTEX_EXT')
	static var OUTPUT_VERTEX_EXT:GLuint;

	@:native('GL_OUTPUT_COLOR0_EXT')
	static var OUTPUT_COLOR0_EXT:GLuint;

	@:native('GL_OUTPUT_COLOR1_EXT')
	static var OUTPUT_COLOR1_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD0_EXT')
	static var OUTPUT_TEXTURE_COORD0_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD1_EXT')
	static var OUTPUT_TEXTURE_COORD1_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD2_EXT')
	static var OUTPUT_TEXTURE_COORD2_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD3_EXT')
	static var OUTPUT_TEXTURE_COORD3_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD4_EXT')
	static var OUTPUT_TEXTURE_COORD4_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD5_EXT')
	static var OUTPUT_TEXTURE_COORD5_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD6_EXT')
	static var OUTPUT_TEXTURE_COORD6_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD7_EXT')
	static var OUTPUT_TEXTURE_COORD7_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD8_EXT')
	static var OUTPUT_TEXTURE_COORD8_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD9_EXT')
	static var OUTPUT_TEXTURE_COORD9_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD10_EXT')
	static var OUTPUT_TEXTURE_COORD10_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD11_EXT')
	static var OUTPUT_TEXTURE_COORD11_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD12_EXT')
	static var OUTPUT_TEXTURE_COORD12_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD13_EXT')
	static var OUTPUT_TEXTURE_COORD13_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD14_EXT')
	static var OUTPUT_TEXTURE_COORD14_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD15_EXT')
	static var OUTPUT_TEXTURE_COORD15_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD16_EXT')
	static var OUTPUT_TEXTURE_COORD16_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD17_EXT')
	static var OUTPUT_TEXTURE_COORD17_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD18_EXT')
	static var OUTPUT_TEXTURE_COORD18_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD19_EXT')
	static var OUTPUT_TEXTURE_COORD19_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD20_EXT')
	static var OUTPUT_TEXTURE_COORD20_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD21_EXT')
	static var OUTPUT_TEXTURE_COORD21_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD22_EXT')
	static var OUTPUT_TEXTURE_COORD22_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD23_EXT')
	static var OUTPUT_TEXTURE_COORD23_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD24_EXT')
	static var OUTPUT_TEXTURE_COORD24_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD25_EXT')
	static var OUTPUT_TEXTURE_COORD25_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD26_EXT')
	static var OUTPUT_TEXTURE_COORD26_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD27_EXT')
	static var OUTPUT_TEXTURE_COORD27_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD28_EXT')
	static var OUTPUT_TEXTURE_COORD28_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD29_EXT')
	static var OUTPUT_TEXTURE_COORD29_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD30_EXT')
	static var OUTPUT_TEXTURE_COORD30_EXT:GLuint;

	@:native('GL_OUTPUT_TEXTURE_COORD31_EXT')
	static var OUTPUT_TEXTURE_COORD31_EXT:GLuint;

	@:native('GL_OUTPUT_FOG_EXT')
	static var OUTPUT_FOG_EXT:GLuint;

	@:native('GL_SCALAR_EXT')
	static var SCALAR_EXT:GLuint;

	@:native('GL_VECTOR_EXT')
	static var VECTOR_EXT:GLuint;

	@:native('GL_MATRIX_EXT')
	static var MATRIX_EXT:GLuint;

	@:native('GL_VARIANT_EXT')
	static var VARIANT_EXT:GLuint;

	@:native('GL_INVARIANT_EXT')
	static var INVARIANT_EXT:GLuint;

	@:native('GL_LOCAL_CONSTANT_EXT')
	static var LOCAL_CONSTANT_EXT:GLuint;

	@:native('GL_LOCAL_EXT')
	static var LOCAL_EXT:GLuint;

	@:native('GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT')
	static var MAX_VERTEX_SHADER_INSTRUCTIONS_EXT:GLuint;

	@:native('GL_MAX_VERTEX_SHADER_VARIANTS_EXT')
	static var MAX_VERTEX_SHADER_VARIANTS_EXT:GLuint;

	@:native('GL_MAX_VERTEX_SHADER_INVARIANTS_EXT')
	static var MAX_VERTEX_SHADER_INVARIANTS_EXT:GLuint;

	@:native('GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT')
	static var MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT:GLuint;

	@:native('GL_MAX_VERTEX_SHADER_LOCALS_EXT')
	static var MAX_VERTEX_SHADER_LOCALS_EXT:GLuint;

	@:native('GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT')
	static var MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT:GLuint;

	@:native('GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT')
	static var MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT:GLuint;

	@:native('GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT')
	static var MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT:GLuint;

	@:native('GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT')
	static var MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT:GLuint;

	@:native('GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT')
	static var MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT:GLuint;

	@:native('GL_VERTEX_SHADER_INSTRUCTIONS_EXT')
	static var VERTEX_SHADER_INSTRUCTIONS_EXT:GLuint;

	@:native('GL_VERTEX_SHADER_VARIANTS_EXT')
	static var VERTEX_SHADER_VARIANTS_EXT:GLuint;

	@:native('GL_VERTEX_SHADER_INVARIANTS_EXT')
	static var VERTEX_SHADER_INVARIANTS_EXT:GLuint;

	@:native('GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT')
	static var VERTEX_SHADER_LOCAL_CONSTANTS_EXT:GLuint;

	@:native('GL_VERTEX_SHADER_LOCALS_EXT')
	static var VERTEX_SHADER_LOCALS_EXT:GLuint;

	@:native('GL_VERTEX_SHADER_OPTIMIZED_EXT')
	static var VERTEX_SHADER_OPTIMIZED_EXT:GLuint;

	@:native('GL_X_EXT')
	static var X_EXT:GLuint;

	@:native('GL_Y_EXT')
	static var Y_EXT:GLuint;

	@:native('GL_Z_EXT')
	static var Z_EXT:GLuint;

	@:native('GL_W_EXT')
	static var W_EXT:GLuint;

	@:native('GL_NEGATIVE_X_EXT')
	static var NEGATIVE_X_EXT:GLuint;

	@:native('GL_NEGATIVE_Y_EXT')
	static var NEGATIVE_Y_EXT:GLuint;

	@:native('GL_NEGATIVE_Z_EXT')
	static var NEGATIVE_Z_EXT:GLuint;

	@:native('GL_NEGATIVE_W_EXT')
	static var NEGATIVE_W_EXT:GLuint;

	@:native('GL_ZERO_EXT')
	static var ZERO_EXT:GLuint;

	@:native('GL_ONE_EXT')
	static var ONE_EXT:GLuint;

	@:native('GL_NEGATIVE_ONE_EXT')
	static var NEGATIVE_ONE_EXT:GLuint;

	@:native('GL_NORMALIZED_RANGE_EXT')
	static var NORMALIZED_RANGE_EXT:GLuint;

	@:native('GL_FULL_RANGE_EXT')
	static var FULL_RANGE_EXT:GLuint;

	@:native('GL_CURRENT_VERTEX_EXT')
	static var CURRENT_VERTEX_EXT:GLuint;

	@:native('GL_MVP_MATRIX_EXT')
	static var MVP_MATRIX_EXT:GLuint;

	@:native('GL_VARIANT_VALUE_EXT')
	static var VARIANT_VALUE_EXT:GLuint;

	@:native('GL_VARIANT_DATATYPE_EXT')
	static var VARIANT_DATATYPE_EXT:GLuint;

	@:native('GL_VARIANT_ARRAY_STRIDE_EXT')
	static var VARIANT_ARRAY_STRIDE_EXT:GLuint;

	@:native('GL_VARIANT_ARRAY_TYPE_EXT')
	static var VARIANT_ARRAY_TYPE_EXT:GLuint;

	@:native('GL_VARIANT_ARRAY_EXT')
	static var VARIANT_ARRAY_EXT:GLuint;

	@:native('GL_VARIANT_ARRAY_POINTER_EXT')
	static var VARIANT_ARRAY_POINTER_EXT:GLuint;

	@:native('GL_INVARIANT_VALUE_EXT')
	static var INVARIANT_VALUE_EXT:GLuint;

	@:native('GL_INVARIANT_DATATYPE_EXT')
	static var INVARIANT_DATATYPE_EXT:GLuint;

	@:native('GL_LOCAL_CONSTANT_VALUE_EXT')
	static var LOCAL_CONSTANT_VALUE_EXT:GLuint;

	@:native('GL_LOCAL_CONSTANT_DATATYPE_EXT')
	static var LOCAL_CONSTANT_DATATYPE_EXT:GLuint;

	@:native('GL_MODELVIEW0_STACK_DEPTH_EXT')
	static var MODELVIEW0_STACK_DEPTH_EXT:GLuint;

	@:native('GL_MODELVIEW1_STACK_DEPTH_EXT')
	static var MODELVIEW1_STACK_DEPTH_EXT:GLuint;

	@:native('GL_MODELVIEW0_MATRIX_EXT')
	static var MODELVIEW0_MATRIX_EXT:GLuint;

	@:native('GL_MODELVIEW1_MATRIX_EXT')
	static var MODELVIEW1_MATRIX_EXT:GLuint;

	@:native('GL_VERTEX_WEIGHTING_EXT')
	static var VERTEX_WEIGHTING_EXT:GLuint;

	@:native('GL_MODELVIEW0_EXT')
	static var MODELVIEW0_EXT:GLuint;

	@:native('GL_MODELVIEW1_EXT')
	static var MODELVIEW1_EXT:GLuint;

	@:native('GL_CURRENT_VERTEX_WEIGHT_EXT')
	static var CURRENT_VERTEX_WEIGHT_EXT:GLuint;

	@:native('GL_VERTEX_WEIGHT_ARRAY_EXT')
	static var VERTEX_WEIGHT_ARRAY_EXT:GLuint;

	@:native('GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT')
	static var VERTEX_WEIGHT_ARRAY_SIZE_EXT:GLuint;

	@:native('GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT')
	static var VERTEX_WEIGHT_ARRAY_TYPE_EXT:GLuint;

	@:native('GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT')
	static var VERTEX_WEIGHT_ARRAY_STRIDE_EXT:GLuint;

	@:native('GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT')
	static var VERTEX_WEIGHT_ARRAY_POINTER_EXT:GLuint;

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

	@:native('GL_SYNC_X11_FENCE_EXT')
	static var SYNC_X11_FENCE_EXT:GLuint;

	@:native('GL_IGNORE_BORDER_HP')
	static var IGNORE_BORDER_HP:GLuint;

	@:native('GL_CONSTANT_BORDER_HP')
	static var CONSTANT_BORDER_HP:GLuint;

	@:native('GL_REPLICATE_BORDER_HP')
	static var REPLICATE_BORDER_HP:GLuint;

	@:native('GL_CONVOLUTION_BORDER_COLOR_HP')
	static var CONVOLUTION_BORDER_COLOR_HP:GLuint;

	@:native('GL_IMAGE_SCALE_X_HP')
	static var IMAGE_SCALE_X_HP:GLuint;

	@:native('GL_IMAGE_SCALE_Y_HP')
	static var IMAGE_SCALE_Y_HP:GLuint;

	@:native('GL_IMAGE_TRANSLATE_X_HP')
	static var IMAGE_TRANSLATE_X_HP:GLuint;

	@:native('GL_IMAGE_TRANSLATE_Y_HP')
	static var IMAGE_TRANSLATE_Y_HP:GLuint;

	@:native('GL_IMAGE_ROTATE_ANGLE_HP')
	static var IMAGE_ROTATE_ANGLE_HP:GLuint;

	@:native('GL_IMAGE_ROTATE_ORIGIN_X_HP')
	static var IMAGE_ROTATE_ORIGIN_X_HP:GLuint;

	@:native('GL_IMAGE_ROTATE_ORIGIN_Y_HP')
	static var IMAGE_ROTATE_ORIGIN_Y_HP:GLuint;

	@:native('GL_IMAGE_MAG_FILTER_HP')
	static var IMAGE_MAG_FILTER_HP:GLuint;

	@:native('GL_IMAGE_MIN_FILTER_HP')
	static var IMAGE_MIN_FILTER_HP:GLuint;

	@:native('GL_IMAGE_CUBIC_WEIGHT_HP')
	static var IMAGE_CUBIC_WEIGHT_HP:GLuint;

	@:native('GL_CUBIC_HP')
	static var CUBIC_HP:GLuint;

	@:native('GL_AVERAGE_HP')
	static var AVERAGE_HP:GLuint;

	@:native('GL_IMAGE_TRANSFORM_2D_HP')
	static var IMAGE_TRANSFORM_2D_HP:GLuint;

	@:native('GL_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP')
	static var POST_IMAGE_TRANSFORM_COLOR_TABLE_HP:GLuint;

	@:native('GL_PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP')
	static var PROXY_POST_IMAGE_TRANSFORM_COLOR_TABLE_HP:GLuint;

	@:native('GL_OCCLUSION_TEST_HP')
	static var OCCLUSION_TEST_HP:GLuint;

	@:native('GL_OCCLUSION_TEST_RESULT_HP')
	static var OCCLUSION_TEST_RESULT_HP:GLuint;

	@:native('GL_TEXTURE_LIGHTING_MODE_HP')
	static var TEXTURE_LIGHTING_MODE_HP:GLuint;

	@:native('GL_TEXTURE_POST_SPECULAR_HP')
	static var TEXTURE_POST_SPECULAR_HP:GLuint;

	@:native('GL_TEXTURE_PRE_SPECULAR_HP')
	static var TEXTURE_PRE_SPECULAR_HP:GLuint;

	@:native('GL_CULL_VERTEX_IBM')
	static var CULL_VERTEX_IBM:GLuint;

	@:native('GL_RASTER_POSITION_UNCLIPPED_IBM')
	static var RASTER_POSITION_UNCLIPPED_IBM:GLuint;

	@:native('GL_ALL_STATIC_DATA_IBM')
	static var ALL_STATIC_DATA_IBM:GLuint;

	@:native('GL_STATIC_VERTEX_ARRAY_IBM')
	static var STATIC_VERTEX_ARRAY_IBM:GLuint;

	@:native('GL_MIRRORED_REPEAT_IBM')
	static var MIRRORED_REPEAT_IBM:GLuint;

	@:native('GL_VERTEX_ARRAY_LIST_IBM')
	static var VERTEX_ARRAY_LIST_IBM:GLuint;

	@:native('GL_NORMAL_ARRAY_LIST_IBM')
	static var NORMAL_ARRAY_LIST_IBM:GLuint;

	@:native('GL_COLOR_ARRAY_LIST_IBM')
	static var COLOR_ARRAY_LIST_IBM:GLuint;

	@:native('GL_INDEX_ARRAY_LIST_IBM')
	static var INDEX_ARRAY_LIST_IBM:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_LIST_IBM')
	static var TEXTURE_COORD_ARRAY_LIST_IBM:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY_LIST_IBM')
	static var EDGE_FLAG_ARRAY_LIST_IBM:GLuint;

	@:native('GL_FOG_COORDINATE_ARRAY_LIST_IBM')
	static var FOG_COORDINATE_ARRAY_LIST_IBM:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_LIST_IBM')
	static var SECONDARY_COLOR_ARRAY_LIST_IBM:GLuint;

	@:native('GL_VERTEX_ARRAY_LIST_STRIDE_IBM')
	static var VERTEX_ARRAY_LIST_STRIDE_IBM:GLuint;

	@:native('GL_NORMAL_ARRAY_LIST_STRIDE_IBM')
	static var NORMAL_ARRAY_LIST_STRIDE_IBM:GLuint;

	@:native('GL_COLOR_ARRAY_LIST_STRIDE_IBM')
	static var COLOR_ARRAY_LIST_STRIDE_IBM:GLuint;

	@:native('GL_INDEX_ARRAY_LIST_STRIDE_IBM')
	static var INDEX_ARRAY_LIST_STRIDE_IBM:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM')
	static var TEXTURE_COORD_ARRAY_LIST_STRIDE_IBM:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY_LIST_STRIDE_IBM')
	static var EDGE_FLAG_ARRAY_LIST_STRIDE_IBM:GLuint;

	@:native('GL_FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM')
	static var FOG_COORDINATE_ARRAY_LIST_STRIDE_IBM:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM')
	static var SECONDARY_COLOR_ARRAY_LIST_STRIDE_IBM:GLuint;

	@:native('GL_RED_MIN_CLAMP_INGR')
	static var RED_MIN_CLAMP_INGR:GLuint;

	@:native('GL_GREEN_MIN_CLAMP_INGR')
	static var GREEN_MIN_CLAMP_INGR:GLuint;

	@:native('GL_BLUE_MIN_CLAMP_INGR')
	static var BLUE_MIN_CLAMP_INGR:GLuint;

	@:native('GL_ALPHA_MIN_CLAMP_INGR')
	static var ALPHA_MIN_CLAMP_INGR:GLuint;

	@:native('GL_RED_MAX_CLAMP_INGR')
	static var RED_MAX_CLAMP_INGR:GLuint;

	@:native('GL_GREEN_MAX_CLAMP_INGR')
	static var GREEN_MAX_CLAMP_INGR:GLuint;

	@:native('GL_BLUE_MAX_CLAMP_INGR')
	static var BLUE_MAX_CLAMP_INGR:GLuint;

	@:native('GL_ALPHA_MAX_CLAMP_INGR')
	static var ALPHA_MAX_CLAMP_INGR:GLuint;

	@:native('GL_INTERLACE_READ_INGR')
	static var INTERLACE_READ_INGR:GLuint;

	@:native('GL_CONSERVATIVE_RASTERIZATION_INTEL')
	static var CONSERVATIVE_RASTERIZATION_INTEL:GLuint;

	@:native('GL_TEXTURE_MEMORY_LAYOUT_INTEL')
	static var TEXTURE_MEMORY_LAYOUT_INTEL:GLuint;

	@:native('GL_LAYOUT_DEFAULT_INTEL')
	static var LAYOUT_DEFAULT_INTEL:GLuint;

	@:native('GL_LAYOUT_LINEAR_INTEL')
	static var LAYOUT_LINEAR_INTEL:GLuint;

	@:native('GL_LAYOUT_LINEAR_CPU_CACHED_INTEL')
	static var LAYOUT_LINEAR_CPU_CACHED_INTEL:GLuint;

	@:native('GL_BLACKHOLE_RENDER_INTEL')
	static var BLACKHOLE_RENDER_INTEL:GLuint;

	@:native('GL_PARALLEL_ARRAYS_INTEL')
	static var PARALLEL_ARRAYS_INTEL:GLuint;

	@:native('GL_VERTEX_ARRAY_PARALLEL_POINTERS_INTEL')
	static var VERTEX_ARRAY_PARALLEL_POINTERS_INTEL:GLuint;

	@:native('GL_NORMAL_ARRAY_PARALLEL_POINTERS_INTEL')
	static var NORMAL_ARRAY_PARALLEL_POINTERS_INTEL:GLuint;

	@:native('GL_COLOR_ARRAY_PARALLEL_POINTERS_INTEL')
	static var COLOR_ARRAY_PARALLEL_POINTERS_INTEL:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL')
	static var TEXTURE_COORD_ARRAY_PARALLEL_POINTERS_INTEL:GLuint;

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

	@:native('GL_CONTEXT_FLAG_NO_ERROR_BIT_KHR')
	static var CONTEXT_FLAG_NO_ERROR_BIT_KHR:GLuint;

	@:native('GL_CONTEXT_ROBUST_ACCESS')
	static var CONTEXT_ROBUST_ACCESS:GLuint;

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

	@:native('GL_TEXTURE_1D_STACK_MESAX')
	static var TEXTURE_1D_STACK_MESAX:GLuint;

	@:native('GL_TEXTURE_2D_STACK_MESAX')
	static var TEXTURE_2D_STACK_MESAX:GLuint;

	@:native('GL_PROXY_TEXTURE_1D_STACK_MESAX')
	static var PROXY_TEXTURE_1D_STACK_MESAX:GLuint;

	@:native('GL_PROXY_TEXTURE_2D_STACK_MESAX')
	static var PROXY_TEXTURE_2D_STACK_MESAX:GLuint;

	@:native('GL_TEXTURE_1D_STACK_BINDING_MESAX')
	static var TEXTURE_1D_STACK_BINDING_MESAX:GLuint;

	@:native('GL_TEXTURE_2D_STACK_BINDING_MESAX')
	static var TEXTURE_2D_STACK_BINDING_MESAX:GLuint;

	@:native('GL_FRAMEBUFFER_FLIP_X_MESA')
	static var FRAMEBUFFER_FLIP_X_MESA:GLuint;

	@:native('GL_FRAMEBUFFER_FLIP_Y_MESA')
	static var FRAMEBUFFER_FLIP_Y_MESA:GLuint;

	@:native('GL_FRAMEBUFFER_SWAP_XY_MESA')
	static var FRAMEBUFFER_SWAP_XY_MESA:GLuint;

	@:native('GL_PACK_INVERT_MESA')
	static var PACK_INVERT_MESA:GLuint;

	@:native('GL_PROGRAM_BINARY_FORMAT_MESA')
	static var PROGRAM_BINARY_FORMAT_MESA:GLuint;

	@:native('GL_CONST_BW_TILING_MESA')
	static var CONST_BW_TILING_MESA:GLuint;

	@:native('GL_TILE_RASTER_ORDER_FIXED_MESA')
	static var TILE_RASTER_ORDER_FIXED_MESA:GLuint;

	@:native('GL_TILE_RASTER_ORDER_INCREASING_X_MESA')
	static var TILE_RASTER_ORDER_INCREASING_X_MESA:GLuint;

	@:native('GL_TILE_RASTER_ORDER_INCREASING_Y_MESA')
	static var TILE_RASTER_ORDER_INCREASING_Y_MESA:GLuint;

	@:native('GL_UNSIGNED_SHORT_8_8_MESA')
	static var UNSIGNED_SHORT_8_8_MESA:GLuint;

	@:native('GL_UNSIGNED_SHORT_8_8_REV_MESA')
	static var UNSIGNED_SHORT_8_8_REV_MESA:GLuint;

	@:native('GL_YCBCR_MESA')
	static var YCBCR_MESA:GLuint;

	@:native('GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX')
	static var GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX:GLuint;

	@:native('GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX')
	static var GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX:GLuint;

	@:native('GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX')
	static var GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX:GLuint;

	@:native('GL_GPU_MEMORY_INFO_EVICTION_COUNT_NVX')
	static var GPU_MEMORY_INFO_EVICTION_COUNT_NVX:GLuint;

	@:native('GL_GPU_MEMORY_INFO_EVICTED_MEMORY_NVX')
	static var GPU_MEMORY_INFO_EVICTED_MEMORY_NVX:GLuint;

	@:native('GL_LGPU_SEPARATE_STORAGE_BIT_NVX')
	static var LGPU_SEPARATE_STORAGE_BIT_NVX:GLuint;

	@:native('GL_MAX_LGPU_GPUS_NVX')
	static var MAX_LGPU_GPUS_NVX:GLuint;

	@:native('GL_ALPHA_TO_COVERAGE_DITHER_DEFAULT_NV')
	static var ALPHA_TO_COVERAGE_DITHER_DEFAULT_NV:GLuint;

	@:native('GL_ALPHA_TO_COVERAGE_DITHER_ENABLE_NV')
	static var ALPHA_TO_COVERAGE_DITHER_ENABLE_NV:GLuint;

	@:native('GL_ALPHA_TO_COVERAGE_DITHER_DISABLE_NV')
	static var ALPHA_TO_COVERAGE_DITHER_DISABLE_NV:GLuint;

	@:native('GL_ALPHA_TO_COVERAGE_DITHER_MODE_NV')
	static var ALPHA_TO_COVERAGE_DITHER_MODE_NV:GLuint;

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

	@:native('GL_VIEWPORT_POSITION_W_SCALE_NV')
	static var VIEWPORT_POSITION_W_SCALE_NV:GLuint;

	@:native('GL_VIEWPORT_POSITION_W_SCALE_X_COEFF_NV')
	static var VIEWPORT_POSITION_W_SCALE_X_COEFF_NV:GLuint;

	@:native('GL_VIEWPORT_POSITION_W_SCALE_Y_COEFF_NV')
	static var VIEWPORT_POSITION_W_SCALE_Y_COEFF_NV:GLuint;

	@:native('GL_TERMINATE_SEQUENCE_COMMAND_NV')
	static var TERMINATE_SEQUENCE_COMMAND_NV:GLuint;

	@:native('GL_NOP_COMMAND_NV')
	static var NOP_COMMAND_NV:GLuint;

	@:native('GL_DRAW_ELEMENTS_COMMAND_NV')
	static var DRAW_ELEMENTS_COMMAND_NV:GLuint;

	@:native('GL_DRAW_ARRAYS_COMMAND_NV')
	static var DRAW_ARRAYS_COMMAND_NV:GLuint;

	@:native('GL_DRAW_ELEMENTS_STRIP_COMMAND_NV')
	static var DRAW_ELEMENTS_STRIP_COMMAND_NV:GLuint;

	@:native('GL_DRAW_ARRAYS_STRIP_COMMAND_NV')
	static var DRAW_ARRAYS_STRIP_COMMAND_NV:GLuint;

	@:native('GL_DRAW_ELEMENTS_INSTANCED_COMMAND_NV')
	static var DRAW_ELEMENTS_INSTANCED_COMMAND_NV:GLuint;

	@:native('GL_DRAW_ARRAYS_INSTANCED_COMMAND_NV')
	static var DRAW_ARRAYS_INSTANCED_COMMAND_NV:GLuint;

	@:native('GL_ELEMENT_ADDRESS_COMMAND_NV')
	static var ELEMENT_ADDRESS_COMMAND_NV:GLuint;

	@:native('GL_ATTRIBUTE_ADDRESS_COMMAND_NV')
	static var ATTRIBUTE_ADDRESS_COMMAND_NV:GLuint;

	@:native('GL_UNIFORM_ADDRESS_COMMAND_NV')
	static var UNIFORM_ADDRESS_COMMAND_NV:GLuint;

	@:native('GL_BLEND_COLOR_COMMAND_NV')
	static var BLEND_COLOR_COMMAND_NV:GLuint;

	@:native('GL_STENCIL_REF_COMMAND_NV')
	static var STENCIL_REF_COMMAND_NV:GLuint;

	@:native('GL_LINE_WIDTH_COMMAND_NV')
	static var LINE_WIDTH_COMMAND_NV:GLuint;

	@:native('GL_POLYGON_OFFSET_COMMAND_NV')
	static var POLYGON_OFFSET_COMMAND_NV:GLuint;

	@:native('GL_ALPHA_REF_COMMAND_NV')
	static var ALPHA_REF_COMMAND_NV:GLuint;

	@:native('GL_VIEWPORT_COMMAND_NV')
	static var VIEWPORT_COMMAND_NV:GLuint;

	@:native('GL_SCISSOR_COMMAND_NV')
	static var SCISSOR_COMMAND_NV:GLuint;

	@:native('GL_FRONT_FACE_COMMAND_NV')
	static var FRONT_FACE_COMMAND_NV:GLuint;

	@:native('GL_COMPUTE_PROGRAM_NV')
	static var COMPUTE_PROGRAM_NV:GLuint;

	@:native('GL_COMPUTE_PROGRAM_PARAMETER_BUFFER_NV')
	static var COMPUTE_PROGRAM_PARAMETER_BUFFER_NV:GLuint;

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

	@:native('GL_CONSERVATIVE_RASTER_DILATE_NV')
	static var CONSERVATIVE_RASTER_DILATE_NV:GLuint;

	@:native('GL_CONSERVATIVE_RASTER_DILATE_RANGE_NV')
	static var CONSERVATIVE_RASTER_DILATE_RANGE_NV:GLuint;

	@:native('GL_CONSERVATIVE_RASTER_DILATE_GRANULARITY_NV')
	static var CONSERVATIVE_RASTER_DILATE_GRANULARITY_NV:GLuint;

	@:native('GL_CONSERVATIVE_RASTER_MODE_PRE_SNAP_NV')
	static var CONSERVATIVE_RASTER_MODE_PRE_SNAP_NV:GLuint;

	@:native('GL_CONSERVATIVE_RASTER_MODE_NV')
	static var CONSERVATIVE_RASTER_MODE_NV:GLuint;

	@:native('GL_CONSERVATIVE_RASTER_MODE_POST_SNAP_NV')
	static var CONSERVATIVE_RASTER_MODE_POST_SNAP_NV:GLuint;

	@:native('GL_CONSERVATIVE_RASTER_MODE_PRE_SNAP_TRIANGLES_NV')
	static var CONSERVATIVE_RASTER_MODE_PRE_SNAP_TRIANGLES_NV:GLuint;

	@:native('GL_DEPTH_STENCIL_TO_RGBA_NV')
	static var DEPTH_STENCIL_TO_RGBA_NV:GLuint;

	@:native('GL_DEPTH_STENCIL_TO_BGRA_NV')
	static var DEPTH_STENCIL_TO_BGRA_NV:GLuint;

	@:native('GL_MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV')
	static var MAX_DEEP_3D_TEXTURE_WIDTH_HEIGHT_NV:GLuint;

	@:native('GL_MAX_DEEP_3D_TEXTURE_DEPTH_NV')
	static var MAX_DEEP_3D_TEXTURE_DEPTH_NV:GLuint;

	@:native('GL_DEPTH_COMPONENT32F_NV')
	static var DEPTH_COMPONENT32F_NV:GLuint;

	@:native('GL_DEPTH32F_STENCIL8_NV')
	static var DEPTH32F_STENCIL8_NV:GLuint;

	@:native('GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV')
	static var FLOAT_32_UNSIGNED_INT_24_8_REV_NV:GLuint;

	@:native('GL_DEPTH_BUFFER_FLOAT_MODE_NV')
	static var DEPTH_BUFFER_FLOAT_MODE_NV:GLuint;

	@:native('GL_DEPTH_CLAMP_NV')
	static var DEPTH_CLAMP_NV:GLuint;

	@:native('GL_EVAL_2D_NV')
	static var EVAL_2D_NV:GLuint;

	@:native('GL_EVAL_TRIANGULAR_2D_NV')
	static var EVAL_TRIANGULAR_2D_NV:GLuint;

	@:native('GL_MAP_TESSELLATION_NV')
	static var MAP_TESSELLATION_NV:GLuint;

	@:native('GL_MAP_ATTRIB_U_ORDER_NV')
	static var MAP_ATTRIB_U_ORDER_NV:GLuint;

	@:native('GL_MAP_ATTRIB_V_ORDER_NV')
	static var MAP_ATTRIB_V_ORDER_NV:GLuint;

	@:native('GL_EVAL_FRACTIONAL_TESSELLATION_NV')
	static var EVAL_FRACTIONAL_TESSELLATION_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB0_NV')
	static var EVAL_VERTEX_ATTRIB0_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB1_NV')
	static var EVAL_VERTEX_ATTRIB1_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB2_NV')
	static var EVAL_VERTEX_ATTRIB2_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB3_NV')
	static var EVAL_VERTEX_ATTRIB3_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB4_NV')
	static var EVAL_VERTEX_ATTRIB4_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB5_NV')
	static var EVAL_VERTEX_ATTRIB5_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB6_NV')
	static var EVAL_VERTEX_ATTRIB6_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB7_NV')
	static var EVAL_VERTEX_ATTRIB7_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB8_NV')
	static var EVAL_VERTEX_ATTRIB8_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB9_NV')
	static var EVAL_VERTEX_ATTRIB9_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB10_NV')
	static var EVAL_VERTEX_ATTRIB10_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB11_NV')
	static var EVAL_VERTEX_ATTRIB11_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB12_NV')
	static var EVAL_VERTEX_ATTRIB12_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB13_NV')
	static var EVAL_VERTEX_ATTRIB13_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB14_NV')
	static var EVAL_VERTEX_ATTRIB14_NV:GLuint;

	@:native('GL_EVAL_VERTEX_ATTRIB15_NV')
	static var EVAL_VERTEX_ATTRIB15_NV:GLuint;

	@:native('GL_MAX_MAP_TESSELLATION_NV')
	static var MAX_MAP_TESSELLATION_NV:GLuint;

	@:native('GL_MAX_RATIONAL_EVAL_ORDER_NV')
	static var MAX_RATIONAL_EVAL_ORDER_NV:GLuint;

	@:native('GL_SAMPLE_POSITION_NV')
	static var SAMPLE_POSITION_NV:GLuint;

	@:native('GL_SAMPLE_MASK_NV')
	static var SAMPLE_MASK_NV:GLuint;

	@:native('GL_SAMPLE_MASK_VALUE_NV')
	static var SAMPLE_MASK_VALUE_NV:GLuint;

	@:native('GL_TEXTURE_BINDING_RENDERBUFFER_NV')
	static var TEXTURE_BINDING_RENDERBUFFER_NV:GLuint;

	@:native('GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV')
	static var TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV:GLuint;

	@:native('GL_TEXTURE_RENDERBUFFER_NV')
	static var TEXTURE_RENDERBUFFER_NV:GLuint;

	@:native('GL_SAMPLER_RENDERBUFFER_NV')
	static var SAMPLER_RENDERBUFFER_NV:GLuint;

	@:native('GL_INT_SAMPLER_RENDERBUFFER_NV')
	static var INT_SAMPLER_RENDERBUFFER_NV:GLuint;

	@:native('GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV')
	static var UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV:GLuint;

	@:native('GL_MAX_SAMPLE_MASK_WORDS_NV')
	static var MAX_SAMPLE_MASK_WORDS_NV:GLuint;

	@:native('GL_ALL_COMPLETED_NV')
	static var ALL_COMPLETED_NV:GLuint;

	@:native('GL_FENCE_STATUS_NV')
	static var FENCE_STATUS_NV:GLuint;

	@:native('GL_FENCE_CONDITION_NV')
	static var FENCE_CONDITION_NV:GLuint;

	@:native('GL_FILL_RECTANGLE_NV')
	static var FILL_RECTANGLE_NV:GLuint;

	@:native('GL_FLOAT_R_NV')
	static var FLOAT_R_NV:GLuint;

	@:native('GL_FLOAT_RG_NV')
	static var FLOAT_RG_NV:GLuint;

	@:native('GL_FLOAT_RGB_NV')
	static var FLOAT_RGB_NV:GLuint;

	@:native('GL_FLOAT_RGBA_NV')
	static var FLOAT_RGBA_NV:GLuint;

	@:native('GL_FLOAT_R16_NV')
	static var FLOAT_R16_NV:GLuint;

	@:native('GL_FLOAT_R32_NV')
	static var FLOAT_R32_NV:GLuint;

	@:native('GL_FLOAT_RG16_NV')
	static var FLOAT_RG16_NV:GLuint;

	@:native('GL_FLOAT_RG32_NV')
	static var FLOAT_RG32_NV:GLuint;

	@:native('GL_FLOAT_RGB16_NV')
	static var FLOAT_RGB16_NV:GLuint;

	@:native('GL_FLOAT_RGB32_NV')
	static var FLOAT_RGB32_NV:GLuint;

	@:native('GL_FLOAT_RGBA16_NV')
	static var FLOAT_RGBA16_NV:GLuint;

	@:native('GL_FLOAT_RGBA32_NV')
	static var FLOAT_RGBA32_NV:GLuint;

	@:native('GL_TEXTURE_FLOAT_COMPONENTS_NV')
	static var TEXTURE_FLOAT_COMPONENTS_NV:GLuint;

	@:native('GL_FLOAT_CLEAR_COLOR_VALUE_NV')
	static var FLOAT_CLEAR_COLOR_VALUE_NV:GLuint;

	@:native('GL_FLOAT_RGBA_MODE_NV')
	static var FLOAT_RGBA_MODE_NV:GLuint;

	@:native('GL_FOG_DISTANCE_MODE_NV')
	static var FOG_DISTANCE_MODE_NV:GLuint;

	@:native('GL_EYE_RADIAL_NV')
	static var EYE_RADIAL_NV:GLuint;

	@:native('GL_EYE_PLANE_ABSOLUTE_NV')
	static var EYE_PLANE_ABSOLUTE_NV:GLuint;

	@:native('GL_FRAGMENT_COVERAGE_TO_COLOR_NV')
	static var FRAGMENT_COVERAGE_TO_COLOR_NV:GLuint;

	@:native('GL_FRAGMENT_COVERAGE_COLOR_NV')
	static var FRAGMENT_COVERAGE_COLOR_NV:GLuint;

	@:native('GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV')
	static var MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV:GLuint;

	@:native('GL_FRAGMENT_PROGRAM_NV')
	static var FRAGMENT_PROGRAM_NV:GLuint;

	@:native('GL_MAX_TEXTURE_COORDS_NV')
	static var MAX_TEXTURE_COORDS_NV:GLuint;

	@:native('GL_MAX_TEXTURE_IMAGE_UNITS_NV')
	static var MAX_TEXTURE_IMAGE_UNITS_NV:GLuint;

	@:native('GL_FRAGMENT_PROGRAM_BINDING_NV')
	static var FRAGMENT_PROGRAM_BINDING_NV:GLuint;

	@:native('GL_PROGRAM_ERROR_STRING_NV')
	static var PROGRAM_ERROR_STRING_NV:GLuint;

	@:native('GL_MAX_PROGRAM_EXEC_INSTRUCTIONS_NV')
	static var MAX_PROGRAM_EXEC_INSTRUCTIONS_NV:GLuint;

	@:native('GL_MAX_PROGRAM_CALL_DEPTH_NV')
	static var MAX_PROGRAM_CALL_DEPTH_NV:GLuint;

	@:native('GL_MAX_PROGRAM_IF_DEPTH_NV')
	static var MAX_PROGRAM_IF_DEPTH_NV:GLuint;

	@:native('GL_MAX_PROGRAM_LOOP_DEPTH_NV')
	static var MAX_PROGRAM_LOOP_DEPTH_NV:GLuint;

	@:native('GL_MAX_PROGRAM_LOOP_COUNT_NV')
	static var MAX_PROGRAM_LOOP_COUNT_NV:GLuint;

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

	@:native('GL_RENDERBUFFER_COVERAGE_SAMPLES_NV')
	static var RENDERBUFFER_COVERAGE_SAMPLES_NV:GLuint;

	@:native('GL_RENDERBUFFER_COLOR_SAMPLES_NV')
	static var RENDERBUFFER_COLOR_SAMPLES_NV:GLuint;

	@:native('GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV')
	static var MAX_MULTISAMPLE_COVERAGE_MODES_NV:GLuint;

	@:native('GL_MULTISAMPLE_COVERAGE_MODES_NV')
	static var MULTISAMPLE_COVERAGE_MODES_NV:GLuint;

	@:native('GL_GEOMETRY_PROGRAM_NV')
	static var GEOMETRY_PROGRAM_NV:GLuint;

	@:native('GL_MAX_PROGRAM_OUTPUT_VERTICES_NV')
	static var MAX_PROGRAM_OUTPUT_VERTICES_NV:GLuint;

	@:native('GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV')
	static var MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV:GLuint;

	@:native('GL_MIN_PROGRAM_TEXEL_OFFSET_NV')
	static var MIN_PROGRAM_TEXEL_OFFSET_NV:GLuint;

	@:native('GL_MAX_PROGRAM_TEXEL_OFFSET_NV')
	static var MAX_PROGRAM_TEXEL_OFFSET_NV:GLuint;

	@:native('GL_PROGRAM_ATTRIB_COMPONENTS_NV')
	static var PROGRAM_ATTRIB_COMPONENTS_NV:GLuint;

	@:native('GL_PROGRAM_RESULT_COMPONENTS_NV')
	static var PROGRAM_RESULT_COMPONENTS_NV:GLuint;

	@:native('GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV')
	static var MAX_PROGRAM_ATTRIB_COMPONENTS_NV:GLuint;

	@:native('GL_MAX_PROGRAM_RESULT_COMPONENTS_NV')
	static var MAX_PROGRAM_RESULT_COMPONENTS_NV:GLuint;

	@:native('GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV')
	static var MAX_PROGRAM_GENERIC_ATTRIBS_NV:GLuint;

	@:native('GL_MAX_PROGRAM_GENERIC_RESULTS_NV')
	static var MAX_PROGRAM_GENERIC_RESULTS_NV:GLuint;

	@:native('GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV')
	static var MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV:GLuint;

	@:native('GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV')
	static var MIN_FRAGMENT_INTERPOLATION_OFFSET_NV:GLuint;

	@:native('GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV')
	static var MAX_FRAGMENT_INTERPOLATION_OFFSET_NV:GLuint;

	@:native('GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV')
	static var FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV:GLuint;

	@:native('GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV')
	static var MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV:GLuint;

	@:native('GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV')
	static var MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV:GLuint;

	@:native('GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV')
	static var MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV:GLuint;

	@:native('GL_MAX_PROGRAM_SUBROUTINE_NUM_NV')
	static var MAX_PROGRAM_SUBROUTINE_NUM_NV:GLuint;

	@:native('GL_HALF_FLOAT_NV')
	static var HALF_FLOAT_NV:GLuint;

	@:native('GL_MULTISAMPLES_NV')
	static var MULTISAMPLES_NV:GLuint;

	@:native('GL_SUPERSAMPLE_SCALE_X_NV')
	static var SUPERSAMPLE_SCALE_X_NV:GLuint;

	@:native('GL_SUPERSAMPLE_SCALE_Y_NV')
	static var SUPERSAMPLE_SCALE_Y_NV:GLuint;

	@:native('GL_CONFORMANT_NV')
	static var CONFORMANT_NV:GLuint;

	@:native('GL_MAX_SHININESS_NV')
	static var MAX_SHININESS_NV:GLuint;

	@:native('GL_MAX_SPOT_EXPONENT_NV')
	static var MAX_SPOT_EXPONENT_NV:GLuint;

	@:native('GL_PER_GPU_STORAGE_BIT_NV')
	static var PER_GPU_STORAGE_BIT_NV:GLuint;

	@:native('GL_MULTICAST_GPUS_NV')
	static var MULTICAST_GPUS_NV:GLuint;

	@:native('GL_RENDER_GPU_MASK_NV')
	static var RENDER_GPU_MASK_NV:GLuint;

	@:native('GL_PER_GPU_STORAGE_NV')
	static var PER_GPU_STORAGE_NV:GLuint;

	@:native('GL_MULTICAST_PROGRAMMABLE_SAMPLE_LOCATION_NV')
	static var MULTICAST_PROGRAMMABLE_SAMPLE_LOCATION_NV:GLuint;

	@:native('GL_UPLOAD_GPU_MASK_NVX')
	static var UPLOAD_GPU_MASK_NVX:GLuint;

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

	@:native('GL_MULTISAMPLE_FILTER_HINT_NV')
	static var MULTISAMPLE_FILTER_HINT_NV:GLuint;

	@:native('GL_PIXEL_COUNTER_BITS_NV')
	static var PIXEL_COUNTER_BITS_NV:GLuint;

	@:native('GL_CURRENT_OCCLUSION_QUERY_ID_NV')
	static var CURRENT_OCCLUSION_QUERY_ID_NV:GLuint;

	@:native('GL_PIXEL_COUNT_NV')
	static var PIXEL_COUNT_NV:GLuint;

	@:native('GL_PIXEL_COUNT_AVAILABLE_NV')
	static var PIXEL_COUNT_AVAILABLE_NV:GLuint;

	@:native('GL_DEPTH_STENCIL_NV')
	static var DEPTH_STENCIL_NV:GLuint;

	@:native('GL_UNSIGNED_INT_24_8_NV')
	static var UNSIGNED_INT_24_8_NV:GLuint;

	@:native('GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV')
	static var MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV:GLuint;

	@:native('GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV')
	static var MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV:GLuint;

	@:native('GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV')
	static var VERTEX_PROGRAM_PARAMETER_BUFFER_NV:GLuint;

	@:native('GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV')
	static var GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV:GLuint;

	@:native('GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV')
	static var FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV:GLuint;

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

	@:native('GL_SHARED_EDGE_NV')
	static var SHARED_EDGE_NV:GLuint;

	@:native('GL_WRITE_PIXEL_DATA_RANGE_NV')
	static var WRITE_PIXEL_DATA_RANGE_NV:GLuint;

	@:native('GL_READ_PIXEL_DATA_RANGE_NV')
	static var READ_PIXEL_DATA_RANGE_NV:GLuint;

	@:native('GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV')
	static var WRITE_PIXEL_DATA_RANGE_LENGTH_NV:GLuint;

	@:native('GL_READ_PIXEL_DATA_RANGE_LENGTH_NV')
	static var READ_PIXEL_DATA_RANGE_LENGTH_NV:GLuint;

	@:native('GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV')
	static var WRITE_PIXEL_DATA_RANGE_POINTER_NV:GLuint;

	@:native('GL_READ_PIXEL_DATA_RANGE_POINTER_NV')
	static var READ_PIXEL_DATA_RANGE_POINTER_NV:GLuint;

	@:native('GL_POINT_SPRITE_NV')
	static var POINT_SPRITE_NV:GLuint;

	@:native('GL_COORD_REPLACE_NV')
	static var COORD_REPLACE_NV:GLuint;

	@:native('GL_POINT_SPRITE_R_MODE_NV')
	static var POINT_SPRITE_R_MODE_NV:GLuint;

	@:native('GL_FRAME_NV')
	static var FRAME_NV:GLuint;

	@:native('GL_FIELDS_NV')
	static var FIELDS_NV:GLuint;

	@:native('GL_CURRENT_TIME_NV')
	static var CURRENT_TIME_NV:GLuint;

	@:native('GL_NUM_FILL_STREAMS_NV')
	static var NUM_FILL_STREAMS_NV:GLuint;

	@:native('GL_PRESENT_TIME_NV')
	static var PRESENT_TIME_NV:GLuint;

	@:native('GL_PRESENT_DURATION_NV')
	static var PRESENT_DURATION_NV:GLuint;

	@:native('GL_PRIMITIVE_RESTART_NV')
	static var PRIMITIVE_RESTART_NV:GLuint;

	@:native('GL_PRIMITIVE_RESTART_INDEX_NV')
	static var PRIMITIVE_RESTART_INDEX_NV:GLuint;

	@:native('GL_SHADING_RATE_IMAGE_PER_PRIMITIVE_NV')
	static var SHADING_RATE_IMAGE_PER_PRIMITIVE_NV:GLuint;

	@:native('GL_SHADING_RATE_IMAGE_PALETTE_COUNT_NV')
	static var SHADING_RATE_IMAGE_PALETTE_COUNT_NV:GLuint;

	@:native('GL_QUERY_RESOURCE_TYPE_VIDMEM_ALLOC_NV')
	static var QUERY_RESOURCE_TYPE_VIDMEM_ALLOC_NV:GLuint;

	@:native('GL_QUERY_RESOURCE_MEMTYPE_VIDMEM_NV')
	static var QUERY_RESOURCE_MEMTYPE_VIDMEM_NV:GLuint;

	@:native('GL_QUERY_RESOURCE_SYS_RESERVED_NV')
	static var QUERY_RESOURCE_SYS_RESERVED_NV:GLuint;

	@:native('GL_QUERY_RESOURCE_TEXTURE_NV')
	static var QUERY_RESOURCE_TEXTURE_NV:GLuint;

	@:native('GL_QUERY_RESOURCE_RENDERBUFFER_NV')
	static var QUERY_RESOURCE_RENDERBUFFER_NV:GLuint;

	@:native('GL_QUERY_RESOURCE_BUFFEROBJECT_NV')
	static var QUERY_RESOURCE_BUFFEROBJECT_NV:GLuint;

	@:native('GL_REGISTER_COMBINERS_NV')
	static var REGISTER_COMBINERS_NV:GLuint;

	@:native('GL_VARIABLE_A_NV')
	static var VARIABLE_A_NV:GLuint;

	@:native('GL_VARIABLE_B_NV')
	static var VARIABLE_B_NV:GLuint;

	@:native('GL_VARIABLE_C_NV')
	static var VARIABLE_C_NV:GLuint;

	@:native('GL_VARIABLE_D_NV')
	static var VARIABLE_D_NV:GLuint;

	@:native('GL_VARIABLE_E_NV')
	static var VARIABLE_E_NV:GLuint;

	@:native('GL_VARIABLE_F_NV')
	static var VARIABLE_F_NV:GLuint;

	@:native('GL_VARIABLE_G_NV')
	static var VARIABLE_G_NV:GLuint;

	@:native('GL_CONSTANT_COLOR0_NV')
	static var CONSTANT_COLOR0_NV:GLuint;

	@:native('GL_CONSTANT_COLOR1_NV')
	static var CONSTANT_COLOR1_NV:GLuint;

	@:native('GL_PRIMARY_COLOR_NV')
	static var PRIMARY_COLOR_NV:GLuint;

	@:native('GL_SECONDARY_COLOR_NV')
	static var SECONDARY_COLOR_NV:GLuint;

	@:native('GL_SPARE0_NV')
	static var SPARE0_NV:GLuint;

	@:native('GL_SPARE1_NV')
	static var SPARE1_NV:GLuint;

	@:native('GL_DISCARD_NV')
	static var DISCARD_NV:GLuint;

	@:native('GL_E_TIMES_F_NV')
	static var E_TIMES_F_NV:GLuint;

	@:native('GL_SPARE0_PLUS_SECONDARY_COLOR_NV')
	static var SPARE0_PLUS_SECONDARY_COLOR_NV:GLuint;

	@:native('GL_UNSIGNED_IDENTITY_NV')
	static var UNSIGNED_IDENTITY_NV:GLuint;

	@:native('GL_UNSIGNED_INVERT_NV')
	static var UNSIGNED_INVERT_NV:GLuint;

	@:native('GL_EXPAND_NORMAL_NV')
	static var EXPAND_NORMAL_NV:GLuint;

	@:native('GL_EXPAND_NEGATE_NV')
	static var EXPAND_NEGATE_NV:GLuint;

	@:native('GL_HALF_BIAS_NORMAL_NV')
	static var HALF_BIAS_NORMAL_NV:GLuint;

	@:native('GL_HALF_BIAS_NEGATE_NV')
	static var HALF_BIAS_NEGATE_NV:GLuint;

	@:native('GL_SIGNED_IDENTITY_NV')
	static var SIGNED_IDENTITY_NV:GLuint;

	@:native('GL_SIGNED_NEGATE_NV')
	static var SIGNED_NEGATE_NV:GLuint;

	@:native('GL_SCALE_BY_TWO_NV')
	static var SCALE_BY_TWO_NV:GLuint;

	@:native('GL_SCALE_BY_FOUR_NV')
	static var SCALE_BY_FOUR_NV:GLuint;

	@:native('GL_SCALE_BY_ONE_HALF_NV')
	static var SCALE_BY_ONE_HALF_NV:GLuint;

	@:native('GL_BIAS_BY_NEGATIVE_ONE_HALF_NV')
	static var BIAS_BY_NEGATIVE_ONE_HALF_NV:GLuint;

	@:native('GL_COMBINER_INPUT_NV')
	static var COMBINER_INPUT_NV:GLuint;

	@:native('GL_COMBINER_MAPPING_NV')
	static var COMBINER_MAPPING_NV:GLuint;

	@:native('GL_COMBINER_COMPONENT_USAGE_NV')
	static var COMBINER_COMPONENT_USAGE_NV:GLuint;

	@:native('GL_COMBINER_AB_DOT_PRODUCT_NV')
	static var COMBINER_AB_DOT_PRODUCT_NV:GLuint;

	@:native('GL_COMBINER_CD_DOT_PRODUCT_NV')
	static var COMBINER_CD_DOT_PRODUCT_NV:GLuint;

	@:native('GL_COMBINER_MUX_SUM_NV')
	static var COMBINER_MUX_SUM_NV:GLuint;

	@:native('GL_COMBINER_SCALE_NV')
	static var COMBINER_SCALE_NV:GLuint;

	@:native('GL_COMBINER_BIAS_NV')
	static var COMBINER_BIAS_NV:GLuint;

	@:native('GL_COMBINER_AB_OUTPUT_NV')
	static var COMBINER_AB_OUTPUT_NV:GLuint;

	@:native('GL_COMBINER_CD_OUTPUT_NV')
	static var COMBINER_CD_OUTPUT_NV:GLuint;

	@:native('GL_COMBINER_SUM_OUTPUT_NV')
	static var COMBINER_SUM_OUTPUT_NV:GLuint;

	@:native('GL_MAX_GENERAL_COMBINERS_NV')
	static var MAX_GENERAL_COMBINERS_NV:GLuint;

	@:native('GL_NUM_GENERAL_COMBINERS_NV')
	static var NUM_GENERAL_COMBINERS_NV:GLuint;

	@:native('GL_COLOR_SUM_CLAMP_NV')
	static var COLOR_SUM_CLAMP_NV:GLuint;

	@:native('GL_COMBINER0_NV')
	static var COMBINER0_NV:GLuint;

	@:native('GL_COMBINER1_NV')
	static var COMBINER1_NV:GLuint;

	@:native('GL_COMBINER2_NV')
	static var COMBINER2_NV:GLuint;

	@:native('GL_COMBINER3_NV')
	static var COMBINER3_NV:GLuint;

	@:native('GL_COMBINER4_NV')
	static var COMBINER4_NV:GLuint;

	@:native('GL_COMBINER5_NV')
	static var COMBINER5_NV:GLuint;

	@:native('GL_COMBINER6_NV')
	static var COMBINER6_NV:GLuint;

	@:native('GL_COMBINER7_NV')
	static var COMBINER7_NV:GLuint;

	@:native('GL_PER_STAGE_CONSTANTS_NV')
	static var PER_STAGE_CONSTANTS_NV:GLuint;

	@:native('GL_REPRESENTATIVE_FRAGMENT_TEST_NV')
	static var REPRESENTATIVE_FRAGMENT_TEST_NV:GLuint;

	@:native('GL_PURGED_CONTEXT_RESET_NV')
	static var PURGED_CONTEXT_RESET_NV:GLuint;

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

	@:native('GL_BUFFER_GPU_ADDRESS_NV')
	static var BUFFER_GPU_ADDRESS_NV:GLuint;

	@:native('GL_GPU_ADDRESS_NV')
	static var GPU_ADDRESS_NV:GLuint;

	@:native('GL_MAX_SHADER_BUFFER_ADDRESS_NV')
	static var MAX_SHADER_BUFFER_ADDRESS_NV:GLuint;

	@:native('GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV')
	static var SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV:GLuint;

	@:native('GL_SUBGROUP_FEATURE_PARTITIONED_BIT_NV')
	static var SUBGROUP_FEATURE_PARTITIONED_BIT_NV:GLuint;

	@:native('GL_WARP_SIZE_NV')
	static var WARP_SIZE_NV:GLuint;

	@:native('GL_WARPS_PER_SM_NV')
	static var WARPS_PER_SM_NV:GLuint;

	@:native('GL_SM_COUNT_NV')
	static var SM_COUNT_NV:GLuint;

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

	@:native('GL_MAX_PROGRAM_PATCH_ATTRIBS_NV')
	static var MAX_PROGRAM_PATCH_ATTRIBS_NV:GLuint;

	@:native('GL_TESS_CONTROL_PROGRAM_NV')
	static var TESS_CONTROL_PROGRAM_NV:GLuint;

	@:native('GL_TESS_EVALUATION_PROGRAM_NV')
	static var TESS_EVALUATION_PROGRAM_NV:GLuint;

	@:native('GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV')
	static var TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV:GLuint;

	@:native('GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV')
	static var TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV:GLuint;

	@:native('GL_EMBOSS_LIGHT_NV')
	static var EMBOSS_LIGHT_NV:GLuint;

	@:native('GL_EMBOSS_CONSTANT_NV')
	static var EMBOSS_CONSTANT_NV:GLuint;

	@:native('GL_EMBOSS_MAP_NV')
	static var EMBOSS_MAP_NV:GLuint;

	@:native('GL_NORMAL_MAP_NV')
	static var NORMAL_MAP_NV:GLuint;

	@:native('GL_REFLECTION_MAP_NV')
	static var REFLECTION_MAP_NV:GLuint;

	@:native('GL_COMBINE4_NV')
	static var COMBINE4_NV:GLuint;

	@:native('GL_SOURCE3_RGB_NV')
	static var SOURCE3_RGB_NV:GLuint;

	@:native('GL_SOURCE3_ALPHA_NV')
	static var SOURCE3_ALPHA_NV:GLuint;

	@:native('GL_OPERAND3_RGB_NV')
	static var OPERAND3_RGB_NV:GLuint;

	@:native('GL_OPERAND3_ALPHA_NV')
	static var OPERAND3_ALPHA_NV:GLuint;

	@:native('GL_TEXTURE_UNSIGNED_REMAP_MODE_NV')
	static var TEXTURE_UNSIGNED_REMAP_MODE_NV:GLuint;

	@:native('GL_TEXTURE_COVERAGE_SAMPLES_NV')
	static var TEXTURE_COVERAGE_SAMPLES_NV:GLuint;

	@:native('GL_TEXTURE_COLOR_SAMPLES_NV')
	static var TEXTURE_COLOR_SAMPLES_NV:GLuint;

	@:native('GL_TEXTURE_RECTANGLE_NV')
	static var TEXTURE_RECTANGLE_NV:GLuint;

	@:native('GL_TEXTURE_BINDING_RECTANGLE_NV')
	static var TEXTURE_BINDING_RECTANGLE_NV:GLuint;

	@:native('GL_PROXY_TEXTURE_RECTANGLE_NV')
	static var PROXY_TEXTURE_RECTANGLE_NV:GLuint;

	@:native('GL_MAX_RECTANGLE_TEXTURE_SIZE_NV')
	static var MAX_RECTANGLE_TEXTURE_SIZE_NV:GLuint;

	@:native('GL_OFFSET_TEXTURE_RECTANGLE_NV')
	static var OFFSET_TEXTURE_RECTANGLE_NV:GLuint;

	@:native('GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV')
	static var OFFSET_TEXTURE_RECTANGLE_SCALE_NV:GLuint;

	@:native('GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV')
	static var DOT_PRODUCT_TEXTURE_RECTANGLE_NV:GLuint;

	@:native('GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV')
	static var RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV:GLuint;

	@:native('GL_UNSIGNED_INT_S8_S8_8_8_NV')
	static var UNSIGNED_INT_S8_S8_8_8_NV:GLuint;

	@:native('GL_UNSIGNED_INT_8_8_S8_S8_REV_NV')
	static var UNSIGNED_INT_8_8_S8_S8_REV_NV:GLuint;

	@:native('GL_DSDT_MAG_INTENSITY_NV')
	static var DSDT_MAG_INTENSITY_NV:GLuint;

	@:native('GL_SHADER_CONSISTENT_NV')
	static var SHADER_CONSISTENT_NV:GLuint;

	@:native('GL_TEXTURE_SHADER_NV')
	static var TEXTURE_SHADER_NV:GLuint;

	@:native('GL_SHADER_OPERATION_NV')
	static var SHADER_OPERATION_NV:GLuint;

	@:native('GL_CULL_MODES_NV')
	static var CULL_MODES_NV:GLuint;

	@:native('GL_OFFSET_TEXTURE_MATRIX_NV')
	static var OFFSET_TEXTURE_MATRIX_NV:GLuint;

	@:native('GL_OFFSET_TEXTURE_SCALE_NV')
	static var OFFSET_TEXTURE_SCALE_NV:GLuint;

	@:native('GL_OFFSET_TEXTURE_BIAS_NV')
	static var OFFSET_TEXTURE_BIAS_NV:GLuint;

	@:native('GL_OFFSET_TEXTURE_2D_MATRIX_NV')
	static var OFFSET_TEXTURE_2D_MATRIX_NV:GLuint;

	@:native('GL_OFFSET_TEXTURE_2D_SCALE_NV')
	static var OFFSET_TEXTURE_2D_SCALE_NV:GLuint;

	@:native('GL_OFFSET_TEXTURE_2D_BIAS_NV')
	static var OFFSET_TEXTURE_2D_BIAS_NV:GLuint;

	@:native('GL_PREVIOUS_TEXTURE_INPUT_NV')
	static var PREVIOUS_TEXTURE_INPUT_NV:GLuint;

	@:native('GL_CONST_EYE_NV')
	static var CONST_EYE_NV:GLuint;

	@:native('GL_PASS_THROUGH_NV')
	static var PASS_THROUGH_NV:GLuint;

	@:native('GL_CULL_FRAGMENT_NV')
	static var CULL_FRAGMENT_NV:GLuint;

	@:native('GL_OFFSET_TEXTURE_2D_NV')
	static var OFFSET_TEXTURE_2D_NV:GLuint;

	@:native('GL_DEPENDENT_AR_TEXTURE_2D_NV')
	static var DEPENDENT_AR_TEXTURE_2D_NV:GLuint;

	@:native('GL_DEPENDENT_GB_TEXTURE_2D_NV')
	static var DEPENDENT_GB_TEXTURE_2D_NV:GLuint;

	@:native('GL_DOT_PRODUCT_NV')
	static var DOT_PRODUCT_NV:GLuint;

	@:native('GL_DOT_PRODUCT_DEPTH_REPLACE_NV')
	static var DOT_PRODUCT_DEPTH_REPLACE_NV:GLuint;

	@:native('GL_DOT_PRODUCT_TEXTURE_2D_NV')
	static var DOT_PRODUCT_TEXTURE_2D_NV:GLuint;

	@:native('GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV')
	static var DOT_PRODUCT_TEXTURE_CUBE_MAP_NV:GLuint;

	@:native('GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV')
	static var DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV:GLuint;

	@:native('GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV')
	static var DOT_PRODUCT_REFLECT_CUBE_MAP_NV:GLuint;

	@:native('GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV')
	static var DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV:GLuint;

	@:native('GL_HILO_NV')
	static var HILO_NV:GLuint;

	@:native('GL_DSDT_NV')
	static var DSDT_NV:GLuint;

	@:native('GL_DSDT_MAG_NV')
	static var DSDT_MAG_NV:GLuint;

	@:native('GL_DSDT_MAG_VIB_NV')
	static var DSDT_MAG_VIB_NV:GLuint;

	@:native('GL_HILO16_NV')
	static var HILO16_NV:GLuint;

	@:native('GL_SIGNED_HILO_NV')
	static var SIGNED_HILO_NV:GLuint;

	@:native('GL_SIGNED_HILO16_NV')
	static var SIGNED_HILO16_NV:GLuint;

	@:native('GL_SIGNED_RGBA_NV')
	static var SIGNED_RGBA_NV:GLuint;

	@:native('GL_SIGNED_RGBA8_NV')
	static var SIGNED_RGBA8_NV:GLuint;

	@:native('GL_SIGNED_RGB_NV')
	static var SIGNED_RGB_NV:GLuint;

	@:native('GL_SIGNED_RGB8_NV')
	static var SIGNED_RGB8_NV:GLuint;

	@:native('GL_SIGNED_LUMINANCE_NV')
	static var SIGNED_LUMINANCE_NV:GLuint;

	@:native('GL_SIGNED_LUMINANCE8_NV')
	static var SIGNED_LUMINANCE8_NV:GLuint;

	@:native('GL_SIGNED_LUMINANCE_ALPHA_NV')
	static var SIGNED_LUMINANCE_ALPHA_NV:GLuint;

	@:native('GL_SIGNED_LUMINANCE8_ALPHA8_NV')
	static var SIGNED_LUMINANCE8_ALPHA8_NV:GLuint;

	@:native('GL_SIGNED_ALPHA_NV')
	static var SIGNED_ALPHA_NV:GLuint;

	@:native('GL_SIGNED_ALPHA8_NV')
	static var SIGNED_ALPHA8_NV:GLuint;

	@:native('GL_SIGNED_INTENSITY_NV')
	static var SIGNED_INTENSITY_NV:GLuint;

	@:native('GL_SIGNED_INTENSITY8_NV')
	static var SIGNED_INTENSITY8_NV:GLuint;

	@:native('GL_DSDT8_NV')
	static var DSDT8_NV:GLuint;

	@:native('GL_DSDT8_MAG8_NV')
	static var DSDT8_MAG8_NV:GLuint;

	@:native('GL_DSDT8_MAG8_INTENSITY8_NV')
	static var DSDT8_MAG8_INTENSITY8_NV:GLuint;

	@:native('GL_SIGNED_RGB_UNSIGNED_ALPHA_NV')
	static var SIGNED_RGB_UNSIGNED_ALPHA_NV:GLuint;

	@:native('GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV')
	static var SIGNED_RGB8_UNSIGNED_ALPHA8_NV:GLuint;

	@:native('GL_HI_SCALE_NV')
	static var HI_SCALE_NV:GLuint;

	@:native('GL_LO_SCALE_NV')
	static var LO_SCALE_NV:GLuint;

	@:native('GL_DS_SCALE_NV')
	static var DS_SCALE_NV:GLuint;

	@:native('GL_DT_SCALE_NV')
	static var DT_SCALE_NV:GLuint;

	@:native('GL_MAGNITUDE_SCALE_NV')
	static var MAGNITUDE_SCALE_NV:GLuint;

	@:native('GL_VIBRANCE_SCALE_NV')
	static var VIBRANCE_SCALE_NV:GLuint;

	@:native('GL_HI_BIAS_NV')
	static var HI_BIAS_NV:GLuint;

	@:native('GL_LO_BIAS_NV')
	static var LO_BIAS_NV:GLuint;

	@:native('GL_DS_BIAS_NV')
	static var DS_BIAS_NV:GLuint;

	@:native('GL_DT_BIAS_NV')
	static var DT_BIAS_NV:GLuint;

	@:native('GL_MAGNITUDE_BIAS_NV')
	static var MAGNITUDE_BIAS_NV:GLuint;

	@:native('GL_VIBRANCE_BIAS_NV')
	static var VIBRANCE_BIAS_NV:GLuint;

	@:native('GL_TEXTURE_BORDER_VALUES_NV')
	static var TEXTURE_BORDER_VALUES_NV:GLuint;

	@:native('GL_TEXTURE_HI_SIZE_NV')
	static var TEXTURE_HI_SIZE_NV:GLuint;

	@:native('GL_TEXTURE_LO_SIZE_NV')
	static var TEXTURE_LO_SIZE_NV:GLuint;

	@:native('GL_TEXTURE_DS_SIZE_NV')
	static var TEXTURE_DS_SIZE_NV:GLuint;

	@:native('GL_TEXTURE_DT_SIZE_NV')
	static var TEXTURE_DT_SIZE_NV:GLuint;

	@:native('GL_TEXTURE_MAG_SIZE_NV')
	static var TEXTURE_MAG_SIZE_NV:GLuint;

	@:native('GL_DOT_PRODUCT_TEXTURE_3D_NV')
	static var DOT_PRODUCT_TEXTURE_3D_NV:GLuint;

	@:native('GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV')
	static var OFFSET_PROJECTIVE_TEXTURE_2D_NV:GLuint;

	@:native('GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV')
	static var OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV:GLuint;

	@:native('GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV')
	static var OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV:GLuint;

	@:native('GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV')
	static var OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV:GLuint;

	@:native('GL_OFFSET_HILO_TEXTURE_2D_NV')
	static var OFFSET_HILO_TEXTURE_2D_NV:GLuint;

	@:native('GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV')
	static var OFFSET_HILO_TEXTURE_RECTANGLE_NV:GLuint;

	@:native('GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV')
	static var OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV:GLuint;

	@:native('GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV')
	static var OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV:GLuint;

	@:native('GL_DEPENDENT_HILO_TEXTURE_2D_NV')
	static var DEPENDENT_HILO_TEXTURE_2D_NV:GLuint;

	@:native('GL_DEPENDENT_RGB_TEXTURE_3D_NV')
	static var DEPENDENT_RGB_TEXTURE_3D_NV:GLuint;

	@:native('GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV')
	static var DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV:GLuint;

	@:native('GL_DOT_PRODUCT_PASS_THROUGH_NV')
	static var DOT_PRODUCT_PASS_THROUGH_NV:GLuint;

	@:native('GL_DOT_PRODUCT_TEXTURE_1D_NV')
	static var DOT_PRODUCT_TEXTURE_1D_NV:GLuint;

	@:native('GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV')
	static var DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV:GLuint;

	@:native('GL_HILO8_NV')
	static var HILO8_NV:GLuint;

	@:native('GL_SIGNED_HILO8_NV')
	static var SIGNED_HILO8_NV:GLuint;

	@:native('GL_FORCE_BLUE_TO_ONE_NV')
	static var FORCE_BLUE_TO_ONE_NV:GLuint;

	@:native('GL_BACK_PRIMARY_COLOR_NV')
	static var BACK_PRIMARY_COLOR_NV:GLuint;

	@:native('GL_BACK_SECONDARY_COLOR_NV')
	static var BACK_SECONDARY_COLOR_NV:GLuint;

	@:native('GL_TEXTURE_COORD_NV')
	static var TEXTURE_COORD_NV:GLuint;

	@:native('GL_CLIP_DISTANCE_NV')
	static var CLIP_DISTANCE_NV:GLuint;

	@:native('GL_VERTEX_ID_NV')
	static var VERTEX_ID_NV:GLuint;

	@:native('GL_PRIMITIVE_ID_NV')
	static var PRIMITIVE_ID_NV:GLuint;

	@:native('GL_GENERIC_ATTRIB_NV')
	static var GENERIC_ATTRIB_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_ATTRIBS_NV')
	static var TRANSFORM_FEEDBACK_ATTRIBS_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV')
	static var TRANSFORM_FEEDBACK_BUFFER_MODE_NV:GLuint;

	@:native('GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV')
	static var MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV:GLuint;

	@:native('GL_ACTIVE_VARYINGS_NV')
	static var ACTIVE_VARYINGS_NV:GLuint;

	@:native('GL_ACTIVE_VARYING_MAX_LENGTH_NV')
	static var ACTIVE_VARYING_MAX_LENGTH_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_VARYINGS_NV')
	static var TRANSFORM_FEEDBACK_VARYINGS_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_START_NV')
	static var TRANSFORM_FEEDBACK_BUFFER_START_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV')
	static var TRANSFORM_FEEDBACK_BUFFER_SIZE_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_RECORD_NV')
	static var TRANSFORM_FEEDBACK_RECORD_NV:GLuint;

	@:native('GL_PRIMITIVES_GENERATED_NV')
	static var PRIMITIVES_GENERATED_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV')
	static var TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV:GLuint;

	@:native('GL_RASTERIZER_DISCARD_NV')
	static var RASTERIZER_DISCARD_NV:GLuint;

	@:native('GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV')
	static var MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV:GLuint;

	@:native('GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV')
	static var MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV:GLuint;

	@:native('GL_INTERLEAVED_ATTRIBS_NV')
	static var INTERLEAVED_ATTRIBS_NV:GLuint;

	@:native('GL_SEPARATE_ATTRIBS_NV')
	static var SEPARATE_ATTRIBS_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_NV')
	static var TRANSFORM_FEEDBACK_BUFFER_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV')
	static var TRANSFORM_FEEDBACK_BUFFER_BINDING_NV:GLuint;

	@:native('GL_LAYER_NV')
	static var LAYER_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_NV')
	static var TRANSFORM_FEEDBACK_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV')
	static var TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV')
	static var TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV:GLuint;

	@:native('GL_TRANSFORM_FEEDBACK_BINDING_NV')
	static var TRANSFORM_FEEDBACK_BINDING_NV:GLuint;

	@:native('GL_UNIFORM_BUFFER_UNIFIED_NV')
	static var UNIFORM_BUFFER_UNIFIED_NV:GLuint;

	@:native('GL_UNIFORM_BUFFER_ADDRESS_NV')
	static var UNIFORM_BUFFER_ADDRESS_NV:GLuint;

	@:native('GL_UNIFORM_BUFFER_LENGTH_NV')
	static var UNIFORM_BUFFER_LENGTH_NV:GLuint;

	@:native('GL_SURFACE_STATE_NV')
	static var SURFACE_STATE_NV:GLuint;

	@:native('GL_SURFACE_REGISTERED_NV')
	static var SURFACE_REGISTERED_NV:GLuint;

	@:native('GL_SURFACE_MAPPED_NV')
	static var SURFACE_MAPPED_NV:GLuint;

	@:native('GL_WRITE_DISCARD_NV')
	static var WRITE_DISCARD_NV:GLuint;

	@:native('GL_VERTEX_ARRAY_RANGE_NV')
	static var VERTEX_ARRAY_RANGE_NV:GLuint;

	@:native('GL_VERTEX_ARRAY_RANGE_LENGTH_NV')
	static var VERTEX_ARRAY_RANGE_LENGTH_NV:GLuint;

	@:native('GL_VERTEX_ARRAY_RANGE_VALID_NV')
	static var VERTEX_ARRAY_RANGE_VALID_NV:GLuint;

	@:native('GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV')
	static var MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV:GLuint;

	@:native('GL_VERTEX_ARRAY_RANGE_POINTER_NV')
	static var VERTEX_ARRAY_RANGE_POINTER_NV:GLuint;

	@:native('GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV')
	static var VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV')
	static var VERTEX_ATTRIB_ARRAY_UNIFIED_NV:GLuint;

	@:native('GL_ELEMENT_ARRAY_UNIFIED_NV')
	static var ELEMENT_ARRAY_UNIFIED_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV')
	static var VERTEX_ATTRIB_ARRAY_ADDRESS_NV:GLuint;

	@:native('GL_VERTEX_ARRAY_ADDRESS_NV')
	static var VERTEX_ARRAY_ADDRESS_NV:GLuint;

	@:native('GL_NORMAL_ARRAY_ADDRESS_NV')
	static var NORMAL_ARRAY_ADDRESS_NV:GLuint;

	@:native('GL_COLOR_ARRAY_ADDRESS_NV')
	static var COLOR_ARRAY_ADDRESS_NV:GLuint;

	@:native('GL_INDEX_ARRAY_ADDRESS_NV')
	static var INDEX_ARRAY_ADDRESS_NV:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_ADDRESS_NV')
	static var TEXTURE_COORD_ARRAY_ADDRESS_NV:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY_ADDRESS_NV')
	static var EDGE_FLAG_ARRAY_ADDRESS_NV:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV')
	static var SECONDARY_COLOR_ARRAY_ADDRESS_NV:GLuint;

	@:native('GL_FOG_COORD_ARRAY_ADDRESS_NV')
	static var FOG_COORD_ARRAY_ADDRESS_NV:GLuint;

	@:native('GL_ELEMENT_ARRAY_ADDRESS_NV')
	static var ELEMENT_ARRAY_ADDRESS_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV')
	static var VERTEX_ATTRIB_ARRAY_LENGTH_NV:GLuint;

	@:native('GL_VERTEX_ARRAY_LENGTH_NV')
	static var VERTEX_ARRAY_LENGTH_NV:GLuint;

	@:native('GL_NORMAL_ARRAY_LENGTH_NV')
	static var NORMAL_ARRAY_LENGTH_NV:GLuint;

	@:native('GL_COLOR_ARRAY_LENGTH_NV')
	static var COLOR_ARRAY_LENGTH_NV:GLuint;

	@:native('GL_INDEX_ARRAY_LENGTH_NV')
	static var INDEX_ARRAY_LENGTH_NV:GLuint;

	@:native('GL_TEXTURE_COORD_ARRAY_LENGTH_NV')
	static var TEXTURE_COORD_ARRAY_LENGTH_NV:GLuint;

	@:native('GL_EDGE_FLAG_ARRAY_LENGTH_NV')
	static var EDGE_FLAG_ARRAY_LENGTH_NV:GLuint;

	@:native('GL_SECONDARY_COLOR_ARRAY_LENGTH_NV')
	static var SECONDARY_COLOR_ARRAY_LENGTH_NV:GLuint;

	@:native('GL_FOG_COORD_ARRAY_LENGTH_NV')
	static var FOG_COORD_ARRAY_LENGTH_NV:GLuint;

	@:native('GL_ELEMENT_ARRAY_LENGTH_NV')
	static var ELEMENT_ARRAY_LENGTH_NV:GLuint;

	@:native('GL_DRAW_INDIRECT_UNIFIED_NV')
	static var DRAW_INDIRECT_UNIFIED_NV:GLuint;

	@:native('GL_DRAW_INDIRECT_ADDRESS_NV')
	static var DRAW_INDIRECT_ADDRESS_NV:GLuint;

	@:native('GL_DRAW_INDIRECT_LENGTH_NV')
	static var DRAW_INDIRECT_LENGTH_NV:GLuint;

	@:native('GL_VERTEX_PROGRAM_NV')
	static var VERTEX_PROGRAM_NV:GLuint;

	@:native('GL_VERTEX_STATE_PROGRAM_NV')
	static var VERTEX_STATE_PROGRAM_NV:GLuint;

	@:native('GL_ATTRIB_ARRAY_SIZE_NV')
	static var ATTRIB_ARRAY_SIZE_NV:GLuint;

	@:native('GL_ATTRIB_ARRAY_STRIDE_NV')
	static var ATTRIB_ARRAY_STRIDE_NV:GLuint;

	@:native('GL_ATTRIB_ARRAY_TYPE_NV')
	static var ATTRIB_ARRAY_TYPE_NV:GLuint;

	@:native('GL_CURRENT_ATTRIB_NV')
	static var CURRENT_ATTRIB_NV:GLuint;

	@:native('GL_PROGRAM_LENGTH_NV')
	static var PROGRAM_LENGTH_NV:GLuint;

	@:native('GL_PROGRAM_STRING_NV')
	static var PROGRAM_STRING_NV:GLuint;

	@:native('GL_MODELVIEW_PROJECTION_NV')
	static var MODELVIEW_PROJECTION_NV:GLuint;

	@:native('GL_IDENTITY_NV')
	static var IDENTITY_NV:GLuint;

	@:native('GL_INVERSE_NV')
	static var INVERSE_NV:GLuint;

	@:native('GL_TRANSPOSE_NV')
	static var TRANSPOSE_NV:GLuint;

	@:native('GL_INVERSE_TRANSPOSE_NV')
	static var INVERSE_TRANSPOSE_NV:GLuint;

	@:native('GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV')
	static var MAX_TRACK_MATRIX_STACK_DEPTH_NV:GLuint;

	@:native('GL_MAX_TRACK_MATRICES_NV')
	static var MAX_TRACK_MATRICES_NV:GLuint;

	@:native('GL_MATRIX0_NV')
	static var MATRIX0_NV:GLuint;

	@:native('GL_MATRIX1_NV')
	static var MATRIX1_NV:GLuint;

	@:native('GL_MATRIX2_NV')
	static var MATRIX2_NV:GLuint;

	@:native('GL_MATRIX3_NV')
	static var MATRIX3_NV:GLuint;

	@:native('GL_MATRIX4_NV')
	static var MATRIX4_NV:GLuint;

	@:native('GL_MATRIX5_NV')
	static var MATRIX5_NV:GLuint;

	@:native('GL_MATRIX6_NV')
	static var MATRIX6_NV:GLuint;

	@:native('GL_MATRIX7_NV')
	static var MATRIX7_NV:GLuint;

	@:native('GL_CURRENT_MATRIX_STACK_DEPTH_NV')
	static var CURRENT_MATRIX_STACK_DEPTH_NV:GLuint;

	@:native('GL_CURRENT_MATRIX_NV')
	static var CURRENT_MATRIX_NV:GLuint;

	@:native('GL_VERTEX_PROGRAM_POINT_SIZE_NV')
	static var VERTEX_PROGRAM_POINT_SIZE_NV:GLuint;

	@:native('GL_VERTEX_PROGRAM_TWO_SIDE_NV')
	static var VERTEX_PROGRAM_TWO_SIDE_NV:GLuint;

	@:native('GL_PROGRAM_PARAMETER_NV')
	static var PROGRAM_PARAMETER_NV:GLuint;

	@:native('GL_ATTRIB_ARRAY_POINTER_NV')
	static var ATTRIB_ARRAY_POINTER_NV:GLuint;

	@:native('GL_PROGRAM_TARGET_NV')
	static var PROGRAM_TARGET_NV:GLuint;

	@:native('GL_PROGRAM_RESIDENT_NV')
	static var PROGRAM_RESIDENT_NV:GLuint;

	@:native('GL_TRACK_MATRIX_NV')
	static var TRACK_MATRIX_NV:GLuint;

	@:native('GL_TRACK_MATRIX_TRANSFORM_NV')
	static var TRACK_MATRIX_TRANSFORM_NV:GLuint;

	@:native('GL_VERTEX_PROGRAM_BINDING_NV')
	static var VERTEX_PROGRAM_BINDING_NV:GLuint;

	@:native('GL_PROGRAM_ERROR_POSITION_NV')
	static var PROGRAM_ERROR_POSITION_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY0_NV')
	static var VERTEX_ATTRIB_ARRAY0_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY1_NV')
	static var VERTEX_ATTRIB_ARRAY1_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY2_NV')
	static var VERTEX_ATTRIB_ARRAY2_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY3_NV')
	static var VERTEX_ATTRIB_ARRAY3_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY4_NV')
	static var VERTEX_ATTRIB_ARRAY4_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY5_NV')
	static var VERTEX_ATTRIB_ARRAY5_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY6_NV')
	static var VERTEX_ATTRIB_ARRAY6_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY7_NV')
	static var VERTEX_ATTRIB_ARRAY7_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY8_NV')
	static var VERTEX_ATTRIB_ARRAY8_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY9_NV')
	static var VERTEX_ATTRIB_ARRAY9_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY10_NV')
	static var VERTEX_ATTRIB_ARRAY10_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY11_NV')
	static var VERTEX_ATTRIB_ARRAY11_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY12_NV')
	static var VERTEX_ATTRIB_ARRAY12_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY13_NV')
	static var VERTEX_ATTRIB_ARRAY13_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY14_NV')
	static var VERTEX_ATTRIB_ARRAY14_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY15_NV')
	static var VERTEX_ATTRIB_ARRAY15_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB0_4_NV')
	static var MAP1_VERTEX_ATTRIB0_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB1_4_NV')
	static var MAP1_VERTEX_ATTRIB1_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB2_4_NV')
	static var MAP1_VERTEX_ATTRIB2_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB3_4_NV')
	static var MAP1_VERTEX_ATTRIB3_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB4_4_NV')
	static var MAP1_VERTEX_ATTRIB4_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB5_4_NV')
	static var MAP1_VERTEX_ATTRIB5_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB6_4_NV')
	static var MAP1_VERTEX_ATTRIB6_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB7_4_NV')
	static var MAP1_VERTEX_ATTRIB7_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB8_4_NV')
	static var MAP1_VERTEX_ATTRIB8_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB9_4_NV')
	static var MAP1_VERTEX_ATTRIB9_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB10_4_NV')
	static var MAP1_VERTEX_ATTRIB10_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB11_4_NV')
	static var MAP1_VERTEX_ATTRIB11_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB12_4_NV')
	static var MAP1_VERTEX_ATTRIB12_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB13_4_NV')
	static var MAP1_VERTEX_ATTRIB13_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB14_4_NV')
	static var MAP1_VERTEX_ATTRIB14_4_NV:GLuint;

	@:native('GL_MAP1_VERTEX_ATTRIB15_4_NV')
	static var MAP1_VERTEX_ATTRIB15_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB0_4_NV')
	static var MAP2_VERTEX_ATTRIB0_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB1_4_NV')
	static var MAP2_VERTEX_ATTRIB1_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB2_4_NV')
	static var MAP2_VERTEX_ATTRIB2_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB3_4_NV')
	static var MAP2_VERTEX_ATTRIB3_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB4_4_NV')
	static var MAP2_VERTEX_ATTRIB4_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB5_4_NV')
	static var MAP2_VERTEX_ATTRIB5_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB6_4_NV')
	static var MAP2_VERTEX_ATTRIB6_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB7_4_NV')
	static var MAP2_VERTEX_ATTRIB7_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB8_4_NV')
	static var MAP2_VERTEX_ATTRIB8_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB9_4_NV')
	static var MAP2_VERTEX_ATTRIB9_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB10_4_NV')
	static var MAP2_VERTEX_ATTRIB10_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB11_4_NV')
	static var MAP2_VERTEX_ATTRIB11_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB12_4_NV')
	static var MAP2_VERTEX_ATTRIB12_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB13_4_NV')
	static var MAP2_VERTEX_ATTRIB13_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB14_4_NV')
	static var MAP2_VERTEX_ATTRIB14_4_NV:GLuint;

	@:native('GL_MAP2_VERTEX_ATTRIB15_4_NV')
	static var MAP2_VERTEX_ATTRIB15_4_NV:GLuint;

	@:native('GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV')
	static var VERTEX_ATTRIB_ARRAY_INTEGER_NV:GLuint;

	@:native('GL_VIDEO_BUFFER_NV')
	static var VIDEO_BUFFER_NV:GLuint;

	@:native('GL_VIDEO_BUFFER_BINDING_NV')
	static var VIDEO_BUFFER_BINDING_NV:GLuint;

	@:native('GL_FIELD_UPPER_NV')
	static var FIELD_UPPER_NV:GLuint;

	@:native('GL_FIELD_LOWER_NV')
	static var FIELD_LOWER_NV:GLuint;

	@:native('GL_NUM_VIDEO_CAPTURE_STREAMS_NV')
	static var NUM_VIDEO_CAPTURE_STREAMS_NV:GLuint;

	@:native('GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV')
	static var NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV:GLuint;

	@:native('GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV')
	static var VIDEO_CAPTURE_TO_422_SUPPORTED_NV:GLuint;

	@:native('GL_LAST_VIDEO_CAPTURE_STATUS_NV')
	static var LAST_VIDEO_CAPTURE_STATUS_NV:GLuint;

	@:native('GL_VIDEO_BUFFER_PITCH_NV')
	static var VIDEO_BUFFER_PITCH_NV:GLuint;

	@:native('GL_VIDEO_COLOR_CONVERSION_MATRIX_NV')
	static var VIDEO_COLOR_CONVERSION_MATRIX_NV:GLuint;

	@:native('GL_VIDEO_COLOR_CONVERSION_MAX_NV')
	static var VIDEO_COLOR_CONVERSION_MAX_NV:GLuint;

	@:native('GL_VIDEO_COLOR_CONVERSION_MIN_NV')
	static var VIDEO_COLOR_CONVERSION_MIN_NV:GLuint;

	@:native('GL_VIDEO_COLOR_CONVERSION_OFFSET_NV')
	static var VIDEO_COLOR_CONVERSION_OFFSET_NV:GLuint;

	@:native('GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV')
	static var VIDEO_BUFFER_INTERNAL_FORMAT_NV:GLuint;

	@:native('GL_PARTIAL_SUCCESS_NV')
	static var PARTIAL_SUCCESS_NV:GLuint;

	@:native('GL_SUCCESS_NV')
	static var SUCCESS_NV:GLuint;

	@:native('GL_FAILURE_NV')
	static var FAILURE_NV:GLuint;

	@:native('GL_YCBYCR8_422_NV')
	static var YCBYCR8_422_NV:GLuint;

	@:native('GL_YCBAYCR8A_4224_NV')
	static var YCBAYCR8A_4224_NV:GLuint;

	@:native('GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV')
	static var Z6Y10Z6CB10Z6Y10Z6CR10_422_NV:GLuint;

	@:native('GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV')
	static var Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV:GLuint;

	@:native('GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV')
	static var Z4Y12Z4CB12Z4Y12Z4CR12_422_NV:GLuint;

	@:native('GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV')
	static var Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV:GLuint;

	@:native('GL_Z4Y12Z4CB12Z4CR12_444_NV')
	static var Z4Y12Z4CB12Z4CR12_444_NV:GLuint;

	@:native('GL_VIDEO_CAPTURE_FRAME_WIDTH_NV')
	static var VIDEO_CAPTURE_FRAME_WIDTH_NV:GLuint;

	@:native('GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV')
	static var VIDEO_CAPTURE_FRAME_HEIGHT_NV:GLuint;

	@:native('GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV')
	static var VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV:GLuint;

	@:native('GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV')
	static var VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV:GLuint;

	@:native('GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV')
	static var VIDEO_CAPTURE_SURFACE_ORIGIN_NV:GLuint;

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

	@:native('GL_FIXED_OES')
	static var FIXED_OES:GLuint;

	@:native('GL_IMPLEMENTATION_COLOR_READ_TYPE_OES')
	static var IMPLEMENTATION_COLOR_READ_TYPE_OES:GLuint;

	@:native('GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES')
	static var IMPLEMENTATION_COLOR_READ_FORMAT_OES:GLuint;

	@:native('GL_INTERLACE_OML')
	static var INTERLACE_OML:GLuint;

	@:native('GL_INTERLACE_READ_OML')
	static var INTERLACE_READ_OML:GLuint;

	@:native('GL_PACK_RESAMPLE_OML')
	static var PACK_RESAMPLE_OML:GLuint;

	@:native('GL_UNPACK_RESAMPLE_OML')
	static var UNPACK_RESAMPLE_OML:GLuint;

	@:native('GL_RESAMPLE_REPLICATE_OML')
	static var RESAMPLE_REPLICATE_OML:GLuint;

	@:native('GL_RESAMPLE_ZERO_FILL_OML')
	static var RESAMPLE_ZERO_FILL_OML:GLuint;

	@:native('GL_RESAMPLE_AVERAGE_OML')
	static var RESAMPLE_AVERAGE_OML:GLuint;

	@:native('GL_RESAMPLE_DECIMATE_OML')
	static var RESAMPLE_DECIMATE_OML:GLuint;

	@:native('GL_FORMAT_SUBSAMPLE_24_24_OML')
	static var FORMAT_SUBSAMPLE_24_24_OML:GLuint;

	@:native('GL_FORMAT_SUBSAMPLE_244_244_OML')
	static var FORMAT_SUBSAMPLE_244_244_OML:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR:GLuint;

	@:native('GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR')
	static var FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR:GLuint;

	@:native('GL_MAX_VIEWS_OVR')
	static var MAX_VIEWS_OVR:GLuint;

	@:native('GL_FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR')
	static var FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR:GLuint;

	@:native('GL_PREFER_DOUBLEBUFFER_HINT_PGI')
	static var PREFER_DOUBLEBUFFER_HINT_PGI:GLuint;

	@:native('GL_CONSERVE_MEMORY_HINT_PGI')
	static var CONSERVE_MEMORY_HINT_PGI:GLuint;

	@:native('GL_RECLAIM_MEMORY_HINT_PGI')
	static var RECLAIM_MEMORY_HINT_PGI:GLuint;

	@:native('GL_NATIVE_GRAPHICS_HANDLE_PGI')
	static var NATIVE_GRAPHICS_HANDLE_PGI:GLuint;

	@:native('GL_NATIVE_GRAPHICS_BEGIN_HINT_PGI')
	static var NATIVE_GRAPHICS_BEGIN_HINT_PGI:GLuint;

	@:native('GL_NATIVE_GRAPHICS_END_HINT_PGI')
	static var NATIVE_GRAPHICS_END_HINT_PGI:GLuint;

	@:native('GL_ALWAYS_FAST_HINT_PGI')
	static var ALWAYS_FAST_HINT_PGI:GLuint;

	@:native('GL_ALWAYS_SOFT_HINT_PGI')
	static var ALWAYS_SOFT_HINT_PGI:GLuint;

	@:native('GL_ALLOW_DRAW_OBJ_HINT_PGI')
	static var ALLOW_DRAW_OBJ_HINT_PGI:GLuint;

	@:native('GL_ALLOW_DRAW_WIN_HINT_PGI')
	static var ALLOW_DRAW_WIN_HINT_PGI:GLuint;

	@:native('GL_ALLOW_DRAW_FRG_HINT_PGI')
	static var ALLOW_DRAW_FRG_HINT_PGI:GLuint;

	@:native('GL_ALLOW_DRAW_MEM_HINT_PGI')
	static var ALLOW_DRAW_MEM_HINT_PGI:GLuint;

	@:native('GL_STRICT_DEPTHFUNC_HINT_PGI')
	static var STRICT_DEPTHFUNC_HINT_PGI:GLuint;

	@:native('GL_STRICT_LIGHTING_HINT_PGI')
	static var STRICT_LIGHTING_HINT_PGI:GLuint;

	@:native('GL_STRICT_SCISSOR_HINT_PGI')
	static var STRICT_SCISSOR_HINT_PGI:GLuint;

	@:native('GL_FULL_STIPPLE_HINT_PGI')
	static var FULL_STIPPLE_HINT_PGI:GLuint;

	@:native('GL_CLIP_NEAR_HINT_PGI')
	static var CLIP_NEAR_HINT_PGI:GLuint;

	@:native('GL_CLIP_FAR_HINT_PGI')
	static var CLIP_FAR_HINT_PGI:GLuint;

	@:native('GL_WIDE_LINE_HINT_PGI')
	static var WIDE_LINE_HINT_PGI:GLuint;

	@:native('GL_BACK_NORMALS_HINT_PGI')
	static var BACK_NORMALS_HINT_PGI:GLuint;

	@:native('GL_VERTEX_DATA_HINT_PGI')
	static var VERTEX_DATA_HINT_PGI:GLuint;

	@:native('GL_VERTEX_CONSISTENT_HINT_PGI')
	static var VERTEX_CONSISTENT_HINT_PGI:GLuint;

	@:native('GL_MATERIAL_SIDE_HINT_PGI')
	static var MATERIAL_SIDE_HINT_PGI:GLuint;

	@:native('GL_MAX_VERTEX_HINT_PGI')
	static var MAX_VERTEX_HINT_PGI:GLuint;

	@:native('GL_COLOR3_BIT_PGI')
	static var COLOR3_BIT_PGI:GLuint;

	@:native('GL_COLOR4_BIT_PGI')
	static var COLOR4_BIT_PGI:GLuint;

	@:native('GL_EDGEFLAG_BIT_PGI')
	static var EDGEFLAG_BIT_PGI:GLuint;

	@:native('GL_INDEX_BIT_PGI')
	static var INDEX_BIT_PGI:GLuint;

	@:native('GL_MAT_AMBIENT_BIT_PGI')
	static var MAT_AMBIENT_BIT_PGI:GLuint;

	@:native('GL_MAT_AMBIENT_AND_DIFFUSE_BIT_PGI')
	static var MAT_AMBIENT_AND_DIFFUSE_BIT_PGI:GLuint;

	@:native('GL_MAT_DIFFUSE_BIT_PGI')
	static var MAT_DIFFUSE_BIT_PGI:GLuint;

	@:native('GL_MAT_EMISSION_BIT_PGI')
	static var MAT_EMISSION_BIT_PGI:GLuint;

	@:native('GL_MAT_COLOR_INDEXES_BIT_PGI')
	static var MAT_COLOR_INDEXES_BIT_PGI:GLuint;

	@:native('GL_MAT_SHININESS_BIT_PGI')
	static var MAT_SHININESS_BIT_PGI:GLuint;

	@:native('GL_MAT_SPECULAR_BIT_PGI')
	static var MAT_SPECULAR_BIT_PGI:GLuint;

	@:native('GL_NORMAL_BIT_PGI')
	static var NORMAL_BIT_PGI:GLuint;

	@:native('GL_TEXCOORD1_BIT_PGI')
	static var TEXCOORD1_BIT_PGI:GLuint;

	@:native('GL_TEXCOORD2_BIT_PGI')
	static var TEXCOORD2_BIT_PGI:GLuint;

	@:native('GL_TEXCOORD3_BIT_PGI')
	static var TEXCOORD3_BIT_PGI:GLuint;

	@:native('GL_TEXCOORD4_BIT_PGI')
	static var TEXCOORD4_BIT_PGI:GLuint;

	@:native('GL_VERTEX23_BIT_PGI')
	static var VERTEX23_BIT_PGI:GLuint;

	@:native('GL_VERTEX4_BIT_PGI')
	static var VERTEX4_BIT_PGI:GLuint;

	@:native('GL_SCREEN_COORDINATES_REND')
	static var SCREEN_COORDINATES_REND:GLuint;

	@:native('GL_INVERTED_SCREEN_W_REND')
	static var INVERTED_SCREEN_W_REND:GLuint;

	@:native('GL_RGB_S3TC')
	static var RGB_S3TC:GLuint;

	@:native('GL_RGB4_S3TC')
	static var RGB4_S3TC:GLuint;

	@:native('GL_RGBA_S3TC')
	static var RGBA_S3TC:GLuint;

	@:native('GL_RGBA4_S3TC')
	static var RGBA4_S3TC:GLuint;

	@:native('GL_RGBA_DXT5_S3TC')
	static var RGBA_DXT5_S3TC:GLuint;

	@:native('GL_RGBA4_DXT5_S3TC')
	static var RGBA4_DXT5_S3TC:GLuint;

	@:native('GL_DETAIL_TEXTURE_2D_SGIS')
	static var DETAIL_TEXTURE_2D_SGIS:GLuint;

	@:native('GL_DETAIL_TEXTURE_2D_BINDING_SGIS')
	static var DETAIL_TEXTURE_2D_BINDING_SGIS:GLuint;

	@:native('GL_LINEAR_DETAIL_SGIS')
	static var LINEAR_DETAIL_SGIS:GLuint;

	@:native('GL_LINEAR_DETAIL_ALPHA_SGIS')
	static var LINEAR_DETAIL_ALPHA_SGIS:GLuint;

	@:native('GL_LINEAR_DETAIL_COLOR_SGIS')
	static var LINEAR_DETAIL_COLOR_SGIS:GLuint;

	@:native('GL_DETAIL_TEXTURE_LEVEL_SGIS')
	static var DETAIL_TEXTURE_LEVEL_SGIS:GLuint;

	@:native('GL_DETAIL_TEXTURE_MODE_SGIS')
	static var DETAIL_TEXTURE_MODE_SGIS:GLuint;

	@:native('GL_DETAIL_TEXTURE_FUNC_POINTS_SGIS')
	static var DETAIL_TEXTURE_FUNC_POINTS_SGIS:GLuint;

	@:native('GL_FOG_FUNC_SGIS')
	static var FOG_FUNC_SGIS:GLuint;

	@:native('GL_FOG_FUNC_POINTS_SGIS')
	static var FOG_FUNC_POINTS_SGIS:GLuint;

	@:native('GL_MAX_FOG_FUNC_POINTS_SGIS')
	static var MAX_FOG_FUNC_POINTS_SGIS:GLuint;

	@:native('GL_GENERATE_MIPMAP_SGIS')
	static var GENERATE_MIPMAP_SGIS:GLuint;

	@:native('GL_GENERATE_MIPMAP_HINT_SGIS')
	static var GENERATE_MIPMAP_HINT_SGIS:GLuint;

	@:native('GL_MULTISAMPLE_SGIS')
	static var MULTISAMPLE_SGIS:GLuint;

	@:native('GL_SAMPLE_ALPHA_TO_MASK_SGIS')
	static var SAMPLE_ALPHA_TO_MASK_SGIS:GLuint;

	@:native('GL_SAMPLE_ALPHA_TO_ONE_SGIS')
	static var SAMPLE_ALPHA_TO_ONE_SGIS:GLuint;

	@:native('GL_SAMPLE_MASK_SGIS')
	static var SAMPLE_MASK_SGIS:GLuint;

	@:native('GL_1PASS_SGIS')
	static var _1PASS_SGIS:GLuint;

	@:native('GL_2PASS_0_SGIS')
	static var _2PASS_0_SGIS:GLuint;

	@:native('GL_2PASS_1_SGIS')
	static var _2PASS_1_SGIS:GLuint;

	@:native('GL_4PASS_0_SGIS')
	static var _4PASS_0_SGIS:GLuint;

	@:native('GL_4PASS_1_SGIS')
	static var _4PASS_1_SGIS:GLuint;

	@:native('GL_4PASS_2_SGIS')
	static var _4PASS_2_SGIS:GLuint;

	@:native('GL_4PASS_3_SGIS')
	static var _4PASS_3_SGIS:GLuint;

	@:native('GL_SAMPLE_BUFFERS_SGIS')
	static var SAMPLE_BUFFERS_SGIS:GLuint;

	@:native('GL_SAMPLES_SGIS')
	static var SAMPLES_SGIS:GLuint;

	@:native('GL_SAMPLE_MASK_VALUE_SGIS')
	static var SAMPLE_MASK_VALUE_SGIS:GLuint;

	@:native('GL_SAMPLE_MASK_INVERT_SGIS')
	static var SAMPLE_MASK_INVERT_SGIS:GLuint;

	@:native('GL_SAMPLE_PATTERN_SGIS')
	static var SAMPLE_PATTERN_SGIS:GLuint;

	@:native('GL_PIXEL_TEXTURE_SGIS')
	static var PIXEL_TEXTURE_SGIS:GLuint;

	@:native('GL_PIXEL_FRAGMENT_RGB_SOURCE_SGIS')
	static var PIXEL_FRAGMENT_RGB_SOURCE_SGIS:GLuint;

	@:native('GL_PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS')
	static var PIXEL_FRAGMENT_ALPHA_SOURCE_SGIS:GLuint;

	@:native('GL_PIXEL_GROUP_COLOR_SGIS')
	static var PIXEL_GROUP_COLOR_SGIS:GLuint;

	@:native('GL_EYE_DISTANCE_TO_POINT_SGIS')
	static var EYE_DISTANCE_TO_POINT_SGIS:GLuint;

	@:native('GL_OBJECT_DISTANCE_TO_POINT_SGIS')
	static var OBJECT_DISTANCE_TO_POINT_SGIS:GLuint;

	@:native('GL_EYE_DISTANCE_TO_LINE_SGIS')
	static var EYE_DISTANCE_TO_LINE_SGIS:GLuint;

	@:native('GL_OBJECT_DISTANCE_TO_LINE_SGIS')
	static var OBJECT_DISTANCE_TO_LINE_SGIS:GLuint;

	@:native('GL_EYE_POINT_SGIS')
	static var EYE_POINT_SGIS:GLuint;

	@:native('GL_OBJECT_POINT_SGIS')
	static var OBJECT_POINT_SGIS:GLuint;

	@:native('GL_EYE_LINE_SGIS')
	static var EYE_LINE_SGIS:GLuint;

	@:native('GL_OBJECT_LINE_SGIS')
	static var OBJECT_LINE_SGIS:GLuint;

	@:native('GL_POINT_SIZE_MIN_SGIS')
	static var POINT_SIZE_MIN_SGIS:GLuint;

	@:native('GL_POINT_SIZE_MAX_SGIS')
	static var POINT_SIZE_MAX_SGIS:GLuint;

	@:native('GL_POINT_FADE_THRESHOLD_SIZE_SGIS')
	static var POINT_FADE_THRESHOLD_SIZE_SGIS:GLuint;

	@:native('GL_DISTANCE_ATTENUATION_SGIS')
	static var DISTANCE_ATTENUATION_SGIS:GLuint;

	@:native('GL_LINEAR_SHARPEN_SGIS')
	static var LINEAR_SHARPEN_SGIS:GLuint;

	@:native('GL_LINEAR_SHARPEN_ALPHA_SGIS')
	static var LINEAR_SHARPEN_ALPHA_SGIS:GLuint;

	@:native('GL_LINEAR_SHARPEN_COLOR_SGIS')
	static var LINEAR_SHARPEN_COLOR_SGIS:GLuint;

	@:native('GL_SHARPEN_TEXTURE_FUNC_POINTS_SGIS')
	static var SHARPEN_TEXTURE_FUNC_POINTS_SGIS:GLuint;

	@:native('GL_PACK_SKIP_VOLUMES_SGIS')
	static var PACK_SKIP_VOLUMES_SGIS:GLuint;

	@:native('GL_PACK_IMAGE_DEPTH_SGIS')
	static var PACK_IMAGE_DEPTH_SGIS:GLuint;

	@:native('GL_UNPACK_SKIP_VOLUMES_SGIS')
	static var UNPACK_SKIP_VOLUMES_SGIS:GLuint;

	@:native('GL_UNPACK_IMAGE_DEPTH_SGIS')
	static var UNPACK_IMAGE_DEPTH_SGIS:GLuint;

	@:native('GL_TEXTURE_4D_SGIS')
	static var TEXTURE_4D_SGIS:GLuint;

	@:native('GL_PROXY_TEXTURE_4D_SGIS')
	static var PROXY_TEXTURE_4D_SGIS:GLuint;

	@:native('GL_TEXTURE_4DSIZE_SGIS')
	static var TEXTURE_4DSIZE_SGIS:GLuint;

	@:native('GL_TEXTURE_WRAP_Q_SGIS')
	static var TEXTURE_WRAP_Q_SGIS:GLuint;

	@:native('GL_MAX_4D_TEXTURE_SIZE_SGIS')
	static var MAX_4D_TEXTURE_SIZE_SGIS:GLuint;

	@:native('GL_TEXTURE_4D_BINDING_SGIS')
	static var TEXTURE_4D_BINDING_SGIS:GLuint;

	@:native('GL_CLAMP_TO_BORDER_SGIS')
	static var CLAMP_TO_BORDER_SGIS:GLuint;

	@:native('GL_TEXTURE_COLOR_WRITEMASK_SGIS')
	static var TEXTURE_COLOR_WRITEMASK_SGIS:GLuint;

	@:native('GL_CLAMP_TO_EDGE_SGIS')
	static var CLAMP_TO_EDGE_SGIS:GLuint;

	@:native('GL_FILTER4_SGIS')
	static var FILTER4_SGIS:GLuint;

	@:native('GL_TEXTURE_FILTER4_SIZE_SGIS')
	static var TEXTURE_FILTER4_SIZE_SGIS:GLuint;

	@:native('GL_TEXTURE_MIN_LOD_SGIS')
	static var TEXTURE_MIN_LOD_SGIS:GLuint;

	@:native('GL_TEXTURE_MAX_LOD_SGIS')
	static var TEXTURE_MAX_LOD_SGIS:GLuint;

	@:native('GL_TEXTURE_BASE_LEVEL_SGIS')
	static var TEXTURE_BASE_LEVEL_SGIS:GLuint;

	@:native('GL_TEXTURE_MAX_LEVEL_SGIS')
	static var TEXTURE_MAX_LEVEL_SGIS:GLuint;

	@:native('GL_DUAL_ALPHA4_SGIS')
	static var DUAL_ALPHA4_SGIS:GLuint;

	@:native('GL_DUAL_ALPHA8_SGIS')
	static var DUAL_ALPHA8_SGIS:GLuint;

	@:native('GL_DUAL_ALPHA12_SGIS')
	static var DUAL_ALPHA12_SGIS:GLuint;

	@:native('GL_DUAL_ALPHA16_SGIS')
	static var DUAL_ALPHA16_SGIS:GLuint;

	@:native('GL_DUAL_LUMINANCE4_SGIS')
	static var DUAL_LUMINANCE4_SGIS:GLuint;

	@:native('GL_DUAL_LUMINANCE8_SGIS')
	static var DUAL_LUMINANCE8_SGIS:GLuint;

	@:native('GL_DUAL_LUMINANCE12_SGIS')
	static var DUAL_LUMINANCE12_SGIS:GLuint;

	@:native('GL_DUAL_LUMINANCE16_SGIS')
	static var DUAL_LUMINANCE16_SGIS:GLuint;

	@:native('GL_DUAL_INTENSITY4_SGIS')
	static var DUAL_INTENSITY4_SGIS:GLuint;

	@:native('GL_DUAL_INTENSITY8_SGIS')
	static var DUAL_INTENSITY8_SGIS:GLuint;

	@:native('GL_DUAL_INTENSITY12_SGIS')
	static var DUAL_INTENSITY12_SGIS:GLuint;

	@:native('GL_DUAL_INTENSITY16_SGIS')
	static var DUAL_INTENSITY16_SGIS:GLuint;

	@:native('GL_DUAL_LUMINANCE_ALPHA4_SGIS')
	static var DUAL_LUMINANCE_ALPHA4_SGIS:GLuint;

	@:native('GL_DUAL_LUMINANCE_ALPHA8_SGIS')
	static var DUAL_LUMINANCE_ALPHA8_SGIS:GLuint;

	@:native('GL_QUAD_ALPHA4_SGIS')
	static var QUAD_ALPHA4_SGIS:GLuint;

	@:native('GL_QUAD_ALPHA8_SGIS')
	static var QUAD_ALPHA8_SGIS:GLuint;

	@:native('GL_QUAD_LUMINANCE4_SGIS')
	static var QUAD_LUMINANCE4_SGIS:GLuint;

	@:native('GL_QUAD_LUMINANCE8_SGIS')
	static var QUAD_LUMINANCE8_SGIS:GLuint;

	@:native('GL_QUAD_INTENSITY4_SGIS')
	static var QUAD_INTENSITY4_SGIS:GLuint;

	@:native('GL_QUAD_INTENSITY8_SGIS')
	static var QUAD_INTENSITY8_SGIS:GLuint;

	@:native('GL_DUAL_TEXTURE_SELECT_SGIS')
	static var DUAL_TEXTURE_SELECT_SGIS:GLuint;

	@:native('GL_QUAD_TEXTURE_SELECT_SGIS')
	static var QUAD_TEXTURE_SELECT_SGIS:GLuint;

	@:native('GL_ASYNC_MARKER_SGIX')
	static var ASYNC_MARKER_SGIX:GLuint;

	@:native('GL_ASYNC_HISTOGRAM_SGIX')
	static var ASYNC_HISTOGRAM_SGIX:GLuint;

	@:native('GL_MAX_ASYNC_HISTOGRAM_SGIX')
	static var MAX_ASYNC_HISTOGRAM_SGIX:GLuint;

	@:native('GL_ASYNC_TEX_IMAGE_SGIX')
	static var ASYNC_TEX_IMAGE_SGIX:GLuint;

	@:native('GL_ASYNC_DRAW_PIXELS_SGIX')
	static var ASYNC_DRAW_PIXELS_SGIX:GLuint;

	@:native('GL_ASYNC_READ_PIXELS_SGIX')
	static var ASYNC_READ_PIXELS_SGIX:GLuint;

	@:native('GL_MAX_ASYNC_TEX_IMAGE_SGIX')
	static var MAX_ASYNC_TEX_IMAGE_SGIX:GLuint;

	@:native('GL_MAX_ASYNC_DRAW_PIXELS_SGIX')
	static var MAX_ASYNC_DRAW_PIXELS_SGIX:GLuint;

	@:native('GL_MAX_ASYNC_READ_PIXELS_SGIX')
	static var MAX_ASYNC_READ_PIXELS_SGIX:GLuint;

	@:native('GL_ALPHA_MIN_SGIX')
	static var ALPHA_MIN_SGIX:GLuint;

	@:native('GL_ALPHA_MAX_SGIX')
	static var ALPHA_MAX_SGIX:GLuint;

	@:native('GL_CALLIGRAPHIC_FRAGMENT_SGIX')
	static var CALLIGRAPHIC_FRAGMENT_SGIX:GLuint;

	@:native('GL_LINEAR_CLIPMAP_LINEAR_SGIX')
	static var LINEAR_CLIPMAP_LINEAR_SGIX:GLuint;

	@:native('GL_TEXTURE_CLIPMAP_CENTER_SGIX')
	static var TEXTURE_CLIPMAP_CENTER_SGIX:GLuint;

	@:native('GL_TEXTURE_CLIPMAP_FRAME_SGIX')
	static var TEXTURE_CLIPMAP_FRAME_SGIX:GLuint;

	@:native('GL_TEXTURE_CLIPMAP_OFFSET_SGIX')
	static var TEXTURE_CLIPMAP_OFFSET_SGIX:GLuint;

	@:native('GL_TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX')
	static var TEXTURE_CLIPMAP_VIRTUAL_DEPTH_SGIX:GLuint;

	@:native('GL_TEXTURE_CLIPMAP_LOD_OFFSET_SGIX')
	static var TEXTURE_CLIPMAP_LOD_OFFSET_SGIX:GLuint;

	@:native('GL_TEXTURE_CLIPMAP_DEPTH_SGIX')
	static var TEXTURE_CLIPMAP_DEPTH_SGIX:GLuint;

	@:native('GL_MAX_CLIPMAP_DEPTH_SGIX')
	static var MAX_CLIPMAP_DEPTH_SGIX:GLuint;

	@:native('GL_MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX')
	static var MAX_CLIPMAP_VIRTUAL_DEPTH_SGIX:GLuint;

	@:native('GL_NEAREST_CLIPMAP_NEAREST_SGIX')
	static var NEAREST_CLIPMAP_NEAREST_SGIX:GLuint;

	@:native('GL_NEAREST_CLIPMAP_LINEAR_SGIX')
	static var NEAREST_CLIPMAP_LINEAR_SGIX:GLuint;

	@:native('GL_LINEAR_CLIPMAP_NEAREST_SGIX')
	static var LINEAR_CLIPMAP_NEAREST_SGIX:GLuint;

	@:native('GL_CONVOLUTION_HINT_SGIX')
	static var CONVOLUTION_HINT_SGIX:GLuint;

	@:native('GL_DEPTH_COMPONENT16_SGIX')
	static var DEPTH_COMPONENT16_SGIX:GLuint;

	@:native('GL_DEPTH_COMPONENT24_SGIX')
	static var DEPTH_COMPONENT24_SGIX:GLuint;

	@:native('GL_DEPTH_COMPONENT32_SGIX')
	static var DEPTH_COMPONENT32_SGIX:GLuint;

	@:native('GL_FOG_OFFSET_SGIX')
	static var FOG_OFFSET_SGIX:GLuint;

	@:native('GL_FOG_OFFSET_VALUE_SGIX')
	static var FOG_OFFSET_VALUE_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHTING_SGIX')
	static var FRAGMENT_LIGHTING_SGIX:GLuint;

	@:native('GL_FRAGMENT_COLOR_MATERIAL_SGIX')
	static var FRAGMENT_COLOR_MATERIAL_SGIX:GLuint;

	@:native('GL_FRAGMENT_COLOR_MATERIAL_FACE_SGIX')
	static var FRAGMENT_COLOR_MATERIAL_FACE_SGIX:GLuint;

	@:native('GL_FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX')
	static var FRAGMENT_COLOR_MATERIAL_PARAMETER_SGIX:GLuint;

	@:native('GL_MAX_FRAGMENT_LIGHTS_SGIX')
	static var MAX_FRAGMENT_LIGHTS_SGIX:GLuint;

	@:native('GL_MAX_ACTIVE_LIGHTS_SGIX')
	static var MAX_ACTIVE_LIGHTS_SGIX:GLuint;

	@:native('GL_CURRENT_RASTER_NORMAL_SGIX')
	static var CURRENT_RASTER_NORMAL_SGIX:GLuint;

	@:native('GL_LIGHT_ENV_MODE_SGIX')
	static var LIGHT_ENV_MODE_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX')
	static var FRAGMENT_LIGHT_MODEL_LOCAL_VIEWER_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX')
	static var FRAGMENT_LIGHT_MODEL_TWO_SIDE_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX')
	static var FRAGMENT_LIGHT_MODEL_AMBIENT_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX')
	static var FRAGMENT_LIGHT_MODEL_NORMAL_INTERPOLATION_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHT0_SGIX')
	static var FRAGMENT_LIGHT0_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHT1_SGIX')
	static var FRAGMENT_LIGHT1_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHT2_SGIX')
	static var FRAGMENT_LIGHT2_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHT3_SGIX')
	static var FRAGMENT_LIGHT3_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHT4_SGIX')
	static var FRAGMENT_LIGHT4_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHT5_SGIX')
	static var FRAGMENT_LIGHT5_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHT6_SGIX')
	static var FRAGMENT_LIGHT6_SGIX:GLuint;

	@:native('GL_FRAGMENT_LIGHT7_SGIX')
	static var FRAGMENT_LIGHT7_SGIX:GLuint;

	@:native('GL_FRAMEZOOM_SGIX')
	static var FRAMEZOOM_SGIX:GLuint;

	@:native('GL_FRAMEZOOM_FACTOR_SGIX')
	static var FRAMEZOOM_FACTOR_SGIX:GLuint;

	@:native('GL_MAX_FRAMEZOOM_FACTOR_SGIX')
	static var MAX_FRAMEZOOM_FACTOR_SGIX:GLuint;

	@:native('GL_INSTRUMENT_BUFFER_POINTER_SGIX')
	static var INSTRUMENT_BUFFER_POINTER_SGIX:GLuint;

	@:native('GL_INSTRUMENT_MEASUREMENTS_SGIX')
	static var INSTRUMENT_MEASUREMENTS_SGIX:GLuint;

	@:native('GL_INTERLACE_SGIX')
	static var INTERLACE_SGIX:GLuint;

	@:native('GL_IR_INSTRUMENT1_SGIX')
	static var IR_INSTRUMENT1_SGIX:GLuint;

	@:native('GL_LIST_PRIORITY_SGIX')
	static var LIST_PRIORITY_SGIX:GLuint;

	@:native('GL_PIXEL_TEX_GEN_SGIX')
	static var PIXEL_TEX_GEN_SGIX:GLuint;

	@:native('GL_PIXEL_TEX_GEN_MODE_SGIX')
	static var PIXEL_TEX_GEN_MODE_SGIX:GLuint;

	@:native('GL_PIXEL_TILE_BEST_ALIGNMENT_SGIX')
	static var PIXEL_TILE_BEST_ALIGNMENT_SGIX:GLuint;

	@:native('GL_PIXEL_TILE_CACHE_INCREMENT_SGIX')
	static var PIXEL_TILE_CACHE_INCREMENT_SGIX:GLuint;

	@:native('GL_PIXEL_TILE_WIDTH_SGIX')
	static var PIXEL_TILE_WIDTH_SGIX:GLuint;

	@:native('GL_PIXEL_TILE_HEIGHT_SGIX')
	static var PIXEL_TILE_HEIGHT_SGIX:GLuint;

	@:native('GL_PIXEL_TILE_GRID_WIDTH_SGIX')
	static var PIXEL_TILE_GRID_WIDTH_SGIX:GLuint;

	@:native('GL_PIXEL_TILE_GRID_HEIGHT_SGIX')
	static var PIXEL_TILE_GRID_HEIGHT_SGIX:GLuint;

	@:native('GL_PIXEL_TILE_GRID_DEPTH_SGIX')
	static var PIXEL_TILE_GRID_DEPTH_SGIX:GLuint;

	@:native('GL_PIXEL_TILE_CACHE_SIZE_SGIX')
	static var PIXEL_TILE_CACHE_SIZE_SGIX:GLuint;

	@:native('GL_TEXTURE_DEFORMATION_BIT_SGIX')
	static var TEXTURE_DEFORMATION_BIT_SGIX:GLuint;

	@:native('GL_GEOMETRY_DEFORMATION_BIT_SGIX')
	static var GEOMETRY_DEFORMATION_BIT_SGIX:GLuint;

	@:native('GL_GEOMETRY_DEFORMATION_SGIX')
	static var GEOMETRY_DEFORMATION_SGIX:GLuint;

	@:native('GL_TEXTURE_DEFORMATION_SGIX')
	static var TEXTURE_DEFORMATION_SGIX:GLuint;

	@:native('GL_DEFORMATIONS_MASK_SGIX')
	static var DEFORMATIONS_MASK_SGIX:GLuint;

	@:native('GL_MAX_DEFORMATION_ORDER_SGIX')
	static var MAX_DEFORMATION_ORDER_SGIX:GLuint;

	@:native('GL_REFERENCE_PLANE_SGIX')
	static var REFERENCE_PLANE_SGIX:GLuint;

	@:native('GL_REFERENCE_PLANE_EQUATION_SGIX')
	static var REFERENCE_PLANE_EQUATION_SGIX:GLuint;

	@:native('GL_PACK_RESAMPLE_SGIX')
	static var PACK_RESAMPLE_SGIX:GLuint;

	@:native('GL_UNPACK_RESAMPLE_SGIX')
	static var UNPACK_RESAMPLE_SGIX:GLuint;

	@:native('GL_RESAMPLE_REPLICATE_SGIX')
	static var RESAMPLE_REPLICATE_SGIX:GLuint;

	@:native('GL_RESAMPLE_ZERO_FILL_SGIX')
	static var RESAMPLE_ZERO_FILL_SGIX:GLuint;

	@:native('GL_RESAMPLE_DECIMATE_SGIX')
	static var RESAMPLE_DECIMATE_SGIX:GLuint;

	@:native('GL_SCALEBIAS_HINT_SGIX')
	static var SCALEBIAS_HINT_SGIX:GLuint;

	@:native('GL_TEXTURE_COMPARE_SGIX')
	static var TEXTURE_COMPARE_SGIX:GLuint;

	@:native('GL_TEXTURE_COMPARE_OPERATOR_SGIX')
	static var TEXTURE_COMPARE_OPERATOR_SGIX:GLuint;

	@:native('GL_TEXTURE_LEQUAL_R_SGIX')
	static var TEXTURE_LEQUAL_R_SGIX:GLuint;

	@:native('GL_TEXTURE_GEQUAL_R_SGIX')
	static var TEXTURE_GEQUAL_R_SGIX:GLuint;

	@:native('GL_SHADOW_AMBIENT_SGIX')
	static var SHADOW_AMBIENT_SGIX:GLuint;

	@:native('GL_SPRITE_SGIX')
	static var SPRITE_SGIX:GLuint;

	@:native('GL_SPRITE_MODE_SGIX')
	static var SPRITE_MODE_SGIX:GLuint;

	@:native('GL_SPRITE_AXIS_SGIX')
	static var SPRITE_AXIS_SGIX:GLuint;

	@:native('GL_SPRITE_TRANSLATION_SGIX')
	static var SPRITE_TRANSLATION_SGIX:GLuint;

	@:native('GL_SPRITE_AXIAL_SGIX')
	static var SPRITE_AXIAL_SGIX:GLuint;

	@:native('GL_SPRITE_OBJECT_ALIGNED_SGIX')
	static var SPRITE_OBJECT_ALIGNED_SGIX:GLuint;

	@:native('GL_SPRITE_EYE_ALIGNED_SGIX')
	static var SPRITE_EYE_ALIGNED_SGIX:GLuint;

	@:native('GL_PACK_SUBSAMPLE_RATE_SGIX')
	static var PACK_SUBSAMPLE_RATE_SGIX:GLuint;

	@:native('GL_UNPACK_SUBSAMPLE_RATE_SGIX')
	static var UNPACK_SUBSAMPLE_RATE_SGIX:GLuint;

	@:native('GL_PIXEL_SUBSAMPLE_4444_SGIX')
	static var PIXEL_SUBSAMPLE_4444_SGIX:GLuint;

	@:native('GL_PIXEL_SUBSAMPLE_2424_SGIX')
	static var PIXEL_SUBSAMPLE_2424_SGIX:GLuint;

	@:native('GL_PIXEL_SUBSAMPLE_4242_SGIX')
	static var PIXEL_SUBSAMPLE_4242_SGIX:GLuint;

	@:native('GL_TEXTURE_ENV_BIAS_SGIX')
	static var TEXTURE_ENV_BIAS_SGIX:GLuint;

	@:native('GL_TEXTURE_MAX_CLAMP_S_SGIX')
	static var TEXTURE_MAX_CLAMP_S_SGIX:GLuint;

	@:native('GL_TEXTURE_MAX_CLAMP_T_SGIX')
	static var TEXTURE_MAX_CLAMP_T_SGIX:GLuint;

	@:native('GL_TEXTURE_MAX_CLAMP_R_SGIX')
	static var TEXTURE_MAX_CLAMP_R_SGIX:GLuint;

	@:native('GL_TEXTURE_LOD_BIAS_S_SGIX')
	static var TEXTURE_LOD_BIAS_S_SGIX:GLuint;

	@:native('GL_TEXTURE_LOD_BIAS_T_SGIX')
	static var TEXTURE_LOD_BIAS_T_SGIX:GLuint;

	@:native('GL_TEXTURE_LOD_BIAS_R_SGIX')
	static var TEXTURE_LOD_BIAS_R_SGIX:GLuint;

	@:native('GL_TEXTURE_MULTI_BUFFER_HINT_SGIX')
	static var TEXTURE_MULTI_BUFFER_HINT_SGIX:GLuint;

	@:native('GL_POST_TEXTURE_FILTER_BIAS_SGIX')
	static var POST_TEXTURE_FILTER_BIAS_SGIX:GLuint;

	@:native('GL_POST_TEXTURE_FILTER_SCALE_SGIX')
	static var POST_TEXTURE_FILTER_SCALE_SGIX:GLuint;

	@:native('GL_POST_TEXTURE_FILTER_BIAS_RANGE_SGIX')
	static var POST_TEXTURE_FILTER_BIAS_RANGE_SGIX:GLuint;

	@:native('GL_POST_TEXTURE_FILTER_SCALE_RANGE_SGIX')
	static var POST_TEXTURE_FILTER_SCALE_RANGE_SGIX:GLuint;

	@:native('GL_VERTEX_PRECLIP_SGIX')
	static var VERTEX_PRECLIP_SGIX:GLuint;

	@:native('GL_VERTEX_PRECLIP_HINT_SGIX')
	static var VERTEX_PRECLIP_HINT_SGIX:GLuint;

	@:native('GL_YCRCB_422_SGIX')
	static var YCRCB_422_SGIX:GLuint;

	@:native('GL_YCRCB_444_SGIX')
	static var YCRCB_444_SGIX:GLuint;

	@:native('GL_YCRCB_SGIX')
	static var YCRCB_SGIX:GLuint;

	@:native('GL_YCRCBA_SGIX')
	static var YCRCBA_SGIX:GLuint;

	@:native('GL_COLOR_MATRIX_SGI')
	static var COLOR_MATRIX_SGI:GLuint;

	@:native('GL_COLOR_MATRIX_STACK_DEPTH_SGI')
	static var COLOR_MATRIX_STACK_DEPTH_SGI:GLuint;

	@:native('GL_MAX_COLOR_MATRIX_STACK_DEPTH_SGI')
	static var MAX_COLOR_MATRIX_STACK_DEPTH_SGI:GLuint;

	@:native('GL_POST_COLOR_MATRIX_RED_SCALE_SGI')
	static var POST_COLOR_MATRIX_RED_SCALE_SGI:GLuint;

	@:native('GL_POST_COLOR_MATRIX_GREEN_SCALE_SGI')
	static var POST_COLOR_MATRIX_GREEN_SCALE_SGI:GLuint;

	@:native('GL_POST_COLOR_MATRIX_BLUE_SCALE_SGI')
	static var POST_COLOR_MATRIX_BLUE_SCALE_SGI:GLuint;

	@:native('GL_POST_COLOR_MATRIX_ALPHA_SCALE_SGI')
	static var POST_COLOR_MATRIX_ALPHA_SCALE_SGI:GLuint;

	@:native('GL_POST_COLOR_MATRIX_RED_BIAS_SGI')
	static var POST_COLOR_MATRIX_RED_BIAS_SGI:GLuint;

	@:native('GL_POST_COLOR_MATRIX_GREEN_BIAS_SGI')
	static var POST_COLOR_MATRIX_GREEN_BIAS_SGI:GLuint;

	@:native('GL_POST_COLOR_MATRIX_BLUE_BIAS_SGI')
	static var POST_COLOR_MATRIX_BLUE_BIAS_SGI:GLuint;

	@:native('GL_POST_COLOR_MATRIX_ALPHA_BIAS_SGI')
	static var POST_COLOR_MATRIX_ALPHA_BIAS_SGI:GLuint;

	@:native('GL_COLOR_TABLE_SGI')
	static var COLOR_TABLE_SGI:GLuint;

	@:native('GL_POST_CONVOLUTION_COLOR_TABLE_SGI')
	static var POST_CONVOLUTION_COLOR_TABLE_SGI:GLuint;

	@:native('GL_POST_COLOR_MATRIX_COLOR_TABLE_SGI')
	static var POST_COLOR_MATRIX_COLOR_TABLE_SGI:GLuint;

	@:native('GL_PROXY_COLOR_TABLE_SGI')
	static var PROXY_COLOR_TABLE_SGI:GLuint;

	@:native('GL_PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI')
	static var PROXY_POST_CONVOLUTION_COLOR_TABLE_SGI:GLuint;

	@:native('GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI')
	static var PROXY_POST_COLOR_MATRIX_COLOR_TABLE_SGI:GLuint;

	@:native('GL_COLOR_TABLE_SCALE_SGI')
	static var COLOR_TABLE_SCALE_SGI:GLuint;

	@:native('GL_COLOR_TABLE_BIAS_SGI')
	static var COLOR_TABLE_BIAS_SGI:GLuint;

	@:native('GL_COLOR_TABLE_FORMAT_SGI')
	static var COLOR_TABLE_FORMAT_SGI:GLuint;

	@:native('GL_COLOR_TABLE_WIDTH_SGI')
	static var COLOR_TABLE_WIDTH_SGI:GLuint;

	@:native('GL_COLOR_TABLE_RED_SIZE_SGI')
	static var COLOR_TABLE_RED_SIZE_SGI:GLuint;

	@:native('GL_COLOR_TABLE_GREEN_SIZE_SGI')
	static var COLOR_TABLE_GREEN_SIZE_SGI:GLuint;

	@:native('GL_COLOR_TABLE_BLUE_SIZE_SGI')
	static var COLOR_TABLE_BLUE_SIZE_SGI:GLuint;

	@:native('GL_COLOR_TABLE_ALPHA_SIZE_SGI')
	static var COLOR_TABLE_ALPHA_SIZE_SGI:GLuint;

	@:native('GL_COLOR_TABLE_LUMINANCE_SIZE_SGI')
	static var COLOR_TABLE_LUMINANCE_SIZE_SGI:GLuint;

	@:native('GL_COLOR_TABLE_INTENSITY_SIZE_SGI')
	static var COLOR_TABLE_INTENSITY_SIZE_SGI:GLuint;

	@:native('GL_TEXTURE_COLOR_TABLE_SGI')
	static var TEXTURE_COLOR_TABLE_SGI:GLuint;

	@:native('GL_PROXY_TEXTURE_COLOR_TABLE_SGI')
	static var PROXY_TEXTURE_COLOR_TABLE_SGI:GLuint;

	@:native('GL_UNPACK_CONSTANT_DATA_SUNX')
	static var UNPACK_CONSTANT_DATA_SUNX:GLuint;

	@:native('GL_TEXTURE_CONSTANT_DATA_SUNX')
	static var TEXTURE_CONSTANT_DATA_SUNX:GLuint;

	@:native('GL_WRAP_BORDER_SUN')
	static var WRAP_BORDER_SUN:GLuint;

	@:native('GL_GLOBAL_ALPHA_SUN')
	static var GLOBAL_ALPHA_SUN:GLuint;

	@:native('GL_GLOBAL_ALPHA_FACTOR_SUN')
	static var GLOBAL_ALPHA_FACTOR_SUN:GLuint;

	@:native('GL_QUAD_MESH_SUN')
	static var QUAD_MESH_SUN:GLuint;

	@:native('GL_TRIANGLE_MESH_SUN')
	static var TRIANGLE_MESH_SUN:GLuint;

	@:native('GL_SLICE_ACCUM_SUN')
	static var SLICE_ACCUM_SUN:GLuint;

	@:native('GL_RESTART_SUN')
	static var RESTART_SUN:GLuint;

	@:native('GL_REPLACE_MIDDLE_SUN')
	static var REPLACE_MIDDLE_SUN:GLuint;

	@:native('GL_REPLACE_OLDEST_SUN')
	static var REPLACE_OLDEST_SUN:GLuint;

	@:native('GL_TRIANGLE_LIST_SUN')
	static var TRIANGLE_LIST_SUN:GLuint;

	@:native('GL_REPLACEMENT_CODE_SUN')
	static var REPLACEMENT_CODE_SUN:GLuint;

	@:native('GL_REPLACEMENT_CODE_ARRAY_SUN')
	static var REPLACEMENT_CODE_ARRAY_SUN:GLuint;

	@:native('GL_REPLACEMENT_CODE_ARRAY_TYPE_SUN')
	static var REPLACEMENT_CODE_ARRAY_TYPE_SUN:GLuint;

	@:native('GL_REPLACEMENT_CODE_ARRAY_STRIDE_SUN')
	static var REPLACEMENT_CODE_ARRAY_STRIDE_SUN:GLuint;

	@:native('GL_REPLACEMENT_CODE_ARRAY_POINTER_SUN')
	static var REPLACEMENT_CODE_ARRAY_POINTER_SUN:GLuint;

	@:native('GL_R1UI_V3F_SUN')
	static var R1UI_V3F_SUN:GLuint;

	@:native('GL_R1UI_C4UB_V3F_SUN')
	static var R1UI_C4UB_V3F_SUN:GLuint;

	@:native('GL_R1UI_C3F_V3F_SUN')
	static var R1UI_C3F_V3F_SUN:GLuint;

	@:native('GL_R1UI_N3F_V3F_SUN')
	static var R1UI_N3F_V3F_SUN:GLuint;

	@:native('GL_R1UI_C4F_N3F_V3F_SUN')
	static var R1UI_C4F_N3F_V3F_SUN:GLuint;

	@:native('GL_R1UI_T2F_V3F_SUN')
	static var R1UI_T2F_V3F_SUN:GLuint;

	@:native('GL_R1UI_T2F_N3F_V3F_SUN')
	static var R1UI_T2F_N3F_V3F_SUN:GLuint;

	@:native('GL_R1UI_T2F_C4F_N3F_V3F_SUN')
	static var R1UI_T2F_C4F_N3F_V3F_SUN:GLuint;

	@:native('GL_PHONG_WIN')
	static var PHONG_WIN:GLuint;

	@:native('GL_PHONG_HINT_WIN')
	static var PHONG_HINT_WIN:GLuint;

	@:native('GL_FOG_SPECULAR_TEXTURE_WIN')
	static var FOG_SPECULAR_TEXTURE_WIN:GLuint;

	@:native('glCullFace')
	static function cullFace(mode:GLenum):Void;

	@:native('glFrontFace')
	static function frontFace(mode:GLenum):Void;

	@:native('glHint')
	static function hint(target:GLenum, mode:GLenum):Void;

	@:native('glLineWidth')
	static function lineWidth(width:GLfloat):Void;

	@:native('glPointSize')
	static function pointSize(size:GLfloat):Void;

	@:native('glPolygonMode')
	static function polygonMode(face:GLenum, mode:GLenum):Void;

	@:native('glScissor')
	static function scissor(x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glTexParameterf')
	static function texParameterf(target:GLenum, pname:GLenum, param:GLfloat):Void;

	@:native('glTexParameterfv')
	static function texParameterfv(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glTexParameteri')
	static function texParameteri(target:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glTexParameteriv')
	static function texParameteriv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glTexImage1D')
	static function texImage1D(target:GLenum, level:GLint, internalformat:GLint, width:GLsizei, border:GLint, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTexImage2D')
	static function texImage2D(target:GLenum, level:GLint, internalformat:GLint, width:GLsizei, height:GLsizei, border:GLint, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glDrawBuffer')
	static function drawBuffer(buf:GLenum):Void;

	@:native('glClear')
	static function clear(mask:GLbitfield):Void;

	@:native('glClearColor')
	static function clearColor(red:GLfloat, green:GLfloat, blue:GLfloat, alpha:GLfloat):Void;

	@:native('glClearStencil')
	static function clearStencil(s:GLint):Void;

	@:native('glClearDepth')
	static function clearDepth(depth:GLdouble):Void;

	@:native('glStencilMask')
	static function stencilMask(mask:GLuint):Void;

	@:native('glColorMask')
	static function colorMask(red:GLboolean, green:GLboolean, blue:GLboolean, alpha:GLboolean):Void;

	@:native('glDepthMask')
	static function depthMask(flag:GLboolean):Void;

	@:native('glDisable')
	static function disable(cap:GLenum):Void;

	@:native('glEnable')
	static function enable(cap:GLenum):Void;

	@:native('glFinish')
	static function finish():Void;

	@:native('glFlush')
	static function flush():Void;

	@:native('glBlendFunc')
	static function blendFunc(sfactor:GLenum, dfactor:GLenum):Void;

	@:native('glLogicOp')
	static function logicOp(opcode:GLenum):Void;

	@:native('glStencilFunc')
	static function stencilFunc(func:GLenum, ref:GLint, mask:GLuint):Void;

	@:native('glStencilOp')
	static function stencilOp(fail:GLenum, zfail:GLenum, zpass:GLenum):Void;

	@:native('glDepthFunc')
	static function depthFunc(func:GLenum):Void;

	@:native('glPixelStoref')
	static function pixelStoref(pname:GLenum, param:GLfloat):Void;

	@:native('glPixelStorei')
	static function pixelStorei(pname:GLenum, param:GLint):Void;

	@:native('glReadBuffer')
	static function readBuffer(src:GLenum):Void;

	@:native('glReadPixels')
	static function readPixels(x:GLint, y:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glGetBooleanv')
	static function getBooleanv(pname:GLenum, data:RawPointer<GLboolean>):Void;

	@:native('glGetDoublev')
	static function getDoublev(pname:GLenum, data:RawPointer<GLdouble>):Void;

	@:native('glGetError')
	static function getError():GLenum;

	@:native('glGetFloatv')
	static function getFloatv(pname:GLenum, data:RawPointer<GLfloat>):Void;

	@:native('glGetIntegerv')
	static function getIntegerv(pname:GLenum, data:RawPointer<GLint>):Void;

	@:native('glGetString')
	static function getString(name:GLenum):RawPointer<GLubyte>;

	@:native('glGetTexImage')
	static function getTexImage(target:GLenum, level:GLint, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glGetTexParameterfv')
	static function getTexParameterfv(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetTexParameteriv')
	static function getTexParameteriv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetTexLevelParameterfv')
	static function getTexLevelParameterfv(target:GLenum, level:GLint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetTexLevelParameteriv')
	static function getTexLevelParameteriv(target:GLenum, level:GLint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glIsEnabled')
	static function isEnabled(cap:GLenum):GLboolean;

	@:native('glDepthRange')
	static function depthRange(n:GLdouble, f:GLdouble):Void;

	@:native('glViewport')
	static function viewport(x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glNewList')
	static function newList(list:GLuint, mode:GLenum):Void;

	@:native('glEndList')
	static function endList():Void;

	@:native('glCallList')
	static function callList(list:GLuint):Void;

	@:native('glCallLists')
	static function callLists(n:GLsizei, type:GLenum, lists:RawPointer<cpp.Void>):Void;

	@:native('glDeleteLists')
	static function deleteLists(list:GLuint, range:GLsizei):Void;

	@:native('glGenLists')
	static function genLists(range:GLsizei):GLuint;

	@:native('glListBase')
	static function listBase(base:GLuint):Void;

	@:native('glBegin')
	static function begin(mode:GLenum):Void;

	@:native('glBitmap')
	static function bitmap(width:GLsizei, height:GLsizei, xorig:GLfloat, yorig:GLfloat, xmove:GLfloat, ymove:GLfloat, bitmap:RawPointer<GLubyte>):Void;

	@:native('glColor3b')
	static function color3b(red:GLbyte, green:GLbyte, blue:GLbyte):Void;

	@:native('glColor3bv')
	static function color3bv(v:RawPointer<GLbyte>):Void;

	@:native('glColor3d')
	static function color3d(red:GLdouble, green:GLdouble, blue:GLdouble):Void;

	@:native('glColor3dv')
	static function color3dv(v:RawPointer<GLdouble>):Void;

	@:native('glColor3f')
	static function color3f(red:GLfloat, green:GLfloat, blue:GLfloat):Void;

	@:native('glColor3fv')
	static function color3fv(v:RawPointer<GLfloat>):Void;

	@:native('glColor3i')
	static function color3i(red:GLint, green:GLint, blue:GLint):Void;

	@:native('glColor3iv')
	static function color3iv(v:RawPointer<GLint>):Void;

	@:native('glColor3s')
	static function color3s(red:GLshort, green:GLshort, blue:GLshort):Void;

	@:native('glColor3sv')
	static function color3sv(v:RawPointer<GLshort>):Void;

	@:native('glColor3ub')
	static function color3ub(red:GLubyte, green:GLubyte, blue:GLubyte):Void;

	@:native('glColor3ubv')
	static function color3ubv(v:RawPointer<GLubyte>):Void;

	@:native('glColor3ui')
	static function color3ui(red:GLuint, green:GLuint, blue:GLuint):Void;

	@:native('glColor3uiv')
	static function color3uiv(v:RawPointer<GLuint>):Void;

	@:native('glColor3us')
	static function color3us(red:GLushort, green:GLushort, blue:GLushort):Void;

	@:native('glColor3usv')
	static function color3usv(v:RawPointer<GLushort>):Void;

	@:native('glColor4b')
	static function color4b(red:GLbyte, green:GLbyte, blue:GLbyte, alpha:GLbyte):Void;

	@:native('glColor4bv')
	static function color4bv(v:RawPointer<GLbyte>):Void;

	@:native('glColor4d')
	static function color4d(red:GLdouble, green:GLdouble, blue:GLdouble, alpha:GLdouble):Void;

	@:native('glColor4dv')
	static function color4dv(v:RawPointer<GLdouble>):Void;

	@:native('glColor4f')
	static function color4f(red:GLfloat, green:GLfloat, blue:GLfloat, alpha:GLfloat):Void;

	@:native('glColor4fv')
	static function color4fv(v:RawPointer<GLfloat>):Void;

	@:native('glColor4i')
	static function color4i(red:GLint, green:GLint, blue:GLint, alpha:GLint):Void;

	@:native('glColor4iv')
	static function color4iv(v:RawPointer<GLint>):Void;

	@:native('glColor4s')
	static function color4s(red:GLshort, green:GLshort, blue:GLshort, alpha:GLshort):Void;

	@:native('glColor4sv')
	static function color4sv(v:RawPointer<GLshort>):Void;

	@:native('glColor4ub')
	static function color4ub(red:GLubyte, green:GLubyte, blue:GLubyte, alpha:GLubyte):Void;

	@:native('glColor4ubv')
	static function color4ubv(v:RawPointer<GLubyte>):Void;

	@:native('glColor4ui')
	static function color4ui(red:GLuint, green:GLuint, blue:GLuint, alpha:GLuint):Void;

	@:native('glColor4uiv')
	static function color4uiv(v:RawPointer<GLuint>):Void;

	@:native('glColor4us')
	static function color4us(red:GLushort, green:GLushort, blue:GLushort, alpha:GLushort):Void;

	@:native('glColor4usv')
	static function color4usv(v:RawPointer<GLushort>):Void;

	@:native('glEdgeFlag')
	static function edgeFlag(flag:GLboolean):Void;

	@:native('glEdgeFlagv')
	static function edgeFlagv(flag:RawPointer<GLboolean>):Void;

	@:native('glEnd')
	static function end():Void;

	@:native('glIndexd')
	static function indexd(c:GLdouble):Void;

	@:native('glIndexdv')
	static function indexdv(c:RawPointer<GLdouble>):Void;

	@:native('glIndexf')
	static function indexf(c:GLfloat):Void;

	@:native('glIndexfv')
	static function indexfv(c:RawPointer<GLfloat>):Void;

	@:native('glIndexi')
	static function indexi(c:GLint):Void;

	@:native('glIndexiv')
	static function indexiv(c:RawPointer<GLint>):Void;

	@:native('glIndexs')
	static function indexs(c:GLshort):Void;

	@:native('glIndexsv')
	static function indexsv(c:RawPointer<GLshort>):Void;

	@:native('glNormal3b')
	static function normal3b(nx:GLbyte, ny:GLbyte, nz:GLbyte):Void;

	@:native('glNormal3bv')
	static function normal3bv(v:RawPointer<GLbyte>):Void;

	@:native('glNormal3d')
	static function normal3d(nx:GLdouble, ny:GLdouble, nz:GLdouble):Void;

	@:native('glNormal3dv')
	static function normal3dv(v:RawPointer<GLdouble>):Void;

	@:native('glNormal3f')
	static function normal3f(nx:GLfloat, ny:GLfloat, nz:GLfloat):Void;

	@:native('glNormal3fv')
	static function normal3fv(v:RawPointer<GLfloat>):Void;

	@:native('glNormal3i')
	static function normal3i(nx:GLint, ny:GLint, nz:GLint):Void;

	@:native('glNormal3iv')
	static function normal3iv(v:RawPointer<GLint>):Void;

	@:native('glNormal3s')
	static function normal3s(nx:GLshort, ny:GLshort, nz:GLshort):Void;

	@:native('glNormal3sv')
	static function normal3sv(v:RawPointer<GLshort>):Void;

	@:native('glRasterPos2d')
	static function rasterPos2d(x:GLdouble, y:GLdouble):Void;

	@:native('glRasterPos2dv')
	static function rasterPos2dv(v:RawPointer<GLdouble>):Void;

	@:native('glRasterPos2f')
	static function rasterPos2f(x:GLfloat, y:GLfloat):Void;

	@:native('glRasterPos2fv')
	static function rasterPos2fv(v:RawPointer<GLfloat>):Void;

	@:native('glRasterPos2i')
	static function rasterPos2i(x:GLint, y:GLint):Void;

	@:native('glRasterPos2iv')
	static function rasterPos2iv(v:RawPointer<GLint>):Void;

	@:native('glRasterPos2s')
	static function rasterPos2s(x:GLshort, y:GLshort):Void;

	@:native('glRasterPos2sv')
	static function rasterPos2sv(v:RawPointer<GLshort>):Void;

	@:native('glRasterPos3d')
	static function rasterPos3d(x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glRasterPos3dv')
	static function rasterPos3dv(v:RawPointer<GLdouble>):Void;

	@:native('glRasterPos3f')
	static function rasterPos3f(x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glRasterPos3fv')
	static function rasterPos3fv(v:RawPointer<GLfloat>):Void;

	@:native('glRasterPos3i')
	static function rasterPos3i(x:GLint, y:GLint, z:GLint):Void;

	@:native('glRasterPos3iv')
	static function rasterPos3iv(v:RawPointer<GLint>):Void;

	@:native('glRasterPos3s')
	static function rasterPos3s(x:GLshort, y:GLshort, z:GLshort):Void;

	@:native('glRasterPos3sv')
	static function rasterPos3sv(v:RawPointer<GLshort>):Void;

	@:native('glRasterPos4d')
	static function rasterPos4d(x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glRasterPos4dv')
	static function rasterPos4dv(v:RawPointer<GLdouble>):Void;

	@:native('glRasterPos4f')
	static function rasterPos4f(x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glRasterPos4fv')
	static function rasterPos4fv(v:RawPointer<GLfloat>):Void;

	@:native('glRasterPos4i')
	static function rasterPos4i(x:GLint, y:GLint, z:GLint, w:GLint):Void;

	@:native('glRasterPos4iv')
	static function rasterPos4iv(v:RawPointer<GLint>):Void;

	@:native('glRasterPos4s')
	static function rasterPos4s(x:GLshort, y:GLshort, z:GLshort, w:GLshort):Void;

	@:native('glRasterPos4sv')
	static function rasterPos4sv(v:RawPointer<GLshort>):Void;

	@:native('glRectd')
	static function rectd(x1:GLdouble, y1:GLdouble, x2:GLdouble, y2:GLdouble):Void;

	@:native('glRectdv')
	static function rectdv(v1:RawPointer<GLdouble>, v2:RawPointer<GLdouble>):Void;

	@:native('glRectf')
	static function rectf(x1:GLfloat, y1:GLfloat, x2:GLfloat, y2:GLfloat):Void;

	@:native('glRectfv')
	static function rectfv(v1:RawPointer<GLfloat>, v2:RawPointer<GLfloat>):Void;

	@:native('glRecti')
	static function recti(x1:GLint, y1:GLint, x2:GLint, y2:GLint):Void;

	@:native('glRectiv')
	static function rectiv(v1:RawPointer<GLint>, v2:RawPointer<GLint>):Void;

	@:native('glRects')
	static function rects(x1:GLshort, y1:GLshort, x2:GLshort, y2:GLshort):Void;

	@:native('glRectsv')
	static function rectsv(v1:RawPointer<GLshort>, v2:RawPointer<GLshort>):Void;

	@:native('glTexCoord1d')
	static function texCoord1d(s:GLdouble):Void;

	@:native('glTexCoord1dv')
	static function texCoord1dv(v:RawPointer<GLdouble>):Void;

	@:native('glTexCoord1f')
	static function texCoord1f(s:GLfloat):Void;

	@:native('glTexCoord1fv')
	static function texCoord1fv(v:RawPointer<GLfloat>):Void;

	@:native('glTexCoord1i')
	static function texCoord1i(s:GLint):Void;

	@:native('glTexCoord1iv')
	static function texCoord1iv(v:RawPointer<GLint>):Void;

	@:native('glTexCoord1s')
	static function texCoord1s(s:GLshort):Void;

	@:native('glTexCoord1sv')
	static function texCoord1sv(v:RawPointer<GLshort>):Void;

	@:native('glTexCoord2d')
	static function texCoord2d(s:GLdouble, t:GLdouble):Void;

	@:native('glTexCoord2dv')
	static function texCoord2dv(v:RawPointer<GLdouble>):Void;

	@:native('glTexCoord2f')
	static function texCoord2f(s:GLfloat, t:GLfloat):Void;

	@:native('glTexCoord2fv')
	static function texCoord2fv(v:RawPointer<GLfloat>):Void;

	@:native('glTexCoord2i')
	static function texCoord2i(s:GLint, t:GLint):Void;

	@:native('glTexCoord2iv')
	static function texCoord2iv(v:RawPointer<GLint>):Void;

	@:native('glTexCoord2s')
	static function texCoord2s(s:GLshort, t:GLshort):Void;

	@:native('glTexCoord2sv')
	static function texCoord2sv(v:RawPointer<GLshort>):Void;

	@:native('glTexCoord3d')
	static function texCoord3d(s:GLdouble, t:GLdouble, r:GLdouble):Void;

	@:native('glTexCoord3dv')
	static function texCoord3dv(v:RawPointer<GLdouble>):Void;

	@:native('glTexCoord3f')
	static function texCoord3f(s:GLfloat, t:GLfloat, r:GLfloat):Void;

	@:native('glTexCoord3fv')
	static function texCoord3fv(v:RawPointer<GLfloat>):Void;

	@:native('glTexCoord3i')
	static function texCoord3i(s:GLint, t:GLint, r:GLint):Void;

	@:native('glTexCoord3iv')
	static function texCoord3iv(v:RawPointer<GLint>):Void;

	@:native('glTexCoord3s')
	static function texCoord3s(s:GLshort, t:GLshort, r:GLshort):Void;

	@:native('glTexCoord3sv')
	static function texCoord3sv(v:RawPointer<GLshort>):Void;

	@:native('glTexCoord4d')
	static function texCoord4d(s:GLdouble, t:GLdouble, r:GLdouble, q:GLdouble):Void;

	@:native('glTexCoord4dv')
	static function texCoord4dv(v:RawPointer<GLdouble>):Void;

	@:native('glTexCoord4f')
	static function texCoord4f(s:GLfloat, t:GLfloat, r:GLfloat, q:GLfloat):Void;

	@:native('glTexCoord4fv')
	static function texCoord4fv(v:RawPointer<GLfloat>):Void;

	@:native('glTexCoord4i')
	static function texCoord4i(s:GLint, t:GLint, r:GLint, q:GLint):Void;

	@:native('glTexCoord4iv')
	static function texCoord4iv(v:RawPointer<GLint>):Void;

	@:native('glTexCoord4s')
	static function texCoord4s(s:GLshort, t:GLshort, r:GLshort, q:GLshort):Void;

	@:native('glTexCoord4sv')
	static function texCoord4sv(v:RawPointer<GLshort>):Void;

	@:native('glVertex2d')
	static function vertex2d(x:GLdouble, y:GLdouble):Void;

	@:native('glVertex2dv')
	static function vertex2dv(v:RawPointer<GLdouble>):Void;

	@:native('glVertex2f')
	static function vertex2f(x:GLfloat, y:GLfloat):Void;

	@:native('glVertex2fv')
	static function vertex2fv(v:RawPointer<GLfloat>):Void;

	@:native('glVertex2i')
	static function vertex2i(x:GLint, y:GLint):Void;

	@:native('glVertex2iv')
	static function vertex2iv(v:RawPointer<GLint>):Void;

	@:native('glVertex2s')
	static function vertex2s(x:GLshort, y:GLshort):Void;

	@:native('glVertex2sv')
	static function vertex2sv(v:RawPointer<GLshort>):Void;

	@:native('glVertex3d')
	static function vertex3d(x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glVertex3dv')
	static function vertex3dv(v:RawPointer<GLdouble>):Void;

	@:native('glVertex3f')
	static function vertex3f(x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glVertex3fv')
	static function vertex3fv(v:RawPointer<GLfloat>):Void;

	@:native('glVertex3i')
	static function vertex3i(x:GLint, y:GLint, z:GLint):Void;

	@:native('glVertex3iv')
	static function vertex3iv(v:RawPointer<GLint>):Void;

	@:native('glVertex3s')
	static function vertex3s(x:GLshort, y:GLshort, z:GLshort):Void;

	@:native('glVertex3sv')
	static function vertex3sv(v:RawPointer<GLshort>):Void;

	@:native('glVertex4d')
	static function vertex4d(x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glVertex4dv')
	static function vertex4dv(v:RawPointer<GLdouble>):Void;

	@:native('glVertex4f')
	static function vertex4f(x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glVertex4fv')
	static function vertex4fv(v:RawPointer<GLfloat>):Void;

	@:native('glVertex4i')
	static function vertex4i(x:GLint, y:GLint, z:GLint, w:GLint):Void;

	@:native('glVertex4iv')
	static function vertex4iv(v:RawPointer<GLint>):Void;

	@:native('glVertex4s')
	static function vertex4s(x:GLshort, y:GLshort, z:GLshort, w:GLshort):Void;

	@:native('glVertex4sv')
	static function vertex4sv(v:RawPointer<GLshort>):Void;

	@:native('glClipPlane')
	static function clipPlane(plane:GLenum, equation:RawPointer<GLdouble>):Void;

	@:native('glColorMaterial')
	static function colorMaterial(face:GLenum, mode:GLenum):Void;

	@:native('glFogf')
	static function fogf(pname:GLenum, param:GLfloat):Void;

	@:native('glFogfv')
	static function fogfv(pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glFogi')
	static function fogi(pname:GLenum, param:GLint):Void;

	@:native('glFogiv')
	static function fogiv(pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glLightf')
	static function lightf(light:GLenum, pname:GLenum, param:GLfloat):Void;

	@:native('glLightfv')
	static function lightfv(light:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glLighti')
	static function lighti(light:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glLightiv')
	static function lightiv(light:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glLightModelf')
	static function lightModelf(pname:GLenum, param:GLfloat):Void;

	@:native('glLightModelfv')
	static function lightModelfv(pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glLightModeli')
	static function lightModeli(pname:GLenum, param:GLint):Void;

	@:native('glLightModeliv')
	static function lightModeliv(pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glLineStipple')
	static function lineStipple(factor:GLint, pattern:GLushort):Void;

	@:native('glMaterialf')
	static function materialf(face:GLenum, pname:GLenum, param:GLfloat):Void;

	@:native('glMaterialfv')
	static function materialfv(face:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glMateriali')
	static function materiali(face:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glMaterialiv')
	static function materialiv(face:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glPolygonStipple')
	static function polygonStipple(mask:RawPointer<GLubyte>):Void;

	@:native('glShadeModel')
	static function shadeModel(mode:GLenum):Void;

	@:native('glTexEnvf')
	static function texEnvf(target:GLenum, pname:GLenum, param:GLfloat):Void;

	@:native('glTexEnvfv')
	static function texEnvfv(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glTexEnvi')
	static function texEnvi(target:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glTexEnviv')
	static function texEnviv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glTexGend')
	static function texGend(coord:GLenum, pname:GLenum, param:GLdouble):Void;

	@:native('glTexGendv')
	static function texGendv(coord:GLenum, pname:GLenum, params:RawPointer<GLdouble>):Void;

	@:native('glTexGenf')
	static function texGenf(coord:GLenum, pname:GLenum, param:GLfloat):Void;

	@:native('glTexGenfv')
	static function texGenfv(coord:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glTexGeni')
	static function texGeni(coord:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glTexGeniv')
	static function texGeniv(coord:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glFeedbackBuffer')
	static function feedbackBuffer(size:GLsizei, type:GLenum, buffer:RawPointer<GLfloat>):Void;

	@:native('glSelectBuffer')
	static function selectBuffer(size:GLsizei, buffer:RawPointer<GLuint>):Void;

	@:native('glRenderMode')
	static function renderMode(mode:GLenum):GLint;

	@:native('glInitNames')
	static function initNames():Void;

	@:native('glLoadName')
	static function loadName(name:GLuint):Void;

	@:native('glPassThrough')
	static function passThrough(token:GLfloat):Void;

	@:native('glPopName')
	static function popName():Void;

	@:native('glPushName')
	static function pushName(name:GLuint):Void;

	@:native('glClearAccum')
	static function clearAccum(red:GLfloat, green:GLfloat, blue:GLfloat, alpha:GLfloat):Void;

	@:native('glClearIndex')
	static function clearIndex(c:GLfloat):Void;

	@:native('glIndexMask')
	static function indexMask(mask:GLuint):Void;

	@:native('glAccum')
	static function accum(op:GLenum, value:GLfloat):Void;

	@:native('glPopAttrib')
	static function popAttrib():Void;

	@:native('glPushAttrib')
	static function pushAttrib(mask:GLbitfield):Void;

	@:native('glMap1d')
	static function map1d(target:GLenum, u1:GLdouble, u2:GLdouble, stride:GLint, order:GLint, points:RawPointer<GLdouble>):Void;

	@:native('glMap1f')
	static function map1f(target:GLenum, u1:GLfloat, u2:GLfloat, stride:GLint, order:GLint, points:RawPointer<GLfloat>):Void;

	@:native('glMap2d')
	static function map2d(target:GLenum, u1:GLdouble, u2:GLdouble, ustride:GLint, uorder:GLint, v1:GLdouble, v2:GLdouble, vstride:GLint, vorder:GLint, points:RawPointer<GLdouble>):Void;

	@:native('glMap2f')
	static function map2f(target:GLenum, u1:GLfloat, u2:GLfloat, ustride:GLint, uorder:GLint, v1:GLfloat, v2:GLfloat, vstride:GLint, vorder:GLint, points:RawPointer<GLfloat>):Void;

	@:native('glMapGrid1d')
	static function mapGrid1d(un:GLint, u1:GLdouble, u2:GLdouble):Void;

	@:native('glMapGrid1f')
	static function mapGrid1f(un:GLint, u1:GLfloat, u2:GLfloat):Void;

	@:native('glMapGrid2d')
	static function mapGrid2d(un:GLint, u1:GLdouble, u2:GLdouble, vn:GLint, v1:GLdouble, v2:GLdouble):Void;

	@:native('glMapGrid2f')
	static function mapGrid2f(un:GLint, u1:GLfloat, u2:GLfloat, vn:GLint, v1:GLfloat, v2:GLfloat):Void;

	@:native('glEvalCoord1d')
	static function evalCoord1d(u:GLdouble):Void;

	@:native('glEvalCoord1dv')
	static function evalCoord1dv(u:RawPointer<GLdouble>):Void;

	@:native('glEvalCoord1f')
	static function evalCoord1f(u:GLfloat):Void;

	@:native('glEvalCoord1fv')
	static function evalCoord1fv(u:RawPointer<GLfloat>):Void;

	@:native('glEvalCoord2d')
	static function evalCoord2d(u:GLdouble, v:GLdouble):Void;

	@:native('glEvalCoord2dv')
	static function evalCoord2dv(u:RawPointer<GLdouble>):Void;

	@:native('glEvalCoord2f')
	static function evalCoord2f(u:GLfloat, v:GLfloat):Void;

	@:native('glEvalCoord2fv')
	static function evalCoord2fv(u:RawPointer<GLfloat>):Void;

	@:native('glEvalMesh1')
	static function evalMesh1(mode:GLenum, i1:GLint, i2:GLint):Void;

	@:native('glEvalPoint1')
	static function evalPoint1(i:GLint):Void;

	@:native('glEvalMesh2')
	static function evalMesh2(mode:GLenum, i1:GLint, i2:GLint, j1:GLint, j2:GLint):Void;

	@:native('glEvalPoint2')
	static function evalPoint2(i:GLint, j:GLint):Void;

	@:native('glAlphaFunc')
	static function alphaFunc(func:GLenum, ref:GLfloat):Void;

	@:native('glPixelZoom')
	static function pixelZoom(xfactor:GLfloat, yfactor:GLfloat):Void;

	@:native('glPixelTransferf')
	static function pixelTransferf(pname:GLenum, param:GLfloat):Void;

	@:native('glPixelTransferi')
	static function pixelTransferi(pname:GLenum, param:GLint):Void;

	@:native('glPixelMapfv')
	static function pixelMapfv(map:GLenum, mapsize:GLsizei, values:RawPointer<GLfloat>):Void;

	@:native('glPixelMapuiv')
	static function pixelMapuiv(map:GLenum, mapsize:GLsizei, values:RawPointer<GLuint>):Void;

	@:native('glPixelMapusv')
	static function pixelMapusv(map:GLenum, mapsize:GLsizei, values:RawPointer<GLushort>):Void;

	@:native('glCopyPixels')
	static function copyPixels(x:GLint, y:GLint, width:GLsizei, height:GLsizei, type:GLenum):Void;

	@:native('glDrawPixels')
	static function drawPixels(width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glGetClipPlane')
	static function getClipPlane(plane:GLenum, equation:RawPointer<GLdouble>):Void;

	@:native('glGetLightfv')
	static function getLightfv(light:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetLightiv')
	static function getLightiv(light:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetMapdv')
	static function getMapdv(target:GLenum, query:GLenum, v:RawPointer<GLdouble>):Void;

	@:native('glGetMapfv')
	static function getMapfv(target:GLenum, query:GLenum, v:RawPointer<GLfloat>):Void;

	@:native('glGetMapiv')
	static function getMapiv(target:GLenum, query:GLenum, v:RawPointer<GLint>):Void;

	@:native('glGetMaterialfv')
	static function getMaterialfv(face:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetMaterialiv')
	static function getMaterialiv(face:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetPixelMapfv')
	static function getPixelMapfv(map:GLenum, values:RawPointer<GLfloat>):Void;

	@:native('glGetPixelMapuiv')
	static function getPixelMapuiv(map:GLenum, values:RawPointer<GLuint>):Void;

	@:native('glGetPixelMapusv')
	static function getPixelMapusv(map:GLenum, values:RawPointer<GLushort>):Void;

	@:native('glGetPolygonStipple')
	static function getPolygonStipple(mask:RawPointer<GLubyte>):Void;

	@:native('glGetTexEnvfv')
	static function getTexEnvfv(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetTexEnviv')
	static function getTexEnviv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetTexGendv')
	static function getTexGendv(coord:GLenum, pname:GLenum, params:RawPointer<GLdouble>):Void;

	@:native('glGetTexGenfv')
	static function getTexGenfv(coord:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetTexGeniv')
	static function getTexGeniv(coord:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glIsList')
	static function isList(list:GLuint):GLboolean;

	@:native('glFrustum')
	static function frustum(left:GLdouble, right:GLdouble, bottom:GLdouble, top:GLdouble, zNear:GLdouble, zFar:GLdouble):Void;

	@:native('glLoadIdentity')
	static function loadIdentity():Void;

	@:native('glLoadMatrixf')
	static function loadMatrixf(m:RawPointer<GLfloat>):Void;

	@:native('glLoadMatrixd')
	static function loadMatrixd(m:RawPointer<GLdouble>):Void;

	@:native('glMatrixMode')
	static function matrixMode(mode:GLenum):Void;

	@:native('glMultMatrixf')
	static function multMatrixf(m:RawPointer<GLfloat>):Void;

	@:native('glMultMatrixd')
	static function multMatrixd(m:RawPointer<GLdouble>):Void;

	@:native('glOrtho')
	static function ortho(left:GLdouble, right:GLdouble, bottom:GLdouble, top:GLdouble, zNear:GLdouble, zFar:GLdouble):Void;

	@:native('glPopMatrix')
	static function popMatrix():Void;

	@:native('glPushMatrix')
	static function pushMatrix():Void;

	@:native('glRotated')
	static function rotated(angle:GLdouble, x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glRotatef')
	static function rotatef(angle:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glScaled')
	static function scaled(x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glScalef')
	static function scalef(x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glTranslated')
	static function translated(x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glTranslatef')
	static function translatef(x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glDrawArrays')
	static function drawArrays(mode:GLenum, first:GLint, count:GLsizei):Void;

	@:native('glDrawElements')
	static function drawElements(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>):Void;

	@:native('glGetPointerv')
	static function getPointerv(pname:GLenum, params:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glPolygonOffset')
	static function polygonOffset(factor:GLfloat, units:GLfloat):Void;

	@:native('glCopyTexImage1D')
	static function copyTexImage1D(target:GLenum, level:GLint, internalformat:GLenum, x:GLint, y:GLint, width:GLsizei, border:GLint):Void;

	@:native('glCopyTexImage2D')
	static function copyTexImage2D(target:GLenum, level:GLint, internalformat:GLenum, x:GLint, y:GLint, width:GLsizei, height:GLsizei, border:GLint):Void;

	@:native('glCopyTexSubImage1D')
	static function copyTexSubImage1D(target:GLenum, level:GLint, xoffset:GLint, x:GLint, y:GLint, width:GLsizei):Void;

	@:native('glCopyTexSubImage2D')
	static function copyTexSubImage2D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glTexSubImage1D')
	static function texSubImage1D(target:GLenum, level:GLint, xoffset:GLint, width:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTexSubImage2D')
	static function texSubImage2D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glBindTexture')
	static function bindTexture(target:GLenum, texture:GLuint):Void;

	@:native('glDeleteTextures')
	static function deleteTextures(n:GLsizei, textures:RawPointer<GLuint>):Void;

	@:native('glGenTextures')
	static function genTextures(n:GLsizei, textures:RawPointer<GLuint>):Void;

	@:native('glIsTexture')
	static function isTexture(texture:GLuint):GLboolean;

	@:native('glArrayElement')
	static function arrayElement(i:GLint):Void;

	@:native('glColorPointer')
	static function colorPointer(size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glDisableClientState')
	static function disableClientState(array:GLenum):Void;

	@:native('glEdgeFlagPointer')
	static function edgeFlagPointer(stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glEnableClientState')
	static function enableClientState(array:GLenum):Void;

	@:native('glIndexPointer')
	static function indexPointer(type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glInterleavedArrays')
	static function interleavedArrays(format:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glNormalPointer')
	static function normalPointer(type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glTexCoordPointer')
	static function texCoordPointer(size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glVertexPointer')
	static function vertexPointer(size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glAreTexturesResident')
	static function areTexturesResident(n:GLsizei, textures:RawPointer<GLuint>, residences:RawPointer<GLboolean>):GLboolean;

	@:native('glPrioritizeTextures')
	static function prioritizeTextures(n:GLsizei, textures:RawPointer<GLuint>, priorities:RawPointer<GLfloat>):Void;

	@:native('glIndexub')
	static function indexub(c:GLubyte):Void;

	@:native('glIndexubv')
	static function indexubv(c:RawPointer<GLubyte>):Void;

	@:native('glPopClientAttrib')
	static function popClientAttrib():Void;

	@:native('glPushClientAttrib')
	static function pushClientAttrib(mask:GLbitfield):Void;

	@:native('glDrawRangeElements')
	static function drawRangeElements(mode:GLenum, start:GLuint, end:GLuint, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>):Void;

	@:native('glTexImage3D')
	static function texImage3D(target:GLenum, level:GLint, internalformat:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, border:GLint, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTexSubImage3D')
	static function texSubImage3D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glCopyTexSubImage3D')
	static function copyTexSubImage3D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glActiveTexture')
	static function activeTexture(texture:GLenum):Void;

	@:native('glSampleCoverage')
	static function sampleCoverage(value:GLfloat, invert:GLboolean):Void;

	@:native('glCompressedTexImage3D')
	static function compressedTexImage3D(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, border:GLint, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexImage2D')
	static function compressedTexImage2D(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, border:GLint, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexImage1D')
	static function compressedTexImage1D(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, border:GLint, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexSubImage3D')
	static function compressedTexSubImage3D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexSubImage2D')
	static function compressedTexSubImage2D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, width:GLsizei, height:GLsizei, format:GLenum, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexSubImage1D')
	static function compressedTexSubImage1D(target:GLenum, level:GLint, xoffset:GLint, width:GLsizei, format:GLenum, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glGetCompressedTexImage')
	static function getCompressedTexImage(target:GLenum, level:GLint, img:RawPointer<cpp.Void>):Void;

	@:native('glClientActiveTexture')
	static function clientActiveTexture(texture:GLenum):Void;

	@:native('glMultiTexCoord1d')
	static function multiTexCoord1d(target:GLenum, s:GLdouble):Void;

	@:native('glMultiTexCoord1dv')
	static function multiTexCoord1dv(target:GLenum, v:RawPointer<GLdouble>):Void;

	@:native('glMultiTexCoord1f')
	static function multiTexCoord1f(target:GLenum, s:GLfloat):Void;

	@:native('glMultiTexCoord1fv')
	static function multiTexCoord1fv(target:GLenum, v:RawPointer<GLfloat>):Void;

	@:native('glMultiTexCoord1i')
	static function multiTexCoord1i(target:GLenum, s:GLint):Void;

	@:native('glMultiTexCoord1iv')
	static function multiTexCoord1iv(target:GLenum, v:RawPointer<GLint>):Void;

	@:native('glMultiTexCoord1s')
	static function multiTexCoord1s(target:GLenum, s:GLshort):Void;

	@:native('glMultiTexCoord1sv')
	static function multiTexCoord1sv(target:GLenum, v:RawPointer<GLshort>):Void;

	@:native('glMultiTexCoord2d')
	static function multiTexCoord2d(target:GLenum, s:GLdouble, t:GLdouble):Void;

	@:native('glMultiTexCoord2dv')
	static function multiTexCoord2dv(target:GLenum, v:RawPointer<GLdouble>):Void;

	@:native('glMultiTexCoord2f')
	static function multiTexCoord2f(target:GLenum, s:GLfloat, t:GLfloat):Void;

	@:native('glMultiTexCoord2fv')
	static function multiTexCoord2fv(target:GLenum, v:RawPointer<GLfloat>):Void;

	@:native('glMultiTexCoord2i')
	static function multiTexCoord2i(target:GLenum, s:GLint, t:GLint):Void;

	@:native('glMultiTexCoord2iv')
	static function multiTexCoord2iv(target:GLenum, v:RawPointer<GLint>):Void;

	@:native('glMultiTexCoord2s')
	static function multiTexCoord2s(target:GLenum, s:GLshort, t:GLshort):Void;

	@:native('glMultiTexCoord2sv')
	static function multiTexCoord2sv(target:GLenum, v:RawPointer<GLshort>):Void;

	@:native('glMultiTexCoord3d')
	static function multiTexCoord3d(target:GLenum, s:GLdouble, t:GLdouble, r:GLdouble):Void;

	@:native('glMultiTexCoord3dv')
	static function multiTexCoord3dv(target:GLenum, v:RawPointer<GLdouble>):Void;

	@:native('glMultiTexCoord3f')
	static function multiTexCoord3f(target:GLenum, s:GLfloat, t:GLfloat, r:GLfloat):Void;

	@:native('glMultiTexCoord3fv')
	static function multiTexCoord3fv(target:GLenum, v:RawPointer<GLfloat>):Void;

	@:native('glMultiTexCoord3i')
	static function multiTexCoord3i(target:GLenum, s:GLint, t:GLint, r:GLint):Void;

	@:native('glMultiTexCoord3iv')
	static function multiTexCoord3iv(target:GLenum, v:RawPointer<GLint>):Void;

	@:native('glMultiTexCoord3s')
	static function multiTexCoord3s(target:GLenum, s:GLshort, t:GLshort, r:GLshort):Void;

	@:native('glMultiTexCoord3sv')
	static function multiTexCoord3sv(target:GLenum, v:RawPointer<GLshort>):Void;

	@:native('glMultiTexCoord4d')
	static function multiTexCoord4d(target:GLenum, s:GLdouble, t:GLdouble, r:GLdouble, q:GLdouble):Void;

	@:native('glMultiTexCoord4dv')
	static function multiTexCoord4dv(target:GLenum, v:RawPointer<GLdouble>):Void;

	@:native('glMultiTexCoord4f')
	static function multiTexCoord4f(target:GLenum, s:GLfloat, t:GLfloat, r:GLfloat, q:GLfloat):Void;

	@:native('glMultiTexCoord4fv')
	static function multiTexCoord4fv(target:GLenum, v:RawPointer<GLfloat>):Void;

	@:native('glMultiTexCoord4i')
	static function multiTexCoord4i(target:GLenum, s:GLint, t:GLint, r:GLint, q:GLint):Void;

	@:native('glMultiTexCoord4iv')
	static function multiTexCoord4iv(target:GLenum, v:RawPointer<GLint>):Void;

	@:native('glMultiTexCoord4s')
	static function multiTexCoord4s(target:GLenum, s:GLshort, t:GLshort, r:GLshort, q:GLshort):Void;

	@:native('glMultiTexCoord4sv')
	static function multiTexCoord4sv(target:GLenum, v:RawPointer<GLshort>):Void;

	@:native('glLoadTransposeMatrixf')
	static function loadTransposeMatrixf(m:RawPointer<GLfloat>):Void;

	@:native('glLoadTransposeMatrixd')
	static function loadTransposeMatrixd(m:RawPointer<GLdouble>):Void;

	@:native('glMultTransposeMatrixf')
	static function multTransposeMatrixf(m:RawPointer<GLfloat>):Void;

	@:native('glMultTransposeMatrixd')
	static function multTransposeMatrixd(m:RawPointer<GLdouble>):Void;

	@:native('glBlendFuncSeparate')
	static function blendFuncSeparate(sfactorRGB:GLenum, dfactorRGB:GLenum, sfactorAlpha:GLenum, dfactorAlpha:GLenum):Void;

	@:native('glMultiDrawArrays')
	static function multiDrawArrays(mode:GLenum, first:RawPointer<GLint>, count:RawPointer<GLsizei>, drawcount:GLsizei):Void;

	@:native('glMultiDrawElements')
	static function multiDrawElements(mode:GLenum, count:RawPointer<GLsizei>, type:GLenum, indices:RawPointer<RawConstPointer<cpp.Void>>, drawcount:GLsizei):Void;

	@:native('glPointParameterf')
	static function pointParameterf(pname:GLenum, param:GLfloat):Void;

	@:native('glPointParameterfv')
	static function pointParameterfv(pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glPointParameteri')
	static function pointParameteri(pname:GLenum, param:GLint):Void;

	@:native('glPointParameteriv')
	static function pointParameteriv(pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glFogCoordf')
	static function fogCoordf(coord:GLfloat):Void;

	@:native('glFogCoordfv')
	static function fogCoordfv(coord:RawPointer<GLfloat>):Void;

	@:native('glFogCoordd')
	static function fogCoordd(coord:GLdouble):Void;

	@:native('glFogCoorddv')
	static function fogCoorddv(coord:RawPointer<GLdouble>):Void;

	@:native('glFogCoordPointer')
	static function fogCoordPointer(type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glSecondaryColor3b')
	static function secondaryColor3b(red:GLbyte, green:GLbyte, blue:GLbyte):Void;

	@:native('glSecondaryColor3bv')
	static function secondaryColor3bv(v:RawPointer<GLbyte>):Void;

	@:native('glSecondaryColor3d')
	static function secondaryColor3d(red:GLdouble, green:GLdouble, blue:GLdouble):Void;

	@:native('glSecondaryColor3dv')
	static function secondaryColor3dv(v:RawPointer<GLdouble>):Void;

	@:native('glSecondaryColor3f')
	static function secondaryColor3f(red:GLfloat, green:GLfloat, blue:GLfloat):Void;

	@:native('glSecondaryColor3fv')
	static function secondaryColor3fv(v:RawPointer<GLfloat>):Void;

	@:native('glSecondaryColor3i')
	static function secondaryColor3i(red:GLint, green:GLint, blue:GLint):Void;

	@:native('glSecondaryColor3iv')
	static function secondaryColor3iv(v:RawPointer<GLint>):Void;

	@:native('glSecondaryColor3s')
	static function secondaryColor3s(red:GLshort, green:GLshort, blue:GLshort):Void;

	@:native('glSecondaryColor3sv')
	static function secondaryColor3sv(v:RawPointer<GLshort>):Void;

	@:native('glSecondaryColor3ub')
	static function secondaryColor3ub(red:GLubyte, green:GLubyte, blue:GLubyte):Void;

	@:native('glSecondaryColor3ubv')
	static function secondaryColor3ubv(v:RawPointer<GLubyte>):Void;

	@:native('glSecondaryColor3ui')
	static function secondaryColor3ui(red:GLuint, green:GLuint, blue:GLuint):Void;

	@:native('glSecondaryColor3uiv')
	static function secondaryColor3uiv(v:RawPointer<GLuint>):Void;

	@:native('glSecondaryColor3us')
	static function secondaryColor3us(red:GLushort, green:GLushort, blue:GLushort):Void;

	@:native('glSecondaryColor3usv')
	static function secondaryColor3usv(v:RawPointer<GLushort>):Void;

	@:native('glSecondaryColorPointer')
	static function secondaryColorPointer(size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glWindowPos2d')
	static function windowPos2d(x:GLdouble, y:GLdouble):Void;

	@:native('glWindowPos2dv')
	static function windowPos2dv(v:RawPointer<GLdouble>):Void;

	@:native('glWindowPos2f')
	static function windowPos2f(x:GLfloat, y:GLfloat):Void;

	@:native('glWindowPos2fv')
	static function windowPos2fv(v:RawPointer<GLfloat>):Void;

	@:native('glWindowPos2i')
	static function windowPos2i(x:GLint, y:GLint):Void;

	@:native('glWindowPos2iv')
	static function windowPos2iv(v:RawPointer<GLint>):Void;

	@:native('glWindowPos2s')
	static function windowPos2s(x:GLshort, y:GLshort):Void;

	@:native('glWindowPos2sv')
	static function windowPos2sv(v:RawPointer<GLshort>):Void;

	@:native('glWindowPos3d')
	static function windowPos3d(x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glWindowPos3dv')
	static function windowPos3dv(v:RawPointer<GLdouble>):Void;

	@:native('glWindowPos3f')
	static function windowPos3f(x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glWindowPos3fv')
	static function windowPos3fv(v:RawPointer<GLfloat>):Void;

	@:native('glWindowPos3i')
	static function windowPos3i(x:GLint, y:GLint, z:GLint):Void;

	@:native('glWindowPos3iv')
	static function windowPos3iv(v:RawPointer<GLint>):Void;

	@:native('glWindowPos3s')
	static function windowPos3s(x:GLshort, y:GLshort, z:GLshort):Void;

	@:native('glWindowPos3sv')
	static function windowPos3sv(v:RawPointer<GLshort>):Void;

	@:native('glBlendColor')
	static function blendColor(red:GLfloat, green:GLfloat, blue:GLfloat, alpha:GLfloat):Void;

	@:native('glBlendEquation')
	static function blendEquation(mode:GLenum):Void;

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

	@:native('glGetQueryObjectiv')
	static function getQueryObjectiv(id:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetQueryObjectuiv')
	static function getQueryObjectuiv(id:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glBindBuffer')
	static function bindBuffer(target:GLenum, buffer:GLuint):Void;

	@:native('glDeleteBuffers')
	static function deleteBuffers(n:GLsizei, buffers:RawPointer<GLuint>):Void;

	@:native('glGenBuffers')
	static function genBuffers(n:GLsizei, buffers:RawPointer<GLuint>):Void;

	@:native('glIsBuffer')
	static function isBuffer(buffer:GLuint):GLboolean;

	@:native('glBufferData')
	static function bufferData(target:GLenum, size:GLsizeiptr, data:RawPointer<cpp.Void>, usage:GLenum):Void;

	@:native('glBufferSubData')
	static function bufferSubData(target:GLenum, offset:GLintptr, size:GLsizeiptr, data:RawPointer<cpp.Void>):Void;

	@:native('glGetBufferSubData')
	static function getBufferSubData(target:GLenum, offset:GLintptr, size:GLsizeiptr, data:RawPointer<cpp.Void>):Void;

	@:native('glMapBuffer')
	static function mapBuffer(target:GLenum, access:GLenum):RawPointer<cpp.Void>;

	@:native('glUnmapBuffer')
	static function unmapBuffer(target:GLenum):GLboolean;

	@:native('glGetBufferParameteriv')
	static function getBufferParameteriv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetBufferPointerv')
	static function getBufferPointerv(target:GLenum, pname:GLenum, params:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glBlendEquationSeparate')
	static function blendEquationSeparate(modeRGB:GLenum, modeAlpha:GLenum):Void;

	@:native('glDrawBuffers')
	static function drawBuffers(n:GLsizei, bufs:RawPointer<GLenum>):Void;

	@:native('glStencilOpSeparate')
	static function stencilOpSeparate(face:GLenum, sfail:GLenum, dpfail:GLenum, dppass:GLenum):Void;

	@:native('glStencilFuncSeparate')
	static function stencilFuncSeparate(face:GLenum, func:GLenum, ref:GLint, mask:GLuint):Void;

	@:native('glStencilMaskSeparate')
	static function stencilMaskSeparate(face:GLenum, mask:GLuint):Void;

	@:native('glAttachShader')
	static function attachShader(program:GLuint, shader:GLuint):Void;

	@:native('glBindAttribLocation')
	static function bindAttribLocation(program:GLuint, index:GLuint, name:CastGLcharStar):Void;

	@:native('glCompileShader')
	static function compileShader(shader:GLuint):Void;

	@:native('glCreateProgram')
	static function createProgram():GLuint;

	@:native('glCreateShader')
	static function createShader(type:GLenum):GLuint;

	@:native('glDeleteProgram')
	static function deleteProgram(program:GLuint):Void;

	@:native('glDeleteShader')
	static function deleteShader(shader:GLuint):Void;

	@:native('glDetachShader')
	static function detachShader(program:GLuint, shader:GLuint):Void;

	@:native('glDisableVertexAttribArray')
	static function disableVertexAttribArray(index:GLuint):Void;

	@:native('glEnableVertexAttribArray')
	static function enableVertexAttribArray(index:GLuint):Void;

	@:native('glGetActiveAttrib')
	static function getActiveAttrib(program:GLuint, index:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, size:RawPointer<GLint>, type:RawPointer<GLenum>, name:CastGLcharStar):Void;

	@:native('glGetActiveUniform')
	static function getActiveUniform(program:GLuint, index:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, size:RawPointer<GLint>, type:RawPointer<GLenum>, name:CastGLcharStar):Void;

	@:native('glGetAttachedShaders')
	static function getAttachedShaders(program:GLuint, maxCount:GLsizei, count:RawPointer<GLsizei>, shaders:RawPointer<GLuint>):Void;

	@:native('glGetAttribLocation')
	static function getAttribLocation(program:GLuint, name:CastGLcharStar):GLint;

	@:native('glGetProgramiv')
	static function getProgramiv(program:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetProgramInfoLog')
	static function getProgramInfoLog(program:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, infoLog:CastGLcharStar):Void;

	@:native('glGetShaderiv')
	static function getShaderiv(shader:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetShaderInfoLog')
	static function getShaderInfoLog(shader:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, infoLog:CastGLcharStar):Void;

	@:native('glGetShaderSource')
	static function getShaderSource(shader:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, source:CastGLcharStar):Void;

	@:native('glGetUniformLocation')
	static function getUniformLocation(program:GLuint, name:CastGLcharStar):GLint;

	@:native('glGetUniformfv')
	static function getUniformfv(program:GLuint, location:GLint, params:RawPointer<GLfloat>):Void;

	@:native('glGetUniformiv')
	static function getUniformiv(program:GLuint, location:GLint, params:RawPointer<GLint>):Void;

	@:native('glGetVertexAttribdv')
	static function getVertexAttribdv(index:GLuint, pname:GLenum, params:RawPointer<GLdouble>):Void;

	@:native('glGetVertexAttribfv')
	static function getVertexAttribfv(index:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetVertexAttribiv')
	static function getVertexAttribiv(index:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetVertexAttribPointerv')
	static function getVertexAttribPointerv(index:GLuint, pname:GLenum, pointer:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glIsProgram')
	static function isProgram(program:GLuint):GLboolean;

	@:native('glIsShader')
	static function isShader(shader:GLuint):GLboolean;

	@:native('glLinkProgram')
	static function linkProgram(program:GLuint):Void;

	@:native('glShaderSource')
	static function shaderSource(shader:GLuint, count:GLsizei, string:RawPointer<ConstGLcharStar>, length:RawPointer<GLint>):Void;

	@:native('glUseProgram')
	static function useProgram(program:GLuint):Void;

	@:native('glUniform1f')
	static function uniform1f(location:GLint, v0:GLfloat):Void;

	@:native('glUniform2f')
	static function uniform2f(location:GLint, v0:GLfloat, v1:GLfloat):Void;

	@:native('glUniform3f')
	static function uniform3f(location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat):Void;

	@:native('glUniform4f')
	static function uniform4f(location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat, v3:GLfloat):Void;

	@:native('glUniform1i')
	static function uniform1i(location:GLint, v0:GLint):Void;

	@:native('glUniform2i')
	static function uniform2i(location:GLint, v0:GLint, v1:GLint):Void;

	@:native('glUniform3i')
	static function uniform3i(location:GLint, v0:GLint, v1:GLint, v2:GLint):Void;

	@:native('glUniform4i')
	static function uniform4i(location:GLint, v0:GLint, v1:GLint, v2:GLint, v3:GLint):Void;

	@:native('glUniform1fv')
	static function uniform1fv(location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glUniform2fv')
	static function uniform2fv(location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glUniform3fv')
	static function uniform3fv(location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glUniform4fv')
	static function uniform4fv(location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glUniform1iv')
	static function uniform1iv(location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glUniform2iv')
	static function uniform2iv(location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glUniform3iv')
	static function uniform3iv(location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glUniform4iv')
	static function uniform4iv(location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glUniformMatrix2fv')
	static function uniformMatrix2fv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix3fv')
	static function uniformMatrix3fv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix4fv')
	static function uniformMatrix4fv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glValidateProgram')
	static function validateProgram(program:GLuint):Void;

	@:native('glVertexAttrib1d')
	static function vertexAttrib1d(index:GLuint, x:GLdouble):Void;

	@:native('glVertexAttrib1dv')
	static function vertexAttrib1dv(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttrib1f')
	static function vertexAttrib1f(index:GLuint, x:GLfloat):Void;

	@:native('glVertexAttrib1fv')
	static function vertexAttrib1fv(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib1s')
	static function vertexAttrib1s(index:GLuint, x:GLshort):Void;

	@:native('glVertexAttrib1sv')
	static function vertexAttrib1sv(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib2d')
	static function vertexAttrib2d(index:GLuint, x:GLdouble, y:GLdouble):Void;

	@:native('glVertexAttrib2dv')
	static function vertexAttrib2dv(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttrib2f')
	static function vertexAttrib2f(index:GLuint, x:GLfloat, y:GLfloat):Void;

	@:native('glVertexAttrib2fv')
	static function vertexAttrib2fv(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib2s')
	static function vertexAttrib2s(index:GLuint, x:GLshort, y:GLshort):Void;

	@:native('glVertexAttrib2sv')
	static function vertexAttrib2sv(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib3d')
	static function vertexAttrib3d(index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glVertexAttrib3dv')
	static function vertexAttrib3dv(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttrib3f')
	static function vertexAttrib3f(index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glVertexAttrib3fv')
	static function vertexAttrib3fv(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib3s')
	static function vertexAttrib3s(index:GLuint, x:GLshort, y:GLshort, z:GLshort):Void;

	@:native('glVertexAttrib3sv')
	static function vertexAttrib3sv(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib4Nbv')
	static function vertexAttrib4Nbv(index:GLuint, v:RawPointer<GLbyte>):Void;

	@:native('glVertexAttrib4Niv')
	static function vertexAttrib4Niv(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttrib4Nsv')
	static function vertexAttrib4Nsv(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib4Nub')
	static function vertexAttrib4Nub(index:GLuint, x:GLubyte, y:GLubyte, z:GLubyte, w:GLubyte):Void;

	@:native('glVertexAttrib4Nubv')
	static function vertexAttrib4Nubv(index:GLuint, v:RawPointer<GLubyte>):Void;

	@:native('glVertexAttrib4Nuiv')
	static function vertexAttrib4Nuiv(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glVertexAttrib4Nusv')
	static function vertexAttrib4Nusv(index:GLuint, v:RawPointer<GLushort>):Void;

	@:native('glVertexAttrib4bv')
	static function vertexAttrib4bv(index:GLuint, v:RawPointer<GLbyte>):Void;

	@:native('glVertexAttrib4d')
	static function vertexAttrib4d(index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glVertexAttrib4dv')
	static function vertexAttrib4dv(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttrib4f')
	static function vertexAttrib4f(index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glVertexAttrib4fv')
	static function vertexAttrib4fv(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib4iv')
	static function vertexAttrib4iv(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttrib4s')
	static function vertexAttrib4s(index:GLuint, x:GLshort, y:GLshort, z:GLshort, w:GLshort):Void;

	@:native('glVertexAttrib4sv')
	static function vertexAttrib4sv(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib4ubv')
	static function vertexAttrib4ubv(index:GLuint, v:RawPointer<GLubyte>):Void;

	@:native('glVertexAttrib4uiv')
	static function vertexAttrib4uiv(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glVertexAttrib4usv')
	static function vertexAttrib4usv(index:GLuint, v:RawPointer<GLushort>):Void;

	@:native('glVertexAttribPointer')
	static function vertexAttribPointer(index:GLuint, size:GLint, type:GLenum, normalized:GLboolean, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

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

	@:native('glColorMaski')
	static function colorMaski(index:GLuint, r:GLboolean, g:GLboolean, b:GLboolean, a:GLboolean):Void;

	@:native('glGetBooleani_v')
	static function getBooleani_v(target:GLenum, index:GLuint, data:RawPointer<GLboolean>):Void;

	@:native('glGetIntegeri_v')
	static function getIntegeri_v(target:GLenum, index:GLuint, data:RawPointer<GLint>):Void;

	@:native('glEnablei')
	static function enablei(target:GLenum, index:GLuint):Void;

	@:native('glDisablei')
	static function disablei(target:GLenum, index:GLuint):Void;

	@:native('glIsEnabledi')
	static function isEnabledi(target:GLenum, index:GLuint):GLboolean;

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

	@:native('glClampColor')
	static function clampColor(target:GLenum, clamp:GLenum):Void;

	@:native('glBeginConditionalRender')
	static function beginConditionalRender(id:GLuint, mode:GLenum):Void;

	@:native('glEndConditionalRender')
	static function endConditionalRender():Void;

	@:native('glVertexAttribIPointer')
	static function vertexAttribIPointer(index:GLuint, size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glGetVertexAttribIiv')
	static function getVertexAttribIiv(index:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetVertexAttribIuiv')
	static function getVertexAttribIuiv(index:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glVertexAttribI1i')
	static function vertexAttribI1i(index:GLuint, x:GLint):Void;

	@:native('glVertexAttribI2i')
	static function vertexAttribI2i(index:GLuint, x:GLint, y:GLint):Void;

	@:native('glVertexAttribI3i')
	static function vertexAttribI3i(index:GLuint, x:GLint, y:GLint, z:GLint):Void;

	@:native('glVertexAttribI4i')
	static function vertexAttribI4i(index:GLuint, x:GLint, y:GLint, z:GLint, w:GLint):Void;

	@:native('glVertexAttribI1ui')
	static function vertexAttribI1ui(index:GLuint, x:GLuint):Void;

	@:native('glVertexAttribI2ui')
	static function vertexAttribI2ui(index:GLuint, x:GLuint, y:GLuint):Void;

	@:native('glVertexAttribI3ui')
	static function vertexAttribI3ui(index:GLuint, x:GLuint, y:GLuint, z:GLuint):Void;

	@:native('glVertexAttribI4ui')
	static function vertexAttribI4ui(index:GLuint, x:GLuint, y:GLuint, z:GLuint, w:GLuint):Void;

	@:native('glVertexAttribI1iv')
	static function vertexAttribI1iv(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttribI2iv')
	static function vertexAttribI2iv(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttribI3iv')
	static function vertexAttribI3iv(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttribI4iv')
	static function vertexAttribI4iv(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttribI1uiv')
	static function vertexAttribI1uiv(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glVertexAttribI2uiv')
	static function vertexAttribI2uiv(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glVertexAttribI3uiv')
	static function vertexAttribI3uiv(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glVertexAttribI4uiv')
	static function vertexAttribI4uiv(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glVertexAttribI4bv')
	static function vertexAttribI4bv(index:GLuint, v:RawPointer<GLbyte>):Void;

	@:native('glVertexAttribI4sv')
	static function vertexAttribI4sv(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttribI4ubv')
	static function vertexAttribI4ubv(index:GLuint, v:RawPointer<GLubyte>):Void;

	@:native('glVertexAttribI4usv')
	static function vertexAttribI4usv(index:GLuint, v:RawPointer<GLushort>):Void;

	@:native('glGetUniformuiv')
	static function getUniformuiv(program:GLuint, location:GLint, params:RawPointer<GLuint>):Void;

	@:native('glBindFragDataLocation')
	static function bindFragDataLocation(program:GLuint, color:GLuint, name:CastGLcharStar):Void;

	@:native('glGetFragDataLocation')
	static function getFragDataLocation(program:GLuint, name:CastGLcharStar):GLint;

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

	@:native('glTexParameterIiv')
	static function texParameterIiv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glTexParameterIuiv')
	static function texParameterIuiv(target:GLenum, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glGetTexParameterIiv')
	static function getTexParameterIiv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetTexParameterIuiv')
	static function getTexParameterIuiv(target:GLenum, pname:GLenum, params:RawPointer<GLuint>):Void;

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

	@:native('glIsRenderbuffer')
	static function isRenderbuffer(renderbuffer:GLuint):GLboolean;

	@:native('glBindRenderbuffer')
	static function bindRenderbuffer(target:GLenum, renderbuffer:GLuint):Void;

	@:native('glDeleteRenderbuffers')
	static function deleteRenderbuffers(n:GLsizei, renderbuffers:RawPointer<GLuint>):Void;

	@:native('glGenRenderbuffers')
	static function genRenderbuffers(n:GLsizei, renderbuffers:RawPointer<GLuint>):Void;

	@:native('glRenderbufferStorage')
	static function renderbufferStorage(target:GLenum, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glGetRenderbufferParameteriv')
	static function getRenderbufferParameteriv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glIsFramebuffer')
	static function isFramebuffer(framebuffer:GLuint):GLboolean;

	@:native('glBindFramebuffer')
	static function bindFramebuffer(target:GLenum, framebuffer:GLuint):Void;

	@:native('glDeleteFramebuffers')
	static function deleteFramebuffers(n:GLsizei, framebuffers:RawPointer<GLuint>):Void;

	@:native('glGenFramebuffers')
	static function genFramebuffers(n:GLsizei, framebuffers:RawPointer<GLuint>):Void;

	@:native('glCheckFramebufferStatus')
	static function checkFramebufferStatus(target:GLenum):GLenum;

	@:native('glFramebufferTexture1D')
	static function framebufferTexture1D(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint):Void;

	@:native('glFramebufferTexture2D')
	static function framebufferTexture2D(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint):Void;

	@:native('glFramebufferTexture3D')
	static function framebufferTexture3D(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint, zoffset:GLint):Void;

	@:native('glFramebufferRenderbuffer')
	static function framebufferRenderbuffer(target:GLenum, attachment:GLenum, renderbuffertarget:GLenum, renderbuffer:GLuint):Void;

	@:native('glGetFramebufferAttachmentParameteriv')
	static function getFramebufferAttachmentParameteriv(target:GLenum, attachment:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGenerateMipmap')
	static function generateMipmap(target:GLenum):Void;

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

	@:native('glDrawArraysInstanced')
	static function drawArraysInstanced(mode:GLenum, first:GLint, count:GLsizei, instancecount:GLsizei):Void;

	@:native('glDrawElementsInstanced')
	static function drawElementsInstanced(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, instancecount:GLsizei):Void;

	@:native('glTexBuffer')
	static function texBuffer(target:GLenum, internalformat:GLenum, buffer:GLuint):Void;

	@:native('glPrimitiveRestartIndex')
	static function primitiveRestartIndex(index:GLuint):Void;

	@:native('glCopyBufferSubData')
	static function copyBufferSubData(readTarget:GLenum, writeTarget:GLenum, readOffset:GLintptr, writeOffset:GLintptr, size:GLsizeiptr):Void;

	@:native('glGetUniformIndices')
	static function getUniformIndices(program:GLuint, uniformCount:GLsizei, uniformNames:RawPointer<ConstGLcharStar>, uniformIndices:RawPointer<GLuint>):Void;

	@:native('glGetActiveUniformsiv')
	static function getActiveUniformsiv(program:GLuint, uniformCount:GLsizei, uniformIndices:RawPointer<GLuint>, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetActiveUniformName')
	static function getActiveUniformName(program:GLuint, uniformIndex:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, uniformName:CastGLcharStar):Void;

	@:native('glGetUniformBlockIndex')
	static function getUniformBlockIndex(program:GLuint, uniformBlockName:CastGLcharStar):GLuint;

	@:native('glGetActiveUniformBlockiv')
	static function getActiveUniformBlockiv(program:GLuint, uniformBlockIndex:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetActiveUniformBlockName')
	static function getActiveUniformBlockName(program:GLuint, uniformBlockIndex:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, uniformBlockName:CastGLcharStar):Void;

	@:native('glUniformBlockBinding')
	static function uniformBlockBinding(program:GLuint, uniformBlockIndex:GLuint, uniformBlockBinding:GLuint):Void;

	@:native('glDrawElementsBaseVertex')
	static function drawElementsBaseVertex(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, basevertex:GLint):Void;

	@:native('glDrawRangeElementsBaseVertex')
	static function drawRangeElementsBaseVertex(mode:GLenum, start:GLuint, end:GLuint, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, basevertex:GLint):Void;

	@:native('glDrawElementsInstancedBaseVertex')
	static function drawElementsInstancedBaseVertex(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, instancecount:GLsizei, basevertex:GLint):Void;

	@:native('glMultiDrawElementsBaseVertex')
	static function multiDrawElementsBaseVertex(mode:GLenum, count:RawPointer<GLsizei>, type:GLenum, indices:RawPointer<RawConstPointer<cpp.Void>>, drawcount:GLsizei, basevertex:RawPointer<GLint>):Void;

	@:native('glProvokingVertex')
	static function provokingVertex(mode:GLenum):Void;

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

	@:native('glFramebufferTexture')
	static function framebufferTexture(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint):Void;

	@:native('glTexImage2DMultisample')
	static function texImage2DMultisample(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, fixedsamplelocations:GLboolean):Void;

	@:native('glTexImage3DMultisample')
	static function texImage3DMultisample(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, fixedsamplelocations:GLboolean):Void;

	@:native('glGetMultisamplefv')
	static function getMultisamplefv(pname:GLenum, index:GLuint, val:RawPointer<GLfloat>):Void;

	@:native('glSampleMaski')
	static function sampleMaski(maskNumber:GLuint, mask:GLbitfield):Void;

	@:native('glBindFragDataLocationIndexed')
	static function bindFragDataLocationIndexed(program:GLuint, colorNumber:GLuint, index:GLuint, name:CastGLcharStar):Void;

	@:native('glGetFragDataIndex')
	static function getFragDataIndex(program:GLuint, name:CastGLcharStar):GLint;

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

	@:native('glSamplerParameterIiv')
	static function samplerParameterIiv(sampler:GLuint, pname:GLenum, param:RawPointer<GLint>):Void;

	@:native('glSamplerParameterIuiv')
	static function samplerParameterIuiv(sampler:GLuint, pname:GLenum, param:RawPointer<GLuint>):Void;

	@:native('glGetSamplerParameteriv')
	static function getSamplerParameteriv(sampler:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetSamplerParameterIiv')
	static function getSamplerParameterIiv(sampler:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetSamplerParameterfv')
	static function getSamplerParameterfv(sampler:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetSamplerParameterIuiv')
	static function getSamplerParameterIuiv(sampler:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glQueryCounter')
	static function queryCounter(id:GLuint, target:GLenum):Void;

	@:native('glGetQueryObjecti64v')
	static function getQueryObjecti64v(id:GLuint, pname:GLenum, params:RawPointer<GLint64>):Void;

	@:native('glGetQueryObjectui64v')
	static function getQueryObjectui64v(id:GLuint, pname:GLenum, params:RawPointer<GLuint64>):Void;

	@:native('glVertexAttribDivisor')
	static function vertexAttribDivisor(index:GLuint, divisor:GLuint):Void;

	@:native('glVertexAttribP1ui')
	static function vertexAttribP1ui(index:GLuint, type:GLenum, normalized:GLboolean, value:GLuint):Void;

	@:native('glVertexAttribP1uiv')
	static function vertexAttribP1uiv(index:GLuint, type:GLenum, normalized:GLboolean, value:RawPointer<GLuint>):Void;

	@:native('glVertexAttribP2ui')
	static function vertexAttribP2ui(index:GLuint, type:GLenum, normalized:GLboolean, value:GLuint):Void;

	@:native('glVertexAttribP2uiv')
	static function vertexAttribP2uiv(index:GLuint, type:GLenum, normalized:GLboolean, value:RawPointer<GLuint>):Void;

	@:native('glVertexAttribP3ui')
	static function vertexAttribP3ui(index:GLuint, type:GLenum, normalized:GLboolean, value:GLuint):Void;

	@:native('glVertexAttribP3uiv')
	static function vertexAttribP3uiv(index:GLuint, type:GLenum, normalized:GLboolean, value:RawPointer<GLuint>):Void;

	@:native('glVertexAttribP4ui')
	static function vertexAttribP4ui(index:GLuint, type:GLenum, normalized:GLboolean, value:GLuint):Void;

	@:native('glVertexAttribP4uiv')
	static function vertexAttribP4uiv(index:GLuint, type:GLenum, normalized:GLboolean, value:RawPointer<GLuint>):Void;

	@:native('glVertexP2ui')
	static function vertexP2ui(type:GLenum, value:GLuint):Void;

	@:native('glVertexP2uiv')
	static function vertexP2uiv(type:GLenum, value:RawPointer<GLuint>):Void;

	@:native('glVertexP3ui')
	static function vertexP3ui(type:GLenum, value:GLuint):Void;

	@:native('glVertexP3uiv')
	static function vertexP3uiv(type:GLenum, value:RawPointer<GLuint>):Void;

	@:native('glVertexP4ui')
	static function vertexP4ui(type:GLenum, value:GLuint):Void;

	@:native('glVertexP4uiv')
	static function vertexP4uiv(type:GLenum, value:RawPointer<GLuint>):Void;

	@:native('glTexCoordP1ui')
	static function texCoordP1ui(type:GLenum, coords:GLuint):Void;

	@:native('glTexCoordP1uiv')
	static function texCoordP1uiv(type:GLenum, coords:RawPointer<GLuint>):Void;

	@:native('glTexCoordP2ui')
	static function texCoordP2ui(type:GLenum, coords:GLuint):Void;

	@:native('glTexCoordP2uiv')
	static function texCoordP2uiv(type:GLenum, coords:RawPointer<GLuint>):Void;

	@:native('glTexCoordP3ui')
	static function texCoordP3ui(type:GLenum, coords:GLuint):Void;

	@:native('glTexCoordP3uiv')
	static function texCoordP3uiv(type:GLenum, coords:RawPointer<GLuint>):Void;

	@:native('glTexCoordP4ui')
	static function texCoordP4ui(type:GLenum, coords:GLuint):Void;

	@:native('glTexCoordP4uiv')
	static function texCoordP4uiv(type:GLenum, coords:RawPointer<GLuint>):Void;

	@:native('glMultiTexCoordP1ui')
	static function multiTexCoordP1ui(texture:GLenum, type:GLenum, coords:GLuint):Void;

	@:native('glMultiTexCoordP1uiv')
	static function multiTexCoordP1uiv(texture:GLenum, type:GLenum, coords:RawPointer<GLuint>):Void;

	@:native('glMultiTexCoordP2ui')
	static function multiTexCoordP2ui(texture:GLenum, type:GLenum, coords:GLuint):Void;

	@:native('glMultiTexCoordP2uiv')
	static function multiTexCoordP2uiv(texture:GLenum, type:GLenum, coords:RawPointer<GLuint>):Void;

	@:native('glMultiTexCoordP3ui')
	static function multiTexCoordP3ui(texture:GLenum, type:GLenum, coords:GLuint):Void;

	@:native('glMultiTexCoordP3uiv')
	static function multiTexCoordP3uiv(texture:GLenum, type:GLenum, coords:RawPointer<GLuint>):Void;

	@:native('glMultiTexCoordP4ui')
	static function multiTexCoordP4ui(texture:GLenum, type:GLenum, coords:GLuint):Void;

	@:native('glMultiTexCoordP4uiv')
	static function multiTexCoordP4uiv(texture:GLenum, type:GLenum, coords:RawPointer<GLuint>):Void;

	@:native('glNormalP3ui')
	static function normalP3ui(type:GLenum, coords:GLuint):Void;

	@:native('glNormalP3uiv')
	static function normalP3uiv(type:GLenum, coords:RawPointer<GLuint>):Void;

	@:native('glColorP3ui')
	static function colorP3ui(type:GLenum, color:GLuint):Void;

	@:native('glColorP3uiv')
	static function colorP3uiv(type:GLenum, color:RawPointer<GLuint>):Void;

	@:native('glColorP4ui')
	static function colorP4ui(type:GLenum, color:GLuint):Void;

	@:native('glColorP4uiv')
	static function colorP4uiv(type:GLenum, color:RawPointer<GLuint>):Void;

	@:native('glSecondaryColorP3ui')
	static function secondaryColorP3ui(type:GLenum, color:GLuint):Void;

	@:native('glSecondaryColorP3uiv')
	static function secondaryColorP3uiv(type:GLenum, color:RawPointer<GLuint>):Void;

	@:native('glMinSampleShading')
	static function minSampleShading(value:GLfloat):Void;

	@:native('glBlendEquationi')
	static function blendEquationi(buf:GLuint, mode:GLenum):Void;

	@:native('glBlendEquationSeparatei')
	static function blendEquationSeparatei(buf:GLuint, modeRGB:GLenum, modeAlpha:GLenum):Void;

	@:native('glBlendFunci')
	static function blendFunci(buf:GLuint, src:GLenum, dst:GLenum):Void;

	@:native('glBlendFuncSeparatei')
	static function blendFuncSeparatei(buf:GLuint, srcRGB:GLenum, dstRGB:GLenum, srcAlpha:GLenum, dstAlpha:GLenum):Void;

	@:native('glDrawArraysIndirect')
	static function drawArraysIndirect(mode:GLenum, indirect:RawPointer<cpp.Void>):Void;

	@:native('glDrawElementsIndirect')
	static function drawElementsIndirect(mode:GLenum, type:GLenum, indirect:RawPointer<cpp.Void>):Void;

	@:native('glUniform1d')
	static function uniform1d(location:GLint, x:GLdouble):Void;

	@:native('glUniform2d')
	static function uniform2d(location:GLint, x:GLdouble, y:GLdouble):Void;

	@:native('glUniform3d')
	static function uniform3d(location:GLint, x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glUniform4d')
	static function uniform4d(location:GLint, x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glUniform1dv')
	static function uniform1dv(location:GLint, count:GLsizei, value:RawPointer<GLdouble>):Void;

	@:native('glUniform2dv')
	static function uniform2dv(location:GLint, count:GLsizei, value:RawPointer<GLdouble>):Void;

	@:native('glUniform3dv')
	static function uniform3dv(location:GLint, count:GLsizei, value:RawPointer<GLdouble>):Void;

	@:native('glUniform4dv')
	static function uniform4dv(location:GLint, count:GLsizei, value:RawPointer<GLdouble>):Void;

	@:native('glUniformMatrix2dv')
	static function uniformMatrix2dv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glUniformMatrix3dv')
	static function uniformMatrix3dv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glUniformMatrix4dv')
	static function uniformMatrix4dv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glUniformMatrix2x3dv')
	static function uniformMatrix2x3dv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glUniformMatrix2x4dv')
	static function uniformMatrix2x4dv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glUniformMatrix3x2dv')
	static function uniformMatrix3x2dv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glUniformMatrix3x4dv')
	static function uniformMatrix3x4dv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glUniformMatrix4x2dv')
	static function uniformMatrix4x2dv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glUniformMatrix4x3dv')
	static function uniformMatrix4x3dv(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glGetUniformdv')
	static function getUniformdv(program:GLuint, location:GLint, params:RawPointer<GLdouble>):Void;

	@:native('glGetSubroutineUniformLocation')
	static function getSubroutineUniformLocation(program:GLuint, shadertype:GLenum, name:CastGLcharStar):GLint;

	@:native('glGetSubroutineIndex')
	static function getSubroutineIndex(program:GLuint, shadertype:GLenum, name:CastGLcharStar):GLuint;

	@:native('glGetActiveSubroutineUniformiv')
	static function getActiveSubroutineUniformiv(program:GLuint, shadertype:GLenum, index:GLuint, pname:GLenum, values:RawPointer<GLint>):Void;

	@:native('glGetActiveSubroutineUniformName')
	static function getActiveSubroutineUniformName(program:GLuint, shadertype:GLenum, index:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, name:CastGLcharStar):Void;

	@:native('glGetActiveSubroutineName')
	static function getActiveSubroutineName(program:GLuint, shadertype:GLenum, index:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, name:CastGLcharStar):Void;

	@:native('glUniformSubroutinesuiv')
	static function uniformSubroutinesuiv(shadertype:GLenum, count:GLsizei, indices:RawPointer<GLuint>):Void;

	@:native('glGetUniformSubroutineuiv')
	static function getUniformSubroutineuiv(shadertype:GLenum, location:GLint, params:RawPointer<GLuint>):Void;

	@:native('glGetProgramStageiv')
	static function getProgramStageiv(program:GLuint, shadertype:GLenum, pname:GLenum, values:RawPointer<GLint>):Void;

	@:native('glPatchParameteri')
	static function patchParameteri(pname:GLenum, value:GLint):Void;

	@:native('glPatchParameterfv')
	static function patchParameterfv(pname:GLenum, values:RawPointer<GLfloat>):Void;

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

	@:native('glDrawTransformFeedback')
	static function drawTransformFeedback(mode:GLenum, id:GLuint):Void;

	@:native('glDrawTransformFeedbackStream')
	static function drawTransformFeedbackStream(mode:GLenum, id:GLuint, stream:GLuint):Void;

	@:native('glBeginQueryIndexed')
	static function beginQueryIndexed(target:GLenum, index:GLuint, id:GLuint):Void;

	@:native('glEndQueryIndexed')
	static function endQueryIndexed(target:GLenum, index:GLuint):Void;

	@:native('glGetQueryIndexediv')
	static function getQueryIndexediv(target:GLenum, index:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glReleaseShaderCompiler')
	static function releaseShaderCompiler():Void;

	@:native('glShaderBinary')
	static function shaderBinary(count:GLsizei, shaders:RawPointer<GLuint>, binaryFormat:GLenum, binary:RawPointer<cpp.Void>, length:GLsizei):Void;

	@:native('glGetShaderPrecisionFormat')
	static function getShaderPrecisionFormat(shadertype:GLenum, precisiontype:GLenum, range:RawPointer<GLint>, precision:RawPointer<GLint>):Void;

	@:native('glDepthRangef')
	static function depthRangef(n:GLfloat, f:GLfloat):Void;

	@:native('glClearDepthf')
	static function clearDepthf(d:GLfloat):Void;

	@:native('glGetProgramBinary')
	static function getProgramBinary(program:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, binaryFormat:RawPointer<GLenum>, binary:RawPointer<cpp.Void>):Void;

	@:native('glProgramBinary')
	static function programBinary(program:GLuint, binaryFormat:GLenum, binary:RawPointer<cpp.Void>, length:GLsizei):Void;

	@:native('glProgramParameteri')
	static function programParameteri(program:GLuint, pname:GLenum, value:GLint):Void;

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

	@:native('glProgramUniform1iv')
	static function programUniform1iv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glProgramUniform1f')
	static function programUniform1f(program:GLuint, location:GLint, v0:GLfloat):Void;

	@:native('glProgramUniform1fv')
	static function programUniform1fv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniform1d')
	static function programUniform1d(program:GLuint, location:GLint, v0:GLdouble):Void;

	@:native('glProgramUniform1dv')
	static function programUniform1dv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLdouble>):Void;

	@:native('glProgramUniform1ui')
	static function programUniform1ui(program:GLuint, location:GLint, v0:GLuint):Void;

	@:native('glProgramUniform1uiv')
	static function programUniform1uiv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glProgramUniform2i')
	static function programUniform2i(program:GLuint, location:GLint, v0:GLint, v1:GLint):Void;

	@:native('glProgramUniform2iv')
	static function programUniform2iv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glProgramUniform2f')
	static function programUniform2f(program:GLuint, location:GLint, v0:GLfloat, v1:GLfloat):Void;

	@:native('glProgramUniform2fv')
	static function programUniform2fv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniform2d')
	static function programUniform2d(program:GLuint, location:GLint, v0:GLdouble, v1:GLdouble):Void;

	@:native('glProgramUniform2dv')
	static function programUniform2dv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLdouble>):Void;

	@:native('glProgramUniform2ui')
	static function programUniform2ui(program:GLuint, location:GLint, v0:GLuint, v1:GLuint):Void;

	@:native('glProgramUniform2uiv')
	static function programUniform2uiv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glProgramUniform3i')
	static function programUniform3i(program:GLuint, location:GLint, v0:GLint, v1:GLint, v2:GLint):Void;

	@:native('glProgramUniform3iv')
	static function programUniform3iv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glProgramUniform3f')
	static function programUniform3f(program:GLuint, location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat):Void;

	@:native('glProgramUniform3fv')
	static function programUniform3fv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniform3d')
	static function programUniform3d(program:GLuint, location:GLint, v0:GLdouble, v1:GLdouble, v2:GLdouble):Void;

	@:native('glProgramUniform3dv')
	static function programUniform3dv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLdouble>):Void;

	@:native('glProgramUniform3ui')
	static function programUniform3ui(program:GLuint, location:GLint, v0:GLuint, v1:GLuint, v2:GLuint):Void;

	@:native('glProgramUniform3uiv')
	static function programUniform3uiv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glProgramUniform4i')
	static function programUniform4i(program:GLuint, location:GLint, v0:GLint, v1:GLint, v2:GLint, v3:GLint):Void;

	@:native('glProgramUniform4iv')
	static function programUniform4iv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glProgramUniform4f')
	static function programUniform4f(program:GLuint, location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat, v3:GLfloat):Void;

	@:native('glProgramUniform4fv')
	static function programUniform4fv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniform4d')
	static function programUniform4d(program:GLuint, location:GLint, v0:GLdouble, v1:GLdouble, v2:GLdouble, v3:GLdouble):Void;

	@:native('glProgramUniform4dv')
	static function programUniform4dv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLdouble>):Void;

	@:native('glProgramUniform4ui')
	static function programUniform4ui(program:GLuint, location:GLint, v0:GLuint, v1:GLuint, v2:GLuint, v3:GLuint):Void;

	@:native('glProgramUniform4uiv')
	static function programUniform4uiv(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glProgramUniformMatrix2fv')
	static function programUniformMatrix2fv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix3fv')
	static function programUniformMatrix3fv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix4fv')
	static function programUniformMatrix4fv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glProgramUniformMatrix2dv')
	static function programUniformMatrix2dv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glProgramUniformMatrix3dv')
	static function programUniformMatrix3dv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glProgramUniformMatrix4dv')
	static function programUniformMatrix4dv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

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

	@:native('glProgramUniformMatrix2x3dv')
	static function programUniformMatrix2x3dv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glProgramUniformMatrix3x2dv')
	static function programUniformMatrix3x2dv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glProgramUniformMatrix2x4dv')
	static function programUniformMatrix2x4dv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glProgramUniformMatrix4x2dv')
	static function programUniformMatrix4x2dv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glProgramUniformMatrix3x4dv')
	static function programUniformMatrix3x4dv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glProgramUniformMatrix4x3dv')
	static function programUniformMatrix4x3dv(program:GLuint, location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLdouble>):Void;

	@:native('glValidateProgramPipeline')
	static function validateProgramPipeline(pipeline:GLuint):Void;

	@:native('glGetProgramPipelineInfoLog')
	static function getProgramPipelineInfoLog(pipeline:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, infoLog:CastGLcharStar):Void;

	@:native('glVertexAttribL1d')
	static function vertexAttribL1d(index:GLuint, x:GLdouble):Void;

	@:native('glVertexAttribL2d')
	static function vertexAttribL2d(index:GLuint, x:GLdouble, y:GLdouble):Void;

	@:native('glVertexAttribL3d')
	static function vertexAttribL3d(index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glVertexAttribL4d')
	static function vertexAttribL4d(index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glVertexAttribL1dv')
	static function vertexAttribL1dv(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttribL2dv')
	static function vertexAttribL2dv(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttribL3dv')
	static function vertexAttribL3dv(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttribL4dv')
	static function vertexAttribL4dv(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttribLPointer')
	static function vertexAttribLPointer(index:GLuint, size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glGetVertexAttribLdv')
	static function getVertexAttribLdv(index:GLuint, pname:GLenum, params:RawPointer<GLdouble>):Void;

	@:native('glViewportArrayv')
	static function viewportArrayv(first:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glViewportIndexedf')
	static function viewportIndexedf(index:GLuint, x:GLfloat, y:GLfloat, w:GLfloat, h:GLfloat):Void;

	@:native('glViewportIndexedfv')
	static function viewportIndexedfv(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glScissorArrayv')
	static function scissorArrayv(first:GLuint, count:GLsizei, v:RawPointer<GLint>):Void;

	@:native('glScissorIndexed')
	static function scissorIndexed(index:GLuint, left:GLint, bottom:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glScissorIndexedv')
	static function scissorIndexedv(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glDepthRangeArrayv')
	static function depthRangeArrayv(first:GLuint, count:GLsizei, v:RawPointer<GLdouble>):Void;

	@:native('glDepthRangeIndexed')
	static function depthRangeIndexed(index:GLuint, n:GLdouble, f:GLdouble):Void;

	@:native('glGetFloati_v')
	static function getFloati_v(target:GLenum, index:GLuint, data:RawPointer<GLfloat>):Void;

	@:native('glGetDoublei_v')
	static function getDoublei_v(target:GLenum, index:GLuint, data:RawPointer<GLdouble>):Void;

	@:native('glDrawArraysInstancedBaseInstance')
	static function drawArraysInstancedBaseInstance(mode:GLenum, first:GLint, count:GLsizei, instancecount:GLsizei, baseinstance:GLuint):Void;

	@:native('glDrawElementsInstancedBaseInstance')
	static function drawElementsInstancedBaseInstance(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, instancecount:GLsizei, baseinstance:GLuint):Void;

	@:native('glDrawElementsInstancedBaseVertexBaseInstance')
	static function drawElementsInstancedBaseVertexBaseInstance(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, instancecount:GLsizei, basevertex:GLint, baseinstance:GLuint):Void;

	@:native('glGetInternalformativ')
	static function getInternalformativ(target:GLenum, internalformat:GLenum, pname:GLenum, count:GLsizei, params:RawPointer<GLint>):Void;

	@:native('glGetActiveAtomicCounterBufferiv')
	static function getActiveAtomicCounterBufferiv(program:GLuint, bufferIndex:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glBindImageTexture')
	static function bindImageTexture(unit:GLuint, texture:GLuint, level:GLint, layered:GLboolean, layer:GLint, access:GLenum, format:GLenum):Void;

	@:native('glMemoryBarrier')
	static function memoryBarrier(barriers:GLbitfield):Void;

	@:native('glTexStorage1D')
	static function texStorage1D(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei):Void;

	@:native('glTexStorage2D')
	static function texStorage2D(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glTexStorage3D')
	static function texStorage3D(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei):Void;

	@:native('glDrawTransformFeedbackInstanced')
	static function drawTransformFeedbackInstanced(mode:GLenum, id:GLuint, instancecount:GLsizei):Void;

	@:native('glDrawTransformFeedbackStreamInstanced')
	static function drawTransformFeedbackStreamInstanced(mode:GLenum, id:GLuint, stream:GLuint, instancecount:GLsizei):Void;

	@:native('glClearBufferData')
	static function clearBufferData(target:GLenum, internalformat:GLenum, format:GLenum, type:GLenum, data:RawPointer<cpp.Void>):Void;

	@:native('glClearBufferSubData')
	static function clearBufferSubData(target:GLenum, internalformat:GLenum, offset:GLintptr, size:GLsizeiptr, format:GLenum, type:GLenum, data:RawPointer<cpp.Void>):Void;

	@:native('glDispatchCompute')
	static function dispatchCompute(num_groups_x:GLuint, num_groups_y:GLuint, num_groups_z:GLuint):Void;

	@:native('glDispatchComputeIndirect')
	static function dispatchComputeIndirect(indirect:GLintptr):Void;

	@:native('glCopyImageSubData')
	static function copyImageSubData(srcName:GLuint, srcTarget:GLenum, srcLevel:GLint, srcX:GLint, srcY:GLint, srcZ:GLint, dstName:GLuint, dstTarget:GLenum, dstLevel:GLint, dstX:GLint, dstY:GLint, dstZ:GLint, srcWidth:GLsizei, srcHeight:GLsizei, srcDepth:GLsizei):Void;

	@:native('glFramebufferParameteri')
	static function framebufferParameteri(target:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glGetFramebufferParameteriv')
	static function getFramebufferParameteriv(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetInternalformati64v')
	static function getInternalformati64v(target:GLenum, internalformat:GLenum, pname:GLenum, count:GLsizei, params:RawPointer<GLint64>):Void;

	@:native('glInvalidateTexSubImage')
	static function invalidateTexSubImage(texture:GLuint, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei):Void;

	@:native('glInvalidateTexImage')
	static function invalidateTexImage(texture:GLuint, level:GLint):Void;

	@:native('glInvalidateBufferSubData')
	static function invalidateBufferSubData(buffer:GLuint, offset:GLintptr, length:GLsizeiptr):Void;

	@:native('glInvalidateBufferData')
	static function invalidateBufferData(buffer:GLuint):Void;

	@:native('glInvalidateFramebuffer')
	static function invalidateFramebuffer(target:GLenum, numAttachments:GLsizei, attachments:RawPointer<GLenum>):Void;

	@:native('glInvalidateSubFramebuffer')
	static function invalidateSubFramebuffer(target:GLenum, numAttachments:GLsizei, attachments:RawPointer<GLenum>, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glMultiDrawArraysIndirect')
	static function multiDrawArraysIndirect(mode:GLenum, indirect:RawPointer<cpp.Void>, drawcount:GLsizei, stride:GLsizei):Void;

	@:native('glMultiDrawElementsIndirect')
	static function multiDrawElementsIndirect(mode:GLenum, type:GLenum, indirect:RawPointer<cpp.Void>, drawcount:GLsizei, stride:GLsizei):Void;

	@:native('glGetProgramInterfaceiv')
	static function getProgramInterfaceiv(program:GLuint, programInterface:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetProgramResourceIndex')
	static function getProgramResourceIndex(program:GLuint, programInterface:GLenum, name:CastGLcharStar):GLuint;

	@:native('glGetProgramResourceName')
	static function getProgramResourceName(program:GLuint, programInterface:GLenum, index:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, name:CastGLcharStar):Void;

	@:native('glGetProgramResourceiv')
	static function getProgramResourceiv(program:GLuint, programInterface:GLenum, index:GLuint, propCount:GLsizei, props:RawPointer<GLenum>, count:GLsizei, length:RawPointer<GLsizei>, params:RawPointer<GLint>):Void;

	@:native('glGetProgramResourceLocation')
	static function getProgramResourceLocation(program:GLuint, programInterface:GLenum, name:CastGLcharStar):GLint;

	@:native('glGetProgramResourceLocationIndex')
	static function getProgramResourceLocationIndex(program:GLuint, programInterface:GLenum, name:CastGLcharStar):GLint;

	@:native('glShaderStorageBlockBinding')
	static function shaderStorageBlockBinding(program:GLuint, storageBlockIndex:GLuint, storageBlockBinding:GLuint):Void;

	@:native('glTexBufferRange')
	static function texBufferRange(target:GLenum, internalformat:GLenum, buffer:GLuint, offset:GLintptr, size:GLsizeiptr):Void;

	@:native('glTexStorage2DMultisample')
	static function texStorage2DMultisample(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, fixedsamplelocations:GLboolean):Void;

	@:native('glTexStorage3DMultisample')
	static function texStorage3DMultisample(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, fixedsamplelocations:GLboolean):Void;

	@:native('glTextureView')
	static function textureView(texture:GLuint, target:GLenum, origtexture:GLuint, internalformat:GLenum, minlevel:GLuint, numlevels:GLuint, minlayer:GLuint, numlayers:GLuint):Void;

	@:native('glBindVertexBuffer')
	static function bindVertexBuffer(bindingindex:GLuint, buffer:GLuint, offset:GLintptr, stride:GLsizei):Void;

	@:native('glVertexAttribFormat')
	static function vertexAttribFormat(attribindex:GLuint, size:GLint, type:GLenum, normalized:GLboolean, relativeoffset:GLuint):Void;

	@:native('glVertexAttribIFormat')
	static function vertexAttribIFormat(attribindex:GLuint, size:GLint, type:GLenum, relativeoffset:GLuint):Void;

	@:native('glVertexAttribLFormat')
	static function vertexAttribLFormat(attribindex:GLuint, size:GLint, type:GLenum, relativeoffset:GLuint):Void;

	@:native('glVertexAttribBinding')
	static function vertexAttribBinding(attribindex:GLuint, bindingindex:GLuint):Void;

	@:native('glVertexBindingDivisor')
	static function vertexBindingDivisor(bindingindex:GLuint, divisor:GLuint):Void;

	@:native('glDebugMessageControl')
	static function debugMessageControl(source:GLenum, type:GLenum, severity:GLenum, count:GLsizei, ids:RawPointer<GLuint>, enabled:GLboolean):Void;

	@:native('glDebugMessageInsert')
	static function debugMessageInsert(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, buf:CastGLcharStar):Void;

	@:native('glDebugMessageCallback')
	static function debugMessageCallback(callback:GLDEBUGPROC, userParam:RawPointer<cpp.Void>):Void;

	@:native('glGetDebugMessageLog')
	static function getDebugMessageLog(count:GLuint, bufSize:GLsizei, sources:RawPointer<GLenum>, types:RawPointer<GLenum>, ids:RawPointer<GLuint>, severities:RawPointer<GLenum>, lengths:RawPointer<GLsizei>, messageLog:CastGLcharStar):GLuint;

	@:native('glPushDebugGroup')
	static function pushDebugGroup(source:GLenum, id:GLuint, length:GLsizei, message:CastGLcharStar):Void;

	@:native('glPopDebugGroup')
	static function popDebugGroup():Void;

	@:native('glObjectLabel')
	static function objectLabel(identifier:GLenum, name:GLuint, length:GLsizei, label:CastGLcharStar):Void;

	@:native('glGetObjectLabel')
	static function getObjectLabel(identifier:GLenum, name:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, label:CastGLcharStar):Void;

	@:native('glObjectPtrLabel')
	static function objectPtrLabel(ptr:RawPointer<cpp.Void>, length:GLsizei, label:CastGLcharStar):Void;

	@:native('glGetObjectPtrLabel')
	static function getObjectPtrLabel(ptr:RawPointer<cpp.Void>, bufSize:GLsizei, length:RawPointer<GLsizei>, label:CastGLcharStar):Void;

	@:native('glBufferStorage')
	static function bufferStorage(target:GLenum, size:GLsizeiptr, data:RawPointer<cpp.Void>, flags:GLbitfield):Void;

	@:native('glClearTexImage')
	static function clearTexImage(texture:GLuint, level:GLint, format:GLenum, type:GLenum, data:RawPointer<cpp.Void>):Void;

	@:native('glClearTexSubImage')
	static function clearTexSubImage(texture:GLuint, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, type:GLenum, data:RawPointer<cpp.Void>):Void;

	@:native('glBindBuffersBase')
	static function bindBuffersBase(target:GLenum, first:GLuint, count:GLsizei, buffers:RawPointer<GLuint>):Void;

	@:native('glBindBuffersRange')
	static function bindBuffersRange(target:GLenum, first:GLuint, count:GLsizei, buffers:RawPointer<GLuint>, offsets:RawPointer<GLintptr>, sizes:RawPointer<GLsizeiptr>):Void;

	@:native('glBindTextures')
	static function bindTextures(first:GLuint, count:GLsizei, textures:RawPointer<GLuint>):Void;

	@:native('glBindSamplers')
	static function bindSamplers(first:GLuint, count:GLsizei, samplers:RawPointer<GLuint>):Void;

	@:native('glBindImageTextures')
	static function bindImageTextures(first:GLuint, count:GLsizei, textures:RawPointer<GLuint>):Void;

	@:native('glBindVertexBuffers')
	static function bindVertexBuffers(first:GLuint, count:GLsizei, buffers:RawPointer<GLuint>, offsets:RawPointer<GLintptr>, strides:RawPointer<GLsizei>):Void;

	@:native('glClipControl')
	static function clipControl(origin:GLenum, depth:GLenum):Void;

	@:native('glCreateTransformFeedbacks')
	static function createTransformFeedbacks(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glTransformFeedbackBufferBase')
	static function transformFeedbackBufferBase(xfb:GLuint, index:GLuint, buffer:GLuint):Void;

	@:native('glTransformFeedbackBufferRange')
	static function transformFeedbackBufferRange(xfb:GLuint, index:GLuint, buffer:GLuint, offset:GLintptr, size:GLsizeiptr):Void;

	@:native('glGetTransformFeedbackiv')
	static function getTransformFeedbackiv(xfb:GLuint, pname:GLenum, param:RawPointer<GLint>):Void;

	@:native('glGetTransformFeedbacki_v')
	static function getTransformFeedbacki_v(xfb:GLuint, pname:GLenum, index:GLuint, param:RawPointer<GLint>):Void;

	@:native('glGetTransformFeedbacki64_v')
	static function getTransformFeedbacki64_v(xfb:GLuint, pname:GLenum, index:GLuint, param:RawPointer<GLint64>):Void;

	@:native('glCreateBuffers')
	static function createBuffers(n:GLsizei, buffers:RawPointer<GLuint>):Void;

	@:native('glNamedBufferStorage')
	static function namedBufferStorage(buffer:GLuint, size:GLsizeiptr, data:RawPointer<cpp.Void>, flags:GLbitfield):Void;

	@:native('glNamedBufferData')
	static function namedBufferData(buffer:GLuint, size:GLsizeiptr, data:RawPointer<cpp.Void>, usage:GLenum):Void;

	@:native('glNamedBufferSubData')
	static function namedBufferSubData(buffer:GLuint, offset:GLintptr, size:GLsizeiptr, data:RawPointer<cpp.Void>):Void;

	@:native('glCopyNamedBufferSubData')
	static function copyNamedBufferSubData(readBuffer:GLuint, writeBuffer:GLuint, readOffset:GLintptr, writeOffset:GLintptr, size:GLsizeiptr):Void;

	@:native('glClearNamedBufferData')
	static function clearNamedBufferData(buffer:GLuint, internalformat:GLenum, format:GLenum, type:GLenum, data:RawPointer<cpp.Void>):Void;

	@:native('glClearNamedBufferSubData')
	static function clearNamedBufferSubData(buffer:GLuint, internalformat:GLenum, offset:GLintptr, size:GLsizeiptr, format:GLenum, type:GLenum, data:RawPointer<cpp.Void>):Void;

	@:native('glMapNamedBuffer')
	static function mapNamedBuffer(buffer:GLuint, access:GLenum):RawPointer<cpp.Void>;

	@:native('glMapNamedBufferRange')
	static function mapNamedBufferRange(buffer:GLuint, offset:GLintptr, length:GLsizeiptr, access:GLbitfield):RawPointer<cpp.Void>;

	@:native('glUnmapNamedBuffer')
	static function unmapNamedBuffer(buffer:GLuint):GLboolean;

	@:native('glFlushMappedNamedBufferRange')
	static function flushMappedNamedBufferRange(buffer:GLuint, offset:GLintptr, length:GLsizeiptr):Void;

	@:native('glGetNamedBufferParameteriv')
	static function getNamedBufferParameteriv(buffer:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetNamedBufferParameteri64v')
	static function getNamedBufferParameteri64v(buffer:GLuint, pname:GLenum, params:RawPointer<GLint64>):Void;

	@:native('glGetNamedBufferPointerv')
	static function getNamedBufferPointerv(buffer:GLuint, pname:GLenum, params:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glGetNamedBufferSubData')
	static function getNamedBufferSubData(buffer:GLuint, offset:GLintptr, size:GLsizeiptr, data:RawPointer<cpp.Void>):Void;

	@:native('glCreateFramebuffers')
	static function createFramebuffers(n:GLsizei, framebuffers:RawPointer<GLuint>):Void;

	@:native('glNamedFramebufferRenderbuffer')
	static function namedFramebufferRenderbuffer(framebuffer:GLuint, attachment:GLenum, renderbuffertarget:GLenum, renderbuffer:GLuint):Void;

	@:native('glNamedFramebufferParameteri')
	static function namedFramebufferParameteri(framebuffer:GLuint, pname:GLenum, param:GLint):Void;

	@:native('glNamedFramebufferTexture')
	static function namedFramebufferTexture(framebuffer:GLuint, attachment:GLenum, texture:GLuint, level:GLint):Void;

	@:native('glNamedFramebufferTextureLayer')
	static function namedFramebufferTextureLayer(framebuffer:GLuint, attachment:GLenum, texture:GLuint, level:GLint, layer:GLint):Void;

	@:native('glNamedFramebufferDrawBuffer')
	static function namedFramebufferDrawBuffer(framebuffer:GLuint, buf:GLenum):Void;

	@:native('glNamedFramebufferDrawBuffers')
	static function namedFramebufferDrawBuffers(framebuffer:GLuint, n:GLsizei, bufs:RawPointer<GLenum>):Void;

	@:native('glNamedFramebufferReadBuffer')
	static function namedFramebufferReadBuffer(framebuffer:GLuint, src:GLenum):Void;

	@:native('glInvalidateNamedFramebufferData')
	static function invalidateNamedFramebufferData(framebuffer:GLuint, numAttachments:GLsizei, attachments:RawPointer<GLenum>):Void;

	@:native('glInvalidateNamedFramebufferSubData')
	static function invalidateNamedFramebufferSubData(framebuffer:GLuint, numAttachments:GLsizei, attachments:RawPointer<GLenum>, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glClearNamedFramebufferiv')
	static function clearNamedFramebufferiv(framebuffer:GLuint, buffer:GLenum, drawbuffer:GLint, value:RawPointer<GLint>):Void;

	@:native('glClearNamedFramebufferuiv')
	static function clearNamedFramebufferuiv(framebuffer:GLuint, buffer:GLenum, drawbuffer:GLint, value:RawPointer<GLuint>):Void;

	@:native('glClearNamedFramebufferfv')
	static function clearNamedFramebufferfv(framebuffer:GLuint, buffer:GLenum, drawbuffer:GLint, value:RawPointer<GLfloat>):Void;

	@:native('glClearNamedFramebufferfi')
	static function clearNamedFramebufferfi(framebuffer:GLuint, buffer:GLenum, drawbuffer:GLint, depth:GLfloat, stencil:GLint):Void;

	@:native('glBlitNamedFramebuffer')
	static function blitNamedFramebuffer(readFramebuffer:GLuint, drawFramebuffer:GLuint, srcX0:GLint, srcY0:GLint, srcX1:GLint, srcY1:GLint, dstX0:GLint, dstY0:GLint, dstX1:GLint, dstY1:GLint, mask:GLbitfield, filter:GLenum):Void;

	@:native('glCheckNamedFramebufferStatus')
	static function checkNamedFramebufferStatus(framebuffer:GLuint, target:GLenum):GLenum;

	@:native('glGetNamedFramebufferParameteriv')
	static function getNamedFramebufferParameteriv(framebuffer:GLuint, pname:GLenum, param:RawPointer<GLint>):Void;

	@:native('glGetNamedFramebufferAttachmentParameteriv')
	static function getNamedFramebufferAttachmentParameteriv(framebuffer:GLuint, attachment:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glCreateRenderbuffers')
	static function createRenderbuffers(n:GLsizei, renderbuffers:RawPointer<GLuint>):Void;

	@:native('glNamedRenderbufferStorage')
	static function namedRenderbufferStorage(renderbuffer:GLuint, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glNamedRenderbufferStorageMultisample')
	static function namedRenderbufferStorageMultisample(renderbuffer:GLuint, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glGetNamedRenderbufferParameteriv')
	static function getNamedRenderbufferParameteriv(renderbuffer:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glCreateTextures')
	static function createTextures(target:GLenum, n:GLsizei, textures:RawPointer<GLuint>):Void;

	@:native('glTextureBuffer')
	static function textureBuffer(texture:GLuint, internalformat:GLenum, buffer:GLuint):Void;

	@:native('glTextureBufferRange')
	static function textureBufferRange(texture:GLuint, internalformat:GLenum, buffer:GLuint, offset:GLintptr, size:GLsizeiptr):Void;

	@:native('glTextureStorage1D')
	static function textureStorage1D(texture:GLuint, levels:GLsizei, internalformat:GLenum, width:GLsizei):Void;

	@:native('glTextureStorage2D')
	static function textureStorage2D(texture:GLuint, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glTextureStorage3D')
	static function textureStorage3D(texture:GLuint, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei):Void;

	@:native('glTextureStorage2DMultisample')
	static function textureStorage2DMultisample(texture:GLuint, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, fixedsamplelocations:GLboolean):Void;

	@:native('glTextureStorage3DMultisample')
	static function textureStorage3DMultisample(texture:GLuint, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, fixedsamplelocations:GLboolean):Void;

	@:native('glTextureSubImage1D')
	static function textureSubImage1D(texture:GLuint, level:GLint, xoffset:GLint, width:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTextureSubImage2D')
	static function textureSubImage2D(texture:GLuint, level:GLint, xoffset:GLint, yoffset:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTextureSubImage3D')
	static function textureSubImage3D(texture:GLuint, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTextureSubImage1D')
	static function compressedTextureSubImage1D(texture:GLuint, level:GLint, xoffset:GLint, width:GLsizei, format:GLenum, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTextureSubImage2D')
	static function compressedTextureSubImage2D(texture:GLuint, level:GLint, xoffset:GLint, yoffset:GLint, width:GLsizei, height:GLsizei, format:GLenum, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTextureSubImage3D')
	static function compressedTextureSubImage3D(texture:GLuint, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCopyTextureSubImage1D')
	static function copyTextureSubImage1D(texture:GLuint, level:GLint, xoffset:GLint, x:GLint, y:GLint, width:GLsizei):Void;

	@:native('glCopyTextureSubImage2D')
	static function copyTextureSubImage2D(texture:GLuint, level:GLint, xoffset:GLint, yoffset:GLint, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glCopyTextureSubImage3D')
	static function copyTextureSubImage3D(texture:GLuint, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glTextureParameterf')
	static function textureParameterf(texture:GLuint, pname:GLenum, param:GLfloat):Void;

	@:native('glTextureParameterfv')
	static function textureParameterfv(texture:GLuint, pname:GLenum, param:RawPointer<GLfloat>):Void;

	@:native('glTextureParameteri')
	static function textureParameteri(texture:GLuint, pname:GLenum, param:GLint):Void;

	@:native('glTextureParameterIiv')
	static function textureParameterIiv(texture:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glTextureParameterIuiv')
	static function textureParameterIuiv(texture:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glTextureParameteriv')
	static function textureParameteriv(texture:GLuint, pname:GLenum, param:RawPointer<GLint>):Void;

	@:native('glGenerateTextureMipmap')
	static function generateTextureMipmap(texture:GLuint):Void;

	@:native('glBindTextureUnit')
	static function bindTextureUnit(unit:GLuint, texture:GLuint):Void;

	@:native('glGetTextureImage')
	static function getTextureImage(texture:GLuint, level:GLint, format:GLenum, type:GLenum, bufSize:GLsizei, pixels:RawPointer<cpp.Void>):Void;

	@:native('glGetCompressedTextureImage')
	static function getCompressedTextureImage(texture:GLuint, level:GLint, bufSize:GLsizei, pixels:RawPointer<cpp.Void>):Void;

	@:native('glGetTextureLevelParameterfv')
	static function getTextureLevelParameterfv(texture:GLuint, level:GLint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetTextureLevelParameteriv')
	static function getTextureLevelParameteriv(texture:GLuint, level:GLint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetTextureParameterfv')
	static function getTextureParameterfv(texture:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetTextureParameterIiv')
	static function getTextureParameterIiv(texture:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetTextureParameterIuiv')
	static function getTextureParameterIuiv(texture:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glGetTextureParameteriv')
	static function getTextureParameteriv(texture:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glCreateVertexArrays')
	static function createVertexArrays(n:GLsizei, arrays:RawPointer<GLuint>):Void;

	@:native('glDisableVertexArrayAttrib')
	static function disableVertexArrayAttrib(vaobj:GLuint, index:GLuint):Void;

	@:native('glEnableVertexArrayAttrib')
	static function enableVertexArrayAttrib(vaobj:GLuint, index:GLuint):Void;

	@:native('glVertexArrayElementBuffer')
	static function vertexArrayElementBuffer(vaobj:GLuint, buffer:GLuint):Void;

	@:native('glVertexArrayVertexBuffer')
	static function vertexArrayVertexBuffer(vaobj:GLuint, bindingindex:GLuint, buffer:GLuint, offset:GLintptr, stride:GLsizei):Void;

	@:native('glVertexArrayVertexBuffers')
	static function vertexArrayVertexBuffers(vaobj:GLuint, first:GLuint, count:GLsizei, buffers:RawPointer<GLuint>, offsets:RawPointer<GLintptr>, strides:RawPointer<GLsizei>):Void;

	@:native('glVertexArrayAttribBinding')
	static function vertexArrayAttribBinding(vaobj:GLuint, attribindex:GLuint, bindingindex:GLuint):Void;

	@:native('glVertexArrayAttribFormat')
	static function vertexArrayAttribFormat(vaobj:GLuint, attribindex:GLuint, size:GLint, type:GLenum, normalized:GLboolean, relativeoffset:GLuint):Void;

	@:native('glVertexArrayAttribIFormat')
	static function vertexArrayAttribIFormat(vaobj:GLuint, attribindex:GLuint, size:GLint, type:GLenum, relativeoffset:GLuint):Void;

	@:native('glVertexArrayAttribLFormat')
	static function vertexArrayAttribLFormat(vaobj:GLuint, attribindex:GLuint, size:GLint, type:GLenum, relativeoffset:GLuint):Void;

	@:native('glVertexArrayBindingDivisor')
	static function vertexArrayBindingDivisor(vaobj:GLuint, bindingindex:GLuint, divisor:GLuint):Void;

	@:native('glGetVertexArrayiv')
	static function getVertexArrayiv(vaobj:GLuint, pname:GLenum, param:RawPointer<GLint>):Void;

	@:native('glGetVertexArrayIndexediv')
	static function getVertexArrayIndexediv(vaobj:GLuint, index:GLuint, pname:GLenum, param:RawPointer<GLint>):Void;

	@:native('glGetVertexArrayIndexed64iv')
	static function getVertexArrayIndexed64iv(vaobj:GLuint, index:GLuint, pname:GLenum, param:RawPointer<GLint64>):Void;

	@:native('glCreateSamplers')
	static function createSamplers(n:GLsizei, samplers:RawPointer<GLuint>):Void;

	@:native('glCreateProgramPipelines')
	static function createProgramPipelines(n:GLsizei, pipelines:RawPointer<GLuint>):Void;

	@:native('glCreateQueries')
	static function createQueries(target:GLenum, n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glGetQueryBufferObjecti64v')
	static function getQueryBufferObjecti64v(id:GLuint, buffer:GLuint, pname:GLenum, offset:GLintptr):Void;

	@:native('glGetQueryBufferObjectiv')
	static function getQueryBufferObjectiv(id:GLuint, buffer:GLuint, pname:GLenum, offset:GLintptr):Void;

	@:native('glGetQueryBufferObjectui64v')
	static function getQueryBufferObjectui64v(id:GLuint, buffer:GLuint, pname:GLenum, offset:GLintptr):Void;

	@:native('glGetQueryBufferObjectuiv')
	static function getQueryBufferObjectuiv(id:GLuint, buffer:GLuint, pname:GLenum, offset:GLintptr):Void;

	@:native('glMemoryBarrierByRegion')
	static function memoryBarrierByRegion(barriers:GLbitfield):Void;

	@:native('glGetTextureSubImage')
	static function getTextureSubImage(texture:GLuint, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, type:GLenum, bufSize:GLsizei, pixels:RawPointer<cpp.Void>):Void;

	@:native('glGetCompressedTextureSubImage')
	static function getCompressedTextureSubImage(texture:GLuint, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, bufSize:GLsizei, pixels:RawPointer<cpp.Void>):Void;

	@:native('glGetGraphicsResetStatus')
	static function getGraphicsResetStatus():GLenum;

	@:native('glGetnCompressedTexImage')
	static function getnCompressedTexImage(target:GLenum, lod:GLint, bufSize:GLsizei, pixels:RawPointer<cpp.Void>):Void;

	@:native('glGetnTexImage')
	static function getnTexImage(target:GLenum, level:GLint, format:GLenum, type:GLenum, bufSize:GLsizei, pixels:RawPointer<cpp.Void>):Void;

	@:native('glGetnUniformdv')
	static function getnUniformdv(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLdouble>):Void;

	@:native('glGetnUniformfv')
	static function getnUniformfv(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLfloat>):Void;

	@:native('glGetnUniformiv')
	static function getnUniformiv(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLint>):Void;

	@:native('glGetnUniformuiv')
	static function getnUniformuiv(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLuint>):Void;

	@:native('glReadnPixels')
	static function readnPixels(x:GLint, y:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, bufSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glGetnMapdv')
	static function getnMapdv(target:GLenum, query:GLenum, bufSize:GLsizei, v:RawPointer<GLdouble>):Void;

	@:native('glGetnMapfv')
	static function getnMapfv(target:GLenum, query:GLenum, bufSize:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glGetnMapiv')
	static function getnMapiv(target:GLenum, query:GLenum, bufSize:GLsizei, v:RawPointer<GLint>):Void;

	@:native('glGetnPixelMapfv')
	static function getnPixelMapfv(map:GLenum, bufSize:GLsizei, values:RawPointer<GLfloat>):Void;

	@:native('glGetnPixelMapuiv')
	static function getnPixelMapuiv(map:GLenum, bufSize:GLsizei, values:RawPointer<GLuint>):Void;

	@:native('glGetnPixelMapusv')
	static function getnPixelMapusv(map:GLenum, bufSize:GLsizei, values:RawPointer<GLushort>):Void;

	@:native('glGetnPolygonStipple')
	static function getnPolygonStipple(bufSize:GLsizei, pattern:RawPointer<GLubyte>):Void;

	@:native('glGetnColorTable')
	static function getnColorTable(target:GLenum, format:GLenum, type:GLenum, bufSize:GLsizei, table:RawPointer<cpp.Void>):Void;

	@:native('glGetnConvolutionFilter')
	static function getnConvolutionFilter(target:GLenum, format:GLenum, type:GLenum, bufSize:GLsizei, image:RawPointer<cpp.Void>):Void;

	@:native('glGetnSeparableFilter')
	static function getnSeparableFilter(target:GLenum, format:GLenum, type:GLenum, rowBufSize:GLsizei, row:RawPointer<cpp.Void>, columnBufSize:GLsizei, column:RawPointer<cpp.Void>, span:RawPointer<cpp.Void>):Void;

	@:native('glGetnHistogram')
	static function getnHistogram(target:GLenum, reset:GLboolean, format:GLenum, type:GLenum, bufSize:GLsizei, values:RawPointer<cpp.Void>):Void;

	@:native('glGetnMinmax')
	static function getnMinmax(target:GLenum, reset:GLboolean, format:GLenum, type:GLenum, bufSize:GLsizei, values:RawPointer<cpp.Void>):Void;

	@:native('glTextureBarrier')
	static function textureBarrier():Void;

	@:native('glSpecializeShader')
	static function specializeShader(shader:GLuint, pEntryPoint:CastGLcharStar, numSpecializationConstants:GLuint, pConstantIndex:RawPointer<GLuint>, pConstantValue:RawPointer<GLuint>):Void;

	@:native('glMultiDrawArraysIndirectCount')
	static function multiDrawArraysIndirectCount(mode:GLenum, indirect:RawPointer<cpp.Void>, drawcount:GLintptr, maxdrawcount:GLsizei, stride:GLsizei):Void;

	@:native('glMultiDrawElementsIndirectCount')
	static function multiDrawElementsIndirectCount(mode:GLenum, type:GLenum, indirect:RawPointer<cpp.Void>, drawcount:GLintptr, maxdrawcount:GLsizei, stride:GLsizei):Void;

	@:native('glPolygonOffsetClamp')
	static function polygonOffsetClamp(factor:GLfloat, units:GLfloat, clamp:GLfloat):Void;

	@:native('glTbufferMask3DFX')
	static function tbufferMask3DFX(mask:GLuint):Void;

	@:native('glDebugMessageEnableAMD')
	static function debugMessageEnableAMD(category:GLenum, severity:GLenum, count:GLsizei, ids:RawPointer<GLuint>, enabled:GLboolean):Void;

	@:native('glDebugMessageInsertAMD')
	static function debugMessageInsertAMD(category:GLenum, severity:GLenum, id:GLuint, length:GLsizei, buf:CastGLcharStar):Void;

	@:native('glDebugMessageCallbackAMD')
	static function debugMessageCallbackAMD(callback:GLDEBUGPROCAMD, userParam:RawPointer<cpp.Void>):Void;

	@:native('glGetDebugMessageLogAMD')
	static function getDebugMessageLogAMD(count:GLuint, bufSize:GLsizei, categories:RawPointer<GLenum>, severities:RawPointer<GLenum>, ids:RawPointer<GLuint>, lengths:RawPointer<GLsizei>, message:CastGLcharStar):GLuint;

	@:native('glBlendFuncIndexedAMD')
	static function blendFuncIndexedAMD(buf:GLuint, src:GLenum, dst:GLenum):Void;

	@:native('glBlendFuncSeparateIndexedAMD')
	static function blendFuncSeparateIndexedAMD(buf:GLuint, srcRGB:GLenum, dstRGB:GLenum, srcAlpha:GLenum, dstAlpha:GLenum):Void;

	@:native('glBlendEquationIndexedAMD')
	static function blendEquationIndexedAMD(buf:GLuint, mode:GLenum):Void;

	@:native('glBlendEquationSeparateIndexedAMD')
	static function blendEquationSeparateIndexedAMD(buf:GLuint, modeRGB:GLenum, modeAlpha:GLenum):Void;

	@:native('glRenderbufferStorageMultisampleAdvancedAMD')
	static function renderbufferStorageMultisampleAdvancedAMD(target:GLenum, samples:GLsizei, storageSamples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glNamedRenderbufferStorageMultisampleAdvancedAMD')
	static function namedRenderbufferStorageMultisampleAdvancedAMD(renderbuffer:GLuint, samples:GLsizei, storageSamples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glFramebufferSamplePositionsfvAMD')
	static function framebufferSamplePositionsfvAMD(target:GLenum, numsamples:GLuint, pixelindex:GLuint, values:RawPointer<GLfloat>):Void;

	@:native('glNamedFramebufferSamplePositionsfvAMD')
	static function namedFramebufferSamplePositionsfvAMD(framebuffer:GLuint, numsamples:GLuint, pixelindex:GLuint, values:RawPointer<GLfloat>):Void;

	@:native('glGetFramebufferParameterfvAMD')
	static function getFramebufferParameterfvAMD(target:GLenum, pname:GLenum, numsamples:GLuint, pixelindex:GLuint, size:GLsizei, values:RawPointer<GLfloat>):Void;

	@:native('glGetNamedFramebufferParameterfvAMD')
	static function getNamedFramebufferParameterfvAMD(framebuffer:GLuint, pname:GLenum, numsamples:GLuint, pixelindex:GLuint, size:GLsizei, values:RawPointer<GLfloat>):Void;

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

	@:native('glGetUniformui64vNV')
	static function getUniformui64vNV(program:GLuint, location:GLint, params:RawPointer<GLuint64EXT>):Void;

	@:native('glVertexAttribParameteriAMD')
	static function vertexAttribParameteriAMD(index:GLuint, pname:GLenum, param:GLint):Void;

	@:native('glMultiDrawArraysIndirectAMD')
	static function multiDrawArraysIndirectAMD(mode:GLenum, indirect:RawPointer<cpp.Void>, primcount:GLsizei, stride:GLsizei):Void;

	@:native('glMultiDrawElementsIndirectAMD')
	static function multiDrawElementsIndirectAMD(mode:GLenum, type:GLenum, indirect:RawPointer<cpp.Void>, primcount:GLsizei, stride:GLsizei):Void;

	@:native('glGenNamesAMD')
	static function genNamesAMD(identifier:GLenum, num:GLuint, names:RawPointer<GLuint>):Void;

	@:native('glDeleteNamesAMD')
	static function deleteNamesAMD(identifier:GLenum, num:GLuint, names:RawPointer<GLuint>):Void;

	@:native('glIsNameAMD')
	static function isNameAMD(identifier:GLenum, name:GLuint):GLboolean;

	@:native('glQueryObjectParameteruiAMD')
	static function queryObjectParameteruiAMD(target:GLenum, id:GLuint, pname:GLenum, param:GLuint):Void;

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

	@:native('glSetMultisamplefvAMD')
	static function setMultisamplefvAMD(pname:GLenum, index:GLuint, val:RawPointer<GLfloat>):Void;

	@:native('glTexStorageSparseAMD')
	static function texStorageSparseAMD(target:GLenum, internalFormat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, layers:GLsizei, flags:GLbitfield):Void;

	@:native('glTextureStorageSparseAMD')
	static function textureStorageSparseAMD(texture:GLuint, target:GLenum, internalFormat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, layers:GLsizei, flags:GLbitfield):Void;

	@:native('glStencilOpValueAMD')
	static function stencilOpValueAMD(face:GLenum, value:GLuint):Void;

	@:native('glTessellationFactorAMD')
	static function tessellationFactorAMD(factor:GLfloat):Void;

	@:native('glTessellationModeAMD')
	static function tessellationModeAMD(mode:GLenum):Void;

	@:native('glElementPointerAPPLE')
	static function elementPointerAPPLE(type:GLenum, pointer:RawPointer<cpp.Void>):Void;

	@:native('glDrawElementArrayAPPLE')
	static function drawElementArrayAPPLE(mode:GLenum, first:GLint, count:GLsizei):Void;

	@:native('glDrawRangeElementArrayAPPLE')
	static function drawRangeElementArrayAPPLE(mode:GLenum, start:GLuint, end:GLuint, first:GLint, count:GLsizei):Void;

	@:native('glMultiDrawElementArrayAPPLE')
	static function multiDrawElementArrayAPPLE(mode:GLenum, first:RawPointer<GLint>, count:RawPointer<GLsizei>, primcount:GLsizei):Void;

	@:native('glMultiDrawRangeElementArrayAPPLE')
	static function multiDrawRangeElementArrayAPPLE(mode:GLenum, start:GLuint, end:GLuint, first:RawPointer<GLint>, count:RawPointer<GLsizei>, primcount:GLsizei):Void;

	@:native('glGenFencesAPPLE')
	static function genFencesAPPLE(n:GLsizei, fences:RawPointer<GLuint>):Void;

	@:native('glDeleteFencesAPPLE')
	static function deleteFencesAPPLE(n:GLsizei, fences:RawPointer<GLuint>):Void;

	@:native('glSetFenceAPPLE')
	static function setFenceAPPLE(fence:GLuint):Void;

	@:native('glIsFenceAPPLE')
	static function isFenceAPPLE(fence:GLuint):GLboolean;

	@:native('glTestFenceAPPLE')
	static function testFenceAPPLE(fence:GLuint):GLboolean;

	@:native('glFinishFenceAPPLE')
	static function finishFenceAPPLE(fence:GLuint):Void;

	@:native('glTestObjectAPPLE')
	static function testObjectAPPLE(object:GLenum, name:GLuint):GLboolean;

	@:native('glFinishObjectAPPLE')
	static function finishObjectAPPLE(object:GLenum, name:GLint):Void;

	@:native('glBufferParameteriAPPLE')
	static function bufferParameteriAPPLE(target:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glFlushMappedBufferRangeAPPLE')
	static function flushMappedBufferRangeAPPLE(target:GLenum, offset:GLintptr, size:GLsizeiptr):Void;

	@:native('glObjectPurgeableAPPLE')
	static function objectPurgeableAPPLE(objectType:GLenum, name:GLuint, option:GLenum):GLenum;

	@:native('glObjectUnpurgeableAPPLE')
	static function objectUnpurgeableAPPLE(objectType:GLenum, name:GLuint, option:GLenum):GLenum;

	@:native('glGetObjectParameterivAPPLE')
	static function getObjectParameterivAPPLE(objectType:GLenum, name:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glTextureRangeAPPLE')
	static function textureRangeAPPLE(target:GLenum, length:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glGetTexParameterPointervAPPLE')
	static function getTexParameterPointervAPPLE(target:GLenum, pname:GLenum, params:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glBindVertexArrayAPPLE')
	static function bindVertexArrayAPPLE(array:GLuint):Void;

	@:native('glDeleteVertexArraysAPPLE')
	static function deleteVertexArraysAPPLE(n:GLsizei, arrays:RawPointer<GLuint>):Void;

	@:native('glGenVertexArraysAPPLE')
	static function genVertexArraysAPPLE(n:GLsizei, arrays:RawPointer<GLuint>):Void;

	@:native('glIsVertexArrayAPPLE')
	static function isVertexArrayAPPLE(array:GLuint):GLboolean;

	@:native('glVertexArrayRangeAPPLE')
	static function vertexArrayRangeAPPLE(length:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glFlushVertexArrayRangeAPPLE')
	static function flushVertexArrayRangeAPPLE(length:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glVertexArrayParameteriAPPLE')
	static function vertexArrayParameteriAPPLE(pname:GLenum, param:GLint):Void;

	@:native('glEnableVertexAttribAPPLE')
	static function enableVertexAttribAPPLE(index:GLuint, pname:GLenum):Void;

	@:native('glDisableVertexAttribAPPLE')
	static function disableVertexAttribAPPLE(index:GLuint, pname:GLenum):Void;

	@:native('glIsVertexAttribEnabledAPPLE')
	static function isVertexAttribEnabledAPPLE(index:GLuint, pname:GLenum):GLboolean;

	@:native('glMapVertexAttrib1dAPPLE')
	static function mapVertexAttrib1dAPPLE(index:GLuint, size:GLuint, u1:GLdouble, u2:GLdouble, stride:GLint, order:GLint, points:RawPointer<GLdouble>):Void;

	@:native('glMapVertexAttrib1fAPPLE')
	static function mapVertexAttrib1fAPPLE(index:GLuint, size:GLuint, u1:GLfloat, u2:GLfloat, stride:GLint, order:GLint, points:RawPointer<GLfloat>):Void;

	@:native('glMapVertexAttrib2dAPPLE')
	static function mapVertexAttrib2dAPPLE(index:GLuint, size:GLuint, u1:GLdouble, u2:GLdouble, ustride:GLint, uorder:GLint, v1:GLdouble, v2:GLdouble, vstride:GLint, vorder:GLint, points:RawPointer<GLdouble>):Void;

	@:native('glMapVertexAttrib2fAPPLE')
	static function mapVertexAttrib2fAPPLE(index:GLuint, size:GLuint, u1:GLfloat, u2:GLfloat, ustride:GLint, uorder:GLint, v1:GLfloat, v2:GLfloat, vstride:GLint, vorder:GLint, points:RawPointer<GLfloat>):Void;

	@:native('glPrimitiveBoundingBoxARB')
	static function primitiveBoundingBoxARB(minX:GLfloat, minY:GLfloat, minZ:GLfloat, minW:GLfloat, maxX:GLfloat, maxY:GLfloat, maxZ:GLfloat, maxW:GLfloat):Void;

	@:native('glGetTextureHandleARB')
	static function getTextureHandleARB(texture:GLuint):GLuint64;

	@:native('glGetTextureSamplerHandleARB')
	static function getTextureSamplerHandleARB(texture:GLuint, sampler:GLuint):GLuint64;

	@:native('glMakeTextureHandleResidentARB')
	static function makeTextureHandleResidentARB(handle:GLuint64):Void;

	@:native('glMakeTextureHandleNonResidentARB')
	static function makeTextureHandleNonResidentARB(handle:GLuint64):Void;

	@:native('glGetImageHandleARB')
	static function getImageHandleARB(texture:GLuint, level:GLint, layered:GLboolean, layer:GLint, format:GLenum):GLuint64;

	@:native('glMakeImageHandleResidentARB')
	static function makeImageHandleResidentARB(handle:GLuint64, access:GLenum):Void;

	@:native('glMakeImageHandleNonResidentARB')
	static function makeImageHandleNonResidentARB(handle:GLuint64):Void;

	@:native('glUniformHandleui64ARB')
	static function uniformHandleui64ARB(location:GLint, value:GLuint64):Void;

	@:native('glUniformHandleui64vARB')
	static function uniformHandleui64vARB(location:GLint, count:GLsizei, value:RawPointer<GLuint64>):Void;

	@:native('glProgramUniformHandleui64ARB')
	static function programUniformHandleui64ARB(program:GLuint, location:GLint, value:GLuint64):Void;

	@:native('glProgramUniformHandleui64vARB')
	static function programUniformHandleui64vARB(program:GLuint, location:GLint, count:GLsizei, values:RawPointer<GLuint64>):Void;

	@:native('glIsTextureHandleResidentARB')
	static function isTextureHandleResidentARB(handle:GLuint64):GLboolean;

	@:native('glIsImageHandleResidentARB')
	static function isImageHandleResidentARB(handle:GLuint64):GLboolean;

	@:native('glVertexAttribL1ui64ARB')
	static function vertexAttribL1ui64ARB(index:GLuint, x:GLuint64EXT):Void;

	@:native('glVertexAttribL1ui64vARB')
	static function vertexAttribL1ui64vARB(index:GLuint, v:RawPointer<GLuint64EXT>):Void;

	@:native('glGetVertexAttribLui64vARB')
	static function getVertexAttribLui64vARB(index:GLuint, pname:GLenum, params:RawPointer<GLuint64EXT>):Void;

	@:native('glCreateSyncFromCLeventARB')
	static function createSyncFromCLeventARB(context:RawPointer<CL_Context>, event:RawPointer<CL_Event>, flags:GLbitfield):GLsync;

	@:native('glClampColorARB')
	static function clampColorARB(target:GLenum, clamp:GLenum):Void;

	@:native('glDispatchComputeGroupSizeARB')
	static function dispatchComputeGroupSizeARB(num_groups_x:GLuint, num_groups_y:GLuint, num_groups_z:GLuint, group_size_x:GLuint, group_size_y:GLuint, group_size_z:GLuint):Void;

	@:native('glDebugMessageControlARB')
	static function debugMessageControlARB(source:GLenum, type:GLenum, severity:GLenum, count:GLsizei, ids:RawPointer<GLuint>, enabled:GLboolean):Void;

	@:native('glDebugMessageInsertARB')
	static function debugMessageInsertARB(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, buf:CastGLcharStar):Void;

	@:native('glDebugMessageCallbackARB')
	static function debugMessageCallbackARB(callback:GLDEBUGPROCARB, userParam:RawPointer<cpp.Void>):Void;

	@:native('glGetDebugMessageLogARB')
	static function getDebugMessageLogARB(count:GLuint, bufSize:GLsizei, sources:RawPointer<GLenum>, types:RawPointer<GLenum>, ids:RawPointer<GLuint>, severities:RawPointer<GLenum>, lengths:RawPointer<GLsizei>, messageLog:CastGLcharStar):GLuint;

	@:native('glDrawBuffersARB')
	static function drawBuffersARB(n:GLsizei, bufs:RawPointer<GLenum>):Void;

	@:native('glBlendEquationiARB')
	static function blendEquationiARB(buf:GLuint, mode:GLenum):Void;

	@:native('glBlendEquationSeparateiARB')
	static function blendEquationSeparateiARB(buf:GLuint, modeRGB:GLenum, modeAlpha:GLenum):Void;

	@:native('glBlendFunciARB')
	static function blendFunciARB(buf:GLuint, src:GLenum, dst:GLenum):Void;

	@:native('glBlendFuncSeparateiARB')
	static function blendFuncSeparateiARB(buf:GLuint, srcRGB:GLenum, dstRGB:GLenum, srcAlpha:GLenum, dstAlpha:GLenum):Void;

	@:native('glDrawArraysInstancedARB')
	static function drawArraysInstancedARB(mode:GLenum, first:GLint, count:GLsizei, primcount:GLsizei):Void;

	@:native('glDrawElementsInstancedARB')
	static function drawElementsInstancedARB(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, primcount:GLsizei):Void;

	@:native('glProgramParameteriARB')
	static function programParameteriARB(program:GLuint, pname:GLenum, value:GLint):Void;

	@:native('glFramebufferTextureARB')
	static function framebufferTextureARB(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint):Void;

	@:native('glFramebufferTextureLayerARB')
	static function framebufferTextureLayerARB(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint, layer:GLint):Void;

	@:native('glFramebufferTextureFaceARB')
	static function framebufferTextureFaceARB(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint, face:GLenum):Void;

	@:native('glSpecializeShaderARB')
	static function specializeShaderARB(shader:GLuint, pEntryPoint:CastGLcharStar, numSpecializationConstants:GLuint, pConstantIndex:RawPointer<GLuint>, pConstantValue:RawPointer<GLuint>):Void;

	@:native('glUniform1i64ARB')
	static function uniform1i64ARB(location:GLint, x:GLint64):Void;

	@:native('glUniform2i64ARB')
	static function uniform2i64ARB(location:GLint, x:GLint64, y:GLint64):Void;

	@:native('glUniform3i64ARB')
	static function uniform3i64ARB(location:GLint, x:GLint64, y:GLint64, z:GLint64):Void;

	@:native('glUniform4i64ARB')
	static function uniform4i64ARB(location:GLint, x:GLint64, y:GLint64, z:GLint64, w:GLint64):Void;

	@:native('glUniform1i64vARB')
	static function uniform1i64vARB(location:GLint, count:GLsizei, value:RawPointer<GLint64>):Void;

	@:native('glUniform2i64vARB')
	static function uniform2i64vARB(location:GLint, count:GLsizei, value:RawPointer<GLint64>):Void;

	@:native('glUniform3i64vARB')
	static function uniform3i64vARB(location:GLint, count:GLsizei, value:RawPointer<GLint64>):Void;

	@:native('glUniform4i64vARB')
	static function uniform4i64vARB(location:GLint, count:GLsizei, value:RawPointer<GLint64>):Void;

	@:native('glUniform1ui64ARB')
	static function uniform1ui64ARB(location:GLint, x:GLuint64):Void;

	@:native('glUniform2ui64ARB')
	static function uniform2ui64ARB(location:GLint, x:GLuint64, y:GLuint64):Void;

	@:native('glUniform3ui64ARB')
	static function uniform3ui64ARB(location:GLint, x:GLuint64, y:GLuint64, z:GLuint64):Void;

	@:native('glUniform4ui64ARB')
	static function uniform4ui64ARB(location:GLint, x:GLuint64, y:GLuint64, z:GLuint64, w:GLuint64):Void;

	@:native('glUniform1ui64vARB')
	static function uniform1ui64vARB(location:GLint, count:GLsizei, value:RawPointer<GLuint64>):Void;

	@:native('glUniform2ui64vARB')
	static function uniform2ui64vARB(location:GLint, count:GLsizei, value:RawPointer<GLuint64>):Void;

	@:native('glUniform3ui64vARB')
	static function uniform3ui64vARB(location:GLint, count:GLsizei, value:RawPointer<GLuint64>):Void;

	@:native('glUniform4ui64vARB')
	static function uniform4ui64vARB(location:GLint, count:GLsizei, value:RawPointer<GLuint64>):Void;

	@:native('glGetUniformi64vARB')
	static function getUniformi64vARB(program:GLuint, location:GLint, params:RawPointer<GLint64>):Void;

	@:native('glGetUniformui64vARB')
	static function getUniformui64vARB(program:GLuint, location:GLint, params:RawPointer<GLuint64>):Void;

	@:native('glGetnUniformi64vARB')
	static function getnUniformi64vARB(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLint64>):Void;

	@:native('glGetnUniformui64vARB')
	static function getnUniformui64vARB(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLuint64>):Void;

	@:native('glProgramUniform1i64ARB')
	static function programUniform1i64ARB(program:GLuint, location:GLint, x:GLint64):Void;

	@:native('glProgramUniform2i64ARB')
	static function programUniform2i64ARB(program:GLuint, location:GLint, x:GLint64, y:GLint64):Void;

	@:native('glProgramUniform3i64ARB')
	static function programUniform3i64ARB(program:GLuint, location:GLint, x:GLint64, y:GLint64, z:GLint64):Void;

	@:native('glProgramUniform4i64ARB')
	static function programUniform4i64ARB(program:GLuint, location:GLint, x:GLint64, y:GLint64, z:GLint64, w:GLint64):Void;

	@:native('glProgramUniform1i64vARB')
	static function programUniform1i64vARB(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint64>):Void;

	@:native('glProgramUniform2i64vARB')
	static function programUniform2i64vARB(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint64>):Void;

	@:native('glProgramUniform3i64vARB')
	static function programUniform3i64vARB(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint64>):Void;

	@:native('glProgramUniform4i64vARB')
	static function programUniform4i64vARB(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLint64>):Void;

	@:native('glProgramUniform1ui64ARB')
	static function programUniform1ui64ARB(program:GLuint, location:GLint, x:GLuint64):Void;

	@:native('glProgramUniform2ui64ARB')
	static function programUniform2ui64ARB(program:GLuint, location:GLint, x:GLuint64, y:GLuint64):Void;

	@:native('glProgramUniform3ui64ARB')
	static function programUniform3ui64ARB(program:GLuint, location:GLint, x:GLuint64, y:GLuint64, z:GLuint64):Void;

	@:native('glProgramUniform4ui64ARB')
	static function programUniform4ui64ARB(program:GLuint, location:GLint, x:GLuint64, y:GLuint64, z:GLuint64, w:GLuint64):Void;

	@:native('glProgramUniform1ui64vARB')
	static function programUniform1ui64vARB(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint64>):Void;

	@:native('glProgramUniform2ui64vARB')
	static function programUniform2ui64vARB(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint64>):Void;

	@:native('glProgramUniform3ui64vARB')
	static function programUniform3ui64vARB(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint64>):Void;

	@:native('glProgramUniform4ui64vARB')
	static function programUniform4ui64vARB(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint64>):Void;

	@:native('glMultiDrawArraysIndirectCountARB')
	static function multiDrawArraysIndirectCountARB(mode:GLenum, indirect:RawPointer<cpp.Void>, drawcount:GLintptr, maxdrawcount:GLsizei, stride:GLsizei):Void;

	@:native('glMultiDrawElementsIndirectCountARB')
	static function multiDrawElementsIndirectCountARB(mode:GLenum, type:GLenum, indirect:RawPointer<cpp.Void>, drawcount:GLintptr, maxdrawcount:GLsizei, stride:GLsizei):Void;

	@:native('glVertexAttribDivisorARB')
	static function vertexAttribDivisorARB(index:GLuint, divisor:GLuint):Void;

	@:native('glCurrentPaletteMatrixARB')
	static function currentPaletteMatrixARB(index:GLint):Void;

	@:native('glMatrixIndexubvARB')
	static function matrixIndexubvARB(size:GLint, indices:RawPointer<GLubyte>):Void;

	@:native('glMatrixIndexusvARB')
	static function matrixIndexusvARB(size:GLint, indices:RawPointer<GLushort>):Void;

	@:native('glMatrixIndexuivARB')
	static function matrixIndexuivARB(size:GLint, indices:RawPointer<GLuint>):Void;

	@:native('glMatrixIndexPointerARB')
	static function matrixIndexPointerARB(size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glSampleCoverageARB')
	static function sampleCoverageARB(value:GLfloat, invert:GLboolean):Void;

	@:native('glActiveTextureARB')
	static function activeTextureARB(texture:GLenum):Void;

	@:native('glClientActiveTextureARB')
	static function clientActiveTextureARB(texture:GLenum):Void;

	@:native('glMultiTexCoord1dARB')
	static function multiTexCoord1dARB(target:GLenum, s:GLdouble):Void;

	@:native('glMultiTexCoord1dvARB')
	static function multiTexCoord1dvARB(target:GLenum, v:RawPointer<GLdouble>):Void;

	@:native('glMultiTexCoord1fARB')
	static function multiTexCoord1fARB(target:GLenum, s:GLfloat):Void;

	@:native('glMultiTexCoord1fvARB')
	static function multiTexCoord1fvARB(target:GLenum, v:RawPointer<GLfloat>):Void;

	@:native('glMultiTexCoord1iARB')
	static function multiTexCoord1iARB(target:GLenum, s:GLint):Void;

	@:native('glMultiTexCoord1ivARB')
	static function multiTexCoord1ivARB(target:GLenum, v:RawPointer<GLint>):Void;

	@:native('glMultiTexCoord1sARB')
	static function multiTexCoord1sARB(target:GLenum, s:GLshort):Void;

	@:native('glMultiTexCoord1svARB')
	static function multiTexCoord1svARB(target:GLenum, v:RawPointer<GLshort>):Void;

	@:native('glMultiTexCoord2dARB')
	static function multiTexCoord2dARB(target:GLenum, s:GLdouble, t:GLdouble):Void;

	@:native('glMultiTexCoord2dvARB')
	static function multiTexCoord2dvARB(target:GLenum, v:RawPointer<GLdouble>):Void;

	@:native('glMultiTexCoord2fARB')
	static function multiTexCoord2fARB(target:GLenum, s:GLfloat, t:GLfloat):Void;

	@:native('glMultiTexCoord2fvARB')
	static function multiTexCoord2fvARB(target:GLenum, v:RawPointer<GLfloat>):Void;

	@:native('glMultiTexCoord2iARB')
	static function multiTexCoord2iARB(target:GLenum, s:GLint, t:GLint):Void;

	@:native('glMultiTexCoord2ivARB')
	static function multiTexCoord2ivARB(target:GLenum, v:RawPointer<GLint>):Void;

	@:native('glMultiTexCoord2sARB')
	static function multiTexCoord2sARB(target:GLenum, s:GLshort, t:GLshort):Void;

	@:native('glMultiTexCoord2svARB')
	static function multiTexCoord2svARB(target:GLenum, v:RawPointer<GLshort>):Void;

	@:native('glMultiTexCoord3dARB')
	static function multiTexCoord3dARB(target:GLenum, s:GLdouble, t:GLdouble, r:GLdouble):Void;

	@:native('glMultiTexCoord3dvARB')
	static function multiTexCoord3dvARB(target:GLenum, v:RawPointer<GLdouble>):Void;

	@:native('glMultiTexCoord3fARB')
	static function multiTexCoord3fARB(target:GLenum, s:GLfloat, t:GLfloat, r:GLfloat):Void;

	@:native('glMultiTexCoord3fvARB')
	static function multiTexCoord3fvARB(target:GLenum, v:RawPointer<GLfloat>):Void;

	@:native('glMultiTexCoord3iARB')
	static function multiTexCoord3iARB(target:GLenum, s:GLint, t:GLint, r:GLint):Void;

	@:native('glMultiTexCoord3ivARB')
	static function multiTexCoord3ivARB(target:GLenum, v:RawPointer<GLint>):Void;

	@:native('glMultiTexCoord3sARB')
	static function multiTexCoord3sARB(target:GLenum, s:GLshort, t:GLshort, r:GLshort):Void;

	@:native('glMultiTexCoord3svARB')
	static function multiTexCoord3svARB(target:GLenum, v:RawPointer<GLshort>):Void;

	@:native('glMultiTexCoord4dARB')
	static function multiTexCoord4dARB(target:GLenum, s:GLdouble, t:GLdouble, r:GLdouble, q:GLdouble):Void;

	@:native('glMultiTexCoord4dvARB')
	static function multiTexCoord4dvARB(target:GLenum, v:RawPointer<GLdouble>):Void;

	@:native('glMultiTexCoord4fARB')
	static function multiTexCoord4fARB(target:GLenum, s:GLfloat, t:GLfloat, r:GLfloat, q:GLfloat):Void;

	@:native('glMultiTexCoord4fvARB')
	static function multiTexCoord4fvARB(target:GLenum, v:RawPointer<GLfloat>):Void;

	@:native('glMultiTexCoord4iARB')
	static function multiTexCoord4iARB(target:GLenum, s:GLint, t:GLint, r:GLint, q:GLint):Void;

	@:native('glMultiTexCoord4ivARB')
	static function multiTexCoord4ivARB(target:GLenum, v:RawPointer<GLint>):Void;

	@:native('glMultiTexCoord4sARB')
	static function multiTexCoord4sARB(target:GLenum, s:GLshort, t:GLshort, r:GLshort, q:GLshort):Void;

	@:native('glMultiTexCoord4svARB')
	static function multiTexCoord4svARB(target:GLenum, v:RawPointer<GLshort>):Void;

	@:native('glGenQueriesARB')
	static function genQueriesARB(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glDeleteQueriesARB')
	static function deleteQueriesARB(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glIsQueryARB')
	static function isQueryARB(id:GLuint):GLboolean;

	@:native('glBeginQueryARB')
	static function beginQueryARB(target:GLenum, id:GLuint):Void;

	@:native('glEndQueryARB')
	static function endQueryARB(target:GLenum):Void;

	@:native('glGetQueryivARB')
	static function getQueryivARB(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetQueryObjectivARB')
	static function getQueryObjectivARB(id:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetQueryObjectuivARB')
	static function getQueryObjectuivARB(id:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glMaxShaderCompilerThreadsARB')
	static function maxShaderCompilerThreadsARB(count:GLuint):Void;

	@:native('glPointParameterfARB')
	static function pointParameterfARB(pname:GLenum, param:GLfloat):Void;

	@:native('glPointParameterfvARB')
	static function pointParameterfvARB(pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetGraphicsResetStatusARB')
	static function getGraphicsResetStatusARB():GLenum;

	@:native('glGetnTexImageARB')
	static function getnTexImageARB(target:GLenum, level:GLint, format:GLenum, type:GLenum, bufSize:GLsizei, img:RawPointer<cpp.Void>):Void;

	@:native('glReadnPixelsARB')
	static function readnPixelsARB(x:GLint, y:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, bufSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glGetnCompressedTexImageARB')
	static function getnCompressedTexImageARB(target:GLenum, lod:GLint, bufSize:GLsizei, img:RawPointer<cpp.Void>):Void;

	@:native('glGetnUniformfvARB')
	static function getnUniformfvARB(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLfloat>):Void;

	@:native('glGetnUniformivARB')
	static function getnUniformivARB(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLint>):Void;

	@:native('glGetnUniformuivARB')
	static function getnUniformuivARB(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLuint>):Void;

	@:native('glGetnUniformdvARB')
	static function getnUniformdvARB(program:GLuint, location:GLint, bufSize:GLsizei, params:RawPointer<GLdouble>):Void;

	@:native('glFramebufferSampleLocationsfvARB')
	static function framebufferSampleLocationsfvARB(target:GLenum, start:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glNamedFramebufferSampleLocationsfvARB')
	static function namedFramebufferSampleLocationsfvARB(framebuffer:GLuint, start:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glEvaluateDepthValuesARB')
	static function evaluateDepthValuesARB():Void;

	@:native('glMinSampleShadingARB')
	static function minSampleShadingARB(value:GLfloat):Void;

	@:native('glDeleteObjectARB')
	static function deleteObjectARB(obj:GLhandleARB):Void;

	@:native('glGetHandleARB')
	static function getHandleARB(pname:GLenum):GLhandleARB;

	@:native('glDetachObjectARB')
	static function detachObjectARB(containerObj:GLhandleARB, attachedObj:GLhandleARB):Void;

	@:native('glCreateShaderObjectARB')
	static function createShaderObjectARB(shaderType:GLenum):GLhandleARB;

	@:native('glShaderSourceARB')
	static function shaderSourceARB(shaderObj:GLhandleARB, count:GLsizei, string:RawPointer<CastGLcharARBStar>, length:RawPointer<GLint>):Void;

	@:native('glCompileShaderARB')
	static function compileShaderARB(shaderObj:GLhandleARB):Void;

	@:native('glCreateProgramObjectARB')
	static function createProgramObjectARB():GLhandleARB;

	@:native('glAttachObjectARB')
	static function attachObjectARB(containerObj:GLhandleARB, obj:GLhandleARB):Void;

	@:native('glLinkProgramARB')
	static function linkProgramARB(programObj:GLhandleARB):Void;

	@:native('glUseProgramObjectARB')
	static function useProgramObjectARB(programObj:GLhandleARB):Void;

	@:native('glValidateProgramARB')
	static function validateProgramARB(programObj:GLhandleARB):Void;

	@:native('glUniform1fARB')
	static function uniform1fARB(location:GLint, v0:GLfloat):Void;

	@:native('glUniform2fARB')
	static function uniform2fARB(location:GLint, v0:GLfloat, v1:GLfloat):Void;

	@:native('glUniform3fARB')
	static function uniform3fARB(location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat):Void;

	@:native('glUniform4fARB')
	static function uniform4fARB(location:GLint, v0:GLfloat, v1:GLfloat, v2:GLfloat, v3:GLfloat):Void;

	@:native('glUniform1iARB')
	static function uniform1iARB(location:GLint, v0:GLint):Void;

	@:native('glUniform2iARB')
	static function uniform2iARB(location:GLint, v0:GLint, v1:GLint):Void;

	@:native('glUniform3iARB')
	static function uniform3iARB(location:GLint, v0:GLint, v1:GLint, v2:GLint):Void;

	@:native('glUniform4iARB')
	static function uniform4iARB(location:GLint, v0:GLint, v1:GLint, v2:GLint, v3:GLint):Void;

	@:native('glUniform1fvARB')
	static function uniform1fvARB(location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glUniform2fvARB')
	static function uniform2fvARB(location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glUniform3fvARB')
	static function uniform3fvARB(location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glUniform4fvARB')
	static function uniform4fvARB(location:GLint, count:GLsizei, value:RawPointer<GLfloat>):Void;

	@:native('glUniform1ivARB')
	static function uniform1ivARB(location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glUniform2ivARB')
	static function uniform2ivARB(location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glUniform3ivARB')
	static function uniform3ivARB(location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glUniform4ivARB')
	static function uniform4ivARB(location:GLint, count:GLsizei, value:RawPointer<GLint>):Void;

	@:native('glUniformMatrix2fvARB')
	static function uniformMatrix2fvARB(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix3fvARB')
	static function uniformMatrix3fvARB(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glUniformMatrix4fvARB')
	static function uniformMatrix4fvARB(location:GLint, count:GLsizei, transpose:GLboolean, value:RawPointer<GLfloat>):Void;

	@:native('glGetObjectParameterfvARB')
	static function getObjectParameterfvARB(obj:GLhandleARB, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetObjectParameterivARB')
	static function getObjectParameterivARB(obj:GLhandleARB, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetInfoLogARB')
	static function getInfoLogARB(obj:GLhandleARB, maxLength:GLsizei, length:RawPointer<GLsizei>, infoLog:CastGLcharARBStar):Void;

	@:native('glGetAttachedObjectsARB')
	static function getAttachedObjectsARB(containerObj:GLhandleARB, maxCount:GLsizei, count:RawPointer<GLsizei>, obj:RawPointer<GLhandleARB>):Void;

	@:native('glGetUniformLocationARB')
	static function getUniformLocationARB(programObj:GLhandleARB, name:CastGLcharARBStar):GLint;

	@:native('glGetActiveUniformARB')
	static function getActiveUniformARB(programObj:GLhandleARB, index:GLuint, maxLength:GLsizei, length:RawPointer<GLsizei>, size:RawPointer<GLint>, type:RawPointer<GLenum>, name:CastGLcharARBStar):Void;

	@:native('glGetUniformfvARB')
	static function getUniformfvARB(programObj:GLhandleARB, location:GLint, params:RawPointer<GLfloat>):Void;

	@:native('glGetUniformivARB')
	static function getUniformivARB(programObj:GLhandleARB, location:GLint, params:RawPointer<GLint>):Void;

	@:native('glGetShaderSourceARB')
	static function getShaderSourceARB(obj:GLhandleARB, maxLength:GLsizei, length:RawPointer<GLsizei>, source:CastGLcharARBStar):Void;

	@:native('glNamedStringARB')
	static function namedStringARB(type:GLenum, namelen:GLint, name:CastGLcharStar, stringlen:GLint, string:CastGLcharStar):Void;

	@:native('glDeleteNamedStringARB')
	static function deleteNamedStringARB(namelen:GLint, name:CastGLcharStar):Void;

	@:native('glCompileShaderIncludeARB')
	static function compileShaderIncludeARB(shader:GLuint, count:GLsizei, path:RawPointer<ConstGLcharStar>, length:RawPointer<GLint>):Void;

	@:native('glIsNamedStringARB')
	static function isNamedStringARB(namelen:GLint, name:CastGLcharStar):GLboolean;

	@:native('glGetNamedStringARB')
	static function getNamedStringARB(namelen:GLint, name:CastGLcharStar, bufSize:GLsizei, stringlen:RawPointer<GLint>, string:CastGLcharStar):Void;

	@:native('glGetNamedStringivARB')
	static function getNamedStringivARB(namelen:GLint, name:CastGLcharStar, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glBufferPageCommitmentARB')
	static function bufferPageCommitmentARB(target:GLenum, offset:GLintptr, size:GLsizeiptr, commit:GLboolean):Void;

	@:native('glTexPageCommitmentARB')
	static function texPageCommitmentARB(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, commit:GLboolean):Void;

	@:native('glTexBufferARB')
	static function texBufferARB(target:GLenum, internalformat:GLenum, buffer:GLuint):Void;

	@:native('glCompressedTexImage3DARB')
	static function compressedTexImage3DARB(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, border:GLint, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexImage2DARB')
	static function compressedTexImage2DARB(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, border:GLint, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexImage1DARB')
	static function compressedTexImage1DARB(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, border:GLint, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexSubImage3DARB')
	static function compressedTexSubImage3DARB(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexSubImage2DARB')
	static function compressedTexSubImage2DARB(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, width:GLsizei, height:GLsizei, format:GLenum, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glCompressedTexSubImage1DARB')
	static function compressedTexSubImage1DARB(target:GLenum, level:GLint, xoffset:GLint, width:GLsizei, format:GLenum, imageSize:GLsizei, data:RawPointer<cpp.Void>):Void;

	@:native('glGetCompressedTexImageARB')
	static function getCompressedTexImageARB(target:GLenum, level:GLint, img:RawPointer<cpp.Void>):Void;

	@:native('glLoadTransposeMatrixfARB')
	static function loadTransposeMatrixfARB(m:RawPointer<GLfloat>):Void;

	@:native('glLoadTransposeMatrixdARB')
	static function loadTransposeMatrixdARB(m:RawPointer<GLdouble>):Void;

	@:native('glMultTransposeMatrixfARB')
	static function multTransposeMatrixfARB(m:RawPointer<GLfloat>):Void;

	@:native('glMultTransposeMatrixdARB')
	static function multTransposeMatrixdARB(m:RawPointer<GLdouble>):Void;

	@:native('glWeightbvARB')
	static function weightbvARB(size:GLint, weights:RawPointer<GLbyte>):Void;

	@:native('glWeightsvARB')
	static function weightsvARB(size:GLint, weights:RawPointer<GLshort>):Void;

	@:native('glWeightivARB')
	static function weightivARB(size:GLint, weights:RawPointer<GLint>):Void;

	@:native('glWeightfvARB')
	static function weightfvARB(size:GLint, weights:RawPointer<GLfloat>):Void;

	@:native('glWeightdvARB')
	static function weightdvARB(size:GLint, weights:RawPointer<GLdouble>):Void;

	@:native('glWeightubvARB')
	static function weightubvARB(size:GLint, weights:RawPointer<GLubyte>):Void;

	@:native('glWeightusvARB')
	static function weightusvARB(size:GLint, weights:RawPointer<GLushort>):Void;

	@:native('glWeightuivARB')
	static function weightuivARB(size:GLint, weights:RawPointer<GLuint>):Void;

	@:native('glWeightPointerARB')
	static function weightPointerARB(size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glVertexBlendARB')
	static function vertexBlendARB(count:GLint):Void;

	@:native('glBindBufferARB')
	static function bindBufferARB(target:GLenum, buffer:GLuint):Void;

	@:native('glDeleteBuffersARB')
	static function deleteBuffersARB(n:GLsizei, buffers:RawPointer<GLuint>):Void;

	@:native('glGenBuffersARB')
	static function genBuffersARB(n:GLsizei, buffers:RawPointer<GLuint>):Void;

	@:native('glIsBufferARB')
	static function isBufferARB(buffer:GLuint):GLboolean;

	@:native('glBufferDataARB')
	static function bufferDataARB(target:GLenum, size:GLsizeiptrARB, data:RawPointer<cpp.Void>, usage:GLenum):Void;

	@:native('glBufferSubDataARB')
	static function bufferSubDataARB(target:GLenum, offset:GLintptrARB, size:GLsizeiptrARB, data:RawPointer<cpp.Void>):Void;

	@:native('glGetBufferSubDataARB')
	static function getBufferSubDataARB(target:GLenum, offset:GLintptrARB, size:GLsizeiptrARB, data:RawPointer<cpp.Void>):Void;

	@:native('glMapBufferARB')
	static function mapBufferARB(target:GLenum, access:GLenum):RawPointer<cpp.Void>;

	@:native('glUnmapBufferARB')
	static function unmapBufferARB(target:GLenum):GLboolean;

	@:native('glGetBufferParameterivARB')
	static function getBufferParameterivARB(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetBufferPointervARB')
	static function getBufferPointervARB(target:GLenum, pname:GLenum, params:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glVertexAttrib1dARB')
	static function vertexAttrib1dARB(index:GLuint, x:GLdouble):Void;

	@:native('glVertexAttrib1dvARB')
	static function vertexAttrib1dvARB(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttrib1fARB')
	static function vertexAttrib1fARB(index:GLuint, x:GLfloat):Void;

	@:native('glVertexAttrib1fvARB')
	static function vertexAttrib1fvARB(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib1sARB')
	static function vertexAttrib1sARB(index:GLuint, x:GLshort):Void;

	@:native('glVertexAttrib1svARB')
	static function vertexAttrib1svARB(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib2dARB')
	static function vertexAttrib2dARB(index:GLuint, x:GLdouble, y:GLdouble):Void;

	@:native('glVertexAttrib2dvARB')
	static function vertexAttrib2dvARB(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttrib2fARB')
	static function vertexAttrib2fARB(index:GLuint, x:GLfloat, y:GLfloat):Void;

	@:native('glVertexAttrib2fvARB')
	static function vertexAttrib2fvARB(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib2sARB')
	static function vertexAttrib2sARB(index:GLuint, x:GLshort, y:GLshort):Void;

	@:native('glVertexAttrib2svARB')
	static function vertexAttrib2svARB(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib3dARB')
	static function vertexAttrib3dARB(index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glVertexAttrib3dvARB')
	static function vertexAttrib3dvARB(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttrib3fARB')
	static function vertexAttrib3fARB(index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glVertexAttrib3fvARB')
	static function vertexAttrib3fvARB(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib3sARB')
	static function vertexAttrib3sARB(index:GLuint, x:GLshort, y:GLshort, z:GLshort):Void;

	@:native('glVertexAttrib3svARB')
	static function vertexAttrib3svARB(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib4NbvARB')
	static function vertexAttrib4NbvARB(index:GLuint, v:RawPointer<GLbyte>):Void;

	@:native('glVertexAttrib4NivARB')
	static function vertexAttrib4NivARB(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttrib4NsvARB')
	static function vertexAttrib4NsvARB(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib4NubARB')
	static function vertexAttrib4NubARB(index:GLuint, x:GLubyte, y:GLubyte, z:GLubyte, w:GLubyte):Void;

	@:native('glVertexAttrib4NubvARB')
	static function vertexAttrib4NubvARB(index:GLuint, v:RawPointer<GLubyte>):Void;

	@:native('glVertexAttrib4NuivARB')
	static function vertexAttrib4NuivARB(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glVertexAttrib4NusvARB')
	static function vertexAttrib4NusvARB(index:GLuint, v:RawPointer<GLushort>):Void;

	@:native('glVertexAttrib4bvARB')
	static function vertexAttrib4bvARB(index:GLuint, v:RawPointer<GLbyte>):Void;

	@:native('glVertexAttrib4dARB')
	static function vertexAttrib4dARB(index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glVertexAttrib4dvARB')
	static function vertexAttrib4dvARB(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttrib4fARB')
	static function vertexAttrib4fARB(index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glVertexAttrib4fvARB')
	static function vertexAttrib4fvARB(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib4ivARB')
	static function vertexAttrib4ivARB(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttrib4sARB')
	static function vertexAttrib4sARB(index:GLuint, x:GLshort, y:GLshort, z:GLshort, w:GLshort):Void;

	@:native('glVertexAttrib4svARB')
	static function vertexAttrib4svARB(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib4ubvARB')
	static function vertexAttrib4ubvARB(index:GLuint, v:RawPointer<GLubyte>):Void;

	@:native('glVertexAttrib4uivARB')
	static function vertexAttrib4uivARB(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glVertexAttrib4usvARB')
	static function vertexAttrib4usvARB(index:GLuint, v:RawPointer<GLushort>):Void;

	@:native('glVertexAttribPointerARB')
	static function vertexAttribPointerARB(index:GLuint, size:GLint, type:GLenum, normalized:GLboolean, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glEnableVertexAttribArrayARB')
	static function enableVertexAttribArrayARB(index:GLuint):Void;

	@:native('glDisableVertexAttribArrayARB')
	static function disableVertexAttribArrayARB(index:GLuint):Void;

	@:native('glProgramStringARB')
	static function programStringARB(target:GLenum, format:GLenum, len:GLsizei, string:RawPointer<cpp.Void>):Void;

	@:native('glBindProgramARB')
	static function bindProgramARB(target:GLenum, program:GLuint):Void;

	@:native('glDeleteProgramsARB')
	static function deleteProgramsARB(n:GLsizei, programs:RawPointer<GLuint>):Void;

	@:native('glGenProgramsARB')
	static function genProgramsARB(n:GLsizei, programs:RawPointer<GLuint>):Void;

	@:native('glProgramEnvParameter4dARB')
	static function programEnvParameter4dARB(target:GLenum, index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glProgramEnvParameter4dvARB')
	static function programEnvParameter4dvARB(target:GLenum, index:GLuint, params:RawPointer<GLdouble>):Void;

	@:native('glProgramEnvParameter4fARB')
	static function programEnvParameter4fARB(target:GLenum, index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glProgramEnvParameter4fvARB')
	static function programEnvParameter4fvARB(target:GLenum, index:GLuint, params:RawPointer<GLfloat>):Void;

	@:native('glProgramLocalParameter4dARB')
	static function programLocalParameter4dARB(target:GLenum, index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glProgramLocalParameter4dvARB')
	static function programLocalParameter4dvARB(target:GLenum, index:GLuint, params:RawPointer<GLdouble>):Void;

	@:native('glProgramLocalParameter4fARB')
	static function programLocalParameter4fARB(target:GLenum, index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glProgramLocalParameter4fvARB')
	static function programLocalParameter4fvARB(target:GLenum, index:GLuint, params:RawPointer<GLfloat>):Void;

	@:native('glGetProgramEnvParameterdvARB')
	static function getProgramEnvParameterdvARB(target:GLenum, index:GLuint, params:RawPointer<GLdouble>):Void;

	@:native('glGetProgramEnvParameterfvARB')
	static function getProgramEnvParameterfvARB(target:GLenum, index:GLuint, params:RawPointer<GLfloat>):Void;

	@:native('glGetProgramLocalParameterdvARB')
	static function getProgramLocalParameterdvARB(target:GLenum, index:GLuint, params:RawPointer<GLdouble>):Void;

	@:native('glGetProgramLocalParameterfvARB')
	static function getProgramLocalParameterfvARB(target:GLenum, index:GLuint, params:RawPointer<GLfloat>):Void;

	@:native('glGetProgramivARB')
	static function getProgramivARB(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetProgramStringARB')
	static function getProgramStringARB(target:GLenum, pname:GLenum, string:RawPointer<cpp.Void>):Void;

	@:native('glGetVertexAttribdvARB')
	static function getVertexAttribdvARB(index:GLuint, pname:GLenum, params:RawPointer<GLdouble>):Void;

	@:native('glGetVertexAttribfvARB')
	static function getVertexAttribfvARB(index:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetVertexAttribivARB')
	static function getVertexAttribivARB(index:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetVertexAttribPointervARB')
	static function getVertexAttribPointervARB(index:GLuint, pname:GLenum, pointer:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glIsProgramARB')
	static function isProgramARB(program:GLuint):GLboolean;

	@:native('glBindAttribLocationARB')
	static function bindAttribLocationARB(programObj:GLhandleARB, index:GLuint, name:CastGLcharARBStar):Void;

	@:native('glGetActiveAttribARB')
	static function getActiveAttribARB(programObj:GLhandleARB, index:GLuint, maxLength:GLsizei, length:RawPointer<GLsizei>, size:RawPointer<GLint>, type:RawPointer<GLenum>, name:CastGLcharARBStar):Void;

	@:native('glGetAttribLocationARB')
	static function getAttribLocationARB(programObj:GLhandleARB, name:CastGLcharARBStar):GLint;

	@:native('glWindowPos2dARB')
	static function windowPos2dARB(x:GLdouble, y:GLdouble):Void;

	@:native('glWindowPos2dvARB')
	static function windowPos2dvARB(v:RawPointer<GLdouble>):Void;

	@:native('glWindowPos2fARB')
	static function windowPos2fARB(x:GLfloat, y:GLfloat):Void;

	@:native('glWindowPos2fvARB')
	static function windowPos2fvARB(v:RawPointer<GLfloat>):Void;

	@:native('glWindowPos2iARB')
	static function windowPos2iARB(x:GLint, y:GLint):Void;

	@:native('glWindowPos2ivARB')
	static function windowPos2ivARB(v:RawPointer<GLint>):Void;

	@:native('glWindowPos2sARB')
	static function windowPos2sARB(x:GLshort, y:GLshort):Void;

	@:native('glWindowPos2svARB')
	static function windowPos2svARB(v:RawPointer<GLshort>):Void;

	@:native('glWindowPos3dARB')
	static function windowPos3dARB(x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glWindowPos3dvARB')
	static function windowPos3dvARB(v:RawPointer<GLdouble>):Void;

	@:native('glWindowPos3fARB')
	static function windowPos3fARB(x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glWindowPos3fvARB')
	static function windowPos3fvARB(v:RawPointer<GLfloat>):Void;

	@:native('glWindowPos3iARB')
	static function windowPos3iARB(x:GLint, y:GLint, z:GLint):Void;

	@:native('glWindowPos3ivARB')
	static function windowPos3ivARB(v:RawPointer<GLint>):Void;

	@:native('glWindowPos3sARB')
	static function windowPos3sARB(x:GLshort, y:GLshort, z:GLshort):Void;

	@:native('glWindowPos3svARB')
	static function windowPos3svARB(v:RawPointer<GLshort>):Void;

	@:native('glDrawBuffersATI')
	static function drawBuffersATI(n:GLsizei, bufs:RawPointer<GLenum>):Void;

	@:native('glElementPointerATI')
	static function elementPointerATI(type:GLenum, pointer:RawPointer<cpp.Void>):Void;

	@:native('glDrawElementArrayATI')
	static function drawElementArrayATI(mode:GLenum, count:GLsizei):Void;

	@:native('glDrawRangeElementArrayATI')
	static function drawRangeElementArrayATI(mode:GLenum, start:GLuint, end:GLuint, count:GLsizei):Void;

	@:native('glTexBumpParameterivATI')
	static function texBumpParameterivATI(pname:GLenum, param:RawPointer<GLint>):Void;

	@:native('glTexBumpParameterfvATI')
	static function texBumpParameterfvATI(pname:GLenum, param:RawPointer<GLfloat>):Void;

	@:native('glGetTexBumpParameterivATI')
	static function getTexBumpParameterivATI(pname:GLenum, param:RawPointer<GLint>):Void;

	@:native('glGetTexBumpParameterfvATI')
	static function getTexBumpParameterfvATI(pname:GLenum, param:RawPointer<GLfloat>):Void;

	@:native('glGenFragmentShadersATI')
	static function genFragmentShadersATI(range:GLuint):GLuint;

	@:native('glBindFragmentShaderATI')
	static function bindFragmentShaderATI(id:GLuint):Void;

	@:native('glDeleteFragmentShaderATI')
	static function deleteFragmentShaderATI(id:GLuint):Void;

	@:native('glBeginFragmentShaderATI')
	static function beginFragmentShaderATI():Void;

	@:native('glEndFragmentShaderATI')
	static function endFragmentShaderATI():Void;

	@:native('glPassTexCoordATI')
	static function passTexCoordATI(dst:GLuint, coord:GLuint, swizzle:GLenum):Void;

	@:native('glSampleMapATI')
	static function sampleMapATI(dst:GLuint, interp:GLuint, swizzle:GLenum):Void;

	@:native('glColorFragmentOp1ATI')
	static function colorFragmentOp1ATI(op:GLenum, dst:GLuint, dstMask:GLuint, dstMod:GLuint, arg1:GLuint, arg1Rep:GLuint, arg1Mod:GLuint):Void;

	@:native('glColorFragmentOp2ATI')
	static function colorFragmentOp2ATI(op:GLenum, dst:GLuint, dstMask:GLuint, dstMod:GLuint, arg1:GLuint, arg1Rep:GLuint, arg1Mod:GLuint, arg2:GLuint, arg2Rep:GLuint, arg2Mod:GLuint):Void;

	@:native('glColorFragmentOp3ATI')
	static function colorFragmentOp3ATI(op:GLenum, dst:GLuint, dstMask:GLuint, dstMod:GLuint, arg1:GLuint, arg1Rep:GLuint, arg1Mod:GLuint, arg2:GLuint, arg2Rep:GLuint, arg2Mod:GLuint, arg3:GLuint, arg3Rep:GLuint, arg3Mod:GLuint):Void;

	@:native('glAlphaFragmentOp1ATI')
	static function alphaFragmentOp1ATI(op:GLenum, dst:GLuint, dstMod:GLuint, arg1:GLuint, arg1Rep:GLuint, arg1Mod:GLuint):Void;

	@:native('glAlphaFragmentOp2ATI')
	static function alphaFragmentOp2ATI(op:GLenum, dst:GLuint, dstMod:GLuint, arg1:GLuint, arg1Rep:GLuint, arg1Mod:GLuint, arg2:GLuint, arg2Rep:GLuint, arg2Mod:GLuint):Void;

	@:native('glAlphaFragmentOp3ATI')
	static function alphaFragmentOp3ATI(op:GLenum, dst:GLuint, dstMod:GLuint, arg1:GLuint, arg1Rep:GLuint, arg1Mod:GLuint, arg2:GLuint, arg2Rep:GLuint, arg2Mod:GLuint, arg3:GLuint, arg3Rep:GLuint, arg3Mod:GLuint):Void;

	@:native('glSetFragmentShaderConstantATI')
	static function setFragmentShaderConstantATI(dst:GLuint, value:RawPointer<GLfloat>):Void;

	@:native('glMapObjectBufferATI')
	static function mapObjectBufferATI(buffer:GLuint):RawPointer<cpp.Void>;

	@:native('glUnmapObjectBufferATI')
	static function unmapObjectBufferATI(buffer:GLuint):Void;

	@:native('glPNTrianglesiATI')
	static function pNTrianglesiATI(pname:GLenum, param:GLint):Void;

	@:native('glPNTrianglesfATI')
	static function pNTrianglesfATI(pname:GLenum, param:GLfloat):Void;

	@:native('glStencilOpSeparateATI')
	static function stencilOpSeparateATI(face:GLenum, sfail:GLenum, dpfail:GLenum, dppass:GLenum):Void;

	@:native('glStencilFuncSeparateATI')
	static function stencilFuncSeparateATI(frontfunc:GLenum, backfunc:GLenum, ref:GLint, mask:GLuint):Void;

	@:native('glNewObjectBufferATI')
	static function newObjectBufferATI(size:GLsizei, pointer:RawPointer<cpp.Void>, usage:GLenum):GLuint;

	@:native('glIsObjectBufferATI')
	static function isObjectBufferATI(buffer:GLuint):GLboolean;

	@:native('glUpdateObjectBufferATI')
	static function updateObjectBufferATI(buffer:GLuint, offset:GLuint, size:GLsizei, pointer:RawPointer<cpp.Void>, preserve:GLenum):Void;

	@:native('glGetObjectBufferfvATI')
	static function getObjectBufferfvATI(buffer:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetObjectBufferivATI')
	static function getObjectBufferivATI(buffer:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glFreeObjectBufferATI')
	static function freeObjectBufferATI(buffer:GLuint):Void;

	@:native('glArrayObjectATI')
	static function arrayObjectATI(array:GLenum, size:GLint, type:GLenum, stride:GLsizei, buffer:GLuint, offset:GLuint):Void;

	@:native('glGetArrayObjectfvATI')
	static function getArrayObjectfvATI(array:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetArrayObjectivATI')
	static function getArrayObjectivATI(array:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glVariantArrayObjectATI')
	static function variantArrayObjectATI(id:GLuint, type:GLenum, stride:GLsizei, buffer:GLuint, offset:GLuint):Void;

	@:native('glGetVariantArrayObjectfvATI')
	static function getVariantArrayObjectfvATI(id:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetVariantArrayObjectivATI')
	static function getVariantArrayObjectivATI(id:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glVertexAttribArrayObjectATI')
	static function vertexAttribArrayObjectATI(index:GLuint, size:GLint, type:GLenum, normalized:GLboolean, stride:GLsizei, buffer:GLuint, offset:GLuint):Void;

	@:native('glGetVertexAttribArrayObjectfvATI')
	static function getVertexAttribArrayObjectfvATI(index:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetVertexAttribArrayObjectivATI')
	static function getVertexAttribArrayObjectivATI(index:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glVertexStream1sATI')
	static function vertexStream1sATI(stream:GLenum, x:GLshort):Void;

	@:native('glVertexStream1svATI')
	static function vertexStream1svATI(stream:GLenum, coords:RawPointer<GLshort>):Void;

	@:native('glVertexStream1iATI')
	static function vertexStream1iATI(stream:GLenum, x:GLint):Void;

	@:native('glVertexStream1ivATI')
	static function vertexStream1ivATI(stream:GLenum, coords:RawPointer<GLint>):Void;

	@:native('glVertexStream1fATI')
	static function vertexStream1fATI(stream:GLenum, x:GLfloat):Void;

	@:native('glVertexStream1fvATI')
	static function vertexStream1fvATI(stream:GLenum, coords:RawPointer<GLfloat>):Void;

	@:native('glVertexStream1dATI')
	static function vertexStream1dATI(stream:GLenum, x:GLdouble):Void;

	@:native('glVertexStream1dvATI')
	static function vertexStream1dvATI(stream:GLenum, coords:RawPointer<GLdouble>):Void;

	@:native('glVertexStream2sATI')
	static function vertexStream2sATI(stream:GLenum, x:GLshort, y:GLshort):Void;

	@:native('glVertexStream2svATI')
	static function vertexStream2svATI(stream:GLenum, coords:RawPointer<GLshort>):Void;

	@:native('glVertexStream2iATI')
	static function vertexStream2iATI(stream:GLenum, x:GLint, y:GLint):Void;

	@:native('glVertexStream2ivATI')
	static function vertexStream2ivATI(stream:GLenum, coords:RawPointer<GLint>):Void;

	@:native('glVertexStream2fATI')
	static function vertexStream2fATI(stream:GLenum, x:GLfloat, y:GLfloat):Void;

	@:native('glVertexStream2fvATI')
	static function vertexStream2fvATI(stream:GLenum, coords:RawPointer<GLfloat>):Void;

	@:native('glVertexStream2dATI')
	static function vertexStream2dATI(stream:GLenum, x:GLdouble, y:GLdouble):Void;

	@:native('glVertexStream2dvATI')
	static function vertexStream2dvATI(stream:GLenum, coords:RawPointer<GLdouble>):Void;

	@:native('glVertexStream3sATI')
	static function vertexStream3sATI(stream:GLenum, x:GLshort, y:GLshort, z:GLshort):Void;

	@:native('glVertexStream3svATI')
	static function vertexStream3svATI(stream:GLenum, coords:RawPointer<GLshort>):Void;

	@:native('glVertexStream3iATI')
	static function vertexStream3iATI(stream:GLenum, x:GLint, y:GLint, z:GLint):Void;

	@:native('glVertexStream3ivATI')
	static function vertexStream3ivATI(stream:GLenum, coords:RawPointer<GLint>):Void;

	@:native('glVertexStream3fATI')
	static function vertexStream3fATI(stream:GLenum, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glVertexStream3fvATI')
	static function vertexStream3fvATI(stream:GLenum, coords:RawPointer<GLfloat>):Void;

	@:native('glVertexStream3dATI')
	static function vertexStream3dATI(stream:GLenum, x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glVertexStream3dvATI')
	static function vertexStream3dvATI(stream:GLenum, coords:RawPointer<GLdouble>):Void;

	@:native('glVertexStream4sATI')
	static function vertexStream4sATI(stream:GLenum, x:GLshort, y:GLshort, z:GLshort, w:GLshort):Void;

	@:native('glVertexStream4svATI')
	static function vertexStream4svATI(stream:GLenum, coords:RawPointer<GLshort>):Void;

	@:native('glVertexStream4iATI')
	static function vertexStream4iATI(stream:GLenum, x:GLint, y:GLint, z:GLint, w:GLint):Void;

	@:native('glVertexStream4ivATI')
	static function vertexStream4ivATI(stream:GLenum, coords:RawPointer<GLint>):Void;

	@:native('glVertexStream4fATI')
	static function vertexStream4fATI(stream:GLenum, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glVertexStream4fvATI')
	static function vertexStream4fvATI(stream:GLenum, coords:RawPointer<GLfloat>):Void;

	@:native('glVertexStream4dATI')
	static function vertexStream4dATI(stream:GLenum, x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glVertexStream4dvATI')
	static function vertexStream4dvATI(stream:GLenum, coords:RawPointer<GLdouble>):Void;

	@:native('glNormalStream3bATI')
	static function normalStream3bATI(stream:GLenum, nx:GLbyte, ny:GLbyte, nz:GLbyte):Void;

	@:native('glNormalStream3bvATI')
	static function normalStream3bvATI(stream:GLenum, coords:RawPointer<GLbyte>):Void;

	@:native('glNormalStream3sATI')
	static function normalStream3sATI(stream:GLenum, nx:GLshort, ny:GLshort, nz:GLshort):Void;

	@:native('glNormalStream3svATI')
	static function normalStream3svATI(stream:GLenum, coords:RawPointer<GLshort>):Void;

	@:native('glNormalStream3iATI')
	static function normalStream3iATI(stream:GLenum, nx:GLint, ny:GLint, nz:GLint):Void;

	@:native('glNormalStream3ivATI')
	static function normalStream3ivATI(stream:GLenum, coords:RawPointer<GLint>):Void;

	@:native('glNormalStream3fATI')
	static function normalStream3fATI(stream:GLenum, nx:GLfloat, ny:GLfloat, nz:GLfloat):Void;

	@:native('glNormalStream3fvATI')
	static function normalStream3fvATI(stream:GLenum, coords:RawPointer<GLfloat>):Void;

	@:native('glNormalStream3dATI')
	static function normalStream3dATI(stream:GLenum, nx:GLdouble, ny:GLdouble, nz:GLdouble):Void;

	@:native('glNormalStream3dvATI')
	static function normalStream3dvATI(stream:GLenum, coords:RawPointer<GLdouble>):Void;

	@:native('glClientActiveVertexStreamATI')
	static function clientActiveVertexStreamATI(stream:GLenum):Void;

	@:native('glVertexBlendEnviATI')
	static function vertexBlendEnviATI(pname:GLenum, param:GLint):Void;

	@:native('glVertexBlendEnvfATI')
	static function vertexBlendEnvfATI(pname:GLenum, param:GLfloat):Void;

	@:native('glEGLImageTargetTexStorageEXT')
	static function eGLImageTargetTexStorageEXT(target:GLenum, image:GLeglImageOES, attrib_list:RawPointer<GLint>):Void;

	@:native('glUniformBufferEXT')
	static function uniformBufferEXT(program:GLuint, location:GLint, buffer:GLuint):Void;

	@:native('glGetUniformBufferSizeEXT')
	static function getUniformBufferSizeEXT(program:GLuint, location:GLint):GLint;

	@:native('glGetUniformOffsetEXT')
	static function getUniformOffsetEXT(program:GLuint, location:GLint):GLintptr;

	@:native('glBlendColorEXT')
	static function blendColorEXT(red:GLfloat, green:GLfloat, blue:GLfloat, alpha:GLfloat):Void;

	@:native('glBlendEquationSeparateEXT')
	static function blendEquationSeparateEXT(modeRGB:GLenum, modeAlpha:GLenum):Void;

	@:native('glBlendFuncSeparateEXT')
	static function blendFuncSeparateEXT(sfactorRGB:GLenum, dfactorRGB:GLenum, sfactorAlpha:GLenum, dfactorAlpha:GLenum):Void;

	@:native('glColorSubTableEXT')
	static function colorSubTableEXT(target:GLenum, start:GLsizei, count:GLsizei, format:GLenum, type:GLenum, data:RawPointer<cpp.Void>):Void;

	@:native('glCopyColorSubTableEXT')
	static function copyColorSubTableEXT(target:GLenum, start:GLsizei, x:GLint, y:GLint, width:GLsizei):Void;

	@:native('glLockArraysEXT')
	static function lockArraysEXT(first:GLint, count:GLsizei):Void;

	@:native('glUnlockArraysEXT')
	static function unlockArraysEXT():Void;

	@:native('glConvolutionFilter1DEXT')
	static function convolutionFilter1DEXT(target:GLenum, internalformat:GLenum, width:GLsizei, format:GLenum, type:GLenum, image:RawPointer<cpp.Void>):Void;

	@:native('glConvolutionFilter2DEXT')
	static function convolutionFilter2DEXT(target:GLenum, internalformat:GLenum, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, image:RawPointer<cpp.Void>):Void;

	@:native('glConvolutionParameterfEXT')
	static function convolutionParameterfEXT(target:GLenum, pname:GLenum, params:GLfloat):Void;

	@:native('glConvolutionParameterfvEXT')
	static function convolutionParameterfvEXT(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glConvolutionParameteriEXT')
	static function convolutionParameteriEXT(target:GLenum, pname:GLenum, params:GLint):Void;

	@:native('glConvolutionParameterivEXT')
	static function convolutionParameterivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glCopyConvolutionFilter1DEXT')
	static function copyConvolutionFilter1DEXT(target:GLenum, internalformat:GLenum, x:GLint, y:GLint, width:GLsizei):Void;

	@:native('glCopyConvolutionFilter2DEXT')
	static function copyConvolutionFilter2DEXT(target:GLenum, internalformat:GLenum, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glGetConvolutionFilterEXT')
	static function getConvolutionFilterEXT(target:GLenum, format:GLenum, type:GLenum, image:RawPointer<cpp.Void>):Void;

	@:native('glGetConvolutionParameterfvEXT')
	static function getConvolutionParameterfvEXT(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetConvolutionParameterivEXT')
	static function getConvolutionParameterivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetSeparableFilterEXT')
	static function getSeparableFilterEXT(target:GLenum, format:GLenum, type:GLenum, row:RawPointer<cpp.Void>, column:RawPointer<cpp.Void>, span:RawPointer<cpp.Void>):Void;

	@:native('glSeparableFilter2DEXT')
	static function separableFilter2DEXT(target:GLenum, internalformat:GLenum, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, row:RawPointer<cpp.Void>, column:RawPointer<cpp.Void>):Void;

	@:native('glTangent3bEXT')
	static function tangent3bEXT(tx:GLbyte, ty:GLbyte, tz:GLbyte):Void;

	@:native('glTangent3bvEXT')
	static function tangent3bvEXT(v:RawPointer<GLbyte>):Void;

	@:native('glTangent3dEXT')
	static function tangent3dEXT(tx:GLdouble, ty:GLdouble, tz:GLdouble):Void;

	@:native('glTangent3dvEXT')
	static function tangent3dvEXT(v:RawPointer<GLdouble>):Void;

	@:native('glTangent3fEXT')
	static function tangent3fEXT(tx:GLfloat, ty:GLfloat, tz:GLfloat):Void;

	@:native('glTangent3fvEXT')
	static function tangent3fvEXT(v:RawPointer<GLfloat>):Void;

	@:native('glTangent3iEXT')
	static function tangent3iEXT(tx:GLint, ty:GLint, tz:GLint):Void;

	@:native('glTangent3ivEXT')
	static function tangent3ivEXT(v:RawPointer<GLint>):Void;

	@:native('glTangent3sEXT')
	static function tangent3sEXT(tx:GLshort, ty:GLshort, tz:GLshort):Void;

	@:native('glTangent3svEXT')
	static function tangent3svEXT(v:RawPointer<GLshort>):Void;

	@:native('glBinormal3bEXT')
	static function binormal3bEXT(bx:GLbyte, by:GLbyte, bz:GLbyte):Void;

	@:native('glBinormal3bvEXT')
	static function binormal3bvEXT(v:RawPointer<GLbyte>):Void;

	@:native('glBinormal3dEXT')
	static function binormal3dEXT(bx:GLdouble, by:GLdouble, bz:GLdouble):Void;

	@:native('glBinormal3dvEXT')
	static function binormal3dvEXT(v:RawPointer<GLdouble>):Void;

	@:native('glBinormal3fEXT')
	static function binormal3fEXT(bx:GLfloat, by:GLfloat, bz:GLfloat):Void;

	@:native('glBinormal3fvEXT')
	static function binormal3fvEXT(v:RawPointer<GLfloat>):Void;

	@:native('glBinormal3iEXT')
	static function binormal3iEXT(bx:GLint, by:GLint, bz:GLint):Void;

	@:native('glBinormal3ivEXT')
	static function binormal3ivEXT(v:RawPointer<GLint>):Void;

	@:native('glBinormal3sEXT')
	static function binormal3sEXT(bx:GLshort, by:GLshort, bz:GLshort):Void;

	@:native('glBinormal3svEXT')
	static function binormal3svEXT(v:RawPointer<GLshort>):Void;

	@:native('glTangentPointerEXT')
	static function tangentPointerEXT(type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glBinormalPointerEXT')
	static function binormalPointerEXT(type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glCopyTexImage1DEXT')
	static function copyTexImage1DEXT(target:GLenum, level:GLint, internalformat:GLenum, x:GLint, y:GLint, width:GLsizei, border:GLint):Void;

	@:native('glCopyTexImage2DEXT')
	static function copyTexImage2DEXT(target:GLenum, level:GLint, internalformat:GLenum, x:GLint, y:GLint, width:GLsizei, height:GLsizei, border:GLint):Void;

	@:native('glCopyTexSubImage1DEXT')
	static function copyTexSubImage1DEXT(target:GLenum, level:GLint, xoffset:GLint, x:GLint, y:GLint, width:GLsizei):Void;

	@:native('glCopyTexSubImage2DEXT')
	static function copyTexSubImage2DEXT(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glCopyTexSubImage3DEXT')
	static function copyTexSubImage3DEXT(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, x:GLint, y:GLint, width:GLsizei, height:GLsizei):Void;

	@:native('glCullParameterdvEXT')
	static function cullParameterdvEXT(pname:GLenum, params:RawPointer<GLdouble>):Void;

	@:native('glCullParameterfvEXT')
	static function cullParameterfvEXT(pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glLabelObjectEXT')
	static function labelObjectEXT(type:GLenum, object:GLuint, length:GLsizei, label:CastGLcharStar):Void;

	@:native('glGetObjectLabelEXT')
	static function getObjectLabelEXT(type:GLenum, object:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, label:CastGLcharStar):Void;

	@:native('glInsertEventMarkerEXT')
	static function insertEventMarkerEXT(length:GLsizei, marker:CastGLcharStar):Void;

	@:native('glPushGroupMarkerEXT')
	static function pushGroupMarkerEXT(length:GLsizei, marker:CastGLcharStar):Void;

	@:native('glPopGroupMarkerEXT')
	static function popGroupMarkerEXT():Void;

	@:native('glDepthBoundsEXT')
	static function depthBoundsEXT(zmin:GLclampd, zmax:GLclampd):Void;

	@:native('glColorMaskIndexedEXT')
	static function colorMaskIndexedEXT(index:GLuint, r:GLboolean, g:GLboolean, b:GLboolean, a:GLboolean):Void;

	@:native('glGetBooleanIndexedvEXT')
	static function getBooleanIndexedvEXT(target:GLenum, index:GLuint, data:RawPointer<GLboolean>):Void;

	@:native('glGetIntegerIndexedvEXT')
	static function getIntegerIndexedvEXT(target:GLenum, index:GLuint, data:RawPointer<GLint>):Void;

	@:native('glEnableIndexedEXT')
	static function enableIndexedEXT(target:GLenum, index:GLuint):Void;

	@:native('glDisableIndexedEXT')
	static function disableIndexedEXT(target:GLenum, index:GLuint):Void;

	@:native('glIsEnabledIndexedEXT')
	static function isEnabledIndexedEXT(target:GLenum, index:GLuint):GLboolean;

	@:native('glDrawArraysInstancedEXT')
	static function drawArraysInstancedEXT(mode:GLenum, start:GLint, count:GLsizei, primcount:GLsizei):Void;

	@:native('glDrawElementsInstancedEXT')
	static function drawElementsInstancedEXT(mode:GLenum, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>, primcount:GLsizei):Void;

	@:native('glDrawRangeElementsEXT')
	static function drawRangeElementsEXT(mode:GLenum, start:GLuint, end:GLuint, count:GLsizei, type:GLenum, indices:RawPointer<cpp.Void>):Void;

	@:native('glBufferStorageExternalEXT')
	static function bufferStorageExternalEXT(target:GLenum, offset:GLintptr, size:GLsizeiptr, clientBuffer:GLeglClientBufferEXT, flags:GLbitfield):Void;

	@:native('glNamedBufferStorageExternalEXT')
	static function namedBufferStorageExternalEXT(buffer:GLuint, offset:GLintptr, size:GLsizeiptr, clientBuffer:GLeglClientBufferEXT, flags:GLbitfield):Void;

	@:native('glFogCoordfEXT')
	static function fogCoordfEXT(coord:GLfloat):Void;

	@:native('glFogCoordfvEXT')
	static function fogCoordfvEXT(coord:RawPointer<GLfloat>):Void;

	@:native('glFogCoorddEXT')
	static function fogCoorddEXT(coord:GLdouble):Void;

	@:native('glFogCoorddvEXT')
	static function fogCoorddvEXT(coord:RawPointer<GLdouble>):Void;

	@:native('glFogCoordPointerEXT')
	static function fogCoordPointerEXT(type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glGetFragmentShadingRatesEXT')
	static function getFragmentShadingRatesEXT(samples:GLsizei, maxCount:GLsizei, count:RawPointer<GLsizei>, shadingRates:RawPointer<GLenum>):Void;

	@:native('glShadingRateEXT')
	static function shadingRateEXT(rate:GLenum):Void;

	@:native('glShadingRateCombinerOpsEXT')
	static function shadingRateCombinerOpsEXT(combinerOp0:GLenum, combinerOp1:GLenum):Void;

	@:native('glFramebufferShadingRateEXT')
	static function framebufferShadingRateEXT(target:GLenum, attachment:GLenum, texture:GLuint, baseLayer:GLint, numLayers:GLsizei, texelWidth:GLsizei, texelHeight:GLsizei):Void;

	@:native('glBlitFramebufferEXT')
	static function blitFramebufferEXT(srcX0:GLint, srcY0:GLint, srcX1:GLint, srcY1:GLint, dstX0:GLint, dstY0:GLint, dstX1:GLint, dstY1:GLint, mask:GLbitfield, filter:GLenum):Void;

	@:native('glBlitFramebufferLayersEXT')
	static function blitFramebufferLayersEXT(srcX0:GLint, srcY0:GLint, srcX1:GLint, srcY1:GLint, dstX0:GLint, dstY0:GLint, dstX1:GLint, dstY1:GLint, mask:GLbitfield, filter:GLenum):Void;

	@:native('glBlitFramebufferLayerEXT')
	static function blitFramebufferLayerEXT(srcX0:GLint, srcY0:GLint, srcX1:GLint, srcY1:GLint, srcLayer:GLint, dstX0:GLint, dstY0:GLint, dstX1:GLint, dstY1:GLint, dstLayer:GLint, mask:GLbitfield, filter:GLenum):Void;

	@:native('glRenderbufferStorageMultisampleEXT')
	static function renderbufferStorageMultisampleEXT(target:GLenum, samples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glIsRenderbufferEXT')
	static function isRenderbufferEXT(renderbuffer:GLuint):GLboolean;

	@:native('glBindRenderbufferEXT')
	static function bindRenderbufferEXT(target:GLenum, renderbuffer:GLuint):Void;

	@:native('glDeleteRenderbuffersEXT')
	static function deleteRenderbuffersEXT(n:GLsizei, renderbuffers:RawPointer<GLuint>):Void;

	@:native('glGenRenderbuffersEXT')
	static function genRenderbuffersEXT(n:GLsizei, renderbuffers:RawPointer<GLuint>):Void;

	@:native('glRenderbufferStorageEXT')
	static function renderbufferStorageEXT(target:GLenum, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glGetRenderbufferParameterivEXT')
	static function getRenderbufferParameterivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glIsFramebufferEXT')
	static function isFramebufferEXT(framebuffer:GLuint):GLboolean;

	@:native('glBindFramebufferEXT')
	static function bindFramebufferEXT(target:GLenum, framebuffer:GLuint):Void;

	@:native('glDeleteFramebuffersEXT')
	static function deleteFramebuffersEXT(n:GLsizei, framebuffers:RawPointer<GLuint>):Void;

	@:native('glGenFramebuffersEXT')
	static function genFramebuffersEXT(n:GLsizei, framebuffers:RawPointer<GLuint>):Void;

	@:native('glCheckFramebufferStatusEXT')
	static function checkFramebufferStatusEXT(target:GLenum):GLenum;

	@:native('glFramebufferTexture1DEXT')
	static function framebufferTexture1DEXT(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint):Void;

	@:native('glFramebufferTexture2DEXT')
	static function framebufferTexture2DEXT(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint):Void;

	@:native('glFramebufferTexture3DEXT')
	static function framebufferTexture3DEXT(target:GLenum, attachment:GLenum, textarget:GLenum, texture:GLuint, level:GLint, zoffset:GLint):Void;

	@:native('glFramebufferRenderbufferEXT')
	static function framebufferRenderbufferEXT(target:GLenum, attachment:GLenum, renderbuffertarget:GLenum, renderbuffer:GLuint):Void;

	@:native('glGetFramebufferAttachmentParameterivEXT')
	static function getFramebufferAttachmentParameterivEXT(target:GLenum, attachment:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGenerateMipmapEXT')
	static function generateMipmapEXT(target:GLenum):Void;

	@:native('glProgramParameteriEXT')
	static function programParameteriEXT(program:GLuint, pname:GLenum, value:GLint):Void;

	@:native('glProgramEnvParameters4fvEXT')
	static function programEnvParameters4fvEXT(target:GLenum, index:GLuint, count:GLsizei, params:RawPointer<GLfloat>):Void;

	@:native('glProgramLocalParameters4fvEXT')
	static function programLocalParameters4fvEXT(target:GLenum, index:GLuint, count:GLsizei, params:RawPointer<GLfloat>):Void;

	@:native('glGetUniformuivEXT')
	static function getUniformuivEXT(program:GLuint, location:GLint, params:RawPointer<GLuint>):Void;

	@:native('glBindFragDataLocationEXT')
	static function bindFragDataLocationEXT(program:GLuint, color:GLuint, name:CastGLcharStar):Void;

	@:native('glGetFragDataLocationEXT')
	static function getFragDataLocationEXT(program:GLuint, name:CastGLcharStar):GLint;

	@:native('glUniform1uiEXT')
	static function uniform1uiEXT(location:GLint, v0:GLuint):Void;

	@:native('glUniform2uiEXT')
	static function uniform2uiEXT(location:GLint, v0:GLuint, v1:GLuint):Void;

	@:native('glUniform3uiEXT')
	static function uniform3uiEXT(location:GLint, v0:GLuint, v1:GLuint, v2:GLuint):Void;

	@:native('glUniform4uiEXT')
	static function uniform4uiEXT(location:GLint, v0:GLuint, v1:GLuint, v2:GLuint, v3:GLuint):Void;

	@:native('glUniform1uivEXT')
	static function uniform1uivEXT(location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glUniform2uivEXT')
	static function uniform2uivEXT(location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glUniform3uivEXT')
	static function uniform3uivEXT(location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glUniform4uivEXT')
	static function uniform4uivEXT(location:GLint, count:GLsizei, value:RawPointer<GLuint>):Void;

	@:native('glGetHistogramEXT')
	static function getHistogramEXT(target:GLenum, reset:GLboolean, format:GLenum, type:GLenum, values:RawPointer<cpp.Void>):Void;

	@:native('glGetHistogramParameterfvEXT')
	static function getHistogramParameterfvEXT(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetHistogramParameterivEXT')
	static function getHistogramParameterivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetMinmaxEXT')
	static function getMinmaxEXT(target:GLenum, reset:GLboolean, format:GLenum, type:GLenum, values:RawPointer<cpp.Void>):Void;

	@:native('glGetMinmaxParameterfvEXT')
	static function getMinmaxParameterfvEXT(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetMinmaxParameterivEXT')
	static function getMinmaxParameterivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glHistogramEXT')
	static function histogramEXT(target:GLenum, width:GLsizei, internalformat:GLenum, sink:GLboolean):Void;

	@:native('glMinmaxEXT')
	static function minmaxEXT(target:GLenum, internalformat:GLenum, sink:GLboolean):Void;

	@:native('glResetHistogramEXT')
	static function resetHistogramEXT(target:GLenum):Void;

	@:native('glResetMinmaxEXT')
	static function resetMinmaxEXT(target:GLenum):Void;

	@:native('glIndexFuncEXT')
	static function indexFuncEXT(func:GLenum, ref:GLclampf):Void;

	@:native('glIndexMaterialEXT')
	static function indexMaterialEXT(face:GLenum, mode:GLenum):Void;

	@:native('glApplyTextureEXT')
	static function applyTextureEXT(mode:GLenum):Void;

	@:native('glTextureLightEXT')
	static function textureLightEXT(pname:GLenum):Void;

	@:native('glTextureMaterialEXT')
	static function textureMaterialEXT(face:GLenum, mode:GLenum):Void;

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

	@:native('glMultiDrawArraysEXT')
	static function multiDrawArraysEXT(mode:GLenum, first:RawPointer<GLint>, count:RawPointer<GLsizei>, primcount:GLsizei):Void;

	@:native('glMultiDrawElementsEXT')
	static function multiDrawElementsEXT(mode:GLenum, count:RawPointer<GLsizei>, type:GLenum, indices:RawPointer<RawConstPointer<cpp.Void>>, primcount:GLsizei):Void;

	@:native('glSampleMaskEXT')
	static function sampleMaskEXT(value:GLclampf, invert:GLboolean):Void;

	@:native('glSamplePatternEXT')
	static function samplePatternEXT(pattern:GLenum):Void;

	@:native('glColorTableEXT')
	static function colorTableEXT(target:GLenum, internalFormat:GLenum, width:GLsizei, format:GLenum, type:GLenum, table:RawPointer<cpp.Void>):Void;

	@:native('glGetColorTableEXT')
	static function getColorTableEXT(target:GLenum, format:GLenum, type:GLenum, data:RawPointer<cpp.Void>):Void;

	@:native('glGetColorTableParameterivEXT')
	static function getColorTableParameterivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetColorTableParameterfvEXT')
	static function getColorTableParameterfvEXT(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glPixelTransformParameteriEXT')
	static function pixelTransformParameteriEXT(target:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glPixelTransformParameterfEXT')
	static function pixelTransformParameterfEXT(target:GLenum, pname:GLenum, param:GLfloat):Void;

	@:native('glPixelTransformParameterivEXT')
	static function pixelTransformParameterivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glPixelTransformParameterfvEXT')
	static function pixelTransformParameterfvEXT(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetPixelTransformParameterivEXT')
	static function getPixelTransformParameterivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetPixelTransformParameterfvEXT')
	static function getPixelTransformParameterfvEXT(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glPointParameterfEXT')
	static function pointParameterfEXT(pname:GLenum, param:GLfloat):Void;

	@:native('glPointParameterfvEXT')
	static function pointParameterfvEXT(pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glPolygonOffsetEXT')
	static function polygonOffsetEXT(factor:GLfloat, bias:GLfloat):Void;

	@:native('glPolygonOffsetClampEXT')
	static function polygonOffsetClampEXT(factor:GLfloat, units:GLfloat, clamp:GLfloat):Void;

	@:native('glProvokingVertexEXT')
	static function provokingVertexEXT(mode:GLenum):Void;

	@:native('glRasterSamplesEXT')
	static function rasterSamplesEXT(samples:GLuint, fixedsamplelocations:GLboolean):Void;

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

	@:native('glSecondaryColor3bEXT')
	static function secondaryColor3bEXT(red:GLbyte, green:GLbyte, blue:GLbyte):Void;

	@:native('glSecondaryColor3bvEXT')
	static function secondaryColor3bvEXT(v:RawPointer<GLbyte>):Void;

	@:native('glSecondaryColor3dEXT')
	static function secondaryColor3dEXT(red:GLdouble, green:GLdouble, blue:GLdouble):Void;

	@:native('glSecondaryColor3dvEXT')
	static function secondaryColor3dvEXT(v:RawPointer<GLdouble>):Void;

	@:native('glSecondaryColor3fEXT')
	static function secondaryColor3fEXT(red:GLfloat, green:GLfloat, blue:GLfloat):Void;

	@:native('glSecondaryColor3fvEXT')
	static function secondaryColor3fvEXT(v:RawPointer<GLfloat>):Void;

	@:native('glSecondaryColor3iEXT')
	static function secondaryColor3iEXT(red:GLint, green:GLint, blue:GLint):Void;

	@:native('glSecondaryColor3ivEXT')
	static function secondaryColor3ivEXT(v:RawPointer<GLint>):Void;

	@:native('glSecondaryColor3sEXT')
	static function secondaryColor3sEXT(red:GLshort, green:GLshort, blue:GLshort):Void;

	@:native('glSecondaryColor3svEXT')
	static function secondaryColor3svEXT(v:RawPointer<GLshort>):Void;

	@:native('glSecondaryColor3ubEXT')
	static function secondaryColor3ubEXT(red:GLubyte, green:GLubyte, blue:GLubyte):Void;

	@:native('glSecondaryColor3ubvEXT')
	static function secondaryColor3ubvEXT(v:RawPointer<GLubyte>):Void;

	@:native('glSecondaryColor3uiEXT')
	static function secondaryColor3uiEXT(red:GLuint, green:GLuint, blue:GLuint):Void;

	@:native('glSecondaryColor3uivEXT')
	static function secondaryColor3uivEXT(v:RawPointer<GLuint>):Void;

	@:native('glSecondaryColor3usEXT')
	static function secondaryColor3usEXT(red:GLushort, green:GLushort, blue:GLushort):Void;

	@:native('glSecondaryColor3usvEXT')
	static function secondaryColor3usvEXT(v:RawPointer<GLushort>):Void;

	@:native('glSecondaryColorPointerEXT')
	static function secondaryColorPointerEXT(size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glUseShaderProgramEXT')
	static function useShaderProgramEXT(type:GLenum, program:GLuint):Void;

	@:native('glActiveProgramEXT')
	static function activeProgramEXT(program:GLuint):Void;

	@:native('glCreateShaderProgramEXT')
	static function createShaderProgramEXT(type:GLenum, string:CastGLcharStar):GLuint;

	@:native('glFramebufferFetchBarrierEXT')
	static function framebufferFetchBarrierEXT():Void;

	@:native('glBindImageTextureEXT')
	static function bindImageTextureEXT(index:GLuint, texture:GLuint, level:GLint, layered:GLboolean, layer:GLint, access:GLenum, format:GLint):Void;

	@:native('glMemoryBarrierEXT')
	static function memoryBarrierEXT(barriers:GLbitfield):Void;

	@:native('glStencilClearTagEXT')
	static function stencilClearTagEXT(stencilTagBits:GLsizei, stencilClearTag:GLuint):Void;

	@:native('glActiveStencilFaceEXT')
	static function activeStencilFaceEXT(face:GLenum):Void;

	@:native('glTexSubImage1DEXT')
	static function texSubImage1DEXT(target:GLenum, level:GLint, xoffset:GLint, width:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTexSubImage2DEXT')
	static function texSubImage2DEXT(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTexImage3DEXT')
	static function texImage3DEXT(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, border:GLint, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTexSubImage3DEXT')
	static function texSubImage3DEXT(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glFramebufferTextureLayerEXT')
	static function framebufferTextureLayerEXT(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint, layer:GLint):Void;

	@:native('glTexBufferEXT')
	static function texBufferEXT(target:GLenum, internalformat:GLenum, buffer:GLuint):Void;

	@:native('glTexParameterIivEXT')
	static function texParameterIivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glTexParameterIuivEXT')
	static function texParameterIuivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glGetTexParameterIivEXT')
	static function getTexParameterIivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetTexParameterIuivEXT')
	static function getTexParameterIuivEXT(target:GLenum, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glClearColorIiEXT')
	static function clearColorIiEXT(red:GLint, green:GLint, blue:GLint, alpha:GLint):Void;

	@:native('glClearColorIuiEXT')
	static function clearColorIuiEXT(red:GLuint, green:GLuint, blue:GLuint, alpha:GLuint):Void;

	@:native('glAreTexturesResidentEXT')
	static function areTexturesResidentEXT(n:GLsizei, textures:RawPointer<GLuint>, residences:RawPointer<GLboolean>):GLboolean;

	@:native('glBindTextureEXT')
	static function bindTextureEXT(target:GLenum, texture:GLuint):Void;

	@:native('glDeleteTexturesEXT')
	static function deleteTexturesEXT(n:GLsizei, textures:RawPointer<GLuint>):Void;

	@:native('glGenTexturesEXT')
	static function genTexturesEXT(n:GLsizei, textures:RawPointer<GLuint>):Void;

	@:native('glIsTextureEXT')
	static function isTextureEXT(texture:GLuint):GLboolean;

	@:native('glPrioritizeTexturesEXT')
	static function prioritizeTexturesEXT(n:GLsizei, textures:RawPointer<GLuint>, priorities:RawPointer<GLclampf>):Void;

	@:native('glTextureNormalEXT')
	static function textureNormalEXT(mode:GLenum):Void;

	@:native('glTexStorage1DEXT')
	static function texStorage1DEXT(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei):Void;

	@:native('glTexStorage2DEXT')
	static function texStorage2DEXT(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glTexStorage3DEXT')
	static function texStorage3DEXT(target:GLenum, levels:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei):Void;

	@:native('glCreateSemaphoresNV')
	static function createSemaphoresNV(n:GLsizei, semaphores:RawPointer<GLuint>):Void;

	@:native('glSemaphoreParameterivNV')
	static function semaphoreParameterivNV(semaphore:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetSemaphoreParameterivNV')
	static function getSemaphoreParameterivNV(semaphore:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetQueryObjecti64vEXT')
	static function getQueryObjecti64vEXT(id:GLuint, pname:GLenum, params:RawPointer<GLint64>):Void;

	@:native('glGetQueryObjectui64vEXT')
	static function getQueryObjectui64vEXT(id:GLuint, pname:GLenum, params:RawPointer<GLuint64>):Void;

	@:native('glBeginTransformFeedbackEXT')
	static function beginTransformFeedbackEXT(primitiveMode:GLenum):Void;

	@:native('glEndTransformFeedbackEXT')
	static function endTransformFeedbackEXT():Void;

	@:native('glBindBufferRangeEXT')
	static function bindBufferRangeEXT(target:GLenum, index:GLuint, buffer:GLuint, offset:GLintptr, size:GLsizeiptr):Void;

	@:native('glBindBufferOffsetEXT')
	static function bindBufferOffsetEXT(target:GLenum, index:GLuint, buffer:GLuint, offset:GLintptr):Void;

	@:native('glBindBufferBaseEXT')
	static function bindBufferBaseEXT(target:GLenum, index:GLuint, buffer:GLuint):Void;

	@:native('glTransformFeedbackVaryingsEXT')
	static function transformFeedbackVaryingsEXT(program:GLuint, count:GLsizei, varyings:RawPointer<ConstGLcharStar>, bufferMode:GLenum):Void;

	@:native('glGetTransformFeedbackVaryingEXT')
	static function getTransformFeedbackVaryingEXT(program:GLuint, index:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, size:RawPointer<GLsizei>, type:RawPointer<GLenum>, name:CastGLcharStar):Void;

	@:native('glArrayElementEXT')
	static function arrayElementEXT(i:GLint):Void;

	@:native('glColorPointerEXT')
	static function colorPointerEXT(size:GLint, type:GLenum, stride:GLsizei, count:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glDrawArraysEXT')
	static function drawArraysEXT(mode:GLenum, first:GLint, count:GLsizei):Void;

	@:native('glEdgeFlagPointerEXT')
	static function edgeFlagPointerEXT(stride:GLsizei, count:GLsizei, pointer:RawPointer<GLboolean>):Void;

	@:native('glGetPointervEXT')
	static function getPointervEXT(pname:GLenum, params:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glIndexPointerEXT')
	static function indexPointerEXT(type:GLenum, stride:GLsizei, count:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glNormalPointerEXT')
	static function normalPointerEXT(type:GLenum, stride:GLsizei, count:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glTexCoordPointerEXT')
	static function texCoordPointerEXT(size:GLint, type:GLenum, stride:GLsizei, count:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glVertexPointerEXT')
	static function vertexPointerEXT(size:GLint, type:GLenum, stride:GLsizei, count:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glVertexAttribL1dEXT')
	static function vertexAttribL1dEXT(index:GLuint, x:GLdouble):Void;

	@:native('glVertexAttribL2dEXT')
	static function vertexAttribL2dEXT(index:GLuint, x:GLdouble, y:GLdouble):Void;

	@:native('glVertexAttribL3dEXT')
	static function vertexAttribL3dEXT(index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glVertexAttribL4dEXT')
	static function vertexAttribL4dEXT(index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glVertexAttribL1dvEXT')
	static function vertexAttribL1dvEXT(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttribL2dvEXT')
	static function vertexAttribL2dvEXT(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttribL3dvEXT')
	static function vertexAttribL3dvEXT(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttribL4dvEXT')
	static function vertexAttribL4dvEXT(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttribLPointerEXT')
	static function vertexAttribLPointerEXT(index:GLuint, size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glGetVertexAttribLdvEXT')
	static function getVertexAttribLdvEXT(index:GLuint, pname:GLenum, params:RawPointer<GLdouble>):Void;

	@:native('glBeginVertexShaderEXT')
	static function beginVertexShaderEXT():Void;

	@:native('glEndVertexShaderEXT')
	static function endVertexShaderEXT():Void;

	@:native('glBindVertexShaderEXT')
	static function bindVertexShaderEXT(id:GLuint):Void;

	@:native('glGenVertexShadersEXT')
	static function genVertexShadersEXT(range:GLuint):GLuint;

	@:native('glDeleteVertexShaderEXT')
	static function deleteVertexShaderEXT(id:GLuint):Void;

	@:native('glShaderOp1EXT')
	static function shaderOp1EXT(op:GLenum, res:GLuint, arg1:GLuint):Void;

	@:native('glShaderOp2EXT')
	static function shaderOp2EXT(op:GLenum, res:GLuint, arg1:GLuint, arg2:GLuint):Void;

	@:native('glShaderOp3EXT')
	static function shaderOp3EXT(op:GLenum, res:GLuint, arg1:GLuint, arg2:GLuint, arg3:GLuint):Void;

	@:native('glSwizzleEXT')
	static function swizzleEXT(res:GLuint, _in:GLuint, outX:GLenum, outY:GLenum, outZ:GLenum, outW:GLenum):Void;

	@:native('glWriteMaskEXT')
	static function writeMaskEXT(res:GLuint, _in:GLuint, outX:GLenum, outY:GLenum, outZ:GLenum, outW:GLenum):Void;

	@:native('glInsertComponentEXT')
	static function insertComponentEXT(res:GLuint, src:GLuint, num:GLuint):Void;

	@:native('glExtractComponentEXT')
	static function extractComponentEXT(res:GLuint, src:GLuint, num:GLuint):Void;

	@:native('glGenSymbolsEXT')
	static function genSymbolsEXT(datatype:GLenum, storagetype:GLenum, range:GLenum, components:GLuint):GLuint;

	@:native('glSetInvariantEXT')
	static function setInvariantEXT(id:GLuint, type:GLenum, addr:RawPointer<cpp.Void>):Void;

	@:native('glSetLocalConstantEXT')
	static function setLocalConstantEXT(id:GLuint, type:GLenum, addr:RawPointer<cpp.Void>):Void;

	@:native('glVariantbvEXT')
	static function variantbvEXT(id:GLuint, addr:RawPointer<GLbyte>):Void;

	@:native('glVariantsvEXT')
	static function variantsvEXT(id:GLuint, addr:RawPointer<GLshort>):Void;

	@:native('glVariantivEXT')
	static function variantivEXT(id:GLuint, addr:RawPointer<GLint>):Void;

	@:native('glVariantfvEXT')
	static function variantfvEXT(id:GLuint, addr:RawPointer<GLfloat>):Void;

	@:native('glVariantdvEXT')
	static function variantdvEXT(id:GLuint, addr:RawPointer<GLdouble>):Void;

	@:native('glVariantubvEXT')
	static function variantubvEXT(id:GLuint, addr:RawPointer<GLubyte>):Void;

	@:native('glVariantusvEXT')
	static function variantusvEXT(id:GLuint, addr:RawPointer<GLushort>):Void;

	@:native('glVariantuivEXT')
	static function variantuivEXT(id:GLuint, addr:RawPointer<GLuint>):Void;

	@:native('glVariantPointerEXT')
	static function variantPointerEXT(id:GLuint, type:GLenum, stride:GLuint, addr:RawPointer<cpp.Void>):Void;

	@:native('glEnableVariantClientStateEXT')
	static function enableVariantClientStateEXT(id:GLuint):Void;

	@:native('glDisableVariantClientStateEXT')
	static function disableVariantClientStateEXT(id:GLuint):Void;

	@:native('glBindLightParameterEXT')
	static function bindLightParameterEXT(light:GLenum, value:GLenum):GLuint;

	@:native('glBindMaterialParameterEXT')
	static function bindMaterialParameterEXT(face:GLenum, value:GLenum):GLuint;

	@:native('glBindTexGenParameterEXT')
	static function bindTexGenParameterEXT(unit:GLenum, coord:GLenum, value:GLenum):GLuint;

	@:native('glBindTextureUnitParameterEXT')
	static function bindTextureUnitParameterEXT(unit:GLenum, value:GLenum):GLuint;

	@:native('glBindParameterEXT')
	static function bindParameterEXT(value:GLenum):GLuint;

	@:native('glIsVariantEnabledEXT')
	static function isVariantEnabledEXT(id:GLuint, cap:GLenum):GLboolean;

	@:native('glGetVariantBooleanvEXT')
	static function getVariantBooleanvEXT(id:GLuint, value:GLenum, data:RawPointer<GLboolean>):Void;

	@:native('glGetVariantIntegervEXT')
	static function getVariantIntegervEXT(id:GLuint, value:GLenum, data:RawPointer<GLint>):Void;

	@:native('glGetVariantFloatvEXT')
	static function getVariantFloatvEXT(id:GLuint, value:GLenum, data:RawPointer<GLfloat>):Void;

	@:native('glGetVariantPointervEXT')
	static function getVariantPointervEXT(id:GLuint, value:GLenum, data:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glGetInvariantBooleanvEXT')
	static function getInvariantBooleanvEXT(id:GLuint, value:GLenum, data:RawPointer<GLboolean>):Void;

	@:native('glGetInvariantIntegervEXT')
	static function getInvariantIntegervEXT(id:GLuint, value:GLenum, data:RawPointer<GLint>):Void;

	@:native('glGetInvariantFloatvEXT')
	static function getInvariantFloatvEXT(id:GLuint, value:GLenum, data:RawPointer<GLfloat>):Void;

	@:native('glGetLocalConstantBooleanvEXT')
	static function getLocalConstantBooleanvEXT(id:GLuint, value:GLenum, data:RawPointer<GLboolean>):Void;

	@:native('glGetLocalConstantIntegervEXT')
	static function getLocalConstantIntegervEXT(id:GLuint, value:GLenum, data:RawPointer<GLint>):Void;

	@:native('glGetLocalConstantFloatvEXT')
	static function getLocalConstantFloatvEXT(id:GLuint, value:GLenum, data:RawPointer<GLfloat>):Void;

	@:native('glVertexWeightfEXT')
	static function vertexWeightfEXT(weight:GLfloat):Void;

	@:native('glVertexWeightfvEXT')
	static function vertexWeightfvEXT(weight:RawPointer<GLfloat>):Void;

	@:native('glVertexWeightPointerEXT')
	static function vertexWeightPointerEXT(size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glAcquireKeyedMutexWin32EXT')
	static function acquireKeyedMutexWin32EXT(memory:GLuint, key:GLuint64, timeout:GLuint):GLboolean;

	@:native('glReleaseKeyedMutexWin32EXT')
	static function releaseKeyedMutexWin32EXT(memory:GLuint, key:GLuint64):GLboolean;

	@:native('glWindowRectanglesEXT')
	static function windowRectanglesEXT(mode:GLenum, count:GLsizei, box:RawPointer<GLint>):Void;

	@:native('glImportSyncEXT')
	static function importSyncEXT(external_sync_type:GLenum, external_sync:GLintptr, flags:GLbitfield):GLsync;

	@:native('glFrameTerminatorGREMEDY')
	static function frameTerminatorGREMEDY():Void;

	@:native('glStringMarkerGREMEDY')
	static function stringMarkerGREMEDY(len:GLsizei, string:RawPointer<cpp.Void>):Void;

	@:native('glImageTransformParameteriHP')
	static function imageTransformParameteriHP(target:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glImageTransformParameterfHP')
	static function imageTransformParameterfHP(target:GLenum, pname:GLenum, param:GLfloat):Void;

	@:native('glImageTransformParameterivHP')
	static function imageTransformParameterivHP(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glImageTransformParameterfvHP')
	static function imageTransformParameterfvHP(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetImageTransformParameterivHP')
	static function getImageTransformParameterivHP(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetImageTransformParameterfvHP')
	static function getImageTransformParameterfvHP(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glMultiModeDrawArraysIBM')
	static function multiModeDrawArraysIBM(mode:RawPointer<GLenum>, first:RawPointer<GLint>, count:RawPointer<GLsizei>, primcount:GLsizei, modestride:GLint):Void;

	@:native('glMultiModeDrawElementsIBM')
	static function multiModeDrawElementsIBM(mode:RawPointer<GLenum>, count:RawPointer<GLsizei>, type:GLenum, indices:RawPointer<RawConstPointer<cpp.Void>>, primcount:GLsizei, modestride:GLint):Void;

	@:native('glFlushStaticDataIBM')
	static function flushStaticDataIBM(target:GLenum):Void;

	@:native('glColorPointerListIBM')
	static function colorPointerListIBM(size:GLint, type:GLenum, stride:GLint, pointer:RawPointer<RawPointer<cpp.Void>>, ptrstride:GLint):Void;

	@:native('glSecondaryColorPointerListIBM')
	static function secondaryColorPointerListIBM(size:GLint, type:GLenum, stride:GLint, pointer:RawPointer<RawPointer<cpp.Void>>, ptrstride:GLint):Void;

	@:native('glEdgeFlagPointerListIBM')
	static function edgeFlagPointerListIBM(stride:GLint, pointer:RawPointer<RawPointer<GLboolean>>, ptrstride:GLint):Void;

	@:native('glFogCoordPointerListIBM')
	static function fogCoordPointerListIBM(type:GLenum, stride:GLint, pointer:RawPointer<RawPointer<cpp.Void>>, ptrstride:GLint):Void;

	@:native('glIndexPointerListIBM')
	static function indexPointerListIBM(type:GLenum, stride:GLint, pointer:RawPointer<RawPointer<cpp.Void>>, ptrstride:GLint):Void;

	@:native('glNormalPointerListIBM')
	static function normalPointerListIBM(type:GLenum, stride:GLint, pointer:RawPointer<RawPointer<cpp.Void>>, ptrstride:GLint):Void;

	@:native('glTexCoordPointerListIBM')
	static function texCoordPointerListIBM(size:GLint, type:GLenum, stride:GLint, pointer:RawPointer<RawPointer<cpp.Void>>, ptrstride:GLint):Void;

	@:native('glVertexPointerListIBM')
	static function vertexPointerListIBM(size:GLint, type:GLenum, stride:GLint, pointer:RawPointer<RawPointer<cpp.Void>>, ptrstride:GLint):Void;

	@:native('glBlendFuncSeparateINGR')
	static function blendFuncSeparateINGR(sfactorRGB:GLenum, dfactorRGB:GLenum, sfactorAlpha:GLenum, dfactorAlpha:GLenum):Void;

	@:native('glApplyFramebufferAttachmentCMAAINTEL')
	static function applyFramebufferAttachmentCMAAINTEL():Void;

	@:native('glSyncTextureINTEL')
	static function syncTextureINTEL(texture:GLuint):Void;

	@:native('glUnmapTexture2DINTEL')
	static function unmapTexture2DINTEL(texture:GLuint, level:GLint):Void;

	@:native('glMapTexture2DINTEL')
	static function mapTexture2DINTEL(texture:GLuint, level:GLint, access:GLbitfield, stride:RawPointer<GLint>, layout:RawPointer<GLenum>):RawPointer<cpp.Void>;

	@:native('glVertexPointervINTEL')
	static function vertexPointervINTEL(size:GLint, type:GLenum, pointer:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glNormalPointervINTEL')
	static function normalPointervINTEL(type:GLenum, pointer:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glColorPointervINTEL')
	static function colorPointervINTEL(size:GLint, type:GLenum, pointer:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glTexCoordPointervINTEL')
	static function texCoordPointervINTEL(size:GLint, type:GLenum, pointer:RawPointer<RawPointer<cpp.Void>>):Void;

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

	@:native('glMaxShaderCompilerThreadsKHR')
	static function maxShaderCompilerThreadsKHR(count:GLuint):Void;

	@:native('glFramebufferParameteriMESA')
	static function framebufferParameteriMESA(target:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glGetFramebufferParameterivMESA')
	static function getFramebufferParameterivMESA(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glResizeBuffersMESA')
	static function resizeBuffersMESA():Void;

	@:native('glWindowPos2dMESA')
	static function windowPos2dMESA(x:GLdouble, y:GLdouble):Void;

	@:native('glWindowPos2dvMESA')
	static function windowPos2dvMESA(v:RawPointer<GLdouble>):Void;

	@:native('glWindowPos2fMESA')
	static function windowPos2fMESA(x:GLfloat, y:GLfloat):Void;

	@:native('glWindowPos2fvMESA')
	static function windowPos2fvMESA(v:RawPointer<GLfloat>):Void;

	@:native('glWindowPos2iMESA')
	static function windowPos2iMESA(x:GLint, y:GLint):Void;

	@:native('glWindowPos2ivMESA')
	static function windowPos2ivMESA(v:RawPointer<GLint>):Void;

	@:native('glWindowPos2sMESA')
	static function windowPos2sMESA(x:GLshort, y:GLshort):Void;

	@:native('glWindowPos2svMESA')
	static function windowPos2svMESA(v:RawPointer<GLshort>):Void;

	@:native('glWindowPos3dMESA')
	static function windowPos3dMESA(x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glWindowPos3dvMESA')
	static function windowPos3dvMESA(v:RawPointer<GLdouble>):Void;

	@:native('glWindowPos3fMESA')
	static function windowPos3fMESA(x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glWindowPos3fvMESA')
	static function windowPos3fvMESA(v:RawPointer<GLfloat>):Void;

	@:native('glWindowPos3iMESA')
	static function windowPos3iMESA(x:GLint, y:GLint, z:GLint):Void;

	@:native('glWindowPos3ivMESA')
	static function windowPos3ivMESA(v:RawPointer<GLint>):Void;

	@:native('glWindowPos3sMESA')
	static function windowPos3sMESA(x:GLshort, y:GLshort, z:GLshort):Void;

	@:native('glWindowPos3svMESA')
	static function windowPos3svMESA(v:RawPointer<GLshort>):Void;

	@:native('glWindowPos4dMESA')
	static function windowPos4dMESA(x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glWindowPos4dvMESA')
	static function windowPos4dvMESA(v:RawPointer<GLdouble>):Void;

	@:native('glWindowPos4fMESA')
	static function windowPos4fMESA(x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glWindowPos4fvMESA')
	static function windowPos4fvMESA(v:RawPointer<GLfloat>):Void;

	@:native('glWindowPos4iMESA')
	static function windowPos4iMESA(x:GLint, y:GLint, z:GLint, w:GLint):Void;

	@:native('glWindowPos4ivMESA')
	static function windowPos4ivMESA(v:RawPointer<GLint>):Void;

	@:native('glWindowPos4sMESA')
	static function windowPos4sMESA(x:GLshort, y:GLshort, z:GLshort, w:GLshort):Void;

	@:native('glWindowPos4svMESA')
	static function windowPos4svMESA(v:RawPointer<GLshort>):Void;

	@:native('glBeginConditionalRenderNVX')
	static function beginConditionalRenderNVX(id:GLuint):Void;

	@:native('glEndConditionalRenderNVX')
	static function endConditionalRenderNVX():Void;

	@:native('glLGPUNamedBufferSubDataNVX')
	static function lGPUNamedBufferSubDataNVX(gpuMask:GLbitfield, buffer:GLuint, offset:GLintptr, size:GLsizeiptr, data:RawPointer<cpp.Void>):Void;

	@:native('glLGPUCopyImageSubDataNVX')
	static function lGPUCopyImageSubDataNVX(sourceGpu:GLuint, destinationGpuMask:GLbitfield, srcName:GLuint, srcTarget:GLenum, srcLevel:GLint, srcX:GLint, srxY:GLint, srcZ:GLint, dstName:GLuint, dstTarget:GLenum, dstLevel:GLint, dstX:GLint, dstY:GLint, dstZ:GLint, width:GLsizei, height:GLsizei, depth:GLsizei):Void;

	@:native('glLGPUInterlockNVX')
	static function lGPUInterlockNVX():Void;

	@:native('glAlphaToCoverageDitherControlNV')
	static function alphaToCoverageDitherControlNV(mode:GLenum):Void;

	@:native('glMultiDrawArraysIndirectBindlessNV')
	static function multiDrawArraysIndirectBindlessNV(mode:GLenum, indirect:RawPointer<cpp.Void>, drawCount:GLsizei, stride:GLsizei, vertexBufferCount:GLint):Void;

	@:native('glMultiDrawElementsIndirectBindlessNV')
	static function multiDrawElementsIndirectBindlessNV(mode:GLenum, type:GLenum, indirect:RawPointer<cpp.Void>, drawCount:GLsizei, stride:GLsizei, vertexBufferCount:GLint):Void;

	@:native('glMultiDrawArraysIndirectBindlessCountNV')
	static function multiDrawArraysIndirectBindlessCountNV(mode:GLenum, indirect:RawPointer<cpp.Void>, drawCount:GLsizei, maxDrawCount:GLsizei, stride:GLsizei, vertexBufferCount:GLint):Void;

	@:native('glMultiDrawElementsIndirectBindlessCountNV')
	static function multiDrawElementsIndirectBindlessCountNV(mode:GLenum, type:GLenum, indirect:RawPointer<cpp.Void>, drawCount:GLsizei, maxDrawCount:GLsizei, stride:GLsizei, vertexBufferCount:GLint):Void;

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

	@:native('glCreateStatesNV')
	static function createStatesNV(n:GLsizei, states:RawPointer<GLuint>):Void;

	@:native('glDeleteStatesNV')
	static function deleteStatesNV(n:GLsizei, states:RawPointer<GLuint>):Void;

	@:native('glIsStateNV')
	static function isStateNV(state:GLuint):GLboolean;

	@:native('glStateCaptureNV')
	static function stateCaptureNV(state:GLuint, mode:GLenum):Void;

	@:native('glGetCommandHeaderNV')
	static function getCommandHeaderNV(tokenID:GLenum, size:GLuint):GLuint;

	@:native('glGetStageIndexNV')
	static function getStageIndexNV(shadertype:GLenum):GLushort;

	@:native('glDrawCommandsNV')
	static function drawCommandsNV(primitiveMode:GLenum, buffer:GLuint, indirects:RawPointer<GLintptr>, sizes:RawPointer<GLsizei>, count:GLuint):Void;

	@:native('glDrawCommandsAddressNV')
	static function drawCommandsAddressNV(primitiveMode:GLenum, indirects:RawPointer<GLuint64>, sizes:RawPointer<GLsizei>, count:GLuint):Void;

	@:native('glDrawCommandsStatesNV')
	static function drawCommandsStatesNV(buffer:GLuint, indirects:RawPointer<GLintptr>, sizes:RawPointer<GLsizei>, states:RawPointer<GLuint>, fbos:RawPointer<GLuint>, count:GLuint):Void;

	@:native('glDrawCommandsStatesAddressNV')
	static function drawCommandsStatesAddressNV(indirects:RawPointer<GLuint64>, sizes:RawPointer<GLsizei>, states:RawPointer<GLuint>, fbos:RawPointer<GLuint>, count:GLuint):Void;

	@:native('glCreateCommandListsNV')
	static function createCommandListsNV(n:GLsizei, lists:RawPointer<GLuint>):Void;

	@:native('glDeleteCommandListsNV')
	static function deleteCommandListsNV(n:GLsizei, lists:RawPointer<GLuint>):Void;

	@:native('glIsCommandListNV')
	static function isCommandListNV(list:GLuint):GLboolean;

	@:native('glListDrawCommandsStatesClientNV')
	static function listDrawCommandsStatesClientNV(list:GLuint, segment:GLuint, indirects:RawPointer<RawPointer<cpp.Void>>, sizes:RawPointer<GLsizei>, states:RawPointer<GLuint>, fbos:RawPointer<GLuint>, count:GLuint):Void;

	@:native('glCommandListSegmentsNV')
	static function commandListSegmentsNV(list:GLuint, segments:GLuint):Void;

	@:native('glCompileCommandListNV')
	static function compileCommandListNV(list:GLuint):Void;

	@:native('glCallCommandListNV')
	static function callCommandListNV(list:GLuint):Void;

	@:native('glBeginConditionalRenderNV')
	static function beginConditionalRenderNV(id:GLuint, mode:GLenum):Void;

	@:native('glEndConditionalRenderNV')
	static function endConditionalRenderNV():Void;

	@:native('glSubpixelPrecisionBiasNV')
	static function subpixelPrecisionBiasNV(xbits:GLuint, ybits:GLuint):Void;

	@:native('glConservativeRasterParameterfNV')
	static function conservativeRasterParameterfNV(pname:GLenum, value:GLfloat):Void;

	@:native('glConservativeRasterParameteriNV')
	static function conservativeRasterParameteriNV(pname:GLenum, param:GLint):Void;

	@:native('glCopyImageSubDataNV')
	static function copyImageSubDataNV(srcName:GLuint, srcTarget:GLenum, srcLevel:GLint, srcX:GLint, srcY:GLint, srcZ:GLint, dstName:GLuint, dstTarget:GLenum, dstLevel:GLint, dstX:GLint, dstY:GLint, dstZ:GLint, width:GLsizei, height:GLsizei, depth:GLsizei):Void;

	@:native('glDepthRangedNV')
	static function depthRangedNV(zNear:GLdouble, zFar:GLdouble):Void;

	@:native('glClearDepthdNV')
	static function clearDepthdNV(depth:GLdouble):Void;

	@:native('glDepthBoundsdNV')
	static function depthBoundsdNV(zmin:GLdouble, zmax:GLdouble):Void;

	@:native('glDrawTextureNV')
	static function drawTextureNV(texture:GLuint, sampler:GLuint, x0:GLfloat, y0:GLfloat, x1:GLfloat, y1:GLfloat, z:GLfloat, s0:GLfloat, t0:GLfloat, s1:GLfloat, t1:GLfloat):Void;

	@:native('glDrawVkImageNV')
	static function drawVkImageNV(vkImage:GLuint64, sampler:GLuint, x0:GLfloat, y0:GLfloat, x1:GLfloat, y1:GLfloat, z:GLfloat, s0:GLfloat, t0:GLfloat, s1:GLfloat, t1:GLfloat):Void;

	@:native('glGetVkProcAddrNV')
	static function getVkProcAddrNV(name:CastGLcharStar):GLVULKANPROCNV;

	@:native('glWaitVkSemaphoreNV')
	static function waitVkSemaphoreNV(vkSemaphore:GLuint64):Void;

	@:native('glSignalVkSemaphoreNV')
	static function signalVkSemaphoreNV(vkSemaphore:GLuint64):Void;

	@:native('glSignalVkFenceNV')
	static function signalVkFenceNV(vkFence:GLuint64):Void;

	@:native('glMapControlPointsNV')
	static function mapControlPointsNV(target:GLenum, index:GLuint, type:GLenum, ustride:GLsizei, vstride:GLsizei, uorder:GLint, vorder:GLint, packed:GLboolean, points:RawPointer<cpp.Void>):Void;

	@:native('glMapParameterivNV')
	static function mapParameterivNV(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glMapParameterfvNV')
	static function mapParameterfvNV(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetMapControlPointsNV')
	static function getMapControlPointsNV(target:GLenum, index:GLuint, type:GLenum, ustride:GLsizei, vstride:GLsizei, packed:GLboolean, points:RawPointer<cpp.Void>):Void;

	@:native('glGetMapParameterivNV')
	static function getMapParameterivNV(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetMapParameterfvNV')
	static function getMapParameterfvNV(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetMapAttribParameterivNV')
	static function getMapAttribParameterivNV(target:GLenum, index:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetMapAttribParameterfvNV')
	static function getMapAttribParameterfvNV(target:GLenum, index:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glEvalMapsNV')
	static function evalMapsNV(target:GLenum, mode:GLenum):Void;

	@:native('glGetMultisamplefvNV')
	static function getMultisamplefvNV(pname:GLenum, index:GLuint, val:RawPointer<GLfloat>):Void;

	@:native('glSampleMaskIndexedNV')
	static function sampleMaskIndexedNV(index:GLuint, mask:GLbitfield):Void;

	@:native('glTexRenderbufferNV')
	static function texRenderbufferNV(target:GLenum, renderbuffer:GLuint):Void;

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

	@:native('glCoverageModulationTableNV')
	static function coverageModulationTableNV(n:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glGetCoverageModulationTableNV')
	static function getCoverageModulationTableNV(bufSize:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glCoverageModulationNV')
	static function coverageModulationNV(components:GLenum):Void;

	@:native('glRenderbufferStorageMultisampleCoverageNV')
	static function renderbufferStorageMultisampleCoverageNV(target:GLenum, coverageSamples:GLsizei, colorSamples:GLsizei, internalformat:GLenum, width:GLsizei, height:GLsizei):Void;

	@:native('glProgramVertexLimitNV')
	static function programVertexLimitNV(target:GLenum, limit:GLint):Void;

	@:native('glFramebufferTextureEXT')
	static function framebufferTextureEXT(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint):Void;

	@:native('glFramebufferTextureFaceEXT')
	static function framebufferTextureFaceEXT(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint, face:GLenum):Void;

	@:native('glProgramLocalParameterI4iNV')
	static function programLocalParameterI4iNV(target:GLenum, index:GLuint, x:GLint, y:GLint, z:GLint, w:GLint):Void;

	@:native('glProgramLocalParameterI4ivNV')
	static function programLocalParameterI4ivNV(target:GLenum, index:GLuint, params:RawPointer<GLint>):Void;

	@:native('glProgramLocalParametersI4ivNV')
	static function programLocalParametersI4ivNV(target:GLenum, index:GLuint, count:GLsizei, params:RawPointer<GLint>):Void;

	@:native('glProgramLocalParameterI4uiNV')
	static function programLocalParameterI4uiNV(target:GLenum, index:GLuint, x:GLuint, y:GLuint, z:GLuint, w:GLuint):Void;

	@:native('glProgramLocalParameterI4uivNV')
	static function programLocalParameterI4uivNV(target:GLenum, index:GLuint, params:RawPointer<GLuint>):Void;

	@:native('glProgramLocalParametersI4uivNV')
	static function programLocalParametersI4uivNV(target:GLenum, index:GLuint, count:GLsizei, params:RawPointer<GLuint>):Void;

	@:native('glProgramEnvParameterI4iNV')
	static function programEnvParameterI4iNV(target:GLenum, index:GLuint, x:GLint, y:GLint, z:GLint, w:GLint):Void;

	@:native('glProgramEnvParameterI4ivNV')
	static function programEnvParameterI4ivNV(target:GLenum, index:GLuint, params:RawPointer<GLint>):Void;

	@:native('glProgramEnvParametersI4ivNV')
	static function programEnvParametersI4ivNV(target:GLenum, index:GLuint, count:GLsizei, params:RawPointer<GLint>):Void;

	@:native('glProgramEnvParameterI4uiNV')
	static function programEnvParameterI4uiNV(target:GLenum, index:GLuint, x:GLuint, y:GLuint, z:GLuint, w:GLuint):Void;

	@:native('glProgramEnvParameterI4uivNV')
	static function programEnvParameterI4uivNV(target:GLenum, index:GLuint, params:RawPointer<GLuint>):Void;

	@:native('glProgramEnvParametersI4uivNV')
	static function programEnvParametersI4uivNV(target:GLenum, index:GLuint, count:GLsizei, params:RawPointer<GLuint>):Void;

	@:native('glGetProgramLocalParameterIivNV')
	static function getProgramLocalParameterIivNV(target:GLenum, index:GLuint, params:RawPointer<GLint>):Void;

	@:native('glGetProgramLocalParameterIuivNV')
	static function getProgramLocalParameterIuivNV(target:GLenum, index:GLuint, params:RawPointer<GLuint>):Void;

	@:native('glGetProgramEnvParameterIivNV')
	static function getProgramEnvParameterIivNV(target:GLenum, index:GLuint, params:RawPointer<GLint>):Void;

	@:native('glGetProgramEnvParameterIuivNV')
	static function getProgramEnvParameterIuivNV(target:GLenum, index:GLuint, params:RawPointer<GLuint>):Void;

	@:native('glProgramSubroutineParametersuivNV')
	static function programSubroutineParametersuivNV(target:GLenum, count:GLsizei, params:RawPointer<GLuint>):Void;

	@:native('glGetProgramSubroutineParameteruivNV')
	static function getProgramSubroutineParameteruivNV(target:GLenum, index:GLuint, param:RawPointer<GLuint>):Void;

	@:native('glVertex2hNV')
	static function vertex2hNV(x:GLhalfNV, y:GLhalfNV):Void;

	@:native('glVertex2hvNV')
	static function vertex2hvNV(v:RawPointer<GLhalfNV>):Void;

	@:native('glVertex3hNV')
	static function vertex3hNV(x:GLhalfNV, y:GLhalfNV, z:GLhalfNV):Void;

	@:native('glVertex3hvNV')
	static function vertex3hvNV(v:RawPointer<GLhalfNV>):Void;

	@:native('glVertex4hNV')
	static function vertex4hNV(x:GLhalfNV, y:GLhalfNV, z:GLhalfNV, w:GLhalfNV):Void;

	@:native('glVertex4hvNV')
	static function vertex4hvNV(v:RawPointer<GLhalfNV>):Void;

	@:native('glNormal3hNV')
	static function normal3hNV(nx:GLhalfNV, ny:GLhalfNV, nz:GLhalfNV):Void;

	@:native('glNormal3hvNV')
	static function normal3hvNV(v:RawPointer<GLhalfNV>):Void;

	@:native('glColor3hNV')
	static function color3hNV(red:GLhalfNV, green:GLhalfNV, blue:GLhalfNV):Void;

	@:native('glColor3hvNV')
	static function color3hvNV(v:RawPointer<GLhalfNV>):Void;

	@:native('glColor4hNV')
	static function color4hNV(red:GLhalfNV, green:GLhalfNV, blue:GLhalfNV, alpha:GLhalfNV):Void;

	@:native('glColor4hvNV')
	static function color4hvNV(v:RawPointer<GLhalfNV>):Void;

	@:native('glTexCoord1hNV')
	static function texCoord1hNV(s:GLhalfNV):Void;

	@:native('glTexCoord1hvNV')
	static function texCoord1hvNV(v:RawPointer<GLhalfNV>):Void;

	@:native('glTexCoord2hNV')
	static function texCoord2hNV(s:GLhalfNV, t:GLhalfNV):Void;

	@:native('glTexCoord2hvNV')
	static function texCoord2hvNV(v:RawPointer<GLhalfNV>):Void;

	@:native('glTexCoord3hNV')
	static function texCoord3hNV(s:GLhalfNV, t:GLhalfNV, r:GLhalfNV):Void;

	@:native('glTexCoord3hvNV')
	static function texCoord3hvNV(v:RawPointer<GLhalfNV>):Void;

	@:native('glTexCoord4hNV')
	static function texCoord4hNV(s:GLhalfNV, t:GLhalfNV, r:GLhalfNV, q:GLhalfNV):Void;

	@:native('glTexCoord4hvNV')
	static function texCoord4hvNV(v:RawPointer<GLhalfNV>):Void;

	@:native('glMultiTexCoord1hNV')
	static function multiTexCoord1hNV(target:GLenum, s:GLhalfNV):Void;

	@:native('glMultiTexCoord1hvNV')
	static function multiTexCoord1hvNV(target:GLenum, v:RawPointer<GLhalfNV>):Void;

	@:native('glMultiTexCoord2hNV')
	static function multiTexCoord2hNV(target:GLenum, s:GLhalfNV, t:GLhalfNV):Void;

	@:native('glMultiTexCoord2hvNV')
	static function multiTexCoord2hvNV(target:GLenum, v:RawPointer<GLhalfNV>):Void;

	@:native('glMultiTexCoord3hNV')
	static function multiTexCoord3hNV(target:GLenum, s:GLhalfNV, t:GLhalfNV, r:GLhalfNV):Void;

	@:native('glMultiTexCoord3hvNV')
	static function multiTexCoord3hvNV(target:GLenum, v:RawPointer<GLhalfNV>):Void;

	@:native('glMultiTexCoord4hNV')
	static function multiTexCoord4hNV(target:GLenum, s:GLhalfNV, t:GLhalfNV, r:GLhalfNV, q:GLhalfNV):Void;

	@:native('glMultiTexCoord4hvNV')
	static function multiTexCoord4hvNV(target:GLenum, v:RawPointer<GLhalfNV>):Void;

	@:native('glVertexAttrib1hNV')
	static function vertexAttrib1hNV(index:GLuint, x:GLhalfNV):Void;

	@:native('glVertexAttrib1hvNV')
	static function vertexAttrib1hvNV(index:GLuint, v:RawPointer<GLhalfNV>):Void;

	@:native('glVertexAttrib2hNV')
	static function vertexAttrib2hNV(index:GLuint, x:GLhalfNV, y:GLhalfNV):Void;

	@:native('glVertexAttrib2hvNV')
	static function vertexAttrib2hvNV(index:GLuint, v:RawPointer<GLhalfNV>):Void;

	@:native('glVertexAttrib3hNV')
	static function vertexAttrib3hNV(index:GLuint, x:GLhalfNV, y:GLhalfNV, z:GLhalfNV):Void;

	@:native('glVertexAttrib3hvNV')
	static function vertexAttrib3hvNV(index:GLuint, v:RawPointer<GLhalfNV>):Void;

	@:native('glVertexAttrib4hNV')
	static function vertexAttrib4hNV(index:GLuint, x:GLhalfNV, y:GLhalfNV, z:GLhalfNV, w:GLhalfNV):Void;

	@:native('glVertexAttrib4hvNV')
	static function vertexAttrib4hvNV(index:GLuint, v:RawPointer<GLhalfNV>):Void;

	@:native('glVertexAttribs1hvNV')
	static function vertexAttribs1hvNV(index:GLuint, n:GLsizei, v:RawPointer<GLhalfNV>):Void;

	@:native('glVertexAttribs2hvNV')
	static function vertexAttribs2hvNV(index:GLuint, n:GLsizei, v:RawPointer<GLhalfNV>):Void;

	@:native('glVertexAttribs3hvNV')
	static function vertexAttribs3hvNV(index:GLuint, n:GLsizei, v:RawPointer<GLhalfNV>):Void;

	@:native('glVertexAttribs4hvNV')
	static function vertexAttribs4hvNV(index:GLuint, n:GLsizei, v:RawPointer<GLhalfNV>):Void;

	@:native('glGetInternalformatSampleivNV')
	static function getInternalformatSampleivNV(target:GLenum, internalformat:GLenum, samples:GLsizei, pname:GLenum, count:GLsizei, params:RawPointer<GLint>):Void;

	@:native('glRenderGpuMaskNV')
	static function renderGpuMaskNV(mask:GLbitfield):Void;

	@:native('glMulticastBufferSubDataNV')
	static function multicastBufferSubDataNV(gpuMask:GLbitfield, buffer:GLuint, offset:GLintptr, size:GLsizeiptr, data:RawPointer<cpp.Void>):Void;

	@:native('glMulticastCopyBufferSubDataNV')
	static function multicastCopyBufferSubDataNV(readGpu:GLuint, writeGpuMask:GLbitfield, readBuffer:GLuint, writeBuffer:GLuint, readOffset:GLintptr, writeOffset:GLintptr, size:GLsizeiptr):Void;

	@:native('glMulticastCopyImageSubDataNV')
	static function multicastCopyImageSubDataNV(srcGpu:GLuint, dstGpuMask:GLbitfield, srcName:GLuint, srcTarget:GLenum, srcLevel:GLint, srcX:GLint, srcY:GLint, srcZ:GLint, dstName:GLuint, dstTarget:GLenum, dstLevel:GLint, dstX:GLint, dstY:GLint, dstZ:GLint, srcWidth:GLsizei, srcHeight:GLsizei, srcDepth:GLsizei):Void;

	@:native('glMulticastBlitFramebufferNV')
	static function multicastBlitFramebufferNV(srcGpu:GLuint, dstGpu:GLuint, srcX0:GLint, srcY0:GLint, srcX1:GLint, srcY1:GLint, dstX0:GLint, dstY0:GLint, dstX1:GLint, dstY1:GLint, mask:GLbitfield, filter:GLenum):Void;

	@:native('glMulticastFramebufferSampleLocationsfvNV')
	static function multicastFramebufferSampleLocationsfvNV(gpu:GLuint, framebuffer:GLuint, start:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glMulticastBarrierNV')
	static function multicastBarrierNV():Void;

	@:native('glMulticastWaitSyncNV')
	static function multicastWaitSyncNV(signalGpu:GLuint, waitGpuMask:GLbitfield):Void;

	@:native('glMulticastGetQueryObjectivNV')
	static function multicastGetQueryObjectivNV(gpu:GLuint, id:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glMulticastGetQueryObjectuivNV')
	static function multicastGetQueryObjectuivNV(gpu:GLuint, id:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glMulticastGetQueryObjecti64vNV')
	static function multicastGetQueryObjecti64vNV(gpu:GLuint, id:GLuint, pname:GLenum, params:RawPointer<GLint64>):Void;

	@:native('glMulticastGetQueryObjectui64vNV')
	static function multicastGetQueryObjectui64vNV(gpu:GLuint, id:GLuint, pname:GLenum, params:RawPointer<GLuint64>):Void;

	@:native('glUploadGpuMaskNVX')
	static function uploadGpuMaskNVX(mask:GLbitfield):Void;

	@:native('glMulticastViewportArrayvNVX')
	static function multicastViewportArrayvNVX(gpu:GLuint, first:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glMulticastViewportPositionWScaleNVX')
	static function multicastViewportPositionWScaleNVX(gpu:GLuint, index:GLuint, xcoeff:GLfloat, ycoeff:GLfloat):Void;

	@:native('glMulticastScissorArrayvNVX')
	static function multicastScissorArrayvNVX(gpu:GLuint, first:GLuint, count:GLsizei, v:RawPointer<GLint>):Void;

	@:native('glAsyncCopyBufferSubDataNVX')
	static function asyncCopyBufferSubDataNVX(waitSemaphoreCount:GLsizei, waitSemaphoreArray:RawPointer<GLuint>, fenceValueArray:RawPointer<GLuint64>, readGpu:GLuint, writeGpuMask:GLbitfield, readBuffer:GLuint, writeBuffer:GLuint, readOffset:GLintptr, writeOffset:GLintptr, size:GLsizeiptr, signalSemaphoreCount:GLsizei, signalSemaphoreArray:RawPointer<GLuint>, signalValueArray:RawPointer<GLuint64>):GLuint;

	@:native('glAsyncCopyImageSubDataNVX')
	static function asyncCopyImageSubDataNVX(waitSemaphoreCount:GLsizei, waitSemaphoreArray:RawPointer<GLuint>, waitValueArray:RawPointer<GLuint64>, srcGpu:GLuint, dstGpuMask:GLbitfield, srcName:GLuint, srcTarget:GLenum, srcLevel:GLint, srcX:GLint, srcY:GLint, srcZ:GLint, dstName:GLuint, dstTarget:GLenum, dstLevel:GLint, dstX:GLint, dstY:GLint, dstZ:GLint, srcWidth:GLsizei, srcHeight:GLsizei, srcDepth:GLsizei, signalSemaphoreCount:GLsizei, signalSemaphoreArray:RawPointer<GLuint>, signalValueArray:RawPointer<GLuint64>):GLuint;

	@:native('glCreateProgressFenceNVX')
	static function createProgressFenceNVX():GLuint;

	@:native('glSignalSemaphoreui64NVX')
	static function signalSemaphoreui64NVX(signalGpu:GLuint, fenceObjectCount:GLsizei, semaphoreArray:RawPointer<GLuint>, fenceValueArray:RawPointer<GLuint64>):Void;

	@:native('glWaitSemaphoreui64NVX')
	static function waitSemaphoreui64NVX(waitGpu:GLuint, fenceObjectCount:GLsizei, semaphoreArray:RawPointer<GLuint>, fenceValueArray:RawPointer<GLuint64>):Void;

	@:native('glClientWaitSemaphoreui64NVX')
	static function clientWaitSemaphoreui64NVX(fenceObjectCount:GLsizei, semaphoreArray:RawPointer<GLuint>, fenceValueArray:RawPointer<GLuint64>):Void;

	@:native('glGetMemoryObjectDetachedResourcesuivNV')
	static function getMemoryObjectDetachedResourcesuivNV(memory:GLuint, pname:GLenum, first:GLint, count:GLsizei, params:RawPointer<GLuint>):Void;

	@:native('glResetMemoryObjectParameterNV')
	static function resetMemoryObjectParameterNV(memory:GLuint, pname:GLenum):Void;

	@:native('glTexAttachMemoryNV')
	static function texAttachMemoryNV(target:GLenum, memory:GLuint, offset:GLuint64):Void;

	@:native('glBufferAttachMemoryNV')
	static function bufferAttachMemoryNV(target:GLenum, memory:GLuint, offset:GLuint64):Void;

	@:native('glBufferPageCommitmentMemNV')
	static function bufferPageCommitmentMemNV(target:GLenum, offset:GLintptr, size:GLsizeiptr, memory:GLuint, memOffset:GLuint64, commit:GLboolean):Void;

	@:native('glTexPageCommitmentMemNV')
	static function texPageCommitmentMemNV(target:GLenum, layer:GLint, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, memory:GLuint, offset:GLuint64, commit:GLboolean):Void;

	@:native('glDrawMeshTasksNV')
	static function drawMeshTasksNV(first:GLuint, count:GLuint):Void;

	@:native('glDrawMeshTasksIndirectNV')
	static function drawMeshTasksIndirectNV(indirect:GLintptr):Void;

	@:native('glMultiDrawMeshTasksIndirectNV')
	static function multiDrawMeshTasksIndirectNV(indirect:GLintptr, drawcount:GLsizei, stride:GLsizei):Void;

	@:native('glMultiDrawMeshTasksIndirectCountNV')
	static function multiDrawMeshTasksIndirectCountNV(indirect:GLintptr, drawcount:GLintptr, maxdrawcount:GLsizei, stride:GLsizei):Void;

	@:native('glGenOcclusionQueriesNV')
	static function genOcclusionQueriesNV(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glDeleteOcclusionQueriesNV')
	static function deleteOcclusionQueriesNV(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glIsOcclusionQueryNV')
	static function isOcclusionQueryNV(id:GLuint):GLboolean;

	@:native('glBeginOcclusionQueryNV')
	static function beginOcclusionQueryNV(id:GLuint):Void;

	@:native('glEndOcclusionQueryNV')
	static function endOcclusionQueryNV():Void;

	@:native('glGetOcclusionQueryivNV')
	static function getOcclusionQueryivNV(id:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetOcclusionQueryuivNV')
	static function getOcclusionQueryuivNV(id:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glProgramBufferParametersfvNV')
	static function programBufferParametersfvNV(target:GLenum, bindingIndex:GLuint, wordIndex:GLuint, count:GLsizei, params:RawPointer<GLfloat>):Void;

	@:native('glProgramBufferParametersIivNV')
	static function programBufferParametersIivNV(target:GLenum, bindingIndex:GLuint, wordIndex:GLuint, count:GLsizei, params:RawPointer<GLint>):Void;

	@:native('glProgramBufferParametersIuivNV')
	static function programBufferParametersIuivNV(target:GLenum, bindingIndex:GLuint, wordIndex:GLuint, count:GLsizei, params:RawPointer<GLuint>):Void;

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

	@:native('glPixelDataRangeNV')
	static function pixelDataRangeNV(target:GLenum, length:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glFlushPixelDataRangeNV')
	static function flushPixelDataRangeNV(target:GLenum):Void;

	@:native('glPointParameteriNV')
	static function pointParameteriNV(pname:GLenum, param:GLint):Void;

	@:native('glPointParameterivNV')
	static function pointParameterivNV(pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glPresentFrameKeyedNV')
	static function presentFrameKeyedNV(video_slot:GLuint, minPresentTime:GLuint64EXT, beginPresentTimeId:GLuint, presentDurationId:GLuint, type:GLenum, target0:GLenum, fill0:GLuint, key0:GLuint, target1:GLenum, fill1:GLuint, key1:GLuint):Void;

	@:native('glPresentFrameDualFillNV')
	static function presentFrameDualFillNV(video_slot:GLuint, minPresentTime:GLuint64EXT, beginPresentTimeId:GLuint, presentDurationId:GLuint, type:GLenum, target0:GLenum, fill0:GLuint, target1:GLenum, fill1:GLuint, target2:GLenum, fill2:GLuint, target3:GLenum, fill3:GLuint):Void;

	@:native('glGetVideoivNV')
	static function getVideoivNV(video_slot:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetVideouivNV')
	static function getVideouivNV(video_slot:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glGetVideoi64vNV')
	static function getVideoi64vNV(video_slot:GLuint, pname:GLenum, params:RawPointer<GLint64EXT>):Void;

	@:native('glGetVideoui64vNV')
	static function getVideoui64vNV(video_slot:GLuint, pname:GLenum, params:RawPointer<GLuint64EXT>):Void;

	@:native('glPrimitiveRestartNV')
	static function primitiveRestartNV():Void;

	@:native('glPrimitiveRestartIndexNV')
	static function primitiveRestartIndexNV(index:GLuint):Void;

	@:native('glQueryResourceNV')
	static function queryResourceNV(queryType:GLenum, tagId:GLint, count:GLuint, buffer:RawPointer<GLint>):GLint;

	@:native('glGenQueryResourceTagNV')
	static function genQueryResourceTagNV(n:GLsizei, tagIds:RawPointer<GLint>):Void;

	@:native('glDeleteQueryResourceTagNV')
	static function deleteQueryResourceTagNV(n:GLsizei, tagIds:RawPointer<GLint>):Void;

	@:native('glQueryResourceTagNV')
	static function queryResourceTagNV(tagId:GLint, tagString:CastGLcharStar):Void;

	@:native('glCombinerParameterfvNV')
	static function combinerParameterfvNV(pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glCombinerParameterfNV')
	static function combinerParameterfNV(pname:GLenum, param:GLfloat):Void;

	@:native('glCombinerParameterivNV')
	static function combinerParameterivNV(pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glCombinerParameteriNV')
	static function combinerParameteriNV(pname:GLenum, param:GLint):Void;

	@:native('glCombinerInputNV')
	static function combinerInputNV(stage:GLenum, portion:GLenum, variable:GLenum, input:GLenum, mapping:GLenum, componentUsage:GLenum):Void;

	@:native('glCombinerOutputNV')
	static function combinerOutputNV(stage:GLenum, portion:GLenum, abOutput:GLenum, cdOutput:GLenum, sumOutput:GLenum, scale:GLenum, bias:GLenum, abDotProduct:GLboolean, cdDotProduct:GLboolean, muxSum:GLboolean):Void;

	@:native('glFinalCombinerInputNV')
	static function finalCombinerInputNV(variable:GLenum, input:GLenum, mapping:GLenum, componentUsage:GLenum):Void;

	@:native('glGetCombinerInputParameterfvNV')
	static function getCombinerInputParameterfvNV(stage:GLenum, portion:GLenum, variable:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetCombinerInputParameterivNV')
	static function getCombinerInputParameterivNV(stage:GLenum, portion:GLenum, variable:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetCombinerOutputParameterfvNV')
	static function getCombinerOutputParameterfvNV(stage:GLenum, portion:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetCombinerOutputParameterivNV')
	static function getCombinerOutputParameterivNV(stage:GLenum, portion:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetFinalCombinerInputParameterfvNV')
	static function getFinalCombinerInputParameterfvNV(variable:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetFinalCombinerInputParameterivNV')
	static function getFinalCombinerInputParameterivNV(variable:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glCombinerStageParameterfvNV')
	static function combinerStageParameterfvNV(stage:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetCombinerStageParameterfvNV')
	static function getCombinerStageParameterfvNV(stage:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

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

	@:native('glMakeBufferResidentNV')
	static function makeBufferResidentNV(target:GLenum, access:GLenum):Void;

	@:native('glMakeBufferNonResidentNV')
	static function makeBufferNonResidentNV(target:GLenum):Void;

	@:native('glIsBufferResidentNV')
	static function isBufferResidentNV(target:GLenum):GLboolean;

	@:native('glMakeNamedBufferResidentNV')
	static function makeNamedBufferResidentNV(buffer:GLuint, access:GLenum):Void;

	@:native('glMakeNamedBufferNonResidentNV')
	static function makeNamedBufferNonResidentNV(buffer:GLuint):Void;

	@:native('glIsNamedBufferResidentNV')
	static function isNamedBufferResidentNV(buffer:GLuint):GLboolean;

	@:native('glGetBufferParameterui64vNV')
	static function getBufferParameterui64vNV(target:GLenum, pname:GLenum, params:RawPointer<GLuint64EXT>):Void;

	@:native('glGetNamedBufferParameterui64vNV')
	static function getNamedBufferParameterui64vNV(buffer:GLuint, pname:GLenum, params:RawPointer<GLuint64EXT>):Void;

	@:native('glGetIntegerui64vNV')
	static function getIntegerui64vNV(value:GLenum, result:RawPointer<GLuint64EXT>):Void;

	@:native('glUniformui64NV')
	static function uniformui64NV(location:GLint, value:GLuint64EXT):Void;

	@:native('glUniformui64vNV')
	static function uniformui64vNV(location:GLint, count:GLsizei, value:RawPointer<GLuint64EXT>):Void;

	@:native('glProgramUniformui64NV')
	static function programUniformui64NV(program:GLuint, location:GLint, value:GLuint64EXT):Void;

	@:native('glProgramUniformui64vNV')
	static function programUniformui64vNV(program:GLuint, location:GLint, count:GLsizei, value:RawPointer<GLuint64EXT>):Void;

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

	@:native('glTexImage2DMultisampleCoverageNV')
	static function texImage2DMultisampleCoverageNV(target:GLenum, coverageSamples:GLsizei, colorSamples:GLsizei, internalFormat:GLint, width:GLsizei, height:GLsizei, fixedSampleLocations:GLboolean):Void;

	@:native('glTexImage3DMultisampleCoverageNV')
	static function texImage3DMultisampleCoverageNV(target:GLenum, coverageSamples:GLsizei, colorSamples:GLsizei, internalFormat:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, fixedSampleLocations:GLboolean):Void;

	@:native('glBeginTransformFeedbackNV')
	static function beginTransformFeedbackNV(primitiveMode:GLenum):Void;

	@:native('glEndTransformFeedbackNV')
	static function endTransformFeedbackNV():Void;

	@:native('glTransformFeedbackAttribsNV')
	static function transformFeedbackAttribsNV(count:GLsizei, attribs:RawPointer<GLint>, bufferMode:GLenum):Void;

	@:native('glBindBufferRangeNV')
	static function bindBufferRangeNV(target:GLenum, index:GLuint, buffer:GLuint, offset:GLintptr, size:GLsizeiptr):Void;

	@:native('glBindBufferOffsetNV')
	static function bindBufferOffsetNV(target:GLenum, index:GLuint, buffer:GLuint, offset:GLintptr):Void;

	@:native('glBindBufferBaseNV')
	static function bindBufferBaseNV(target:GLenum, index:GLuint, buffer:GLuint):Void;

	@:native('glTransformFeedbackVaryingsNV')
	static function transformFeedbackVaryingsNV(program:GLuint, count:GLsizei, locations:RawPointer<GLint>, bufferMode:GLenum):Void;

	@:native('glActiveVaryingNV')
	static function activeVaryingNV(program:GLuint, name:CastGLcharStar):Void;

	@:native('glGetVaryingLocationNV')
	static function getVaryingLocationNV(program:GLuint, name:CastGLcharStar):GLint;

	@:native('glGetActiveVaryingNV')
	static function getActiveVaryingNV(program:GLuint, index:GLuint, bufSize:GLsizei, length:RawPointer<GLsizei>, size:RawPointer<GLsizei>, type:RawPointer<GLenum>, name:CastGLcharStar):Void;

	@:native('glGetTransformFeedbackVaryingNV')
	static function getTransformFeedbackVaryingNV(program:GLuint, index:GLuint, location:RawPointer<GLint>):Void;

	@:native('glBindTransformFeedbackNV')
	static function bindTransformFeedbackNV(target:GLenum, id:GLuint):Void;

	@:native('glDeleteTransformFeedbacksNV')
	static function deleteTransformFeedbacksNV(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glGenTransformFeedbacksNV')
	static function genTransformFeedbacksNV(n:GLsizei, ids:RawPointer<GLuint>):Void;

	@:native('glIsTransformFeedbackNV')
	static function isTransformFeedbackNV(id:GLuint):GLboolean;

	@:native('glPauseTransformFeedbackNV')
	static function pauseTransformFeedbackNV():Void;

	@:native('glResumeTransformFeedbackNV')
	static function resumeTransformFeedbackNV():Void;

	@:native('glDrawTransformFeedbackNV')
	static function drawTransformFeedbackNV(mode:GLenum, id:GLuint):Void;

	@:native('glVDPAUInitNV')
	static function vDPAUInitNV(vdpDevice:RawPointer<cpp.Void>, getProcAddress:RawPointer<cpp.Void>):Void;

	@:native('glVDPAUFiniNV')
	static function vDPAUFiniNV():Void;

	@:native('glVDPAURegisterVideoSurfaceNV')
	static function vDPAURegisterVideoSurfaceNV(vdpSurface:RawPointer<cpp.Void>, target:GLenum, numTextureNames:GLsizei, textureNames:RawPointer<GLuint>):GLvdpauSurfaceNV;

	@:native('glVDPAURegisterOutputSurfaceNV')
	static function vDPAURegisterOutputSurfaceNV(vdpSurface:RawPointer<cpp.Void>, target:GLenum, numTextureNames:GLsizei, textureNames:RawPointer<GLuint>):GLvdpauSurfaceNV;

	@:native('glVDPAUIsSurfaceNV')
	static function vDPAUIsSurfaceNV(surface:GLvdpauSurfaceNV):GLboolean;

	@:native('glVDPAUUnregisterSurfaceNV')
	static function vDPAUUnregisterSurfaceNV(surface:GLvdpauSurfaceNV):Void;

	@:native('glVDPAUGetSurfaceivNV')
	static function vDPAUGetSurfaceivNV(surface:GLvdpauSurfaceNV, pname:GLenum, count:GLsizei, length:RawPointer<GLsizei>, values:RawPointer<GLint>):Void;

	@:native('glVDPAUSurfaceAccessNV')
	static function vDPAUSurfaceAccessNV(surface:GLvdpauSurfaceNV, access:GLenum):Void;

	@:native('glVDPAUMapSurfacesNV')
	static function vDPAUMapSurfacesNV(numSurfaces:GLsizei, surfaces:RawPointer<GLvdpauSurfaceNV>):Void;

	@:native('glVDPAUUnmapSurfacesNV')
	static function vDPAUUnmapSurfacesNV(numSurface:GLsizei, surfaces:RawPointer<GLvdpauSurfaceNV>):Void;

	@:native('glVDPAURegisterVideoSurfaceWithPictureStructureNV')
	static function vDPAURegisterVideoSurfaceWithPictureStructureNV(vdpSurface:RawPointer<cpp.Void>, target:GLenum, numTextureNames:GLsizei, textureNames:RawPointer<GLuint>, isFrameStructure:GLboolean):GLvdpauSurfaceNV;

	@:native('glFlushVertexArrayRangeNV')
	static function flushVertexArrayRangeNV():Void;

	@:native('glVertexArrayRangeNV')
	static function vertexArrayRangeNV(length:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glVertexAttribL1i64NV')
	static function vertexAttribL1i64NV(index:GLuint, x:GLint64EXT):Void;

	@:native('glVertexAttribL2i64NV')
	static function vertexAttribL2i64NV(index:GLuint, x:GLint64EXT, y:GLint64EXT):Void;

	@:native('glVertexAttribL3i64NV')
	static function vertexAttribL3i64NV(index:GLuint, x:GLint64EXT, y:GLint64EXT, z:GLint64EXT):Void;

	@:native('glVertexAttribL4i64NV')
	static function vertexAttribL4i64NV(index:GLuint, x:GLint64EXT, y:GLint64EXT, z:GLint64EXT, w:GLint64EXT):Void;

	@:native('glVertexAttribL1i64vNV')
	static function vertexAttribL1i64vNV(index:GLuint, v:RawPointer<GLint64EXT>):Void;

	@:native('glVertexAttribL2i64vNV')
	static function vertexAttribL2i64vNV(index:GLuint, v:RawPointer<GLint64EXT>):Void;

	@:native('glVertexAttribL3i64vNV')
	static function vertexAttribL3i64vNV(index:GLuint, v:RawPointer<GLint64EXT>):Void;

	@:native('glVertexAttribL4i64vNV')
	static function vertexAttribL4i64vNV(index:GLuint, v:RawPointer<GLint64EXT>):Void;

	@:native('glVertexAttribL1ui64NV')
	static function vertexAttribL1ui64NV(index:GLuint, x:GLuint64EXT):Void;

	@:native('glVertexAttribL2ui64NV')
	static function vertexAttribL2ui64NV(index:GLuint, x:GLuint64EXT, y:GLuint64EXT):Void;

	@:native('glVertexAttribL3ui64NV')
	static function vertexAttribL3ui64NV(index:GLuint, x:GLuint64EXT, y:GLuint64EXT, z:GLuint64EXT):Void;

	@:native('glVertexAttribL4ui64NV')
	static function vertexAttribL4ui64NV(index:GLuint, x:GLuint64EXT, y:GLuint64EXT, z:GLuint64EXT, w:GLuint64EXT):Void;

	@:native('glVertexAttribL1ui64vNV')
	static function vertexAttribL1ui64vNV(index:GLuint, v:RawPointer<GLuint64EXT>):Void;

	@:native('glVertexAttribL2ui64vNV')
	static function vertexAttribL2ui64vNV(index:GLuint, v:RawPointer<GLuint64EXT>):Void;

	@:native('glVertexAttribL3ui64vNV')
	static function vertexAttribL3ui64vNV(index:GLuint, v:RawPointer<GLuint64EXT>):Void;

	@:native('glVertexAttribL4ui64vNV')
	static function vertexAttribL4ui64vNV(index:GLuint, v:RawPointer<GLuint64EXT>):Void;

	@:native('glGetVertexAttribLi64vNV')
	static function getVertexAttribLi64vNV(index:GLuint, pname:GLenum, params:RawPointer<GLint64EXT>):Void;

	@:native('glGetVertexAttribLui64vNV')
	static function getVertexAttribLui64vNV(index:GLuint, pname:GLenum, params:RawPointer<GLuint64EXT>):Void;

	@:native('glVertexAttribLFormatNV')
	static function vertexAttribLFormatNV(index:GLuint, size:GLint, type:GLenum, stride:GLsizei):Void;

	@:native('glBufferAddressRangeNV')
	static function bufferAddressRangeNV(pname:GLenum, index:GLuint, address:GLuint64EXT, length:GLsizeiptr):Void;

	@:native('glVertexFormatNV')
	static function vertexFormatNV(size:GLint, type:GLenum, stride:GLsizei):Void;

	@:native('glNormalFormatNV')
	static function normalFormatNV(type:GLenum, stride:GLsizei):Void;

	@:native('glColorFormatNV')
	static function colorFormatNV(size:GLint, type:GLenum, stride:GLsizei):Void;

	@:native('glIndexFormatNV')
	static function indexFormatNV(type:GLenum, stride:GLsizei):Void;

	@:native('glTexCoordFormatNV')
	static function texCoordFormatNV(size:GLint, type:GLenum, stride:GLsizei):Void;

	@:native('glEdgeFlagFormatNV')
	static function edgeFlagFormatNV(stride:GLsizei):Void;

	@:native('glSecondaryColorFormatNV')
	static function secondaryColorFormatNV(size:GLint, type:GLenum, stride:GLsizei):Void;

	@:native('glFogCoordFormatNV')
	static function fogCoordFormatNV(type:GLenum, stride:GLsizei):Void;

	@:native('glVertexAttribFormatNV')
	static function vertexAttribFormatNV(index:GLuint, size:GLint, type:GLenum, normalized:GLboolean, stride:GLsizei):Void;

	@:native('glVertexAttribIFormatNV')
	static function vertexAttribIFormatNV(index:GLuint, size:GLint, type:GLenum, stride:GLsizei):Void;

	@:native('glGetIntegerui64i_vNV')
	static function getIntegerui64i_vNV(value:GLenum, index:GLuint, result:RawPointer<GLuint64EXT>):Void;

	@:native('glAreProgramsResidentNV')
	static function areProgramsResidentNV(n:GLsizei, programs:RawPointer<GLuint>, residences:RawPointer<GLboolean>):GLboolean;

	@:native('glBindProgramNV')
	static function bindProgramNV(target:GLenum, id:GLuint):Void;

	@:native('glDeleteProgramsNV')
	static function deleteProgramsNV(n:GLsizei, programs:RawPointer<GLuint>):Void;

	@:native('glExecuteProgramNV')
	static function executeProgramNV(target:GLenum, id:GLuint, params:RawPointer<GLfloat>):Void;

	@:native('glGenProgramsNV')
	static function genProgramsNV(n:GLsizei, programs:RawPointer<GLuint>):Void;

	@:native('glGetProgramParameterdvNV')
	static function getProgramParameterdvNV(target:GLenum, index:GLuint, pname:GLenum, params:RawPointer<GLdouble>):Void;

	@:native('glGetProgramParameterfvNV')
	static function getProgramParameterfvNV(target:GLenum, index:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetProgramivNV')
	static function getProgramivNV(id:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetProgramStringNV')
	static function getProgramStringNV(id:GLuint, pname:GLenum, program:RawPointer<GLubyte>):Void;

	@:native('glGetTrackMatrixivNV')
	static function getTrackMatrixivNV(target:GLenum, address:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetVertexAttribdvNV')
	static function getVertexAttribdvNV(index:GLuint, pname:GLenum, params:RawPointer<GLdouble>):Void;

	@:native('glGetVertexAttribfvNV')
	static function getVertexAttribfvNV(index:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetVertexAttribivNV')
	static function getVertexAttribivNV(index:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetVertexAttribPointervNV')
	static function getVertexAttribPointervNV(index:GLuint, pname:GLenum, pointer:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glIsProgramNV')
	static function isProgramNV(id:GLuint):GLboolean;

	@:native('glLoadProgramNV')
	static function loadProgramNV(target:GLenum, id:GLuint, len:GLsizei, program:RawPointer<GLubyte>):Void;

	@:native('glProgramParameter4dNV')
	static function programParameter4dNV(target:GLenum, index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glProgramParameter4dvNV')
	static function programParameter4dvNV(target:GLenum, index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glProgramParameter4fNV')
	static function programParameter4fNV(target:GLenum, index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glProgramParameter4fvNV')
	static function programParameter4fvNV(target:GLenum, index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glProgramParameters4dvNV')
	static function programParameters4dvNV(target:GLenum, index:GLuint, count:GLsizei, v:RawPointer<GLdouble>):Void;

	@:native('glProgramParameters4fvNV')
	static function programParameters4fvNV(target:GLenum, index:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glRequestResidentProgramsNV')
	static function requestResidentProgramsNV(n:GLsizei, programs:RawPointer<GLuint>):Void;

	@:native('glTrackMatrixNV')
	static function trackMatrixNV(target:GLenum, address:GLuint, matrix:GLenum, transform:GLenum):Void;

	@:native('glVertexAttribPointerNV')
	static function vertexAttribPointerNV(index:GLuint, fsize:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glVertexAttrib1dNV')
	static function vertexAttrib1dNV(index:GLuint, x:GLdouble):Void;

	@:native('glVertexAttrib1dvNV')
	static function vertexAttrib1dvNV(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttrib1fNV')
	static function vertexAttrib1fNV(index:GLuint, x:GLfloat):Void;

	@:native('glVertexAttrib1fvNV')
	static function vertexAttrib1fvNV(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib1sNV')
	static function vertexAttrib1sNV(index:GLuint, x:GLshort):Void;

	@:native('glVertexAttrib1svNV')
	static function vertexAttrib1svNV(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib2dNV')
	static function vertexAttrib2dNV(index:GLuint, x:GLdouble, y:GLdouble):Void;

	@:native('glVertexAttrib2dvNV')
	static function vertexAttrib2dvNV(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttrib2fNV')
	static function vertexAttrib2fNV(index:GLuint, x:GLfloat, y:GLfloat):Void;

	@:native('glVertexAttrib2fvNV')
	static function vertexAttrib2fvNV(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib2sNV')
	static function vertexAttrib2sNV(index:GLuint, x:GLshort, y:GLshort):Void;

	@:native('glVertexAttrib2svNV')
	static function vertexAttrib2svNV(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib3dNV')
	static function vertexAttrib3dNV(index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble):Void;

	@:native('glVertexAttrib3dvNV')
	static function vertexAttrib3dvNV(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttrib3fNV')
	static function vertexAttrib3fNV(index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glVertexAttrib3fvNV')
	static function vertexAttrib3fvNV(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib3sNV')
	static function vertexAttrib3sNV(index:GLuint, x:GLshort, y:GLshort, z:GLshort):Void;

	@:native('glVertexAttrib3svNV')
	static function vertexAttrib3svNV(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib4dNV')
	static function vertexAttrib4dNV(index:GLuint, x:GLdouble, y:GLdouble, z:GLdouble, w:GLdouble):Void;

	@:native('glVertexAttrib4dvNV')
	static function vertexAttrib4dvNV(index:GLuint, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttrib4fNV')
	static function vertexAttrib4fNV(index:GLuint, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glVertexAttrib4fvNV')
	static function vertexAttrib4fvNV(index:GLuint, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttrib4sNV')
	static function vertexAttrib4sNV(index:GLuint, x:GLshort, y:GLshort, z:GLshort, w:GLshort):Void;

	@:native('glVertexAttrib4svNV')
	static function vertexAttrib4svNV(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttrib4ubNV')
	static function vertexAttrib4ubNV(index:GLuint, x:GLubyte, y:GLubyte, z:GLubyte, w:GLubyte):Void;

	@:native('glVertexAttrib4ubvNV')
	static function vertexAttrib4ubvNV(index:GLuint, v:RawPointer<GLubyte>):Void;

	@:native('glVertexAttribs1dvNV')
	static function vertexAttribs1dvNV(index:GLuint, count:GLsizei, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttribs1fvNV')
	static function vertexAttribs1fvNV(index:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttribs1svNV')
	static function vertexAttribs1svNV(index:GLuint, count:GLsizei, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttribs2dvNV')
	static function vertexAttribs2dvNV(index:GLuint, count:GLsizei, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttribs2fvNV')
	static function vertexAttribs2fvNV(index:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttribs2svNV')
	static function vertexAttribs2svNV(index:GLuint, count:GLsizei, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttribs3dvNV')
	static function vertexAttribs3dvNV(index:GLuint, count:GLsizei, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttribs3fvNV')
	static function vertexAttribs3fvNV(index:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttribs3svNV')
	static function vertexAttribs3svNV(index:GLuint, count:GLsizei, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttribs4dvNV')
	static function vertexAttribs4dvNV(index:GLuint, count:GLsizei, v:RawPointer<GLdouble>):Void;

	@:native('glVertexAttribs4fvNV')
	static function vertexAttribs4fvNV(index:GLuint, count:GLsizei, v:RawPointer<GLfloat>):Void;

	@:native('glVertexAttribs4svNV')
	static function vertexAttribs4svNV(index:GLuint, count:GLsizei, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttribs4ubvNV')
	static function vertexAttribs4ubvNV(index:GLuint, count:GLsizei, v:RawPointer<GLubyte>):Void;

	@:native('glVertexAttribI1iEXT')
	static function vertexAttribI1iEXT(index:GLuint, x:GLint):Void;

	@:native('glVertexAttribI2iEXT')
	static function vertexAttribI2iEXT(index:GLuint, x:GLint, y:GLint):Void;

	@:native('glVertexAttribI3iEXT')
	static function vertexAttribI3iEXT(index:GLuint, x:GLint, y:GLint, z:GLint):Void;

	@:native('glVertexAttribI4iEXT')
	static function vertexAttribI4iEXT(index:GLuint, x:GLint, y:GLint, z:GLint, w:GLint):Void;

	@:native('glVertexAttribI1uiEXT')
	static function vertexAttribI1uiEXT(index:GLuint, x:GLuint):Void;

	@:native('glVertexAttribI2uiEXT')
	static function vertexAttribI2uiEXT(index:GLuint, x:GLuint, y:GLuint):Void;

	@:native('glVertexAttribI3uiEXT')
	static function vertexAttribI3uiEXT(index:GLuint, x:GLuint, y:GLuint, z:GLuint):Void;

	@:native('glVertexAttribI4uiEXT')
	static function vertexAttribI4uiEXT(index:GLuint, x:GLuint, y:GLuint, z:GLuint, w:GLuint):Void;

	@:native('glVertexAttribI1ivEXT')
	static function vertexAttribI1ivEXT(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttribI2ivEXT')
	static function vertexAttribI2ivEXT(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttribI3ivEXT')
	static function vertexAttribI3ivEXT(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttribI4ivEXT')
	static function vertexAttribI4ivEXT(index:GLuint, v:RawPointer<GLint>):Void;

	@:native('glVertexAttribI1uivEXT')
	static function vertexAttribI1uivEXT(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glVertexAttribI2uivEXT')
	static function vertexAttribI2uivEXT(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glVertexAttribI3uivEXT')
	static function vertexAttribI3uivEXT(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glVertexAttribI4uivEXT')
	static function vertexAttribI4uivEXT(index:GLuint, v:RawPointer<GLuint>):Void;

	@:native('glVertexAttribI4bvEXT')
	static function vertexAttribI4bvEXT(index:GLuint, v:RawPointer<GLbyte>):Void;

	@:native('glVertexAttribI4svEXT')
	static function vertexAttribI4svEXT(index:GLuint, v:RawPointer<GLshort>):Void;

	@:native('glVertexAttribI4ubvEXT')
	static function vertexAttribI4ubvEXT(index:GLuint, v:RawPointer<GLubyte>):Void;

	@:native('glVertexAttribI4usvEXT')
	static function vertexAttribI4usvEXT(index:GLuint, v:RawPointer<GLushort>):Void;

	@:native('glVertexAttribIPointerEXT')
	static function vertexAttribIPointerEXT(index:GLuint, size:GLint, type:GLenum, stride:GLsizei, pointer:RawPointer<cpp.Void>):Void;

	@:native('glGetVertexAttribIivEXT')
	static function getVertexAttribIivEXT(index:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetVertexAttribIuivEXT')
	static function getVertexAttribIuivEXT(index:GLuint, pname:GLenum, params:RawPointer<GLuint>):Void;

	@:native('glBeginVideoCaptureNV')
	static function beginVideoCaptureNV(video_capture_slot:GLuint):Void;

	@:native('glBindVideoCaptureStreamBufferNV')
	static function bindVideoCaptureStreamBufferNV(video_capture_slot:GLuint, stream:GLuint, frame_region:GLenum, offset:GLintptrARB):Void;

	@:native('glBindVideoCaptureStreamTextureNV')
	static function bindVideoCaptureStreamTextureNV(video_capture_slot:GLuint, stream:GLuint, frame_region:GLenum, target:GLenum, texture:GLuint):Void;

	@:native('glEndVideoCaptureNV')
	static function endVideoCaptureNV(video_capture_slot:GLuint):Void;

	@:native('glGetVideoCaptureivNV')
	static function getVideoCaptureivNV(video_capture_slot:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetVideoCaptureStreamivNV')
	static function getVideoCaptureStreamivNV(video_capture_slot:GLuint, stream:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetVideoCaptureStreamfvNV')
	static function getVideoCaptureStreamfvNV(video_capture_slot:GLuint, stream:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetVideoCaptureStreamdvNV')
	static function getVideoCaptureStreamdvNV(video_capture_slot:GLuint, stream:GLuint, pname:GLenum, params:RawPointer<GLdouble>):Void;

	@:native('glVideoCaptureNV')
	static function videoCaptureNV(video_capture_slot:GLuint, sequence_num:RawPointer<GLuint>, capture_time:RawPointer<GLuint64EXT>):GLenum;

	@:native('glVideoCaptureStreamParameterivNV')
	static function videoCaptureStreamParameterivNV(video_capture_slot:GLuint, stream:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glVideoCaptureStreamParameterfvNV')
	static function videoCaptureStreamParameterfvNV(video_capture_slot:GLuint, stream:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glVideoCaptureStreamParameterdvNV')
	static function videoCaptureStreamParameterdvNV(video_capture_slot:GLuint, stream:GLuint, pname:GLenum, params:RawPointer<GLdouble>):Void;

	@:native('glViewportSwizzleNV')
	static function viewportSwizzleNV(index:GLuint, swizzlex:GLenum, swizzley:GLenum, swizzlez:GLenum, swizzlew:GLenum):Void;

	@:native('glAlphaFuncxOES')
	static function alphaFuncxOES(func:GLenum, ref:GLfixed):Void;

	@:native('glClearColorxOES')
	static function clearColorxOES(red:GLfixed, green:GLfixed, blue:GLfixed, alpha:GLfixed):Void;

	@:native('glClearDepthxOES')
	static function clearDepthxOES(depth:GLfixed):Void;

	@:native('glClipPlanexOES')
	static function clipPlanexOES(plane:GLenum, equation:RawPointer<GLfixed>):Void;

	@:native('glColor4xOES')
	static function color4xOES(red:GLfixed, green:GLfixed, blue:GLfixed, alpha:GLfixed):Void;

	@:native('glDepthRangexOES')
	static function depthRangexOES(n:GLfixed, f:GLfixed):Void;

	@:native('glFogxOES')
	static function fogxOES(pname:GLenum, param:GLfixed):Void;

	@:native('glFogxvOES')
	static function fogxvOES(pname:GLenum, param:RawPointer<GLfixed>):Void;

	@:native('glFrustumxOES')
	static function frustumxOES(l:GLfixed, r:GLfixed, b:GLfixed, t:GLfixed, n:GLfixed, f:GLfixed):Void;

	@:native('glGetClipPlanexOES')
	static function getClipPlanexOES(plane:GLenum, equation:RawPointer<GLfixed>):Void;

	@:native('glGetFixedvOES')
	static function getFixedvOES(pname:GLenum, params:RawPointer<GLfixed>):Void;

	@:native('glGetTexEnvxvOES')
	static function getTexEnvxvOES(target:GLenum, pname:GLenum, params:RawPointer<GLfixed>):Void;

	@:native('glGetTexParameterxvOES')
	static function getTexParameterxvOES(target:GLenum, pname:GLenum, params:RawPointer<GLfixed>):Void;

	@:native('glLightModelxOES')
	static function lightModelxOES(pname:GLenum, param:GLfixed):Void;

	@:native('glLightModelxvOES')
	static function lightModelxvOES(pname:GLenum, param:RawPointer<GLfixed>):Void;

	@:native('glLightxOES')
	static function lightxOES(light:GLenum, pname:GLenum, param:GLfixed):Void;

	@:native('glLightxvOES')
	static function lightxvOES(light:GLenum, pname:GLenum, params:RawPointer<GLfixed>):Void;

	@:native('glLineWidthxOES')
	static function lineWidthxOES(width:GLfixed):Void;

	@:native('glLoadMatrixxOES')
	static function loadMatrixxOES(m:RawPointer<GLfixed>):Void;

	@:native('glMaterialxOES')
	static function materialxOES(face:GLenum, pname:GLenum, param:GLfixed):Void;

	@:native('glMaterialxvOES')
	static function materialxvOES(face:GLenum, pname:GLenum, param:RawPointer<GLfixed>):Void;

	@:native('glMultMatrixxOES')
	static function multMatrixxOES(m:RawPointer<GLfixed>):Void;

	@:native('glMultiTexCoord4xOES')
	static function multiTexCoord4xOES(texture:GLenum, s:GLfixed, t:GLfixed, r:GLfixed, q:GLfixed):Void;

	@:native('glNormal3xOES')
	static function normal3xOES(nx:GLfixed, ny:GLfixed, nz:GLfixed):Void;

	@:native('glOrthoxOES')
	static function orthoxOES(l:GLfixed, r:GLfixed, b:GLfixed, t:GLfixed, n:GLfixed, f:GLfixed):Void;

	@:native('glPointParameterxvOES')
	static function pointParameterxvOES(pname:GLenum, params:RawPointer<GLfixed>):Void;

	@:native('glPointSizexOES')
	static function pointSizexOES(size:GLfixed):Void;

	@:native('glPolygonOffsetxOES')
	static function polygonOffsetxOES(factor:GLfixed, units:GLfixed):Void;

	@:native('glRotatexOES')
	static function rotatexOES(angle:GLfixed, x:GLfixed, y:GLfixed, z:GLfixed):Void;

	@:native('glScalexOES')
	static function scalexOES(x:GLfixed, y:GLfixed, z:GLfixed):Void;

	@:native('glTexEnvxOES')
	static function texEnvxOES(target:GLenum, pname:GLenum, param:GLfixed):Void;

	@:native('glTexEnvxvOES')
	static function texEnvxvOES(target:GLenum, pname:GLenum, params:RawPointer<GLfixed>):Void;

	@:native('glTexParameterxOES')
	static function texParameterxOES(target:GLenum, pname:GLenum, param:GLfixed):Void;

	@:native('glTexParameterxvOES')
	static function texParameterxvOES(target:GLenum, pname:GLenum, params:RawPointer<GLfixed>):Void;

	@:native('glTranslatexOES')
	static function translatexOES(x:GLfixed, y:GLfixed, z:GLfixed):Void;

	@:native('glQueryMatrixxOES')
	static function queryMatrixxOES(mantissa:RawPointer<GLfixed>, exponent:RawPointer<GLint>):GLbitfield;

	@:native('glClearDepthfOES')
	static function clearDepthfOES(depth:GLclampf):Void;

	@:native('glClipPlanefOES')
	static function clipPlanefOES(plane:GLenum, equation:RawPointer<GLfloat>):Void;

	@:native('glDepthRangefOES')
	static function depthRangefOES(n:GLclampf, f:GLclampf):Void;

	@:native('glFrustumfOES')
	static function frustumfOES(l:GLfloat, r:GLfloat, b:GLfloat, t:GLfloat, n:GLfloat, f:GLfloat):Void;

	@:native('glGetClipPlanefOES')
	static function getClipPlanefOES(plane:GLenum, equation:RawPointer<GLfloat>):Void;

	@:native('glOrthofOES')
	static function orthofOES(l:GLfloat, r:GLfloat, b:GLfloat, t:GLfloat, n:GLfloat, f:GLfloat):Void;

	@:native('glFramebufferTextureMultiviewOVR')
	static function framebufferTextureMultiviewOVR(target:GLenum, attachment:GLenum, texture:GLuint, level:GLint, baseViewIndex:GLint, numViews:GLsizei):Void;

	@:native('glHintPGI')
	static function hintPGI(target:GLenum, mode:GLint):Void;

	@:native('glDetailTexFuncSGIS')
	static function detailTexFuncSGIS(target:GLenum, n:GLsizei, points:RawPointer<GLfloat>):Void;

	@:native('glGetDetailTexFuncSGIS')
	static function getDetailTexFuncSGIS(target:GLenum, points:RawPointer<GLfloat>):Void;

	@:native('glFogFuncSGIS')
	static function fogFuncSGIS(n:GLsizei, points:RawPointer<GLfloat>):Void;

	@:native('glGetFogFuncSGIS')
	static function getFogFuncSGIS(points:RawPointer<GLfloat>):Void;

	@:native('glSampleMaskSGIS')
	static function sampleMaskSGIS(value:GLclampf, invert:GLboolean):Void;

	@:native('glSamplePatternSGIS')
	static function samplePatternSGIS(pattern:GLenum):Void;

	@:native('glPixelTexGenParameteriSGIS')
	static function pixelTexGenParameteriSGIS(pname:GLenum, param:GLint):Void;

	@:native('glPixelTexGenParameterivSGIS')
	static function pixelTexGenParameterivSGIS(pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glPixelTexGenParameterfSGIS')
	static function pixelTexGenParameterfSGIS(pname:GLenum, param:GLfloat):Void;

	@:native('glPixelTexGenParameterfvSGIS')
	static function pixelTexGenParameterfvSGIS(pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetPixelTexGenParameterivSGIS')
	static function getPixelTexGenParameterivSGIS(pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetPixelTexGenParameterfvSGIS')
	static function getPixelTexGenParameterfvSGIS(pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glPointParameterfSGIS')
	static function pointParameterfSGIS(pname:GLenum, param:GLfloat):Void;

	@:native('glPointParameterfvSGIS')
	static function pointParameterfvSGIS(pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glSharpenTexFuncSGIS')
	static function sharpenTexFuncSGIS(target:GLenum, n:GLsizei, points:RawPointer<GLfloat>):Void;

	@:native('glGetSharpenTexFuncSGIS')
	static function getSharpenTexFuncSGIS(target:GLenum, points:RawPointer<GLfloat>):Void;

	@:native('glTexImage4DSGIS')
	static function texImage4DSGIS(target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei, height:GLsizei, depth:GLsizei, size4d:GLsizei, border:GLint, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTexSubImage4DSGIS')
	static function texSubImage4DSGIS(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, zoffset:GLint, woffset:GLint, width:GLsizei, height:GLsizei, depth:GLsizei, size4d:GLsizei, format:GLenum, type:GLenum, pixels:RawPointer<cpp.Void>):Void;

	@:native('glTextureColorMaskSGIS')
	static function textureColorMaskSGIS(red:GLboolean, green:GLboolean, blue:GLboolean, alpha:GLboolean):Void;

	@:native('glGetTexFilterFuncSGIS')
	static function getTexFilterFuncSGIS(target:GLenum, filter:GLenum, weights:RawPointer<GLfloat>):Void;

	@:native('glTexFilterFuncSGIS')
	static function texFilterFuncSGIS(target:GLenum, filter:GLenum, n:GLsizei, weights:RawPointer<GLfloat>):Void;

	@:native('glAsyncMarkerSGIX')
	static function asyncMarkerSGIX(marker:GLuint):Void;

	@:native('glFinishAsyncSGIX')
	static function finishAsyncSGIX(markerp:RawPointer<GLuint>):GLint;

	@:native('glPollAsyncSGIX')
	static function pollAsyncSGIX(markerp:RawPointer<GLuint>):GLint;

	@:native('glGenAsyncMarkersSGIX')
	static function genAsyncMarkersSGIX(range:GLsizei):GLuint;

	@:native('glDeleteAsyncMarkersSGIX')
	static function deleteAsyncMarkersSGIX(marker:GLuint, range:GLsizei):Void;

	@:native('glIsAsyncMarkerSGIX')
	static function isAsyncMarkerSGIX(marker:GLuint):GLboolean;

	@:native('glFlushRasterSGIX')
	static function flushRasterSGIX():Void;

	@:native('glFragmentColorMaterialSGIX')
	static function fragmentColorMaterialSGIX(face:GLenum, mode:GLenum):Void;

	@:native('glFragmentLightfSGIX')
	static function fragmentLightfSGIX(light:GLenum, pname:GLenum, param:GLfloat):Void;

	@:native('glFragmentLightfvSGIX')
	static function fragmentLightfvSGIX(light:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glFragmentLightiSGIX')
	static function fragmentLightiSGIX(light:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glFragmentLightivSGIX')
	static function fragmentLightivSGIX(light:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glFragmentLightModelfSGIX')
	static function fragmentLightModelfSGIX(pname:GLenum, param:GLfloat):Void;

	@:native('glFragmentLightModelfvSGIX')
	static function fragmentLightModelfvSGIX(pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glFragmentLightModeliSGIX')
	static function fragmentLightModeliSGIX(pname:GLenum, param:GLint):Void;

	@:native('glFragmentLightModelivSGIX')
	static function fragmentLightModelivSGIX(pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glFragmentMaterialfSGIX')
	static function fragmentMaterialfSGIX(face:GLenum, pname:GLenum, param:GLfloat):Void;

	@:native('glFragmentMaterialfvSGIX')
	static function fragmentMaterialfvSGIX(face:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glFragmentMaterialiSGIX')
	static function fragmentMaterialiSGIX(face:GLenum, pname:GLenum, param:GLint):Void;

	@:native('glFragmentMaterialivSGIX')
	static function fragmentMaterialivSGIX(face:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetFragmentLightfvSGIX')
	static function getFragmentLightfvSGIX(light:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetFragmentLightivSGIX')
	static function getFragmentLightivSGIX(light:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glGetFragmentMaterialfvSGIX')
	static function getFragmentMaterialfvSGIX(face:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetFragmentMaterialivSGIX')
	static function getFragmentMaterialivSGIX(face:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glLightEnviSGIX')
	static function lightEnviSGIX(pname:GLenum, param:GLint):Void;

	@:native('glFrameZoomSGIX')
	static function frameZoomSGIX(factor:GLint):Void;

	@:native('glIglooInterfaceSGIX')
	static function iglooInterfaceSGIX(pname:GLenum, params:RawPointer<cpp.Void>):Void;

	@:native('glGetInstrumentsSGIX')
	static function getInstrumentsSGIX():GLint;

	@:native('glInstrumentsBufferSGIX')
	static function instrumentsBufferSGIX(size:GLsizei, buffer:RawPointer<GLint>):Void;

	@:native('glPollInstrumentsSGIX')
	static function pollInstrumentsSGIX(marker_p:RawPointer<GLint>):GLint;

	@:native('glReadInstrumentsSGIX')
	static function readInstrumentsSGIX(marker:GLint):Void;

	@:native('glStartInstrumentsSGIX')
	static function startInstrumentsSGIX():Void;

	@:native('glStopInstrumentsSGIX')
	static function stopInstrumentsSGIX(marker:GLint):Void;

	@:native('glGetListParameterfvSGIX')
	static function getListParameterfvSGIX(list:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetListParameterivSGIX')
	static function getListParameterivSGIX(list:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glListParameterfSGIX')
	static function listParameterfSGIX(list:GLuint, pname:GLenum, param:GLfloat):Void;

	@:native('glListParameterfvSGIX')
	static function listParameterfvSGIX(list:GLuint, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glListParameteriSGIX')
	static function listParameteriSGIX(list:GLuint, pname:GLenum, param:GLint):Void;

	@:native('glListParameterivSGIX')
	static function listParameterivSGIX(list:GLuint, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glPixelTexGenSGIX')
	static function pixelTexGenSGIX(mode:GLenum):Void;

	@:native('glDeformationMap3dSGIX')
	static function deformationMap3dSGIX(target:GLenum, u1:GLdouble, u2:GLdouble, ustride:GLint, uorder:GLint, v1:GLdouble, v2:GLdouble, vstride:GLint, vorder:GLint, w1:GLdouble, w2:GLdouble, wstride:GLint, worder:GLint, points:RawPointer<GLdouble>):Void;

	@:native('glDeformationMap3fSGIX')
	static function deformationMap3fSGIX(target:GLenum, u1:GLfloat, u2:GLfloat, ustride:GLint, uorder:GLint, v1:GLfloat, v2:GLfloat, vstride:GLint, vorder:GLint, w1:GLfloat, w2:GLfloat, wstride:GLint, worder:GLint, points:RawPointer<GLfloat>):Void;

	@:native('glDeformSGIX')
	static function deformSGIX(mask:GLbitfield):Void;

	@:native('glLoadIdentityDeformationMapSGIX')
	static function loadIdentityDeformationMapSGIX(mask:GLbitfield):Void;

	@:native('glReferencePlaneSGIX')
	static function referencePlaneSGIX(equation:RawPointer<GLdouble>):Void;

	@:native('glSpriteParameterfSGIX')
	static function spriteParameterfSGIX(pname:GLenum, param:GLfloat):Void;

	@:native('glSpriteParameterfvSGIX')
	static function spriteParameterfvSGIX(pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glSpriteParameteriSGIX')
	static function spriteParameteriSGIX(pname:GLenum, param:GLint):Void;

	@:native('glSpriteParameterivSGIX')
	static function spriteParameterivSGIX(pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glTagSampleBufferSGIX')
	static function tagSampleBufferSGIX():Void;

	@:native('glColorTableSGI')
	static function colorTableSGI(target:GLenum, internalformat:GLenum, width:GLsizei, format:GLenum, type:GLenum, table:RawPointer<cpp.Void>):Void;

	@:native('glColorTableParameterfvSGI')
	static function colorTableParameterfvSGI(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glColorTableParameterivSGI')
	static function colorTableParameterivSGI(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glCopyColorTableSGI')
	static function copyColorTableSGI(target:GLenum, internalformat:GLenum, x:GLint, y:GLint, width:GLsizei):Void;

	@:native('glGetColorTableSGI')
	static function getColorTableSGI(target:GLenum, format:GLenum, type:GLenum, table:RawPointer<cpp.Void>):Void;

	@:native('glGetColorTableParameterfvSGI')
	static function getColorTableParameterfvSGI(target:GLenum, pname:GLenum, params:RawPointer<GLfloat>):Void;

	@:native('glGetColorTableParameterivSGI')
	static function getColorTableParameterivSGI(target:GLenum, pname:GLenum, params:RawPointer<GLint>):Void;

	@:native('glFinishTextureSUNX')
	static function finishTextureSUNX():Void;

	@:native('glGlobalAlphaFactorbSUN')
	static function globalAlphaFactorbSUN(factor:GLbyte):Void;

	@:native('glGlobalAlphaFactorsSUN')
	static function globalAlphaFactorsSUN(factor:GLshort):Void;

	@:native('glGlobalAlphaFactoriSUN')
	static function globalAlphaFactoriSUN(factor:GLint):Void;

	@:native('glGlobalAlphaFactorfSUN')
	static function globalAlphaFactorfSUN(factor:GLfloat):Void;

	@:native('glGlobalAlphaFactordSUN')
	static function globalAlphaFactordSUN(factor:GLdouble):Void;

	@:native('glGlobalAlphaFactorubSUN')
	static function globalAlphaFactorubSUN(factor:GLubyte):Void;

	@:native('glGlobalAlphaFactorusSUN')
	static function globalAlphaFactorusSUN(factor:GLushort):Void;

	@:native('glGlobalAlphaFactoruiSUN')
	static function globalAlphaFactoruiSUN(factor:GLuint):Void;

	@:native('glDrawMeshArraysSUN')
	static function drawMeshArraysSUN(mode:GLenum, first:GLint, count:GLsizei, width:GLsizei):Void;

	@:native('glReplacementCodeuiSUN')
	static function replacementCodeuiSUN(code:GLuint):Void;

	@:native('glReplacementCodeusSUN')
	static function replacementCodeusSUN(code:GLushort):Void;

	@:native('glReplacementCodeubSUN')
	static function replacementCodeubSUN(code:GLubyte):Void;

	@:native('glReplacementCodeuivSUN')
	static function replacementCodeuivSUN(code:RawPointer<GLuint>):Void;

	@:native('glReplacementCodeusvSUN')
	static function replacementCodeusvSUN(code:RawPointer<GLushort>):Void;

	@:native('glReplacementCodeubvSUN')
	static function replacementCodeubvSUN(code:RawPointer<GLubyte>):Void;

	@:native('glReplacementCodePointerSUN')
	static function replacementCodePointerSUN(type:GLenum, stride:GLsizei, pointer:RawPointer<RawPointer<cpp.Void>>):Void;

	@:native('glColor4ubVertex2fSUN')
	static function color4ubVertex2fSUN(r:GLubyte, g:GLubyte, b:GLubyte, a:GLubyte, x:GLfloat, y:GLfloat):Void;

	@:native('glColor4ubVertex2fvSUN')
	static function color4ubVertex2fvSUN(c:RawPointer<GLubyte>, v:RawPointer<GLfloat>):Void;

	@:native('glColor4ubVertex3fSUN')
	static function color4ubVertex3fSUN(r:GLubyte, g:GLubyte, b:GLubyte, a:GLubyte, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glColor4ubVertex3fvSUN')
	static function color4ubVertex3fvSUN(c:RawPointer<GLubyte>, v:RawPointer<GLfloat>):Void;

	@:native('glColor3fVertex3fSUN')
	static function color3fVertex3fSUN(r:GLfloat, g:GLfloat, b:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glColor3fVertex3fvSUN')
	static function color3fVertex3fvSUN(c:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glNormal3fVertex3fSUN')
	static function normal3fVertex3fSUN(nx:GLfloat, ny:GLfloat, nz:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glNormal3fVertex3fvSUN')
	static function normal3fVertex3fvSUN(n:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glColor4fNormal3fVertex3fSUN')
	static function color4fNormal3fVertex3fSUN(r:GLfloat, g:GLfloat, b:GLfloat, a:GLfloat, nx:GLfloat, ny:GLfloat, nz:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glColor4fNormal3fVertex3fvSUN')
	static function color4fNormal3fVertex3fvSUN(c:RawPointer<GLfloat>, n:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glTexCoord2fVertex3fSUN')
	static function texCoord2fVertex3fSUN(s:GLfloat, t:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glTexCoord2fVertex3fvSUN')
	static function texCoord2fVertex3fvSUN(tc:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glTexCoord4fVertex4fSUN')
	static function texCoord4fVertex4fSUN(s:GLfloat, t:GLfloat, p:GLfloat, q:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glTexCoord4fVertex4fvSUN')
	static function texCoord4fVertex4fvSUN(tc:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glTexCoord2fColor4ubVertex3fSUN')
	static function texCoord2fColor4ubVertex3fSUN(s:GLfloat, t:GLfloat, r:GLubyte, g:GLubyte, b:GLubyte, a:GLubyte, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glTexCoord2fColor4ubVertex3fvSUN')
	static function texCoord2fColor4ubVertex3fvSUN(tc:RawPointer<GLfloat>, c:RawPointer<GLubyte>, v:RawPointer<GLfloat>):Void;

	@:native('glTexCoord2fColor3fVertex3fSUN')
	static function texCoord2fColor3fVertex3fSUN(s:GLfloat, t:GLfloat, r:GLfloat, g:GLfloat, b:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glTexCoord2fColor3fVertex3fvSUN')
	static function texCoord2fColor3fVertex3fvSUN(tc:RawPointer<GLfloat>, c:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glTexCoord2fNormal3fVertex3fSUN')
	static function texCoord2fNormal3fVertex3fSUN(s:GLfloat, t:GLfloat, nx:GLfloat, ny:GLfloat, nz:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glTexCoord2fNormal3fVertex3fvSUN')
	static function texCoord2fNormal3fVertex3fvSUN(tc:RawPointer<GLfloat>, n:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glTexCoord2fColor4fNormal3fVertex3fSUN')
	static function texCoord2fColor4fNormal3fVertex3fSUN(s:GLfloat, t:GLfloat, r:GLfloat, g:GLfloat, b:GLfloat, a:GLfloat, nx:GLfloat, ny:GLfloat, nz:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glTexCoord2fColor4fNormal3fVertex3fvSUN')
	static function texCoord2fColor4fNormal3fVertex3fvSUN(tc:RawPointer<GLfloat>, c:RawPointer<GLfloat>, n:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glTexCoord4fColor4fNormal3fVertex4fSUN')
	static function texCoord4fColor4fNormal3fVertex4fSUN(s:GLfloat, t:GLfloat, p:GLfloat, q:GLfloat, r:GLfloat, g:GLfloat, b:GLfloat, a:GLfloat, nx:GLfloat, ny:GLfloat, nz:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat):Void;

	@:native('glTexCoord4fColor4fNormal3fVertex4fvSUN')
	static function texCoord4fColor4fNormal3fVertex4fvSUN(tc:RawPointer<GLfloat>, c:RawPointer<GLfloat>, n:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glReplacementCodeuiVertex3fSUN')
	static function replacementCodeuiVertex3fSUN(rc:GLuint, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glReplacementCodeuiVertex3fvSUN')
	static function replacementCodeuiVertex3fvSUN(rc:RawPointer<GLuint>, v:RawPointer<GLfloat>):Void;

	@:native('glReplacementCodeuiColor4ubVertex3fSUN')
	static function replacementCodeuiColor4ubVertex3fSUN(rc:GLuint, r:GLubyte, g:GLubyte, b:GLubyte, a:GLubyte, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glReplacementCodeuiColor4ubVertex3fvSUN')
	static function replacementCodeuiColor4ubVertex3fvSUN(rc:RawPointer<GLuint>, c:RawPointer<GLubyte>, v:RawPointer<GLfloat>):Void;

	@:native('glReplacementCodeuiColor3fVertex3fSUN')
	static function replacementCodeuiColor3fVertex3fSUN(rc:GLuint, r:GLfloat, g:GLfloat, b:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glReplacementCodeuiColor3fVertex3fvSUN')
	static function replacementCodeuiColor3fVertex3fvSUN(rc:RawPointer<GLuint>, c:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glReplacementCodeuiNormal3fVertex3fSUN')
	static function replacementCodeuiNormal3fVertex3fSUN(rc:GLuint, nx:GLfloat, ny:GLfloat, nz:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glReplacementCodeuiNormal3fVertex3fvSUN')
	static function replacementCodeuiNormal3fVertex3fvSUN(rc:RawPointer<GLuint>, n:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glReplacementCodeuiColor4fNormal3fVertex3fSUN')
	static function replacementCodeuiColor4fNormal3fVertex3fSUN(rc:GLuint, r:GLfloat, g:GLfloat, b:GLfloat, a:GLfloat, nx:GLfloat, ny:GLfloat, nz:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glReplacementCodeuiColor4fNormal3fVertex3fvSUN')
	static function replacementCodeuiColor4fNormal3fVertex3fvSUN(rc:RawPointer<GLuint>, c:RawPointer<GLfloat>, n:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glReplacementCodeuiTexCoord2fVertex3fSUN')
	static function replacementCodeuiTexCoord2fVertex3fSUN(rc:GLuint, s:GLfloat, t:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glReplacementCodeuiTexCoord2fVertex3fvSUN')
	static function replacementCodeuiTexCoord2fVertex3fvSUN(rc:RawPointer<GLuint>, tc:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glReplacementCodeuiTexCoord2fNormal3fVertex3fSUN')
	static function replacementCodeuiTexCoord2fNormal3fVertex3fSUN(rc:GLuint, s:GLfloat, t:GLfloat, nx:GLfloat, ny:GLfloat, nz:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glReplacementCodeuiTexCoord2fNormal3fVertex3fvSUN')
	static function replacementCodeuiTexCoord2fNormal3fVertex3fvSUN(rc:RawPointer<GLuint>, tc:RawPointer<GLfloat>, n:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;

	@:native('glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN')
	static function replacementCodeuiTexCoord2fColor4fNormal3fVertex3fSUN(rc:GLuint, s:GLfloat, t:GLfloat, r:GLfloat, g:GLfloat, b:GLfloat, a:GLfloat, nx:GLfloat, ny:GLfloat, nz:GLfloat, x:GLfloat, y:GLfloat, z:GLfloat):Void;

	@:native('glReplacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN')
	static function replacementCodeuiTexCoord2fColor4fNormal3fVertex3fvSUN(rc:RawPointer<GLuint>, tc:RawPointer<GLfloat>, c:RawPointer<GLfloat>, n:RawPointer<GLfloat>, v:RawPointer<GLfloat>):Void;
}
