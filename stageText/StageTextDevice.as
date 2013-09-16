package  stageText{
	import flash.events.Event;
	import flash.display.BitmapData;
	import flash.display.Stage;
	import flash.geom.Rectangle;
	import flash.text.StageText;
	import flash.text.StageTextInitOptions;
	/**
	 * @author Digi3Studio - Colin Leung
	 */
	//please use StageTextFactory
	internal class StageTextDevice implements IStageText {
		private var base:StageText;
		public function StageTextDevice(multiline:Boolean=false){
			base = new StageText(new StageTextInitOptions(multiline));
		}

		public function getAutoCapitalize() : String {
			return base.autoCapitalize;
		}

		public function getAutoCorrect() : Boolean {
			return base.autoCorrect;
		}

		public function getColor() : uint {
			return base.color;
		}

		public function getDisplayAsPassword() : Boolean {
			return base.displayAsPassword;
		}

		public function getEditable() : Boolean {
			return base.editable;
		}

		public function getFontFamily() : String {
			return base.fontFamily;
		}

		public function getFontPosture() : String {
			return base.fontPosture;
		}

		public function getFontSize() : int {
			return base.fontSize;
		}

		public function getFontWeight() : String {
			return base.fontWeight;
		}

		public function getLocale() : String {
			return base.locale;
		}

		public function getMaxChars() : int {
			return base.maxChars;
		}

		public function getMultiline() : Boolean {
			return base.multiline;
		}

		public function getRestrict() : String {
			return base.restrict;
		}

		public function getReturnKeyLabel() : String {
			return base.returnKeyLabel;
		}

		public function getSelectionActiveIndex() : int {
			return base.selectionActiveIndex;
		}

		public function getSelectionAnchorIndex() : int {
			return base.selectionAnchorIndex;
		}

		public function getSoftKeyboardType() : String {
			return base.softKeyboardType;
		}

		public function getStage() : Stage {
			return base.stage;
		}

		public function getText() : String {
			return base.text;
		}

		public function getTextAlign() : String {
			return base.textAlign;
		}

		public function getViewPort() : Rectangle {
			return base.viewPort;
		}

		public function getVisible() : Boolean {
			return base.visible;
		}

		public function setAutoCapitalize(value : String) : void {
			base.autoCapitalize = value;
		}

		public function setAutoCorrect(value : Boolean) : void {
			base.autoCorrect = value;
		}

		public function setColor(value : uint) : void {
			base.color = value;
		}

		public function setDisplayAsPassword(value : Boolean) : void {
			base.displayAsPassword = value;
		}

		public function setEditable(value : Boolean) : void {
			base.editable = value;
		}

		public function setFontFamily(value : String) : void {
			base.fontFamily = value;
		}

		public function setFontPosture(value : String) : void {
			base.fontPosture = value;
		}

		public function setFontSize(value : int) : void {
			base.fontSize = value;
		}

		public function setFontWeight(value : String) : void {
			base.fontWeight = value;
		}

		public function setLocale(value : String) : void {
			base.locale = value;
		}

		public function setMaxChars(value : int) : void {
			base.maxChars = value;
		}

		public function setRestrict(value : String) : void {
			base.restrict = value;
		}

		public function setReturnKeyLabel(value : String) : void {
			base.returnKeyLabel = value;
		}

		public function setSoftKeyboardType(value : String) : void {
			base.softKeyboardType = value;
		}

		public function setStage(value : Stage) : void {
			base.stage = value;
		}

		public function setText(value : String) : void {
			base.text = value;
		}

		public function setTextAlign(value : String) : void {
			base.textAlign = value;
		}

		public function setViewPort(value : Rectangle) : void {
			base.viewPort = value;
		}

		public function setVisible(value : Boolean) : void {
			base.visible = value;
		}

		public function assignFocus() : void {
			base.assignFocus();
		}

		public function dispose() : void {
			base.dispose();
		}

		public function drawViewPortToBitmapData(bitmap : BitmapData) : void {
			base.drawViewPortToBitmapData(bitmap);
		}

		public function selectRange(anchorIndex : int, activeIndex : int) : void {
			base.selectRange(anchorIndex, activeIndex);
		}

		public function addEventListener(type : String, listener : Function, useCapture : Boolean = false, priority : int = 0, useWeakReference : Boolean = false) : void {
			base.addEventListener(type, listener, useCapture, priority, useWeakReference);
		}

		public function dispatchEvent(event : Event) : Boolean {
			return base.dispatchEvent(event);
		}

		public function hasEventListener(type : String) : Boolean {
			return base.hasEventListener(type);
		}

		public function removeEventListener(type : String, listener : Function, useCapture : Boolean = false) : void {
			base.removeEventListener(type, listener, useCapture);
		}

		public function willTrigger(type : String) : Boolean {
			return base.willTrigger(type);
		}
	}
}
