package storage {
	import mdm.Application;
	import mdm.FileSystem;

	import flash.system.Capabilities;
	/**
	 * @author Digi3Studio - Colin Leung
	 */
	public class SaveTextMDM implements ISaveText{
		private var strFolder:String;
		public function SaveTextMDM(){
	        var os:String = flash.system.Capabilities.os.substr(0, 3);
			if (os == "Win") {
				strFolder = "\\";
			} else if (os == "Mac") {
				strFolder = "/";
			} else {
				strFolder = "/";
			}
		}

		public function save(fileName : String, value:String) : void {
			mdm.FileSystem.saveFile(mdm.Application.path+'Documents'+strFolder+fileName,value);
		}

		public function load(fileName : String) : String {
			return mdm.FileSystem.loadFile(mdm.Application.path+'Documents'+strFolder+fileName);
		}

		public function append(fileName : String, value : String) : void {
			mdm.FileSystem.appendFile(mdm.Application.path+'Documents'+strFolder+fileName, value);
		}
	}
}