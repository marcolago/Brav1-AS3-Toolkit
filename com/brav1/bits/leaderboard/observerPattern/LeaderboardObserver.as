//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.bits.leaderboard.observerPattern 
{
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author marcolago www.marcolago.com 
	 */
	public class LeaderboardObserver implements ILeaderboardObserver
	{
		static public const LOAD_COMPLETE:String 	= "load complete";
		static public const LOAD_FAILED:String 		= "load failed";
		//
		static public const REMOTE_COMMAND:String 	= "remote command";
		static public const PREV_PAGE:String 		= "prev page";
		static public const NEXT_PAGE:String 		= "next page";
		static public const FIRST_PAGE:String 		= "first page";
		static public const LAST_PAGE:String 		= "last page";
		static public const USER_PAGE:String 		= "user page";
		static public const CUSTOM_PAGE:String 		= "custom page";
		static public const SEARCH_PAGE:String 		= "search page";
		static public const RELOAD_PAGE:String 		= "reload page";
		//
		private var _observers:Dictionary;
		private var _subjects:Array;
		
		public function LeaderboardObserver() 
		{
			_observers = new Dictionary();
			_subjects = new Array();
		}
		
		public function registerActors(observer:IObserver, subject:ISubject, change:String):void
		{
			if (_observers[change] == undefined)
			{
				_observers[change] = new Array();
			}
			var observerArray:Array = _observers[change];
			//
			if (checkDuplicates(observerArray, observer) == false)
			{
				observerArray.push(observer);
			}
			//
			if (checkDuplicates(_subjects, subject) == false)
			{
				_subjects.push(subject);
			}
			subject.registerObservers(this);
		}
		
		public function unregisterActors(observer:IObserver, _subject:ISubject, change:String):void
		{
			if (_observers[change] != undefined && _observers[change] is Array)
			{
				var observerArray:Array = _observers[change];
				//
				for (var i:uint = 0; i < observerArray.length; i++)
				{
					if (observerArray[i] === observer)
					{
						observerArray.splice(i, 1);
						break;
					}
				}
			}
			//
			for (i = 0; i < _subjects.length; i++)
			{
				if (_subjects[i] === _subjects)
				{
					_subjects.splice(i, 1);
					break;
				}
			}
		}
		
		public function update(subject:ISubject, change:String):void 
		{
			var observers:Array = _observers[change];
			for (var i:uint = 0; i < observers.length; i++)
			{
				IObserver(observers[i]).receiveNotification(subject, change);
			}
		}
		
		public function dispose():void
		{
			_observers = null;
			_subjects = null;
		}
		
		private function checkDuplicates(array:Array, element:*):Boolean 
		{
			for (var i:uint = 0; i < array.length; i++)
			{
				if (array[i] === element)
				{
					return true;
				}
			}
			return false;
		}
		
	}

}