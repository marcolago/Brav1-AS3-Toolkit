//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.bits.leaderboard.data 
{
	/**
	 * ...
	 * @author marcolago www.marcolago.com 
	 */
	public class LeaderboardData 
	{
		protected var _records:Array = new Array();
		protected var _totalPages:Number;
		protected var _currentPage:Number;
		protected var _prev:Boolean = false;
		protected var _next:Boolean = false;
		protected var _error:String = "";
		
		public function addRecord(rowData:LeaderboardRowData):void
		{
			_records.push(rowData);
		}
		
		public function getRecord(index:uint):LeaderboardRowData
		{
			return _records[index];
		}
		
		public function sortOn(names:*, options:*=0):void
		{
			_records.sortOn(names, options);
		}
		
		public function get length():Number
		{
			return _records.length;
		}
		
		// GETTER SETTER
		
		public function get totalPages():Number 
		{
			return _totalPages;
		}
		
		public function set totalPages(value:Number):void 
		{
			_totalPages = value;
		}
		
		public function get currentPage():Number 
		{
			return _currentPage;
		}
		
		public function set currentPage(value:Number):void 
		{
			_currentPage = value;
		}
		
		public function get prev():Boolean 
		{
			return _prev;
		}
		
		public function set prev(value:Boolean):void 
		{
			_prev = value;
		}
		
		public function get next():Boolean 
		{
			return _next;
		}
		
		public function set next(value:Boolean):void 
		{
			_next = value;
		}
		
		public function get error():String 
		{
			return _error;
		}
		
		public function set error(value:String):void 
		{
			_error = value;
		}
		
	}

}