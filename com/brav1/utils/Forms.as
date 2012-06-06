package com.brav1.utils 
{
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.text.TextField;
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public class Forms
	{
		
		public function Forms() 
		{
			
		}
		
		/**
		 * controlla la correttezza di una mail usando la regular expression
		 * @param	emailString	la mail da controllare
		 * @param	errorCallback	l'eventuale callBack da chiamare al verificarsi di un errore
		 * @return	Boolean	true in caso di validazione corretta, false in caso di errore
		 */
		static public function checkMail(emailString:String, errorCallback:Function = null):Boolean
		{
			// var reg:RegExp = /^[0-9a-zA-Z][-._a-zA-Z0-9]*@([0-9a-zA-Z][-._0-9a-zA-Z]*\.)+[a-zA-Z]{2,4}$/;
			var reg:RegExp = new RegExp("[a-zA-Z0-9._%-]+@[a-zA-Z0-9-]{2,}\\.[a-zA-Z]{2,4}");
			var isValid:Boolean = reg.test(emailString);
			if (isValid == false && errorCallback != null)
			{
				errorCallback();
			}
			return isValid;
		}
		
		/**
		 * controlla la correttezza dei dati in un campo di testo
		 * @param	textField	il campo di testo da controllare
		 * @param	errorCallback	l'eventuale callBack da chiamare al verificarsi di un errore
		 * @param	... checkStrings	le varie stringhe di controllo da usare per la validazione, il testo contenuto nel campo deve essere diverso da queste
		 * @return	Boolean	true in caso di validazione corretta, false in caso di errore
		 */
		static public function checkTextField(textField:TextField, errorCallback:Function, ... checkStrings):Boolean
		{
			var isValid:Boolean = true;
			var s:String = textField.text;
			for (var i:uint = 0; i < checkStrings.length; i++)
			{
				isValid = !(s == checkStrings[i]);
			}
			if (isValid == false && errorCallback != null)
			{
				errorCallback();
			}
			return isValid;
		}
		
		/**
		 * controlla la validazione di un intero form, accetta in ingresso il valore di validazione dei singoli campi o altri tipi di dati,
		 * se i dati passati non sono booleani viene tentata un conversione del dato in booleano
		 * @param	... fields	il valore booleano dell'esito del controllo sui singoli campi
		 * @return	Boolean	true in caso di validazione corretta, false in caso di errore
		 */
		static public function checkForm(... fields):Boolean
		{
			for (var i:uint = 0; i < fields.length; i++)
			{
				if (Boolean(fields[i]) == false)
				{
					return false;
				}
			}
			return true;
		}
		
		/**
		 * setta l'ordine di tabulazione dei campi
		 * @param	startIndex	l'indice di partenza per la tabulazione, solitamente 1, può essere passato un intero qualunque per aggiungere campi al form
		 * @param	... rest	l'elenco dei campi da tabulare
		 */
		static public function setTabOrder(startIndex:uint, ... rest):void
		{
			for (var i:uint = 0; i < rest.length; i++)
			{
				rest[i].tabEnabled = true;
				rest[i].tabIndex = i + startIndex;
			}
		}
		
		/**
		 * esclude gli oggetti passati dalla tabulazione
		 * @param	... rest	l'elenco degli oggetti da escludere dalla tabulazione
		 */
		static public function excludeFromTab(... rest):void
		{
			for (var i:uint = 0; i < rest.length; i++)
			{
				rest[i].tabEnabled = false;
			}
		}
		
		/**
		 * impedisce la comparsa del bordo di selezione
		 * @param	... rest	l'elenco degli oggetti sui quali nascondere il bordo
		 */
		static public function disableBorder(... rest):void
		{
			for (var i:uint = 0; i < rest.length; i++)
			{
				if (rest[i] is Stage)
				{
					(rest[i] as Stage).stageFocusRect = false;
				}
				else if (rest[i] is DisplayObjectContainer)
				{
					(rest[i] as DisplayObjectContainer).focusRect = false;
				}
			}
		}
		
		/**
		 * permette la comparsa del bordo di selezione
		 * @param	... rest	l'elenco degli oggetti sui quali permettere la visualizzazione del bordo
		 */
		static public function enableBorder(... rest):void
		{
			for (var i:uint = 0; i < rest.length; i++)
			{
				if (rest[i] is Stage)
				{
					(rest[i] as Stage).stageFocusRect = true;
				}
				else if (rest[i] is DisplayObjectContainer)
				{
					(rest[i] as DisplayObjectContainer).focusRect = true;
				}
			}
		}
		
		/**
		 * setta un elenco di campi di testo come password
		 * @param	... textFields	l'elenco dei campi di testo da settare
		 */
		static public function setAsPassword(... textFields):void
		{
			for (var i:uint = 0; i < textFields.length; i++)
			{
				if (textFields[i] is TextField)
				{
					textFields[i].displayAsPassword = true;
				}
			}
		}
		
		static public function addKeyEvent(keyboardEventType:String, keyCode:uint, callback:Function, ... rest):void
		{
			for (var i:uint = 0; i < rest.length; i++)
			{
				rest[i].addEventListener(keyboardEventType, internalCallback);
			}
			//
			function internalCallback(e:KeyboardEvent):void 
			{
				if (e.keyCode == keyCode)
				{
					callback();
				}
			}
		}
		
	}

}