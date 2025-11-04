package rogue.internal.macros;

#if macro
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;

using haxe.macro.Tools;

class EventMacro
{
	public static function build():Null<Type>
	{
		var typeArgs;
		var typeResult;

		switch (Context.follow(Context.getLocalType()))
		{
			case TInst(_, [Context.follow(_) => TFun(args, result)]):
				typeArgs = args;
				typeResult = result;
			case TInst(localType, _):
				Context.fatalError('Invalid number of type parameters for ${localType.toString()}', Context.currentPos());
				return null;
			default:
				throw false;
		}

		var typeParam:Type = TFun(typeArgs, typeResult);

		var typeString:String = '';

		if (typeArgs.length == 0)
			typeString = 'Void->';
		else
		{
			for (arg in typeArgs)
				typeString += arg.t.toString() + '->';
		}

		typeString += typeResult.toString();

		typeString = StringTools.replace(typeString, '->', '_');
		typeString = StringTools.replace(typeString, '.', '_');
		typeString = StringTools.replace(typeString, '<', '_');
		typeString = StringTools.replace(typeString, '>', '_');
		typeString = StringTools.replace(typeString, ',', '_');
		typeString = StringTools.replace(typeString, ' ', '');

		while (typeString.indexOf('__') != -1)
			typeString = StringTools.replace(typeString, '__', '_');

		if (StringTools.startsWith(typeString, '_'))
			typeString = typeString.substr(1);

		if (StringTools.endsWith(typeString, '_'))
			typeString = typeString.substr(0, typeString.length - 1);

		var name:String = 'Event_$typeString';

		try
		{
			Context.getType('rogue.' + name);
		}
		catch (e:Dynamic)
		{
			var pos:Position = Context.currentPos();
			var fields:Array<Field> = Context.getBuildFields();
			var argName:String = '';
			var argNames:Array<Expr> = [];
			var args:Array<FunctionArg> = [];

			for (i in 0...typeArgs.length)
			{
				argName = i > 0 ? ('a' + i) : 'a';
				argNames.push(Context.parse(argName, pos));
				args.push({name: argName, type: typeArgs[i].t.toComplexType()});
			}

			var i:Int = 0;
			var field:Field;

			while (i < fields.length)
			{
				field = fields[i];

				if (field.name == 'listeners' || field.name == 'dispatch')
					fields.remove(field);
				else
					i++;
			}

			fields.push({
				name: 'listeners',
				access: [APrivate],
				kind: FVar(TPath({
					pack: [],
					name: 'Array',
					params: [TPType(typeParam.toComplexType())]
				}), macro []),
				pos: pos
			});

			fields.push({
				name: 'dispatch',
				access: [APublic],
				kind: FFun({
					args: args,
					expr: macro
					{
						canceled = false;

						var listeners = listeners;
						var repeat = repeat;
						var i = 0;

						while (i < listeners.length)
						{
							listeners[i]($a{argNames});

							if (!repeat[i])
								this.remove(cast listeners[i]);
							else
								i++;

							if (canceled)
								break;
						}
					},
					params: [],
					ret: macro :Void
				}),
				pos: pos
			});

			Context.defineType({
				pos: pos,
				pack: ['rogue'],
				name: name,
				kind: TDClass(),
				fields: fields,
				params: [{name: 'T'}],
				meta: [{name: ':noCompletion', pos: pos}]
			});
		}

		return TPath({pack: ['rogue'], name: name, params: [TPType(typeParam.toComplexType())]}).toType();
	}
}
#end
