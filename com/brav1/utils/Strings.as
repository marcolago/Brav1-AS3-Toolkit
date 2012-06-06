//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.utils 
{
	
	public class Strings 
	{
		
		public function Strings() 
		{
			
		}
		
		static public function toHTML1(string:String, strict:Boolean = true):String
		{
			if (strict == true)
			{
				string = Strings.replaceAll(string, "\n", ""); // new line
				string = Strings.replaceAll(string, "\t", ""); // horizontal tab
				string = Strings.replaceAll(string, "\r", ""); // carriage return
				string = Strings.replaceAll(string, "\b", ""); // backspace
				string = Strings.replaceAll(string, "\f", ""); // form feed
			}
			else
			{
			}
			string = Strings.replaceAll(string, "<strong>", "<b>");
			string = Strings.replaceAll(string, "</strong>", "</b>");
			string = Strings.replaceAll(string, "<em>", "<i>");
			string = Strings.replaceAll(string, "</em>", "</i>");
			string = Strings.replaceAll(string, "<br />", "<br>");
			string = Strings.replaceAll(string, "</p>", "</p><br>");
			
			return string;
		}
		
		static public function toHTMLColor(string:String, color:String, tag:String = null, subString:String = null):String
		{
			var colorString:String = "<font color='" + color.replace("0x", "#") + "'>";
			var closeColorString:String = "</font>";
			var openTag:String
			var closeTag:String;
			var replacedCloseTag:String;
			var returnedString:String;
			if (tag != null)
			{
				closeTag = Strings.replaceAll(tag, "<", "</");
				openTag = tag + colorString;
				replacedCloseTag = closeColorString + closeTag;
				string = Strings.replaceAll(string, tag, openTag);
				returnedString = Strings.replaceAll(string, closeTag, replacedCloseTag);
			}
			else
			{
				returnedString = colorString + string + closeColorString;
			}
			return returnedString;
		}
		
		static public function replaceAll(string:String, stringToFind:String, stringToReplace:String):String
		{
			var myReg:RegExp = new RegExp(stringToFind, "g");
			return string.replace(myReg, stringToReplace);
		}
		
		static public function normalize(string:String):String
		{
			var returnedString:String = Strings.toHTML1(string);
			return returnedString;
		}
		
		static public function normalizeAccents(str:String):String
		{
			var map:Object = { 'À':'A', 'Á':'A', 'Â':'A', 'Ã':'A', 'Ä':'A', 'Å':'A', 'Æ':'AE', 'Ç':'C', 'È':'E', 'É':'E', 'Ê':'E', 'Ë':'E', 'Ì':'I', 'Í':'I', 'Î':'I', 'Ï':'I', 'Ð':'D', 'Ñ':'N', 'Ò':'O', 'Ó':'O', 'Ô':'O', 'Õ':'O', 'Ö':'O', 'Ø':'O', 'Ù':'U', 'Ú':'U', 'Û':'U', 'Ü':'U', 'Ý':'Y', 'ß':'s', 'à':'a', 'á':'a', 'â':'a', 'ã':'a', 'ä':'a', 'å':'a', 'æ':'ae', 'ç':'c', 'è':'e', 'é':'e', 'ê':'e', 'ë':'e', 'ì':'i', 'í':'i', 'î':'i', 'ï':'i', 'ñ':'n', 'ò':'o', 'ó':'o', 'ô':'o', 'õ':'o', 'ö':'o', 'ø':'o', 'ù':'u', 'ú':'u', 'û':'u', 'ü':'u', 'ý':'y', 'ÿ':'y', 'Ā':'A', 'ā':'a', 'Ă':'A', 'ă':'a', 'Ą':'A', 'ą':'a', 'Ć':'C', 'ć':'c', 'Ĉ':'C', 'ĉ':'c', 'Ċ':'C', 'ċ':'c', 'Č':'C', 'č':'c', 'Ď':'D', 'ď':'d', 'Đ':'D', 'đ':'d', 'Ē':'E', 'ē':'e', 'Ĕ':'E', 'ĕ':'e', 'Ė':'E', 'ė':'e', 'Ę':'E', 'ę':'e', 'Ě':'E', 'ě':'e', 'Ĝ':'G', 'ĝ':'g', 'Ğ':'G', 'ğ':'g', 'Ġ':'G', 'ġ':'g', 'Ģ':'G', 'ģ':'g', 'Ĥ':'H', 'ĥ':'h', 'Ħ':'H', 'ħ':'h', 'Ĩ':'I', 'ĩ':'i', 'Ī':'I', 'ī':'i', 'Ĭ':'I', 'ĭ':'i', 'Į':'I', 'į':'i', 'İ':'I', 'ı':'i', 'Ĳ':'IJ', 'ĳ':'ij', 'Ĵ':'J', 'ĵ':'j', 'Ķ':'K', 'ķ':'k', 'Ĺ':'L', 'ĺ':'l', 'Ļ':'L', 'ļ':'l', 'Ľ':'L', 'ľ':'l', 'Ŀ':'L', 'ŀ':'l', 'Ł':'L', 'ł':'l', 'Ń':'N', 'ń':'n', 'Ņ':'N', 'ņ':'n', 'Ň':'N', 'ň':'n', 'ŉ':'n', 'Ō':'O', 'ō':'o', 'Ŏ':'O', 'ŏ':'o', 'Ő':'O', 'ő':'o', 'Œ':'OE', 'œ':'oe', 'Ŕ':'R', 'ŕ':'r', 'Ŗ':'R', 'ŗ':'r', 'Ř':'R', 'ř':'r', 'Ś':'S', 'ś':'s', 'Ŝ':'S', 'ŝ':'s', 'Ş':'S', 'ş':'s', 'Š':'S', 'š':'s', 'Ţ':'T', 'ţ':'t', 'Ť':'T', 'ť':'t', 'Ŧ':'T', 'ŧ':'t', 'Ũ':'U', 'ũ':'u', 'Ū':'U', 'ū':'u', 'Ŭ':'U', 'ŭ':'u', 'Ů':'U', 'ů':'u', 'Ű':'U', 'ű':'u', 'Ų':'U', 'ų':'u', 'Ŵ':'W', 'ŵ':'w', 'Ŷ':'Y', 'ŷ':'y', 'Ÿ':'Y', 'Ź':'Z', 'ź':'z', 'Ż':'Z', 'ż':'z', 'Ž':'Z', 'ž':'z', 'ſ':'s', 'ƒ':'f', 'Ơ':'O', 'ơ':'o', 'Ư':'U', 'ư':'u', 'Ǎ':'A', 'ǎ':'a', 'Ǐ':'I', 'ǐ':'i', 'Ǒ':'O', 'ǒ':'o', 'Ǔ':'U', 'ǔ':'u', 'Ǖ':'U', 'ǖ':'u', 'Ǘ':'U', 'ǘ':'u', 'Ǚ':'U', 'ǚ':'u', 'Ǜ':'U', 'ǜ':'u', 'Ǻ':'A', 'ǻ':'a', 'Ǽ':'AE', 'ǽ':'ae', 'Ǿ':'O', 'ǿ':'o' };
			var res:String = "";
			for (var i:uint = 0; i < str.length; i++)
			{
				var c:String = str.charAt(i);
				res += map[c] || c;
			}
			return res;
		}
		
		static public function cutString(stringToCut:String, endString:String = "", lgh:int = 0):String
		{
			var cuttedString:String;
			if (lgh != 0)
			{
				cuttedString = stringToCut.substr(0, lgh) + endString;
			}
			else
			{
				cuttedString = stringToCut.substr(0, stringToCut.lastIndexOf(" ")) + endString;
			}
			return cuttedString;
		}
		
		static public function fixLineBreaks(stringToFix:String):String
		{
			var pattern:RegExp = /\\n/g;
			return stringToFix.replace(pattern, "&#10;");
		}
		
	}
	
}