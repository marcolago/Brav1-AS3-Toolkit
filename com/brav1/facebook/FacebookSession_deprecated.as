//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.facebook 
{
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class FacebookSession
	{
		public var base_domain:String;
		public var sig:String;
		public var session_key:String;
		public var access_token:String;
		public var uid:String;
		public var expires:String;
		public var secret:String;
		
		public function FacebookSession(object:Object) 
		{
			for (var p:* in object)
			{
				this[p] = object[p];
			}
		}
		
	}

}
