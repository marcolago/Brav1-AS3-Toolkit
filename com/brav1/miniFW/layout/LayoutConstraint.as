package com.brav1.miniFW.layout
{
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	
	public dynamic class LayoutConstraint
	{
		protected var _x:Number = 0;
		protected var _y:Number = 0;
		protected var _stageWidth:Number = 990;
		protected var _stageHeight:Number = 560;
		
		
		public function LayoutConstraint()
		{
		}
		
		public function addProp(propName:String, propValue:*):void
		{
			this[propName] = propValue;
			this.setPropertyIsEnumerable(propName, true);
		}
		
		public function removeProp(propName:String):void
		{
			delete this.propName;
		}
		
		//

		public function get x():Number { return _x; }
		
		public function set x(value:Number):void {}
		
		//
		
		public function get y():Number { return _y; }
		
		public function set y(value:Number):void {}
		
		//
		
		public function get stageWidth():Number { return _stageWidth; }
		
		public function set stageWidth(value:Number):void 
		{
			_stageWidth = value;
		}
		
		//
		
		public function get stageHeight():Number { return _stageHeight; }
		
		public function set stageHeight(value:Number):void 
		{
			_stageHeight = value;
		}		
	}
}