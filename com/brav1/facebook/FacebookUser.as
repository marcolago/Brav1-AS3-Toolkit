//Licensed under Creative Commons Attribution-ShareAlike 3.0 Unported License: http://creativecommons.org/licenses/by-sa/3.0/ 
package com.brav1.facebook 
{
	/**
	 * ...
	 * @author marcolago www.marcolago.com
	 */
	public dynamic class FacebookUser
	{
		public var id:String;
		public var first_name:String;
		public var last_name:String;
		public var name:String;
		public var link:String;
		public var about:String;
		public var birthday:String;
		public var work:Array;
		public var education:Array;
		public var email:String;
		public var website:String;
		public var hometown:Object;
		public var location:Object;
		public var bio:String;
		public var quotes:String;
		public var gender:String;
		public var interested_in:Array;
		public var meeting_for:Array;
		public var relationship_status:String;
		public var religion:String;
		public var political:String;
		public var verified:Boolean;
		public var significant_other:Object;
		public var timezone:Number;
		public var updated_time:String;
		public var locale:String;
		
		public function FacebookUser(object:Object) 
		{
			for (var p:* in object)
			{
				try
				{
					this[p] = object[p];
				}
				catch (e:Error)
				{
					trace(e);
				}
			}
		}
		
	}

}

