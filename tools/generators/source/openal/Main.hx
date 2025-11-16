package openal;

import haxe.io.Bytes;

import sys.FileSystem;

import haxe.xml.Access;

import sys.io.File;

import haxe.Http;

using StringTools;

class Main
{
	static final NO_TYPE_EXTERN:String = '###YOU_STUPID_PIECE_OF_SHIT###';

	static final INVALID_KEYWORDS:Array<String> = ['in'];

	static final AL_EMSCRIPTEN_EXTENSIONS:Array<String> = [
		"ALC_SOFT_pause_device",
		"ALC_SOFT_HRTF",
		"AL_EXT_float32",
		"AL_SOFT_loop_points",
		"AL_SOFT_source_length",
		"AL_EXT_source_distance_model",
		"AL_SOFT_source_spatialize"
	];

	static final AL_EXTERNS_TO_FROM:Map<String, String> = [
		'ALCdevice' => NO_TYPE_EXTERN,
		'ALCcontext' => NO_TYPE_EXTERN,
		'ALboolean' => 'Char',
		'ALCboolean' => 'Char',
		'ALchar' => 'Char',
		'ALCchar' => 'Char',
		'ALbyte' => 'Int8',
		'ALCbyte' => 'Int8',
		'ALubyte' => 'UInt8',
		'ALCubyte' => 'UInt8',
		'ALshort' => 'Int16',
		'ALCshort' => 'Int16',
		'ALushort' => 'UInt16',
		'ALCushort' => 'UInt16',
		'ALint' => 'Int',
		'ALCint' => 'Int',
		'ALuint' => 'UInt32',
		'ALCuint' => 'UInt32',
		'ALsizei' => 'Int',
		'ALCsizei' => 'Int',
		'ALenum' => 'Int',
		'ALCenum' => 'Int',
		'ALfloat' => 'Single',
		'ALCfloat' => 'Single',
		'ALdouble' => 'Float',
		'ALCdouble' => 'Float',
		'ALvoid' => 'cpp.Void',
		'ALCvoid' => 'cpp.Void',
		'_GUID' => 'GUID',
		'ALint64SOFT' => 'Int64',
		'ALCint64SOFT' => 'Int64',
		'ALuint64SOFT' => 'UInt64',
		'ALCuint64SOFT' => 'UInt64',
		'LPALFOLDBACKCALLBACK' => 'Callable<(param:ALenum, size:ALsizei)->Void>',
		'ALEVENTPROCSOFT' =>
		'Callable<(eventType:ALenum, object:ALuint, param:ALuint, length:ALsizei, message:ConstALcharStar, userParam:RawPointer<ALvoid>)->Void>',
		'ALBUFFERCALLBACKTYPESOFT' => 'Callable<(userptr:RawPointer<ALvoid>, sampledata:RawPointer<ALvoid>, numbytes:ALsizei)->ALsizei>',
		'ALDEBUGPROCEXT' =>
		'Callable<(source:ALenum, type:ALenum, id:ALuint, severity:ALenum, length:ALsizei, message:ConstALcharStar, userParam:RawPointer<ALvoid>)->Void>',
		'ALCEVENTPROCTYPESOFT' =>
		'Callable<(eventType:ALCenum, deviceType:ALCenum, device:RawPointer<ALCdevice>, length:ALCsizei, message:RawConstPointer<ALCchar>, userParam:RawPointer<ALCvoid>)->Void>'
	];

	static var AL_CONTENT:Null<Xml>;

	static var AL_COMMANDS:Map<String, {params:Array<String>, ret:String}> = [];
	static var AL_ENUMS:Array<String> = [];

	static var AL_COMMANDS_TO_BE_ADDED:Array<String> = [];
	static var AL_ENUMS_TO_BE_ADDED:Array<String> = [];

	static var AL_FILE:Array<String> = [];

	public static function run():Void
	{
		Sys.println('Generating `openal` externs from registry...');

		if (FileSystem.exists('registries/al.xml'))
		{
			AL_CONTENT = Xml.parse(File.getContent('registries/al.xml')).firstElement();
		}
		else
		{
			final http:Http = new Http('https://raw.githubusercontent.com/kcat/openal-soft/refs/heads/master/registry/xml/al.xml');
			http.onBytes = verifyGLData;
			http.onError = errorGLFileRequest;
			http.request(false);
		}

		final AL_ACCESS:Access = new Access(AL_CONTENT);

		generateOpenALExterns(AL_ACCESS, 'al', 'soft_oal');
		generateOpenALExterns(AL_ACCESS, 'alc', 'soft_oal');

		generateOpenALExterns(AL_ACCESS, 'al', 'emscripten');
		generateOpenALExterns(AL_ACCESS, 'alc', 'emscripten');

		Sys.println('Finished generating `openal` externs.');
	}

	static function generateOpenALExterns(access:Access, namespace:String, folder:String):Void
	{
		for (enumsVal in access.nodes.enums)
		{
			for (enumVal in enumsVal.nodes.resolve('enum'))
			{
				if (enumVal.has.name)
					AL_ENUMS.push(enumVal.att.name);
			}
		}

		for (commandsVal in access.nodes.commands)
		{
			for (commandVal in commandsVal.nodes.command)
			{
				AL_COMMANDS.set(getCommandName(commandVal.node.proto),
					{params: getCommandParams(commandVal), ret: TypeParser.parseCTypeToHaxeType(getCommandType(commandVal.node.proto))});
			}
		}

		for (featureVal in access.nodes.feature)
		{
			if (featureVal.has.api && featureVal.att.api == namespace)
			{
				for (requireVal in featureVal.nodes.require)
				{
					for (enumVal in requireVal.nodes.resolve('enum'))
					{
						if (!AL_ENUMS_TO_BE_ADDED.contains(enumVal.att.name))
							AL_ENUMS_TO_BE_ADDED.push(enumVal.att.name);
					}

					for (commandVal in requireVal.nodes.command)
					{
						if (!AL_COMMANDS_TO_BE_ADDED.contains(commandVal.att.name))
							AL_COMMANDS_TO_BE_ADDED.push(commandVal.att.name);
					}
				}
			}
		}

		for (extensionVal in access.node.extensions.nodes.extension)
		{
			if (folder == 'emscripten' && !AL_EMSCRIPTEN_EXTENSIONS.contains(extensionVal.att.name))
				continue;

			var supportedVers:Array<String> = extensionVal.att.supported.split('|');

			{
				var usesNamespace:Bool = false;

				for (supportedVer in supportedVers)
				{
					if (supportedVer == namespace)
						usesNamespace = true;
				}

				if (!usesNamespace)
					continue;
			}

			for (requireVal in extensionVal.nodes.require)
			{
				if (requireVal.has.api && requireVal.att.api != namespace)
					continue;

				if (requireVal.hasNode.resolve('enum'))
				{
					for (enumVal in requireVal.nodes.resolve('enum'))
					{
						if (!AL_ENUMS_TO_BE_ADDED.contains(enumVal.att.name))
							AL_ENUMS_TO_BE_ADDED.push(enumVal.att.name);
					}
				}

				if (requireVal.hasNode.command)
				{
					for (commandVal in requireVal.nodes.command)
					{
						if (!AL_COMMANDS_TO_BE_ADDED.contains(commandVal.att.name))
							AL_COMMANDS_TO_BE_ADDED.push(commandVal.att.name);
					}
				}
			}
		}

		addLine('package rogue.internal.externs.openal.$folder;');
		addLine('');
		addLine('import cpp.Callable;');
		addLine('import cpp.Char;');
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

		if (namespace == 'al')
			addLine('import rogue.internal.externs.openal.$folder.ALC;');
		else if (namespace == 'alc')
			addLine('import rogue.internal.externs.openal.$folder.AL;');

		addLine('');

		for (typesVal in access.nodes.types)
		{
			if (typesVal.has.namespace && typesVal.att.namespace == namespace.toUpperCase())
			{
				for (typeVal in typesVal.nodes.type)
				{
					if (typeVal.att.category != 'basetype' && typeVal.att.category != 'define' && typeVal.att.category != 'funcpointer')
						continue;

					final name:Null<String> = getTypedefName(typeVal);

					final type:Null<String> = AL_EXTERNS_TO_FROM.get(name);

					if (type != null)
					{
						if (type.startsWith('Callable'))
						{
							addLine('typedef $name = $type;');
							addLine('');
						}
						else if (name.startsWith('_') || type == NO_TYPE_EXTERN)
						{
							addLine('@:include(\'AL/$namespace.h\')');
							addLine('@:native(\'$name\')');
							emptyClass(type == NO_TYPE_EXTERN ? name : type);
						}
						else
						{
							addLine('@:include(\'AL/$namespace.h\')');
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

							if (name == 'ALchar' || name == 'ALCchar')
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
			}
		}

		addLine('@:include(\'AL/$namespace.h\')');

		addLine('@:include(\'AL/alext.h\')');

		startWritingToClass(namespace.toUpperCase());

		for (enumName in AL_ENUMS_TO_BE_ADDED)
		{
			if (!AL_EXTERNS_TO_FROM.exists(enumName))
			{
				final name:String = fixStartWithNumberHaxeCrap(enumName.substring(enumName.indexOf('_') + 1));
				final ret:String = '${enumName.substring(0, enumName.indexOf('_'))}uint';

				addNative(enumName, 1);
				addLine('static var $name:$ret;', 1);
				addLine('');
			}
		}

		for (commandName in AL_COMMANDS_TO_BE_ADDED)
		{
			final commandObj:Dynamic = AL_COMMANDS.get(commandName);

			addNative(commandName, 1);
			addLine('static function ${doPrettyHaxeFunctionName(commandName)}(${commandObj.params.join(', ')}):${commandObj.ret};', 1);
			addLine('');
		}

		endWritingToClass();

		File.saveContent('../../source/rogue/internal/externs/openal/$folder/${namespace.toUpperCase()}.hx', AL_FILE.join('\n'));

		AL_COMMANDS = [];
		AL_ENUMS = [];

		AL_COMMANDS_TO_BE_ADDED = [];
		AL_ENUMS_TO_BE_ADDED = [];

		AL_FILE = [];
	}

	///////////////////////////////////////////////////////////////////////////////

	static function addLine(str:String, spacing:Int = 0):Void
	{
		AL_FILE.push(StringTools.rpad('', '	', spacing) + str);
	}

	static function removeLastEmptyLine():Void
	{
		if (AL_FILE[AL_FILE.length - 1].length == 0)
			AL_FILE.pop();
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
		Sys.println('Fetched `al.xml`.');

		if (!FileSystem.exists('registries'))
			FileSystem.createDirectory('registries');

		File.saveContent('registries/al.xml', data.toString());

		AL_CONTENT = Xml.parse(data.toString()).firstElement();

		Sys.println('Parsed `al.xml` successfully!');
	}

	static function errorGLFileRequest(error:String):Void
	{
		Sys.println('Unable to fetch `al.xml`.');
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
