//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.facebook.events 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class FBSessionEvent extends Event 
	{
		static public const SESSION_OK:String = "session ok";
		static public const SESSION_NOT_OK:String = "session not ok";
		static public const SESSION_LOGOUT:String = "session logout";
		
		private var _session:Object;
		
		public function FBSessionEvent(type:String, session:Object = null) 
		{ 
			super(type);
			_session = session;
		} 
		
		public override function clone():Event 
		{ 
			return new FBSessionEvent(type, _session);
		}
		
		public function get session():Object { return _session; }
		
	}
	
}