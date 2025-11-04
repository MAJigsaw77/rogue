package cpp;

abstract CastWCharTStar(RawPointer<WCharT>) to (RawPointer<WCharT>)
{
	inline function new(s:String)
		this = cast untyped s.__s;

	@:from
	static public inline function fromString(s:String)
		return new CastWCharTStar(s);

	@:to
	public inline function toPointer()
		return this;
}
