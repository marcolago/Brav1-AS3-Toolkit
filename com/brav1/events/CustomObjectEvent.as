package com.brav1.events 
{
	import flash.events.Event;
	
	public dynamic class CustomObjectEvent extends Event 
	{
		public static const CUSTOM_OBJECT_VALUE:String = "custom object value";
		private var _object:Object = null;
		
		public function CustomObjectEvent(type:String, object:Object) 
		{ 
			super(type);
			_object = object;
			for (var p:* in _object)
			{
				this[p] = _object[p];
			}
		} 
		
		public override function clone():Event 
		{ 
			return new CustomValueEvent(type, _object);
		}
		
		public function get customObject():Object { return _object; }
		
	}
	
}