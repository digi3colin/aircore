package log {
	import com.fastframework.log.ILog;

	import flash.text.TextField;
	/**
	 * @author Digi3Studio - Colin Leung
	 */

	public class LogToTextField implements ILog {
		private var txt : TextField;
		private var imp:ILog;

		public function LogToTextField(txt:TextField){
			this.txt = txt;
		}

		public function log(str : String, debugLevel : int = 0) : void {
			txt.appendText(str+'\n');
			if(imp!=null)imp.log(str,debugLevel);
		}

		public function setLogger(logger : ILog) : ILog {
			imp = logger;
			return this;
		}
	}
}