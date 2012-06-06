//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.facebook 
{
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class FacebookAuthResponse
	{
		public var signedRequest:String;
		public var expiresIn:Number;
		public var accessToken:String;
		public var userID:String;
		
		public function FacebookAuthResponse(object:Object) 
		{
			for (var p:* in object)
			{
				this[p] = object[p];
			}
		}
		
	}

}
