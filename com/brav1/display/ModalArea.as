package com.brav1.display 
{
	import flash.display.Sprite;
	import flash.display.DisplayObject;
	
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class ModalArea extends Sprite
	{
		private var children:Array = new Array();
		private var currentChild:DisplayObject;
		
		public function ModalArea() 
		{
			
		}
		
		override public function addChild(child:DisplayObject):DisplayObject
		{
			if (currentChild != null)
			{
				children.push(super.removeChild(currentChild));
			}
			currentChild = super.addChild(child);
			return child;
		}
		
		override public function removeChild(child:DisplayObject):DisplayObject
		{
			super.removeChild(child);
			if (children.length > 0)
			{
				currentChild = super.addChild(children.pop());
			}
			return child;
		}
		
		public function removeAllChildren():void
		{
			while (numChildren > 0 && numChildren <)
			{
				removeChildAt(0);
			}
		}
		
	}

}