//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.facebook.events 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class FBQueryEvent extends Event 
	{
		public static const QUERY_COMPLETE:String = "query complete";
		private var _data:*;
		private var _format:String;
		
		public function FBQueryEvent(type:String, data:*, format:String) 
		{ 
			super(type);
			_data = data;
			_format = format
		} 
		
		public override function clone():Event 
		{ 
			return new FBQueryEvent(type, data, _format);
		} 
		
		public function get data():* { return _data; }
		
		public function get format():String { return _format; }
		
	}
	
}