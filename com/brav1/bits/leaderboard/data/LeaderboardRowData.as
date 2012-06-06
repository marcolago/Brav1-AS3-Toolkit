//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.bits.leaderboard.data
{
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class LeaderboardRowData 
	{	
		protected var _userName:String;
		protected var _position:Number;
		protected var _level:Number;
		protected var _score:Number;
		
		public function get userName():String 
		{
			return _userName;
		}
		
		public function set userName(value:String):void 
		{
			_userName = value;
		}
		
		public function get position():Number 
		{
			return _position;
		}
		
		public function set position(value:Number):void 
		{
			_position = value;
		}
		
		public function get level():Number 
		{
			return _level;
		}
		
		public function set level(value:Number):void 
		{
			_level = value;
		}
		
		public function get score():Number 
		{
			return _score;
		}
		
		public function set score(value:Number):void 
		{
			_score = value;
		}
		
	}

}