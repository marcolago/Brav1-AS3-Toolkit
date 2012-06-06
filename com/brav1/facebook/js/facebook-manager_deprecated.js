/**
* @author marcolago - http://marcolago.com
* This is the Javascript used to manage the Login Process with Javascript and Flash files.
* Include the Javascript SDK from Facebook: <script src="http://connect.facebook.net/en_US/all.js"></script>
* Include this file in every page that need to manage the user status.
* Init the script copying the lines from START_INIT and END_INIT in every page,
* then call the init method passing the required parameters:
*
* START_INIT
<script type="text/javascript">
	// initialize the library with the API keywindow.fbAsyncInit = function()
	basepath = "http://bacidev.bitmama.it/bacetti/";
	startFacebook('your App ID', 'your API Key', forseFirstLogin, "your flash object ID", callFlashMethods);
</script>
* END_INIT
*
* In your AS3 Classes instantiate a single instance of Facebookmanager object (FacebookManage.instance),
* configure the 2 parameters, debug and javascriptBackup
* and use it's methods to check and controls the user status.
* See the AS3 FacebookManager class documentation.
*/

var _fbSession = null;
var _forceFirstLogin = false;
var _callFlashMethods = false;
var _flashID = "";
var fromLogin = false;
var fromLogout = false;
var basepath = "";

/**
* Init the Facebook session, this is 
* @param ID	String	your Application ID (see Facebook application configuration);
* @param apiK	String	your Application API Key (see Facebook application configuration, used only for compatibility issue);
* @param forceFirstLogin	Boolean	if true, calls the login method if the user is not logged in when the page renders;
* @param flashID:	String	the ID of the Flash object in page;
* @param callFlashMethods	Boolean	if true, the calls to flash where executed, use false if you are not use this script to login the user in Flash.
*/
function startFacebook(ID, apiK, forceFirstLogin, flashID, callFlashMethods)
{
	_forceFirstLogin = forceFirstLogin;
	_callFlashMethods = callFlashMethods;
	//
	if (flashID!=undefined)
	{
		_flashID=flashID;
	}
	FB.init({appId: ID, apiKey: apiK, status: true, cookie: true, xfbml: true});
	(function()
	{
		checkStatus();
	}());
}

function checkStatus()
{
	//alert("js checkStatus()");
	FB.getLoginStatus(handleSessionResponse);
}

function doLogin()
{
	//alert("js doLogin()");
	fromLogin = true;
	FB.login(handleSessionResponse, {perms:'publish_stream,offline_access'});
}

function doLogout()
{
	//alert("js doLogout()");
	fromLogout = true;
	FB.logout(handleSessionResponse);
}

function doDisconnect()
{
	//alert("js doDisconnect()");
	FB.api({ method: 'Auth.revokeAuthorization' }, function(response)
	{
		notifyDisconnection();
	});
}

function handleSessionResponse(response)
{
	//alert("handleSessionResponse() " + response.session);
	if (!response.session)
	{
		if (fromLogin == true)
		{
			notifyLoginError();
			fromLogin = false;
		}
		else if (fromLogout == true)
		{
			notifyLogout();
			fromLogout = false;
		}
		else
		{
			// //alert("Errore: utente non disponibile");
			if (_forceFirstLogin == true)
			{
				doLogin();
			}
			else
			{
				notifyNoSession();
			}
		}
		return;
	}
	else
	{
		_forceFirstLogin = false;
		_fbSession = FB.getSession();
		passSessionToFlash(_fbSession);
		fromLogin = false;
	}
	/* for (var p in response)
	{
		//alert(p + ": " + response[p]);
	} */
}

function callFlash(methodName, forceCall)
{
	var force = forceCall || _callFlashMethods;
	if (_flashID != "" && _flashID != undefined && force == true)
	{
		var flash = document.getElementById(_flashID);
		var args = callFlash.arguments;	
		//
		var f = "flash[methodName](";	
		if (args.length > 2)
		{
			for (var i = 2; i < args.length; i++)
			{
				f += "args[" + i + "]";
				if (i < args.length -1)
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

function notifyNoSession()
{
	callFlash("notifyNoSession", _callFlashMethods);
}

function notifyLoginError()
{
	callFlash("notifyLoginError", _callFlashMethods);
}

function notifyLogout()
{
	callFlash("notifyLogout", _callFlashMethods);
}

function passSessionToFlash(session)
{
	callFlash("receiveSession", _callFlashMethods, session);
}

function passResponseToFlash(response)
{
	callFlash("receiveResponse", _callFlashMethods, response);
}

function graphCall(session, callProps, callback)
{
	// var debugDiv = document.getElementById("debug");
	// debugDiv.innerHTML = "session: " + session.access_token;
	// alert("graphCall() " + callback + " " + callProps.request);
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
	dict.access_token = session.access_token;
	FB.api('/' + callProps.method,
		dict,
		function(response)
		{
			response.eventTypeForFlash = callProps.eventType;
			callFlash(callback, true, response);
		}
	);
}

function publishPost(friend, cartiglio, sezione)
{
	var link = basepath + "#/" + sezione + "/cartiglio" + cartiglio;
	FB.api(
		{
		   method: 'stream.publish',
		   message: "",
		   attachment: {
			   name: "Bacetto della fortuna",
			   caption: "Bacetti ti regala tutta la magia delle stelle cadenti!",
			   description: "Ora c'è una nuova stella che scintilla per te nel firmamento con dentro un cartiglio della fortuna da leggere e condividere!",
			   href: link,
			   media: [{ type: "image", src: basepath + "static/img/facebook-img.jpg", href: link}]
		   },
		   user_prompt_message: "user message prompt",
		   target_id: friend,
		   auto_publish: true,
		   action_links: [{text:"Guarda la tua stella",href:link}]
		},
		function(response) {
			//var resp = eval( '(' + response + ')' );
			if (!response || response.error_code)
			{
				//alert('Post was not published.');
				callFlash("notifyPostKo", _callFlashMethods);
			}
			else
			{
				//alert('Post was published.');
				callFlash("notifyPostOk", _callFlashMethods);
			}
		}
	);
}