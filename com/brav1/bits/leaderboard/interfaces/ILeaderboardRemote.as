//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.bits.leaderboard.interfaces 
{
	import com.brav1.bits.leaderboard.observerPattern.ISubject;
	import flash.display.DisplayObjectContainer;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com 
	 */
	public interface ILeaderboardRemote extends ISubject
	{
		function setStatus(page:Number, hasPrev:Boolean, hasNext:Boolean, knowUser:Boolean):void
		function enable():void
		function disable():void
		function waitLoading():void
	}
	
}