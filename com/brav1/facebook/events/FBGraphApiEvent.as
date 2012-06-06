//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.facebook.events 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author marcolago
	 */
	public class FBGraphApiEvent extends Event 
	{
		static public const COMPLETE:String = "graph complete";
		static public const ME:String = "me";
		static public const FRIENDS:String = "friends";
		static public const APP_MEMBERS:String = "app members";
		static public const PICTURE:String = "picture";
		static public const FAIL:String = "fail";
		static public const SECURITY_ERROR:String = "securityError";
		
		private var _obj:Object;
		
		public function FBGraphApiEvent(type:String, obj:Object) 
		{ 
			super(type, bubbles, cancelable);
			_obj = obj;
		} 
		
		public override function clone():Event 
		{ 
			return new FBGraphApiEvent(type, _obj);
		} 
		
		public function get obj():Object { return _obj; }
		
	}
	
}