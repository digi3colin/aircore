package storage {
	import mdm.Application;
	import mdm.FileSystem;

	import flash.system.Capabilities;
	import flash.utils.ByteArray;
	/**
	 * @author Digi3Studio - Colin Leung
	 */
	public class SaveBinMDM implements ISaveBinary{
		private var strFolder:String;
		public function SaveBinMDM(){
	        var os:String = flash.system.Capabilities.os.substr(0, 3);
			if (os == "Win") {
				strFolder = "\\";
			} else if (os == "Mac") {
				strFolder = "/";
			} else {
				strFolder = "/";
			}
		}

		public function save(fileName : String, value:ByteArray) : void {
			mdm.FileSystem.BinaryFile.setDataBA(value);
			mdm.FileSystem.BinaryFile.writeDataBA(mdm.Application.path+'Documents'+strFolder+fileName);
		}

		public function load(fileName : String) : ByteArray{
			var result:ByteArray = new ByteArray();
			return result;
		}
	}
}