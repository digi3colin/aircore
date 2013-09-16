package utils {
	import flash.system.Capabilities;
	/**
	 * @author digi3colin
	 */
	final public class PlayerVersionUtils {
		public static function isPlayerHigherThanRequirement(targetVersion:String):Boolean{
			var currVersion:String = Capabilities.version;
			var currVersionArray:Array = currVersion.split(" ");
			var currVersionNumber:String = currVersionArray[currVersionArray.length-1];
			currVersionArray = currVersionNumber.split(",");
			
			var targetVersionArray:Array = targetVersion.split(",");
			for(var i:Number=0;i<currVersionArray.length;i++){
				if(Number(currVersionArray[i])<Number(targetVersionArray[i]))return false;
				if(Number(currVersionArray[i])>Number(targetVersionArray[i]))return true;
			}
			return true;
		}
	}
}
