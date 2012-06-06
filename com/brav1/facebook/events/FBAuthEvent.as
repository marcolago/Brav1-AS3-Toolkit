//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.facebook.events 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class FBAuthEvent extends Event 
	{
		static public const AUTH_RESPONSE_OK:String = "auth response ok";
		static public const AUTH_RESPONSE_NOT_OK:String = "auth response not ok";
		static public const AUTH_RESPONSE_LOGOUT:String = "auth response logout";
		
		private var _authResponse:Object;
		
		public function FBAuthEvent(type:String, authResponse:Object = null) 
		{ 
			super(type);
			_authResponse = authResponse;
		} 
		
		public override function clone():Event 
		{ 
			return new FBAuthEvent(type, _authResponse);
		}
		
		public function get authResponse():Object { return _authResponse; }
		
	}
	
}