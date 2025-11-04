package rogue;

/**
 * Represents an `Event` which is a strictly-typed signal and slot implementation, used for core event dispatching.
 * 
 * @see https://github.com/openfl/lime/blob/develop/src/lime/app/Event.hx
 */
#if !macro
@:genericBuild(rogue.internal.macros.EventMacro.build())
#end
class Event<T>
{
	/**
	 * Whether the event was canceled during the previous dispatch.
	 */
	public var canceled(default, null):Bool = false;

	@:noCompletion
	private var listeners:Array<T> = [];

	@:noCompletion
	private var priorities:Array<Int> = [];

	@:noCompletion
	private var repeat:Array<Bool> = [];

	/**
	 * Creates a new `Event` instance.
	 */
	public function new():Void {}

	/**
	 * Adds a new event listener.
	 * 
	 * @param listener A callback that matches the signature of the event
	 * @param once Whether to receive an event dispatch only once, or each time it is fired
	 * @param priority The priority for this listener, a higher priority will be dispatched sooner
	 */
	public function add(listener:T, once:Bool = false, priority:Int = 0):Void
	{
		#if !macro
		for (i in 0...priorities.length)
		{
			if (priority > priorities[i])
			{
				listeners.insert(i, cast listener);
				priorities.insert(i, priority);
				repeat.insert(i, !once);
				return;
			}
		}

		listeners.push(cast listener);
		priorities.push(priority);
		repeat.push(!once);
		#end
	}

	/**
	 * Marks the event as canceled, and stops the current event dispatch.
	 */
	public function cancel():Void
	{
		canceled = true;
	}

	/**
	 * Dispatches a new event callback to all listeners.
	 * The signature for the `dispatch` method depends upon the type of the `Event`.
	 * For example, an `Event` of type `Int->Int->Void` will create a `dispatch` method that takes two `Int` arguments, like `dispatch (1, 2);`
	 */
	@:nullSafety(Off)
	public var dispatch:Dynamic;

	/**
	 * Checks whether a callback is a listener to this event.
	 * 
	 * @param listener A callback that matches the signature of the event.
	 * @return Whether the callback is a listener
	 */
	public function has(listener:T):Bool
	{
		#if !macro
		for (l in listeners)
		{
			if (Reflect.compareMethods(l, listener))
				return true;
		}
		#end

		return false;
	}

	/**
	 * Removes an event listener.
	 * 
	 * @param listener A callback that matches the signature of the event
	 */
	public function remove(listener:T):Void
	{
		#if !macro
		var i = listeners.length;

		while (--i >= 0)
		{
			if (Reflect.compareMethods(listeners[i], listener))
			{
				listeners.splice(i, 1);
				priorities.splice(i, 1);
				repeat.splice(i, 1);
			}
		}
		#end
	}

	/**
	 * Removes all event listeners
	 */
	public function removeAll():Void
	{
		#if !macro
		var len = listeners.length;

		listeners.splice(0, len);
		priorities.splice(0, len);
		repeat.splice(0, len);
		#end
	}
}
