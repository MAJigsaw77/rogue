package cpp;

extern abstract ConstWCharTStar(RawConstPointer<WCharT>) to (RawConstPointer<WCharT>)
{
	inline function new(s:String)
		this = untyped s.__s;

	@:from
	static public inline function fromString(s:String):ConstWCharTStar
		return new ConstWCharTStar(s);

	@:to extern public inline function toString():String
		return new String(untyped this);

	@:to extern public inline function toPointer():RawConstPointer<WCharT>
		return this;
}
