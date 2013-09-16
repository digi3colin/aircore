package controller {
	import flash.events.Event;
	import flash.events.GestureEvent;
	import flash.text.TextField;
	/**
	 * @author Digi3Studio - Colin Leung
	 */
	public class ControllerClearLog {
		private var txtLog:TextField;
		public function ControllerClearLog(txtDebug : TextField) {
			//double tap to clear text
			this.txtLog = txtDebug;
			if(this.txtLog.stage==null){
				this.txtLog.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			}else{
				onAddedToStage();
			}
		}

		private function onAddedToStage(...e):void{
			this.txtLog.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			this.txtLog.stage.addEventListener(GestureEvent.GESTURE_TWO_FINGER_TAP, clear);
		}

		private function clear(e:Event):void{
			this.txtLog.text = '';
		}
	}
}
