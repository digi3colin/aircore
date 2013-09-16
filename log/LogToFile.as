package log {
	import com.fastframework.log.ILog;



	/**
	 * @author Digi3Studio - Colin Leung
	 */
	public class LogToFile implements ILog {
		private var imp:ILog;

		public function LogToFile() {
		}

		public function log(str:String,debugLevel:int=0):void{
//			txt.appendText(str+'\n');
			if(imp!=null)imp.log(str,debugLevel);
			AppConfig.TEXT_IO.append('log', str+'\n');

//			var myQuery:String = 'INSERT INTO logs (Message) VALUES ("'+escape(str)+'")';
//			mdm.Database.SQLite.runQuery(myQuery);
		}

		public function setLogger(logger : ILog) : void {
			imp = logger;
		}
	}
}
