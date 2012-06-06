//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.utils 
{
	import flash.display.DisplayObjectContainer;
	import flash.display.InteractiveObject;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	
	/**
	 * Classe di utilities per i bottoni
	 * @author marcolago www.marcolago.com
	 */
	public class Buttons extends MovieClip 
	{
		
		public function Buttons():void 
		{
			
		}
		
		/**
		 * Metodo per il setting di un clip in pulsante
		 * @param	io	l'InteractiveObject da settare
		 * @param	useHand	settare a false se non si vuole far comparire la mano sull'over
		 * @param	enableChildren	settare a true se si vuole abilitare i figli all'intercettare gli eventi del mouse
		 * @param	isTabEnabled	settare a true se si vuole abilitare l'oggetto alla tabulazione
		 */
		public static function makeButton(io:InteractiveObject, useHand:Boolean = true, enableChildren:Boolean = false, isTabEnabled:Boolean = false):InteractiveObject
		{
			io.mouseEnabled = true;
			io.tabEnabled = isTabEnabled;
			//
			if (io is Sprite)
			{
				Sprite(io).buttonMode = true;
				Sprite(io).useHandCursor = useHand;
			}
			if (io is DisplayObjectContainer && enableChildren == false)
			{
				DisplayObjectContainer(io).mouseChildren = false;
				DisplayObjectContainer(io).tabChildren = false;
			}
			//
			return io;
		}
		
		/**
		 * Metodo per mettere temporaneamente in pausa un pulsante
		 * @param	io	l'InteractiveObject da settare
		 */
		public static function unmakeButton(io:InteractiveObject, preserveTab:Boolean = false):InteractiveObject
		{
			io.mouseEnabled = false;
			io.tabEnabled = preserveTab;
			//
			if (io is Sprite)
			{
				Sprite(io).buttonMode = false;
				Sprite(io).useHandCursor = false;
			}
			//
			if (io is DisplayObjectContainer)
			{
				DisplayObjectContainer(io).mouseChildren = true;
				DisplayObjectContainer(io).tabChildren = true;
			}
			//
			return io;
		}
		
		/**
		 * Metodo per creare un movieclip settato a pulsante al volo da una classe.
		 * La classe deve essere concatenata ad un MovieClip con le seguneti caratteristiche
		 * @param	classe stringa della classe da usare (completa di package)
		 * @param	testo stringa di testo da settare come etichetta del pulsante
		 * @param	useHand settare a false se non si vuole far comparire la mano sull'over
		 * @return	restituisce l'istanza del pulsante creato come MovieClip
		 */
		public static function buildButton(btnClass:Class, label:String = "", useHand:Boolean = true):MovieClip
		{
			var btn:MovieClip = new btnClass() as MovieClip;
			btn.txt.text = label;
			btn.mouseChildren = false;
			btn.mouseEnabled = true;
			btn.buttonMode = true;
			btn.useHandCursor = useHand;
			return btn;
		}
		
	}
	
}