package storage {
	import flash.utils.ByteArray;
	/**
	 * @author digi3colin
	 */
	public interface ISaveBinary {
		function save(fileName : String, value:ByteArray) : void;
		function load(fileName : String) : ByteArray;
	}
}
