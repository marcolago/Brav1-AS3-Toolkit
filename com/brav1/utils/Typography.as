//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.utils 
{
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	public class Typography 
	{
		
		public function Typography() 
		{
			
		}
		
		/**
		 * Set the bold property of the TextFormat applied to the TextField
		 * @param	textField the TextField instance
		 */
		public static function makeBold(textField:TextField):void
		{
			var textFormat:TextFormat = null;
			if (textField.getTextFormat() != null)
			{
				textFormat = textField.getTextFormat();
			}
			else
			{
				textFormat = new TextFormat();
			}
			//
			try
			{
				textField.embedFonts = true;
				textFormat.bold = true;
				textField.setTextFormat(textFormat);
			}
			catch (e:Error)
			{
				
			}
		}
		
		/**
		 * Set the color property of the TextFormat applied to the TextField
		 * @param	textField the TextField instance
		 * @param	color the color number in 0x###### format
		 */
		public static function changeColor(textField:TextField, color:Number):void
		{
			var textFormat:TextFormat = null;
			if (textField.getTextFormat() != null)
			{
				textFormat = textField.getTextFormat();
			}
			else
			{
				textFormat = new TextFormat();
			}
			//
			try
			{
				textField.embedFonts = true;
				textFormat.color = color;
				textField.setTextFormat(textFormat);
			}
			catch (e:Error)
			{
				
			}
		}
		
		/**
		 * Scale back the TextField if the size exceed the authoring size
		 * @param	textField the TextField instance
		 * @param	align the autoSize propoerty of the TextField
		 */
		public static function fitTextField(textField:TextField, align:String = "left"):void
		{
			var textFormat:TextFormat = null;
			if (textField.getTextFormat() != null)
			{
				textFormat = textField.getTextFormat();
			}
			//
			var txtWidthBuffer:Number = textField.width;
			textField.autoSize = align;
			var txtWidthNew:Number = Math.ceil(textField.width);
			if (txtWidthNew > txtWidthBuffer)
			{
				var txtText:String = textField.text;
				textField.text = "";
				var txtScale:Number = Math.floor((txtWidthBuffer * 100) / txtWidthNew) / 100;
				textField.scaleX = txtScale;
				textField.text = txtText;
				if (textFormat != null)
				{
					textField.setTextFormat(textFormat);
				}
			}
			
		}
	}
	
}