//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.utils 
{
	public class Time
	{
		static public const SECONDS:Function = fromSeconds;
		static public const MINUTES:Function = fromMinutes;
		static public const HOURS:Function = fromHours;
		static public const DAYS:Function = fromDays;
		//
		static private const MILLISECONDS_OUT:String = "milliseconds";
		static private const SECONDS_OUT:String = "seconds";
		
		public function Time() 
		{
			
		}
		
		static public function getMilliseconds(time:Number, input:Function):Number
		{
			return input(time, MILLISECONDS_OUT);
		}
		
		static public function getSeconds(time:Number, input:Function):Number
		{
			return input(time, SECONDS_OUT);
		}
		
		// HELPERS
		
		static private function fromDays(t:Number, o:String):Number
		{
			return fromHours(t, o) * 24;
		}
		
		static private function fromHours(t:Number, o:String):Number
		{
			return fromMinutes(t, o) * 60;
		}
		
		static private function fromMinutes(t:Number, o:String):Number
		{
			return fromSeconds(t, o) * 60;
		}
		
		static private function fromSeconds(t:Number, o:String):Number
		{
			return t * (o == MILLISECONDS_OUT ? 1000 : 1);
		}
	}

}