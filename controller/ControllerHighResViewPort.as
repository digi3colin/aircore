package controller {
	import com.fastframework.log.FASTLog;

	import flash.display.Sprite;
	import flash.system.Capabilities;
	/**
	 * @author Digi3Studio - Colin Leung
	 */
	public class ControllerHighResViewPort {
		public function ControllerHighResViewPort(mcVP : Sprite) {
			FASTLog.instance().log('dpi:'+Capabilities.screenDPI, FASTLog.LOG_LEVEL_ACTION);
			if(Capabilities.screenResolutionX>320&&Capabilities.screenDPI>200){
				mcVP.scaleX = mcVP.scaleY = 1;
			}else{
				mcVP.scaleX = mcVP.scaleY = Config.LOW_RES_SCALE;
			}
			Config.VIEWPORT_SCALE = mcVP.scaleX;
		}
	}
}
