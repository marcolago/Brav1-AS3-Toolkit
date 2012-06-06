//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.facebook 
{
	import com.brav1.facebook.events.FBAuthEvent;
	import com.brav1.facebook.events.FBQueryEvent;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class FBQueryManager extends EventDispatcher
	{
		static public const XML_FORMAT:String = "XML";
		static public const JSON_FORMAT:String = "json";
		
		private const QUERY_URL:String = "https://api.facebook.com/method/fql.query?query=SELECT ";
		private var _authReponse:FacebookAuthResponse;
		private var _format:String = JSON_FORMAT;
		
		/**
		 * create an FBQueryManager object to make a FQL query
		 * @param	authResponse a valid FacebookAuthResponse object
		 * @param	format	the format for the responses from API calls
		 */
		public function FBQueryManager(authResponse:FacebookAuthResponse, format:String = JSON_FORMAT) 
		{
			_authReponse = authResponse;
			_format = format;
		}
		
		/**
		 * a shortcut to do a friend select query
		 * @param	... props	the table fields to be returnet by the query
		 */
		public function selectFriends(... props):void
		{
			var queryString:String = QUERY_URL;
			for (var i:uint = 0; i < props.length; i++)
			{
				queryString += props[i] + (i < props.length - 1 ? "," : " ");
			}
			queryString += 'FROM user WHERE uid in (SELECT uid2 FROM friend WHERE uid1 = ' + _authReponse.userID + ')&access_token=' + _authReponse.accessToken + '&format=' + _format
			//
			doQuery(queryString);
		}
		
		/**
		 * makes a single query on the Facebook DB
		 * @param	queryString	the string of the query
		 */
		private function doQuery(queryString:String):void
		{
			var request:URLRequest = new URLRequest(queryString);
			var loader:URLLoader = new URLLoader();
			loader.addEventListener(Event.COMPLETE, onQueryComplete);
			loader.load(request);
		}
		
		private function onQueryComplete(e:Event):void 
		{
			dispatchEvent(new FBQueryEvent(FBQueryEvent.QUERY_COMPLETE, e.target.data, _format));
		}
		
		private function checkAuthResponse():Boolean
		{
			var result:Boolean = false;
			if (_authReponse == null)
			{
				dispatchEvent(new FBAuthEvent(FBAuthEvent.AUTH_RESPONSE_NOT_OK));
				throw(new Error("authResponse is not defined"));
			}
			else
			{
				result = true;
			}
			return result;
		}
		
		// GETTER SETTER
		
		public function set format(value:String):void 
		{
			_format = value;
		}
		
	}

}