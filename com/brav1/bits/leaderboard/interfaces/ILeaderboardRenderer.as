//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.bits.leaderboard.interfaces 
{
	import com.brav1.bits.leaderboard.data.LeaderboardData;
	import com.brav1.bits.leaderboard.RowsDefinitions;
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com 
	 */
	public interface ILeaderboardRenderer
	{
		function render(leaderBoardData:LeaderboardData, rowsDefinitions:RowsDefinitions):void
		function waitLoading():void
		function clearRows():void
	}
	
}