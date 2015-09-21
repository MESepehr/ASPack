package com.mteamapp
{
	import flash.net.URLRequest;
	import flash.net.navigateToURL;

	public class DeviceMap
	{
		/**Opening the location map. the location title is only works on Android*/
		public static function openInMap(latitude:String,longitude:String,locationTitle:String=''):void
		{
			var locationString:String = latitude+','+longitude;
			if(DevicePrefrence.isIOS())
			{
				navigateToURL(new URLRequest("maps:q="+locationString));
			}
			else
			{
				navigateToURL(new URLRequest("geo://"+locationString+"?z=1&q="+locationString+" ("+locationTitle+")"));
			}
		}
	}
}