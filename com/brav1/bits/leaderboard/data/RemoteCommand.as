//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.bits.leaderboard.data 
{
	/**
	 * ...
	 * @author marcolago www.marcolago.com 
	 */
	public class RemoteCommand 
	{
		protected var _command:String;
		protected var _page:Number;
		protected var _searchString:String;
		
		public function RemoteCommand(command:String, page:Number = NaN, searchString:String = "") 
		{
			_command = command;
			_page = page;
			_searchString = searchString;
		}
		
		public function getCommand():String
		{
			return _command;
		}
		
		public function getPage():Number
		{
			return _page;
		}
		
		public function getSearchString():String
		{
			return _searchString;
		}
		
	}

}