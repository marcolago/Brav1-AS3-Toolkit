//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.utils 
{
	import flash.net.navigateToURL;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	
	public class Navigation 
	{
		
		public function Navigation() 
		{
			
		}
		
		public static function getURL(stringURI:String, blank:Boolean = false, method:String = "GET", dataObject:Object = null, contentType:String = ""):void
		{
			var request:URLRequest = new URLRequest(stringURI);
			request.method = method;
			request.data = dataObject;
			request.contentType = contentType;
			navigateToURL(request, blank ? "_blank" : "_self");
		}
		
	}
	
}