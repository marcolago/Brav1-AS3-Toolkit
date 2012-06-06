//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.utils 
{
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class Arrays
	{
		
		public function Arrays() 
		{
			
		}
		
		public static function shuffle(originalArray:Array, previousLast:* = null):Array
		{
			var arrayTmp:Array = originalArray.slice();
			var returnedArray:Array = new Array();
			var extractedArray:Array = new Array();
			//
			if (previousLast != null && originalArray.length > 1)
			{
				for (var i:uint = 0; i < arrayTmp.length; i++)
				{
					if (arrayTmp[i] === previousLast)
					{
						extractedArray = arrayTmp.splice(i, 1);
					}
				}
			}
			//
			while (arrayTmp.length > 0)
			{
				var randomIndex:uint = Math.abs(Math.random() * arrayTmp.length);
				var indexTmp:* = arrayTmp[randomIndex];
				returnedArray.push(indexTmp);
				//
				arrayTmp.splice(randomIndex, 1);
				if (extractedArray.length > 0)
				{
					arrayTmp.push(extractedArray.shift());
				}
			}
			//
			return returnedArray;
		}
		
		public static function orderedShuffle(originalArray:Array, rules:Array, forceFill:Boolean = true):Array
		{
			var arrayTmp:Array = originalArray.slice();
			var returnedArray:Array = new Array();
			//
			for (var i:uint = 0; i < originalArray.length; i++)
			{
				if (i < rules.length)
				{
					var shuffleIndex:uint = rules[i];
					returnedArray[shuffleIndex] = arrayTmp.shift();
				}
				else
				{
					returnedArray.push(arrayTmp.shift());
				}
			}
			//
			if (forceFill == true && originalArray.length > rules.length)
			{
				for (var j:uint = rules.length - 1; j < originalArray.length; j++)
				{
					returnedArray.push(arrayTmp.shift());
				}
			}
			//
			return returnedArray;
		}
		
	}

}