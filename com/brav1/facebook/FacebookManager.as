//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.facebook 
{
	import com.brav1.facebook.events.FBAuthEvent;
	import com.brav1.facebook.events.FBGraphApiEvent;
	import com.brav1.facebook.FBGraphManager;
	import flash.events.EventDispatcher;
	import flash.external.ExternalInterface;
	import flash.system.Security;
	
	/**
	 * ...
	 * @author marcolago
	 */
	public class FacebookManager extends EventDispatcher
	{
		static private var _instance:FacebookManager;
		//
		private var _debug:Boolean = false;
		private var _javascriptBackup:Boolean = false;
		private var _authResponse:FacebookAuthResponse = null;
		private var _user:FacebookUser = null;
		private var _callBackOk:Function;
		private var _callBackKo:Function;
		private var _callBackLogout:Function;
		
		public function FacebookManager(privateClass:PrivateClass) 
		{
			Security.loadPolicyFile("http://graph.facebook.com/crossdomain.xml");
			Security.loadPolicyFile("https://graph.facebook.com/crossdomain.xml");
			Security.loadPolicyFile("http://profile.ak.fbcdn.net/crossdomain.xml");
			_instance = this;
			checkExternalInterface();
		}
		
		// auth response management
		
		/**
		 * init the ExternalInterface registering the javascript calls
		 */
		private function checkExternalInterface():void 
		{
			if (ExternalInterface.available)
			{
				ExternalInterface.addCallback("receiveAuthResponse", receiveAuthResponse);
				ExternalInterface.addCallback("notifyNoAuth", notifyNoAuth);
				ExternalInterface.addCallback("notifyLoginError", notifyLoginError);
				ExternalInterface.addCallback("notifyLogout", notifyLogout);
			}
		}
		
		/**
		 * Build a fake session from external values passed from server side login process
		 * @param	session	a fake FacebookSession object built using data retrieved from a login process
		 * @param	callBackOk	the callback method to call when correctly checked the user
		 * @param	callBackKo	the callback method to call in case of error 
		 * @param	callBackLogout	the callback to call when the application logouts the user
		 */
		/*public function setSession(session:FacebookSession, callBackOk:Function = null, callBackKo:Function = null, callBackLogout:Function = null):void
		{
			if (_debug) trace("setSession()");
			_session = session;
			checkSession(callBackOk, callBackKo, callBackLogout);
		}*/
		
		/**
		 * Check if there is a valid Facebook auth response
		 * @param	callBackOk	the callback method to call when correctly checked the user
		 * @param	callBackKo	the callback method to call in case of error 
		 * @param	callBackLogout	the callback to call when the application logouts the user
		 */
		public function checkAuth(callBackOk:Function = null, callBackKo:Function = null, callBackLogout:Function = null):void
		{
			if (_debug) trace("checkAuth()");
			//
			_callBackOk = callBackOk;
			_callBackKo = callBackKo;
			_callBackLogout = callBackLogout;
			if (_debug) trace("_authResponse", _authResponse);
			if (_authResponse != null)
			{
				checkUser();
			}
			else
			{
				dispatchAuthResponseKo();
			}
		}
		
		/**
		 * Create a fake user from external values passed from external login process
		 * @param	user	a fake FacebookUser object built using data retrieved from an external source
		 */
		public function setUser(user:FacebookUser):void
		{
			if (_debug) trace("setUser()");
			_user = user;
		}
		
		/**
		 * check if the user is a valid FacebookUser object calling the Graph API /me method
		 */
		public function checkUser():void
		{
			if (_debug) trace("checkUser()");
			if (_authResponse != null)
			{
				if (_debug) trace("checkUser() _authResponse not null");
				var graphManager:FBGraphManager = new FBGraphManager(_authResponse, true);
				graphManager.addEventListener(FBGraphApiEvent.ME, onMeComplete);
				graphManager.getMe();
			}
			else
			{
				if (_debug) trace("checkUser() _authResponse null");
				_user = null;
				dispatchAuthResponseKo();
			}
		}
		
		private function onMeComplete(e:FBGraphApiEvent):void 
		{
			if (_debug) trace("onMeComplete()");
			e.target.removeEventListener(FBGraphApiEvent.ME, onMeComplete);
			if (e.obj != null)
			{
				_user = new FacebookUser(e.obj);
				dispatchAuthResponseOk();
			}
			else
			{
				if (_debug) trace("onMeComplete() user null");
				_user = null;
				_authResponse = null;
				dispatchAuthResponseKo();
			}
		}
		
		/**
		 * start the login process calling the javascript registered method
		 */
		public function doLogin():void 
		{
			if (_debug) trace("doLogin()");
			if (ExternalInterface.available)
			{
				ExternalInterface.call("jsas3bff.doLogin()");
			}
		}
		
		/**
		 * invoke the javascript logout method to logout the current user
		 */
		public function doLogout():void 
		{
			if (_debug) trace("doLogout()");
			if (ExternalInterface.available)
			{
				ExternalInterface.call("jsas3bff.doLogout()");
			}
		}
		
		private function receiveAuthResponse(authResponse:Object):void
		{
			if (_debug) trace("receiveAuthResponse()", authResponse);
			parseAuthResponse(authResponse);
		}
		
		private function notifyNoAuth():void
		{
			if (_debug) trace("notifyNoAuth()");
			dispatchAuthResponseKo();
		}
		
		private function notifyLogout():void
		{
			if (_debug) trace("notifyLogout()");
			_authResponse = null;
			_user = null;
			dispatchLogout();
		}
		
		private function notifyLoginError():void
		{
			if (_debug) trace("notifyLoginError()");
			//showLoginError();
			dispatchAuthResponseKo();
		}
		
		private function parseAuthResponse(authResponse:Object):void
		{
			if (_debug) trace("parseAuthResponse()");
			if (authResponse != null)
			{
				_authResponse = new FacebookAuthResponse(authResponse);
				if (_debug) trace("_authResponse:", _authResponse);
				checkUser();
			}
			else
			{
				dispatchAuthResponseKo();
				if (_debug) trace ("authResponse is null");
			}
		}
		
		// events
		
		private function dispatchAuthResponseOk():void
		{
			dispatchEvent(new FBAuthEvent(FBAuthEvent.AUTH_RESPONSE_OK, _authResponse));
			if (_debug) trace("_callBackOk", _callBackOk);
			if (_callBackOk != null)
			{
				_callBackOk(_authResponse);
			}
		}
		
		private function dispatchAuthResponseKo():void
		{
			dispatchEvent(new FBAuthEvent(FBAuthEvent.AUTH_RESPONSE_NOT_OK));
			if (_debug) trace("_callBackKo", _callBackKo);
			if (_callBackKo != null)
			{
				_callBackKo();
			}
		}
		
		private function dispatchLogout():void
		{
			dispatchEvent(new FBAuthEvent(FBAuthEvent.AUTH_RESPONSE_LOGOUT));
			if (_debug) trace("_callBackLogout", _callBackLogout);
			if (_callBackLogout != null)
			{
				_callBackLogout();
			}
		}
		
		public function get authResponse():FacebookAuthResponse { return _authResponse; }
		
		public function get user():FacebookUser { return _user; }
		
		/**
		 * returns a Singleton instance of the FacebookManager Class
		 */
		static public function get instance():FacebookManager
		{
			if (_instance == null)
			{
				_instance = new FacebookManager(new PrivateClass());
			}
			return _instance;
		}
		
		/**
		 * set the debug parameter for the FacebookManager object
		 * setting to true enables the traces for this object
		 */
		public function set debug(value:Boolean):void 
		{
			_debug = value;
		}
		
		/**
		 * set the javascriptBackup parameter for the FacebookManager object
		 * set this parameter to true to make a backup call of every method that returns an IOError in some browsers
		 * Booh, Facebook developers, Booh!
		 */
		public function set javascriptBackup(value:Boolean):void 
		{
			_javascriptBackup = value;
		}
		
	}

}

// private class for singleton pattern purposes
class PrivateClass
{
	public function PrivateClass():void {}
}