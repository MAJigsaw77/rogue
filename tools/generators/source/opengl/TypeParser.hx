package opengl;

using StringTools;

typedef PointerInfo =
{
	base:String,
	pointerDepth:Int,
	constTo:Bool,
	constLevels:Array<Bool>
}

class TypeParser
{
	static final VALUE_TYPES:Map<String, String> = [
		'_cl_context' => 'CL_Context',
		'_cl_event' => 'CL_Event',
		'bool' => 'Bool',
		'char' => 'Char',
		'double' => 'Float',
		'float' => 'Float32',
		'int' => 'Int',
		'long' => 'Long',
		'ptrdiff_t' => 'PtrDiffT',
		'short' => 'Int16',
		'size_t' => 'SizeT',
		'unsigned char' => 'UInt8',
		'unsigned int' => 'UInt32',
		'unsigned long' => 'UInt32',
		'unsigned short' => 'UInt16',
		'void' => 'cpp.Void',
		'va_list' => 'VarList',
		'...' => 'Rest<VarArg>',
	];

	public static function parseCTypeToHaxeType(cType:String):String
	{
		var info:PointerInfo = parsePointerInfo(cType);

		var index:Int = 0;

		var baseType:String = VALUE_TYPES.exists(info.base) ? VALUE_TYPES.get(info.base) : info.base;

		if (!VALUE_TYPES.exists(info.base) && baseType.length > 0)
			baseType = baseType.charAt(0).toUpperCase() + baseType.substr(1);

		if (info.base.startsWith('GLchar') && info.pointerDepth > 0)
		{
			index = 1;
			baseType = info.constTo ? 'Const${info.base}Star' : 'Cast${info.base}Star';
		}

		for (i in index...info.pointerDepth)
		{
			if (info.constLevels[i])
				baseType = 'RawConstPointer<$baseType>';
			else
				baseType = 'RawPointer<$baseType>';
		}

		if (baseType == VALUE_TYPES.get('void'))
			baseType = 'Void';

		return baseType;
	}

	static function parsePointerInfo(cType:String):PointerInfo
	{
		cType = StringTools.trim(cType);
		cType = ~/ +/g.replace(cType, " ");

		if (StringTools.startsWith(cType, "struct "))
		{
			cType = StringTools.trim(cType.substr(7));
		}
		else if (StringTools.startsWith(cType, "const struct "))
		{
			cType = StringTools.trim(cType.substr(13));
		}

		var arrayMatch = ~/^(.+?)\s*\[[0-9]*\]$/;
		var pointerFromArray = 0;
		if (arrayMatch.match(cType))
		{
			cType = StringTools.trim(arrayMatch.matched(1));
			pointerFromArray = 1;
		}

		var constBase = false;
		if (StringTools.startsWith(cType, "const "))
		{
			constBase = true;
			cType = StringTools.trim(cType.substr(6));
		}

		var starPos = cType.indexOf("*");
		var base:String;
		var pointerPart:String = "";

		if (starPos == -1)
		{
			base = cType;
			if (base.endsWith(" const"))
			{
				constBase = true;
				base = StringTools.trim(base.substr(0, base.length - 6));
			}
		}
		else
		{
			base = StringTools.trim(cType.substr(0, starPos));
			if (base.endsWith(" const"))
			{
				constBase = true;
				base = StringTools.trim(base.substr(0, base.length - 6));
			}
			pointerPart = cType.substr(starPos);
		}

		var constLevels:Array<Bool> = [];
		var i = 0;
		while (i < pointerPart.length)
		{
			if (pointerPart.charAt(i) == '*')
			{
				i++;
				while (i < pointerPart.length && pointerPart.charAt(i) == ' ')
					i++;
				if (pointerPart.substr(i, 5) == "const")
				{
					constLevels.push(true);
					i += 5;
				}
				else
				{
					constLevels.push(false);
				}
				while (i < pointerPart.length && pointerPart.charAt(i) == ' ')
					i++;
			}
			else
			{
				i++;
			}
		}

		if (pointerFromArray > 0)
			constLevels.push(false);

		return {
			base: base,
			pointerDepth: constLevels.length,
			constTo: constBase,
			constLevels: constLevels
		};
	}
}
