package com.brav1.events 
{
	import flash.events.Event;
	
	public class CustomValueEvent extends Event 
	{
		public static const CUSTOM_VALUE:String = "custom value";
		private var _customValue:*;
		
		public function CustomValueEvent(type:String, customValue:*) 
		{ 
			super(type);
			_customValue = customValue;
			
		} 
		
		public override function clone():Event 
		{ 
			return new CustomValueEvent(type, _customValue);
		}
		
		public function get customValue():* { return _customValue; }
		
	}
	
}