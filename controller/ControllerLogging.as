package controller {
	import log.LogToTextField;

	import com.fastframework.log.FASTLog;

	import flash.display.Sprite;
	import flash.system.Capabilities;
	import flash.text.TextField;
	/**
	 * @author Digi3Studio - Colin Leung
	 */
	public class ControllerLogging {
		public function ControllerLogging(mc:Sprite,txt:TextField){
			if(Capabilities.screenDPI>200){
				//no need to log on iPhone
				if(Capabilities.screenResolutionX<=640){
					removeTextField(txt);
					return;
				}
			}else{
				if(Capabilities.screenResolutionX<=320){
					removeTextField(txt);
					return;
				}
			}

			FASTLog.instance().addGlobalError(mc.loaderInfo);
			FASTLog.instance().setLogger(new LogToTextField(txt));
		}

		private function removeTextField(txt:TextField):void{
			txt.parent.removeChild(txt);
		}
	}
}
