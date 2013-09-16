package storage {
	import com.fastframework.log.FASTLog;

	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.utils.ByteArray;
	/**
	 * @author Digi3Studio - Colin Leung
	 */
	public class SaveBinAIR implements ISaveBinary{
		
		public function save(fileName : String, value:ByteArray) : void {
			var file:File = File.documentsDirectory.resolvePath(fileName);
			var fs:FileStream = new FileStream();
			fs.open(file,FileMode.WRITE);
			fs.writeBytes(value,0,0);
			fs.close();
		}

		public function load(fileName : String) : ByteArray{
			var result:ByteArray = new ByteArray();
			var file:File = File.documentsDirectory.resolvePath(fileName);
			var fs:FileStream = new FileStream();
			try{
				fs.open(file,FileMode.READ);
			}catch(e:Error){
				FASTLog.instance().log('cannot read file:'+fileName,FASTLog.LOG_LEVEL_ERROR);
				return new ByteArray();
			}
			fs.readBytes(result,0,0);
			fs.close();
			return result;
		}
	}
}