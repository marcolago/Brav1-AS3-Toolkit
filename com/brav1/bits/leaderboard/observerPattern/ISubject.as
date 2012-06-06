//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.bits.leaderboard.observerPattern 
{
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com 
	 */
	public interface ISubject 
	{
		function registerObservers(observer:ILeaderboardObserver):void;
		function notify(change:String):void
		function getData():*
	}
	
}