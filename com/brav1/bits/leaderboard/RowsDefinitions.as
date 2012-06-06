//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.bits.leaderboard 
{
	import com.brav1.bits.leaderboard.interfaces.ILeaderboardRow;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class RowsDefinitions 
	{
		static public const ODD_ROW:String = "odd";
		static public const EVEN_ROW:String = "even";
		static public const FIRST_ROW:String = "first";
		static public const SECOND_ROW:String = "second";
		static public const THIRD_ROW:String = "third";
		//
		private var _dictionary:Dictionary;
		
		public function RowsDefinitions(oddRowClass:Class, evenRowClass:Class, firstRowClass:Class, secondRowClass:Class, thirdRowClass:Class) 
		{
			_dictionary = new Dictionary();
			_dictionary[ODD_ROW] = oddRowClass;
			_dictionary[EVEN_ROW] = evenRowClass;
			_dictionary[FIRST_ROW] = firstRowClass;
			_dictionary[SECOND_ROW] = secondRowClass;
			_dictionary[THIRD_ROW] = thirdRowClass;
		}
		
		public function getRow(rowType:String):ILeaderboardRow
		{
			var RowClass:Class = _dictionary[rowType];
			return new RowClass();
		}
		
	}

}