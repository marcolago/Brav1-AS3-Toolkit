//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.utils
{
	import flash.display.Loader;
	import flash.events.TimerEvent;
	import flash.external.ExternalInterface;
	import flash.net.URLRequest;
	import flash.utils.Timer;
	
	public class Tracking 
	{
		private static var trackTimer:Timer = new Timer(500);
		private static var trackingList:Array = new Array();
		private static var accountList:Array = new Array();
		
		public function Tracking() 
		{
			throw(new Error("Non è possibile istanziare questa classe"));
		}
		
		public static function addAccount(accountLabel:String):void
		{
			accountList.push(accountLabel);
		}
		
		public static function trackSophus(s:String):void
		{
			if (ExternalInterface.available)
			{
				ExternalInterface.call("tc_log('" + s + "')");
			}	
		}
		
		public static function trackGoogleOld(s:String):void
		{
			if (ExternalInterface.available)
			{
				ExternalInterface.call("pageTracker._trackPageview('" + s +"')");
			}	
		}
		
		public static function trackGoogle(s:String):void
		{
			var trackString:String = "_gaq.push(['_trackPageview', '" + s + "'])";
			addTrack(trackString);
			//
			for (var i:uint = 0; i < accountList.length; i++)
			{
				addTrack(trackString.replace("_trackPageview", accountList[i] + "._trackPageview"));
			}
		}
		
		public static function trackGoogleEvent(category:String = "", action:String = "", label:String = "", value:Number = NaN):void
		{
			var trackString:String = "_gaq.push(['_trackEvent', '";
			trackString += safeString(category);
			trackString += "', '";
			trackString += safeString(action);
			trackString += "', '";
			trackString += safeString(label);
			trackString += "'";
			if (isNaN(value) == false)
			{
				trackString += ", " + safeString(String(value));
			}
			trackString += "])"
			//
			addTrack(trackString);
			//
			for (var i:uint = 0; i < accountList.length; i++)
			{
				addTrack(trackString.replace("_trackEvent", accountList[i] + "._trackEvent"));
			}
		}
		
		public static function trackImg(s:String):void
		{
			var loader:Loader = new Loader();
			var urlRequest:URLRequest = new URLRequest(s);
			loader.load(urlRequest);
		}
		
		static private function addTrack(s:String):void
		{
			if (trackingList.length == 0) 
			{
				trackTimer.addEventListener(TimerEvent.TIMER, doTrack);
				trackTimer.start();
			}
			trackingList.push(s);
		}
		
		private static function doTrack(e:TimerEvent = null):void
		{
			if (trackingList.length == 0)
			{
				trackTimer.reset();
				trackTimer.removeEventListener(TimerEvent.TIMER, doTrack);
			}
			else
			{
				//trace("Track:", trackingList[0]);
				ExternalInterface.call(trackingList.shift());
			}
		}
		
		static private function safeString(stringToSafe:String):String
		{
			var s:String = stringToSafe;
			s = Strings.replaceAll(s, "'", "\\'");
			s = Strings.replaceAll(s, '"', '\\"');
			s = Strings.replaceAll(s, ",", "\\,");
			return s;
		}
		
	}
	
}