//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.loaders
{
	import flash.events.Event;
	
	public class BufferProgressEvent extends Event 
	{
		private var _progress:Number;
		public static const PROGRESS:String = "bufferProgress";
		
		public function BufferProgressEvent(type:String, progress:Number) 
		{ 
			super(type);
			_progress = progress;	
		} 
		
		public override function clone():Event 
		{ 
			return new BufferProgressEvent(type, _progress);
		}
		
		public function get progress():Number
		{
			return _progress;
		}
	}
	
}