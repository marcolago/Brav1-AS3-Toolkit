//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.bits.leaderboard.interfaces 
{
	import com.brav1.bits.leaderboard.observerPattern.ISubject;
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com 
	 */
	public interface ILeaderboardLoader extends ISubject
	{
		function loadPrevPage():void
		function loadNextPage():void
		function loadFirstPage():void
		function loadLastPage():void
		function loadUserPage():void
		function loadPage(page:Number = NaN):void
		function loadSearchPage(searchString:String):void
	}
	
}