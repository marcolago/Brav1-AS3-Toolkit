//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.utils 
{
	public class Numbers
	{
		
		public function Numbers() 
		{
			
		}
		
		/**
		* pigreco : 180 = radianti : gradi
		*/
		public static function radians(degrees:Number):Number
		{
			return degrees * Math.PI / 180;
		}
		
		public static function degrees(radians:Number):Number
		{
			return radians * 180 / Math.PI;
		}
		
		/**
		* praticamente il Number.toFixed();
		*/
		public static function cutDecimals(number:Number, precision:Number, useString:Boolean = false):Number
		{
			var result:Number;
			//
			if (useString == false)
			{
				result = Math.round(number * precision) / precision;
			}
			else
			{
				result = Math.round(number * precision);
				var resultString:String = String(result);
				var lgh:Number = resultString.indexOf(".") != -1 ? resultString.indexOf(".") : resultString.length;
				resultString = resultString.substring(0, lgh);
				result = Number(resultString);
			}
			return result;
		}
	}

}