package com.brav1.miniFW.layout
{
	import flash.display.DisplayObject;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.utils.Dictionary;
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	
	public class LayoutManager
	{
		private static var _instance:LayoutManager;
		private static var _actorsDict:Dictionary;
		private static var _constraint:LayoutConstraint;
		
		public function LayoutManager() 
		{
			
		}
		
		public static function getInstance():LayoutManager
		{			
			if (LayoutManager._instance == null)
			{
				LayoutManager._instance = new LayoutManager();
			}
			return LayoutManager._instance;
		}
		
		public static function getConstraint():LayoutConstraint
		{
			return LayoutManager._constraint;
		}
		
		public static function registerActor(actor:DisplayObject):void
		{
			if (LayoutManager._actorsDict == null)
			{
				LayoutManager._actorsDict = new Dictionary();
			}
			if (LayoutManager._actorsDict[actor] == null)
			{
				LayoutManager._actorsDict[actor] = actor
			}
		}
		
		public static function unregisterActor(actor:DisplayObject):void
		{
			if (LayoutManager._actorsDict != null)
			{
				if (LayoutManager._actorsDict[actor] != null)
				{
					delete LayoutManager._actorsDict[actor];
				}
			}
		}
		
		public static function resize(constraint:LayoutConstraint):void
		{
			LayoutManager._constraint = constraint;
			for (var a in _actorsDict)
			{
				_actorsDict[a].resize(constraint);
			}
		}
		
	}

}