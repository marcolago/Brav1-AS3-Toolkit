//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.bits.leaderboard.observerPattern 
{
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com 
	 */
	public interface IObserver 
	{
		function receiveNotification(subject:ISubject, change:String):void
	}
	
}