package com.brav1.utils 
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.MovieClip;
	import flash.geom.ColorTransform;
	import flash.geom.Transform;
	
	public class TimeSavers 
	{
		
		public function TimeSavers() 
		{
			
		}
		
		public static function toColor(obj:DisplayObject, color:Number = NaN):void
		{
				var colorTransform:ColorTransform = new ColorTransform();
				if (!isNaN(color))
				{
					colorTransform.color = color;
				}
				obj.transform.colorTransform = colorTransform;
		}
		
		public static function safeRemove(obj:DisplayObject, context:DisplayObjectContainer, nullify:Boolean = false):void
		{
			if (obj != null)
			{
				if (obj is MovieClip)
				{
					(obj as MovieClip).gotoAndStop(1);
				}
				if (context.contains(obj))
				{
					context.removeChild(obj);
				}
				if (nullify == true)
				{
					obj = null;
				}
			}
		}
		
		public static function clearContainer(context:DisplayObjectContainer):void
		{
			while (context.numChildren > 0)
			{
				context.removeChildAt(0);
			}
		}
		
		public static function traceObject(obj:Object, traceType:Boolean = false):void
		{
			trace("traceObject");
			for (var p:* in obj)
			{
				if (traceType == true)
				{
					trace(p, obj[p], typeof p);
				}
				else
				{
					trace(p, obj[p]);
				}
			}
			trace("###########");
		}
		
	}
	
}