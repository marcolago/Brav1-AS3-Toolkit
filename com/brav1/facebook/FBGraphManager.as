//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.facebook 
{
	import com.adobe.serialization.json.JSON;
	import com.brav1.facebook.events.FBGraphApiEvent;
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.HTTPStatusEvent;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.external.ExternalInterface;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.system.LoaderContext;
	import flash.utils.Dictionary;

	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class FBGraphManager extends EventDispatcher
	{		
		static public const XML_FORMAT:String = "XML";
		static public const JSON_FORMAT:String = "json";
		static public const OBJECT_FORMAT:String = "object";
		static private var callCounter:uint = 0;
		//
		private var _authResponse:FacebookAuthResponse = null;
		private var _graphPath:String = "https://graph.facebook.com/";
		private var _loadersDict:Dictionary = new Dictionary();
		private var _format:String = JSON_FORMAT;
		private var _javascriptBackup:Boolean = false;
		private var _loaderContext:LoaderContext;
		
		public function FBGraphManager(authResponse:FacebookAuthResponse, javascriptBackup:Boolean = false, format:String = JSON_FORMAT):void
		{
			_authResponse = authResponse;
			_format = format;
			_javascriptBackup = javascriptBackup;
			_loaderContext = new LoaderContext(true);
		}
		
		public function callGraphApi(method:String, request:String, eventType:String):void
		{
			var urlRequest:URLRequest = new URLRequest(_graphPath + method + '?access_token=' + _authResponse.accessToken + request);
			urlRequest.method = URLRequestMethod.GET;
			//
			if (method.indexOf("/picture") != -1)
			{
				var byteLoader:Loader = new Loader();
				setDictionary(byteLoader.contentLoaderInfo, method, request, eventType);
				byteLoader.contentLoaderInfo.addEventListener(Event.COMPLETE, onLoadComplete);
				byteLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, onLoadComplete);
				byteLoader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onLoadComplete);
				//loader.addEventListener(HTTPStatusEvent.HTTP_STATUS, onHTTPStatus);
				//
				byteLoader.load(urlRequest, _loaderContext);
			}
			else
			{
				var loader:URLLoader = new URLLoader();
				setDictionary(loader, method, request, eventType);
				loader.addEventListener(Event.COMPLETE, onLoadComplete);
				loader.addEventListener(IOErrorEvent.IO_ERROR, onLoadComplete);
				loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onLoadComplete);
				//loader.addEventListener(HTTPStatusEvent.HTTP_STATUS, onHTTPStatus);
				//
				loader.load(urlRequest);
			}
		}
		
		private function setDictionary(loader:*, method:String, request:String, eventType:String):void
		{
			_loadersDict[loader] = {method:method, request:request, eventType:eventType};
		}
		
		// /me
		
		public function getMe(... fields):void
		{
			//trace("getMe");
			var request:String = "";
			if (fields.length > 0)
			{
				request += "&fields=";
			}
			callGraphApi("me", request, FBGraphApiEvent.ME);
		}
		
		public function getFriends(user:String, ... fields):void
		{
			var request:String = "";
			if (fields.length > 0)
			{
				request += "&fields=";
			}
			for (var i:uint = 0; i < fields.length; i++)
			{
				request += fields[i] + (i < fields.length - 1 ? "," : "");
			}
			callGraphApi(user + "/friends", request, FBGraphApiEvent.FRIENDS);
		}
		
		public function getAppMembers(appId:String):void
		{
			var request:String = "";
			callGraphApi(appId + "/members", request, FBGraphApiEvent.APP_MEMBERS);
		}
		
		public function getPicture(user:String = "me", pictureType:String = "square"):void
		{
			var request:String = "&type=" + pictureType;
			callGraphApi(user + "/picture", request, FBGraphApiEvent.PICTURE);
		}
		
		// callback on complete
		
		private function onLoadComplete(e:Event = null, responseObj:Object = null):void
		{
			//trace("onLoadComplete()");
			//
			var obj:Object = responseObj;
			//
			if (e != null && e.type == IOErrorEvent.IO_ERROR && _javascriptBackup == true && ExternalInterface.available)
			{
				//trace("running javascript backup functions");
				e.target.removeEventListener(Event.COMPLETE, onLoadComplete);
				var callBackReference:String = "onJavascriptBackup" + callCounter++;
				//trace(callBackReference);
				ExternalInterface.addCallback(callBackReference, onJavascriptBackup);
				ExternalInterface.call("jsas3bff.graphCall", _authResponse, _loadersDict[e.target], callBackReference);
				return;
			}
			else if (e != null && e.type == SecurityErrorEvent.SECURITY_ERROR)
			{
				obj = null;
			}
			else
			{
				if (obj == null && _format == JSON_FORMAT)
				{
					obj = JSON.decode(e.target.data);
				}
				else
				{
					try
					{
						obj = Bitmap(e.target.content);
					}
					catch(error:Error)
					{
						obj = e.target.data;
					}
				}
			}
			//
			var type:String;
			if (e != null)
			{
				e.target.removeEventListener(Event.COMPLETE, onLoadComplete);
				e.target.addEventListener(IOErrorEvent.IO_ERROR, onLoadComplete);
				e.target.addEventListener(SecurityErrorEvent.SECURITY_ERROR, onLoadComplete);
				type = e.type == SecurityErrorEvent.SECURITY_ERROR ? SecurityErrorEvent.SECURITY_ERROR : _loadersDict[e.target].eventType;
			}
			else if (obj != null)
			{
				type = obj.eventTypeForFlash;
				delete obj.eventTypeForFlash;
			}
			//
			if (obj != null)
			{
				try
				{
					if (obj.error != undefined)
					{
						type = FBGraphApiEvent.FAIL;
					}
				}
				catch (e:Error)
				{
					
				}
				finally
				{
					dispatchEvent(new FBGraphApiEvent(type, obj));
				}
			}
			else
			{
				dispatchEvent(new FBGraphApiEvent(FBGraphApiEvent.FAIL, null));
			}
		}
		
		private function onHTTPStatus(e:HTTPStatusEvent):void 
		{
			//trace(e.status);
			throw(new Error(e.status));
		}
		
		// javascript backup
		
		public function onJavascriptBackup(responseOjb:Object):void
		{
			//trace("onJavascriptBackup()");
			onLoadComplete(null, responseOjb);
		}
		
	}

}