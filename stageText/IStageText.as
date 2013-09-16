package  stageText{
	import flash.display.BitmapData;
	import flash.display.Stage;
	import flash.events.IEventDispatcher;
	import flash.geom.Rectangle;
	/**
	 * @author Digi3Studio - Colin Leung
	 */
	public interface IStageText extends IEventDispatcher {
		function getAutoCapitalize() : String;
		function getAutoCorrect() : Boolean;
		function getColor() : uint;
		function getDisplayAsPassword() : Boolean;
		function getEditable() : Boolean;
		function getFontFamily() : String;
		function getFontPosture() : String;
		function getFontSize() : int;
		function getFontWeight() : String;
		function getLocale() : String;
		function getMaxChars() : int;
		function getMultiline() : Boolean;
		function getRestrict() : String;
		function getReturnKeyLabel() : String;
		function getSelectionActiveIndex() : int;
		function getSelectionAnchorIndex() : int;
		function getSoftKeyboardType() : String;
		function getStage() : Stage;
		function getText() : String;
		function getTextAlign() : String;
		function getViewPort() : Rectangle;
		function getVisible() : Boolean;

		function setAutoCapitalize(value:String):void;
		function setAutoCorrect(value: Boolean):void;
		function setColor(value: uint):void;
		function setDisplayAsPassword(value: Boolean):void;
		function setEditable(value: Boolean):void;
		function setFontFamily(value: String):void;
		function setFontPosture(value: String):void;
		function setFontSize(value: int):void;
		function setFontWeight(value: String):void;
		function setLocale(value: String):void;
		function setMaxChars(value: int):void;
		function setRestrict(value : String):void;
		function setReturnKeyLabel(value : String):void;
		function setSoftKeyboardType(value : String):void;
		function setStage(value : Stage):void;
		function setText(value : String):void;
		function setTextAlign(value : String):void;
		function setViewPort(value : Rectangle):void;
		function setVisible(value : Boolean):void;
		
		//    StageText(initOptions:flash.text:StageTextInitOptions = null)
		function assignFocus():void;
		function dispose():void;
		function drawViewPortToBitmapData(bitmap:BitmapData):void;
		function selectRange(anchorIndex:int, activeIndex:int):void;
	}
}