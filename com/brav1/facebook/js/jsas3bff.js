/**
* @author marcolago - http://marcolago.com
* This is the Javascript used to manage the Login Process with Javascript and Flash files.
* Include the Javascript SDK from Facebook: <script src="http://connect.facebook.net/en_US/all.js"></script>
* Include this file in every page that need to manage the user status.
* Init the script setting the callbacks if you use JavaSript to manage the user status
* then call the initFacebook method passing the required parameters:
*
* In your AS3 Classes instantiate a single instance of Facebookmanager object (FacebookManager.instance),
* configure the 2 parameters, debug and javascriptBackup
* and use it's methods to check and controls the user status.
* See the AS3 FacebookManager class documentation.
*/

var jsas3bff = function()
{
	
	// CONST
	
	var IDLE = 0;
	var FROM_CHECKSTATUS = 1;
	var FROM_LOGIN = 2;
	var FROM_LOGOUT = 3;
	
	// VARS
	
	var _ID = "";
	var _apiK = "";
	var _permissions = "";
	var _autoLogin = false;
	var _useFlash = false;
	var _flashID = undefined;
	var _useJS = false;
	var _jsObject = null;
	var _callStatus = 0;
	var _inited = false;
	var _fbAuthResponse = null;
	var _responseErrorCounter = 0;
	var _errorCounterLimit = 2;
	
	// JAVASCRIPT CALLBACKS
	var _jsNoAuthCallback = undefined;
	var _jsLoginCallback = undefined;
	var _jsLoginErrorCallback = undefined;
	var _jsLogoutCallback = undefined;
	var _jsDisconnectCallback = undefined;
	
	var counter = 0;

	// METHODS
	
	return {
	
		/**
		* Init the Facebook auth, this is... 
		* @param ID	String	your Application ID (see Facebook application configuration);
		* @param apiK	String	your Application API Key (see Facebook application configuration, used only for compatibility issue);
		* @param autoLogin	Boolean	if true, calls the login method automatically if the user is not logged in;
		* @param useFlash:	Boolean	if true, calls to flash object are done automatically;
		* @param flashID:	String	the ID of the Flash object in page;
		* @param useJS:	Boolean	if true, calls to javascript callbacks are done automatically;
		* @param flashID:	String	the ID of the Flash object in page;
		* @param callFlashMethods	Boolean	if true, the calls to flash where executed, use false if you are not use this script to login the user in Flash.
		*/
		initFacebook : function (ID, apiK, permissions, autoLogin, useFlash, flashID, useJS)
		{
			_ID = ID;
			_apiK = apiK;
			_permissions = permissions;
			_autoLogin = autoLogin || false;
			_useFlash = useFlash || false;
			_flashID = flashID || undefined;
			_useJS = useJS || false;
			//
			if (_autoLogin == true)
			{
				jsas3bff.doInit();
			}
		},
		
		doInit : function ()
		{
			FB.init({appId: _ID, status: true, cookie: true, xfbml: true, oauth: true});
			(function()
			{
				_inited = true;
				jsas3bff.checkStatus();
			}());
		},
		
		checkStatus : function ()
		{
			_callStatus = FROM_CHECKSTATUS;
			FB.getLoginStatus(jsas3bff.handleAuthResponse);
		},

		doLogin : function ()
		{
			_callStatus = FROM_LOGIN;
			_autoLogin = true;
			if (_inited)
			{
				FB.login(jsas3bff.handleAuthResponse, {scope:_permissions});
			}
			else
			{
				jsas3bff.doInit();
			}
		},

		doLogout : function ()
		{
			_callStatus = FROM_LOGOUT;
			FB.logout(jsas3bff.handleAuthResponse);
		},

		doDisconnect : function ()
		{
			FB.api({ method: 'Auth.revokeAuthorization' }, function(response)
			{
				notifyDisconnection();
			});
		},

		handleAuthResponse : function (response)
		{
			console.log("response");
			console.log(response);
			if (!response.authResponse && _responseErrorCounter++ < _errorCounterLimit)
			{
				if (_callStatus == FROM_LOGIN)
				{
					console.log("_callStatus == FROM_LOGIN");
					jsas3bff.notifyLoginError();
					return;
				}
				else if (_callStatus == FROM_LOGOUT)
				{
					console.log("_callStatus == FROM_LOGOUT");
					jsas3bff.notifyLogout();
					return;
				}
				else
				{
					if (_autoLogin == true)
					{
						console.log("_autoLogin == true");
						jsas3bff.doLogin();
						return;
					}
					else
					{
						console.log("_autoLogin != true");
						jsas3bff.notifyNoAuth();
						return;
					}
				}
			}
			else
			{
				_responseErrorCounter = 0;
				_autoLogin = false;
				_fbAuthResponse = response.authResponse
				if (_callStatus == FROM_CHECKSTATUS || _callStatus == FROM_LOGIN)
				{
					jsas3bff.manageLogin();
				}
			}
		},
		
		manageLogin : function ()
		{
			_callStatus = IDLE;
			if (_useFlash == true)
			{
				jsas3bff.passAuthResponseToFlash(_fbAuthResponse);
			}
			if (_useJS == true)
			{
				jsas3bff.callJS(_jsLoginCallback, true, _fbAuthResponse);
			}
		},

		notifyNoAuth : function ()
		{
			_callStatus = IDLE;
			jsas3bff.callFlash("notifyNoAuth", _useFlash);
			jsas3bff.callJS(_jsNoAuthCallback, _useJS);
		},

		notifyLoginError : function ()
		{
			_callStatus = IDLE;
			jsas3bff.callFlash("notifyLoginError", _useFlash);
			jsas3bff.callJS(_jsLoginErrorCallback, _useJS);
		},

		notifyLogout : function ()
		{
			_callStatus = IDLE;
			jsas3bff.callFlash("notifyLogout", _useFlash);
			jsas3bff.callJS(_jsLogoutCallback, _useFlash);
		},

		passAuthResponseToFlash : function (authResponse)
		{
			jsas3bff.callFlash("receiveAuthResponse", _useFlash, authResponse);
		},

		passResponseToFlash : function (response)
		{
			jsas3bff.callFlash("receiveResponse", _useFlash, response);
		},
		
		graphCall : function (authResponse, callProps, callback)
		{
			var _authResponse = authResponse || _fbAuthResponse;
			var dict = {};
			if(callProps.request != "")
			{
				var props = callProps.request.split("&");
				if (props[0] == "")
				{
					props.shift();
				}
				for (var i=0; i < props.length; i++)
				{
					var a = props[i].split("=");
					dict[a[0]] = a[1];
				}
			}
			dict.access_token = _fbAuthResponse.accessToken;
			FB.api('/' + callProps.method,
				dict,
				function(response)
				{
					if (_useFlash == true)
					{
						response.eventTypeForFlash = callProps.eventType;
						jsas3bff.callFlash(callback, true, response);
					}
					if (_useJS == true)
					{
						jsas3bff.callJS(callback, true, response);
					}
				}
			);
		},

		callFlash : function (methodName, forceCall)
		{
			var force = forceCall || _useFlash;
			if (_flashID != "" && _flashID != undefined && force == true)
			{
				var flash = document.getElementById(_flashID);
				//
				var f = "flash[methodName](";	
				if (arguments.length > 2)
				{
					for (var i = 2; i < arguments.length; i++)
					{
						f += "arguments[" + i + "]";
						if (i < arguments.length -1)
						{
							f += ",";
						}
					}
				}
				f += ")";
				//
				eval(f);
			}
		},

		callJS : function (methodName, forceCall)
		{
			if (methodName != undefined)
			{
				var force = forceCall || _useJS;
				if (force == true)
				{
					var f = "methodName(";	
					if (arguments.length > 2)
					{
						for (var i = 2; i < arguments.length; i++)
						{
							f += "arguments[" + i + "]";
							if (i < arguments.length -1)
							{
								f += ",";
							}
						}
					}
					f += ")";
					//
					eval(f);
				}
			}
		},
		
		setJsCallbacks : function (noAuthResponse, login, loginError, logout, disconnect)
		{
			_jsNoAuthCallback = noAuthResponse || undefined;
			_jsLoginCallback = login || undefined;
			_jsLoginErrorCallback = loginError || undefined;
			_jsLogoutCallback = logout || undefined;
			_jsDisconnectCallback = disconnect || undefined;
		}
	}
	
}();