package storage {
	import com.fastframework.log.FASTLog;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	/**
	 * @author Digi3Studio - Colin Leung
	 */
	public class SaveTextAIR implements ISaveText{
		public function save(fileName : String, value:String) : void {
			var file:File = File.documentsDirectory.resolvePath(fileName);
			var fs:FileStream = new FileStream();
			fs.open(file,FileMode.WRITE);
			fs.writeUTF(value);
			fs.close();
		}

		public function load(fileName : String) : String {
			var file:File = File.documentsDirectory.resolvePath(fileName);
			var fs:FileStream = new FileStream();
			try{
				fs.open(file,FileMode.READ);
			}catch(e:Error){
				FASTLog.instance().log('cannot read file:'+fileName,FASTLog.LOG_LEVEL_ERROR);
				return "";
			}
			var result:String = fs.readUTF();
			fs.close();
			return result;
		}

		public function append(fileName : String, value : String) : void {
			var file:File = File.documentsDirectory.resolvePath(fileName);
			var fs:FileStream = new FileStream();
			fs.open(file,FileMode.APPEND);
			fs.writeUTF(value);
			fs.close();
		}
	}
}