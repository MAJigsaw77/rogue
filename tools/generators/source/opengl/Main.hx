package opengl;

import haxe.io.Bytes;

import sys.FileSystem;

import haxe.xml.Access;

import sys.io.File;

import haxe.Http;

using StringTools;

class Main
{
	static final INVALID_KEYWORDS:Array<String> = ['in'];

	static final GL_EXTERNS_TO_FROM:Map<String, String> = [
		'GLenum' => 'UInt32',
		'GLboolean' => 'UInt8',
		'GLbitfield' => 'UInt32',
		'GLbyte' => 'Int8',
		'GLubyte' => 'UInt8',
		'GLshort' => 'Int16',
		'GLushort' => 'UInt16',
		'GLint' => 'Int',
		'GLuint' => 'UInt32',
		'GLclampx' => 'Int',
		'GLsizei' => 'Int',
		'GLfloat' => 'Float32',
		'GLclampf' => 'Float32',
		'GLdouble' => 'Float',
		'GLclampd' => 'Float',
		'GLeglClientBufferEXT' => 'RawPointer<Void>',
		'GLeglImageOES' => 'RawPointer<Void>',
		'GLchar' => 'Char',
		'GLcharARB' => 'Char',
		'GLhandleARB' => '#if apple RawPointer<Void> #else UInt32 #end',
		'GLhalf' => 'UInt16',
		'GLhalfARB' => 'UInt16',
		'GLfixed' => 'Int',
		'GLintptr' => 'Int',
		'GLintptrARB' => 'Int',
		'GLsizeiptr' => 'Int',
		'GLsizeiptrARB' => 'Int',
		'GLint64' => 'Int64',
		'GLint64EXT' => 'Int64',
		'GLuint64' => 'UInt64',
		'GLuint64EXT' => 'UInt64',
		'GLsync' => 'RawPointer<Void>',
		'_cl_context' => 'CL_Context',
		'_cl_event' => 'CL_Event',
		'GLDEBUGPROC' =>
		'Callable<(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, message:ConstGLcharStar, userParam:RawConstPointer<Void>)->Void>',
		'GLDEBUGPROCARB' =>
		'Callable<(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, message:ConstGLcharStar, userParam:RawConstPointer<Void>)->Void>',
		'GLDEBUGPROCKHR' =>
		'Callable<(source:GLenum, type:GLenum, id:GLuint, severity:GLenum, length:GLsizei, message:ConstGLcharStar, userParam:RawConstPointer<Void>)->Void>',
		'GLDEBUGPROCAMD' =>
		'Callable<(id:GLuint, category:GLenum, severity:GLenum, length:GLsizei, message:ConstGLcharStar, userParam:RawPointer<Void>)->Void>',
		'GLVULKANPROCNV' => 'Callable<Void->Void>',
		'GLhalfNV' => 'UInt16',
		'GLvdpauSurfaceNV' => 'Int',
	];

	static var GL_CONTENT:Null<Xml>;

	static var GL_COMMANDS:Map<String, {params:Array<String>, ret:String}> = [];
	static var GL_ENUMS:Array<String> = [];

	static var GL_COMMANDS_TO_BE_ADDED:Array<String> = [];
	static var GL_ENUMS_TO_BE_ADDED:Array<String> = [];

	static var GL_FILE:Array<String> = [];

	public static function run():Void
	{
		Sys.println('Generating `opengl` externs from registry...');

		if (FileSystem.exists('registries/gl.xml'))
		{
			GL_CONTENT = Xml.parse(File.getContent('registries/gl.xml')).firstElement();
		}
		else
		{
			final http:Http = new Http('https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/refs/heads/main/xml/gl.xml');
			http.onBytes = verifyGLData;
			http.onError = errorGLFileRequest;
			http.request(false);
		}

		final GL_ACCESS:Access = new Access(GL_CONTENT);

		generateOpenGLExterns(GL_ACCESS, 'gl');
		generateOpenGLExterns(GL_ACCESS, 'gles2');

		Sys.println('Finished generating `opengl` externs.');
	}

	static function generateOpenGLExterns(access:Access, platform:String):Void
	{
		GL_COMMANDS = [];
		GL_ENUMS = [];

		GL_COMMANDS_TO_BE_ADDED = [];
		GL_ENUMS_TO_BE_ADDED = [];

		GL_FILE = [];

		for (enumsVal in access.nodes.enums)
		{
			for (enumVal in enumsVal.nodes.resolve('enum'))
			{
				if (enumVal.has.name)
					GL_ENUMS.push(enumVal.att.name);
			}
		}

		for (commandsVal in access.nodes.commands)
		{
			for (commandVal in commandsVal.nodes.command)
			{
				GL_COMMANDS.set(getCommandName(commandVal.node.proto),
					{params: getCommandParams(commandVal), ret: TypeParser.parseCTypeToHaxeType(getCommandType(commandVal.node.proto))});
			}
		}

		for (featureVal in access.nodes.feature)
		{
			if (featureVal.has.api && featureVal.att.api == platform)
			{
				for (requireVal in featureVal.nodes.require)
				{
					for (enumVal in requireVal.nodes.resolve('enum'))
					{
						if (!GL_ENUMS_TO_BE_ADDED.contains(enumVal.att.name))
							GL_ENUMS_TO_BE_ADDED.push(enumVal.att.name);
					}

					for (commandVal in requireVal.nodes.command)
					{
						if (!GL_COMMANDS_TO_BE_ADDED.contains(commandVal.att.name))
							GL_COMMANDS_TO_BE_ADDED.push(commandVal.att.name);
					}
				}
			}
		}

		for (extensionVal in access.node.extensions.nodes.extension)
		{
			var supportedVers:Array<String> = extensionVal.att.supported.split('|');

			{
				var isPureGL:Bool = false;

				for (supportedVer in supportedVers)
				{
					if (supportedVer == platform)
						isPureGL = true;
				}

				if (!isPureGL)
					continue;
			}

			for (requireVal in extensionVal.nodes.require)
			{
				if (requireVal.hasNode.resolve('enum'))
				{
					for (enumVal in requireVal.nodes.resolve('enum'))
					{
						if (!GL_ENUMS_TO_BE_ADDED.contains(enumVal.att.name))
							GL_ENUMS_TO_BE_ADDED.push(enumVal.att.name);
					}
				}

				if (requireVal.hasNode.command)
				{
					for (commandVal in requireVal.nodes.command)
					{
						if (!GL_COMMANDS_TO_BE_ADDED.contains(commandVal.att.name))
							GL_COMMANDS_TO_BE_ADDED.push(commandVal.att.name);
					}
				}
			}
		}

		addLine('package rogue.internal.externs.opengl.$platform;');
		addLine('');
		addLine('import cpp.Callable;');
		addLine('import cpp.Char;');
		addLine('import cpp.Float32;');
		addLine('import cpp.Int16;');
		addLine('import cpp.Int64;');
		addLine('import cpp.Int8;');
		addLine('import cpp.RawConstPointer;');
		addLine('import cpp.RawPointer;');
		addLine('import cpp.SizeT;');
		addLine('import cpp.UInt16;');
		addLine('import cpp.UInt32;');
		addLine('import cpp.UInt64;');
		addLine('import cpp.UInt8;');
		addLine('');

		for (typeVal in access.node.types.nodes.type)
		{
			if (typeVal.innerHTML.contains('KHR/khrplatform.h') || typeVal.innerHTML.contains('GLvoid'))
				continue;

			var name:Null<String> = getTypedefName(typeVal);

			if (name == null)
				name = 'GLhandleARB';

			final type:Null<String> = GL_EXTERNS_TO_FROM.get(name);

			if (type != null)
			{
				if (type.startsWith('Callable'))
				{
					addLine('typedef $name = $type;');
					addLine('');
				}
				else if (name.startsWith('_'))
				{
					addLine('@:include(\'glad/$platform.h\')');
					addLine('@:native(\'$name\')');
					emptyClass(type);
				}
				else
				{
					addLine('@:include(\'glad/$platform.h\')');
					addLine('@:native(\'$name\')');
					addLine('@:scalar');
					addLine('@:coreType');
					addLine('@:notNull');
					addLine('extern abstract $name from $type to $type');
					addLine('{');
					addLine('static inline function size():SizeT', 1);
					addLine('{', 1);
					addLine('return untyped __cpp__(\'sizeof($name)\');', 2);
					addLine('}', 1);
					addLine('}');
					addLine('');

					if (name == 'GLchar' || name == 'GLcharARB')
					{
						addLine('extern abstract Const${name}Star(RawConstPointer<${name}>) to (RawConstPointer<${name}>)');
						addLine('{');
						addLine('inline function new(s:String)', 1);
						addLine('this = untyped s.__s;', 2);
						addLine('');
						addLine('@:from', 1);
						addLine('static public inline function fromString(s:String):Const${name}Star', 1);
						addLine('return new Const${name}Star(s);', 2);
						addLine('');
						addLine('@:to extern public inline function toString():String', 1);
						addLine('return new String(untyped this);', 2);
						addLine('');
						addLine('@:to extern public inline function toPointer():RawConstPointer<${name}>', 1);
						addLine('return this;', 2);
						addLine('}');
						addLine('');

						addLine('abstract Cast${name}Star(RawPointer<${name}>) to (RawPointer<${name}>)');
						addLine('{');
						addLine('inline function new(s:String)', 1);
						addLine('this = cast untyped s.__s;', 2);
						addLine('');
						addLine('@:from', 1);
						addLine('static public inline function fromString(s:String):Cast${name}Star', 1);
						addLine('return new Cast${name}Star(s);', 2);
						addLine('');
						addLine('@:to extern public inline function toPointer():RawPointer<${name}>', 1);
						addLine('return this;', 2);
						addLine('}');
						addLine('');
					}
				}
			}
		}

		addLine('@:include(\'glad/$platform.h\')');
		startWritingToClass('GL');

		for (enumName in GL_ENUMS_TO_BE_ADDED)
		{
			addNative(enumName, 1);
			addLine('static var ${fixStartWithNumberHaxeCrap(enumName.substring(enumName.indexOf('_') + 1))}:${!enumName.startsWith('GL_TIMEOUT_IGNORED') ? 'GLuint' : 'GLuint64'};',
				1);
			addLine('');
		}

		for (commandName in GL_COMMANDS_TO_BE_ADDED)
		{
			final commandObj:Dynamic = GL_COMMANDS.get(commandName);

			addNative(commandName, 1);
			addLine('static function ${doPrettyHaxeFunctionName(commandName)}(${commandObj.params.join(', ')}):${commandObj.ret};', 1);
			addLine('');
		}

		endWritingToClass();

		File.saveContent('../../source/rogue/internal/externs/opengl/$platform/GL.hx', GL_FILE.join('\n'));
	}

	///////////////////////////////////////////////////////////////////////////////

	static function addLine(str:String, spacing:Int = 0):Void
	{
		GL_FILE.push(StringTools.rpad('', '	', spacing) + str);
	}

	static function removeLastEmptyLine():Void
	{
		if (GL_FILE[GL_FILE.length - 1].length == 0)
			GL_FILE.pop();
	}

	///////////////////////////////////////////////////////////////////////////////

	static function addNative(name:String, structAccess:Bool = false, spacing:Int = 0):Void
	{
		if (structAccess)
			addLine('@:structAccess', spacing);

		addLine('@:native(\'$name\')', spacing);
	}

	static function addVar(name:String, type:String, native:Bool = false, beStatic:Bool = false, spacing:Int = 0):Void
	{
		if (native)
			addNative(name, spacing);

		if (beStatic)
		{
			if (type.length > 0)
				addLine('static var $name:$type;', spacing);
			else
				addLine('static var $name;', spacing);

			addLine('', 0);
		}
		else
		{
			if (type.length > 0)
				addLine('var $name:$type;', spacing);
			else
				addLine('var $name;', spacing);

			addLine('', 0);
		}
	}

	///////////////////////////////////////////////////////////////////////////////

	static function verifyGLData(data:Bytes):Void
	{
		Sys.println('Fetched `gl.xml`.');

		if (!FileSystem.exists('registries'))
			FileSystem.createDirectory('registries');

		File.saveContent('registries/gl.xml', data.toString());

		GL_CONTENT = Xml.parse(data.toString()).firstElement();

		Sys.println('Parsed `gl.xml` successfully!');
	}

	static function errorGLFileRequest(error:String):Void
	{
		Sys.println('Unable to fetch `gl.xml`.');
		Sys.exit(1);
	}

	///////////////////////////////////////////////////////////////////////////////

	static function startWritingToClass(name:String, ?extending:String):Void
	{
		if (extending != null && extending.length > 0)
			addLine('extern class $name extends $extending');
		else
			addLine('extern class $name');

		addLine('{');
	}

	static function endWritingToClass():Void
	{
		removeLastEmptyLine();

		addLine('}');
		addLine('');
	}

	static function emptyClass(name:String, ?extending:String, bePrivate:Bool = false):Void
	{
		if (extending != null && extending.length > 0)
			addLine('${bePrivate ? 'private extern' : 'extern'} class $name extends $extending {}');
		else
			addLine('${bePrivate ? 'private extern' : 'extern'} class $name {}');

		addLine('');
	}

	///////////////////////////////////////////////////////////////////////////////

	static function getTypedefName(access:Access):String
	{
		for (child in access.x.iterator())
		{
			if (child.nodeType == Xml.Element && child.nodeName == 'name')
			{
				var name = child.firstChild().nodeValue;
				// Remove "struct " prefix if present
				if (name.startsWith('struct '))
				{
					return name.substring(7); // "struct ".length == 7
				}
				return name;
			}
		}
		return null;
	}

	static function getCommandType(access:Access):String
	{
		var typeBuf = new StringBuf();

		for (child in access.x.iterator())
		{
			if (child.nodeType == Xml.Element && child.nodeName == 'name')
			{
				break;
			}

			switch (child.nodeType)
			{
				case Xml.PCData:
					typeBuf.add(child.nodeValue);
				case Xml.Element:
					if (child.nodeName == 'ptype')
						typeBuf.add(child.firstChild().nodeValue);
				default:
			}
		}

		return typeBuf.toString().trim();
	}

	static function getCommandName(access:Access):String
	{
		return clearInvalidKeywords(access.node.name.innerData);
	}

	static function getCommandParams(access:Access):Array<String>
	{
		final commandsParam:Array<String> = [];

		for (param in access.nodes.param)
		{
			final type:String = TypeParser.parseCTypeToHaxeType(getCommandType(param));
			final name:String = getCommandName(param);

			commandsParam.push('$name:$type');
		}

		return commandsParam;
	}

	static function clearInvalidKeywords(str:String):String
	{
		return INVALID_KEYWORDS.contains(str) ? '_$str' : str;
	}

	static function fixStartWithNumberHaxeCrap(str:String):String
	{
		var first = str.fastCodeAt(0);

		return (first >= "0".code && first <= "9".code) ? '_$str' : str;
	}

	static function doPrettyHaxeFunctionName(str:String):String
	{
		final regex:EReg = ~/^[^A-Z]+/;

		final pretty:String = regex.match(str) ? str.substr(regex.matchedPos().len) : str;

		if (str == pretty)
			return str;

		return pretty.charAt(0).toLowerCase() + pretty.substr(1);
	}
}
