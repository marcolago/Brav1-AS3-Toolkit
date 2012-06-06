//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.utils
{
	import flash.display.Sprite;
	import flash.display.MovieClip;
	
	/**
	 * Classe di utilities per creazione di grafica al volo
	 * @author marcolago www.marcolago.com
	 */
	public class Drawing extends MovieClip
	{
		
		public function Drawing():void
		{
			
		}
		
		/**
		 * Disegna velocemente un rettangolo nel contenitore specificato
		 * @param ctx Il contenitore dove disegnare il rettangolo
		 * @param rectX La posizione x del rettangolo
		 * @param rectY La posizione y del rettangolo
		 * @param rectW La larghezza del rettangolo
		 * @param rectH L'altezza del rettangolo
		 * @param rectColor Il colore del rettangolo
		 * @param rectAlpha La trasparenza del rettangolo
		 * @param clearBeforDraw Effettua il clear della proprietà graphics prima di disegnare la forma
		 */
		public static function makeRect(ctx:Sprite, rectX:Number = 0, rectY:Number = 0, rectW:Number = 100, rectH:Number = 100, rectColor:Number = 0xCCCCCC, rectAlpha:Number = 1, clearBeforeDraw:Boolean = false):void
		{
			if (clearBeforeDraw == true)
			{
				ctx.graphics.clear();
			}
			ctx.graphics.beginFill(rectColor, rectAlpha);
			ctx.graphics.drawRect(rectX, rectY, rectW, rectH);
			ctx.graphics.endFill();
		}
	}
	
}