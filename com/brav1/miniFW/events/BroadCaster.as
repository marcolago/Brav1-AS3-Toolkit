package com.brav1.miniFW.events 
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class BroadCaster extends EventDispatcher
	{
		static private var _instance:BroadCaster = null;
		
		public function BroadCaster(sk:SingletonKey) 
		{
			if (sk == null)
			{
				throw(new Error("You can't instantiate this class"));
			}
		}
		
		static public function getInstance():BroadCaster
		{
			if (_instance == null)
			{
				_instance = new BroadCaster(new SingletonKey());
			}
			return _instance;
		}
		
		static public function dispatchEvent (event:Event) : Boolean
		{
			return BroadCaster.getInstance().dispatchEvent(event);
		}
		
		static public function addEventListener (type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
		{
			BroadCaster.getInstance().addEventListener(type, listener, useCapture, priority, useWeakReference);
		}
		
		static public function removeEventListener (type:String, listener:Function, useCapture:Boolean = false) : void
		{
			BroadCaster.getInstance().removeEventListener(type, listener, useCapture);
		}
		
	}

}

class SingletonKey
{
	
}