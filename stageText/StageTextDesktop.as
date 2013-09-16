package  stageText{
	import flash.display.BitmapData;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import flash.text.TextField;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	import flash.text.engine.FontPosture;
	import flash.text.engine.FontWeight;
	/**
	 * @author Digi3Studio - Colin Leung
	 */
	//please use StageTextFactory
	internal class StageTextDesktop implements IStageText {
		private var base : TextField;
		private var tf:TextFormat;
		private var _autoCapitalize : String = "sentence";//AutoCapitalize.SENTENCE;
		private var _autoCorrect : Boolean = false;
		private var _locale : String = 'en';
		private var _returnKeyLabel : String = "done";
		// ReturnKeyLabel.DONE;
		private var _softKeyboardType : String = "default";
		private var _stage : Stage;
//SoftKeyboardType.DEFAULT;

		public function StageTextDesktop(multiline:Boolean=false) {
			base = new TextField();
			base.multiline = multiline;
			base.type = TextFieldType.INPUT;

			tf = new TextFormat();
			base.defaultTextFormat = tf;
		}
		
		public function getAutoCapitalize() : String {
			return _autoCapitalize;
		}

		public function getAutoCorrect() : Boolean {
			return _autoCorrect;
		}

		public function getColor() : uint {
			return base.textColor;
		}

		public function getDisplayAsPassword() : Boolean {
			return base.displayAsPassword;
		}

		public function getEditable() : Boolean {
			return (base.type == TextFieldType.INPUT);
		}

		public function getFontFamily() : String {
			return base.getTextFormat().font;
		}

		public function getFontPosture() : String {
			return (base.getTextFormat().italic == null)?FontPosture.NORMAL:FontPosture.ITALIC;
		}

		public function getFontSize() : int {
			return parseInt(String(base.getTextFormat().size));
		}

		public function getFontWeight() : String {
			return Boolean(base.getTextFormat().bold)?FontWeight.BOLD:FontWeight.NORMAL;
		}

		public function getLocale() : String {
			return _locale;
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
			return _returnKeyLabel;
		}

		public function getSelectionActiveIndex() : int {
			return -1;
		}

		public function getSelectionAnchorIndex() : int {
			return -1;
		}

		public function getSoftKeyboardType() : String {
			return _softKeyboardType;
		}

		public function getStage() : Stage {
			return base.stage;
		}

		public function getText() : String {
			return base.text;
		}

		public function getTextAlign() : String {
			return base.getTextFormat().align;
		}

		public function getViewPort() : Rectangle {
			if(base.stage==null)return base.getBounds(base);
			return base.getBounds(base.stage);
		}

		public function getVisible() : Boolean {
			return base.visible;
		}

		public function setAutoCapitalize(value : String) : void {
			_autoCapitalize = value;
		}

		public function setAutoCorrect(value : Boolean) : void {
			_autoCorrect = value;
		}

		public function setColor(value : uint) : void {
			base.textColor = value;
		}

		public function setDisplayAsPassword(value : Boolean) : void {
			base.displayAsPassword = value;
		}

		public function setEditable(value : Boolean) : void {
			base.type = (value)?TextFieldType.INPUT:TextFieldType.DYNAMIC;
		}

		public function setFontFamily(value : String) : void {
			tf.font = value;
		}

		public function setFontPosture(value : String) : void {
			tf.italic = (FontPosture.ITALIC == value)?true:false;
		}

		public function setFontSize(value : int) : void {
			tf.size = value;
		}

		public function setFontWeight(value : String) : void {
			tf.bold = (FontWeight.BOLD == value);
		}

		public function setLocale(value : String) : void {
			_locale = value;
		}

		public function setMaxChars(value : int) : void {
			base.maxChars = value;
		}

		public function setRestrict(value : String) : void {
			base.restrict = value;
		}

		public function setReturnKeyLabel(value : String) : void {
			_returnKeyLabel = value;
		}

		public function setSoftKeyboardType(value : String) : void {
			_softKeyboardType = value;
		}


		public function setStage(value : Stage) : void {
			if(value!=null){
				_stage = value;
				_stage.addChild(base);
			}else{
				_stage.removeChild(base);
				_stage = null;
			}
		}

		public function setText(value : String) : void {
			base.text = value;
		}

		public function setTextAlign(value : String) : void {
			tf.align = value;
		}

		public function setViewPort(value : Rectangle) : void {
			base.x = value.x;
			base.y = value.y;
			base.width = value.width;
			base.height = value.height;
		}

		public function setVisible(value : Boolean) : void {
			base.visible = value;
		}

		public function assignFocus() : void {
			if(_stage==null)return;
			_stage.focus = base;
//			base.setSelection(0, 0);
		}

		public function dispose() : void {
			if(_stage==null)return;
			_stage.removeChild(base);
		}

		public function drawViewPortToBitmapData(bitmap : BitmapData) : void {
			bitmap.draw(base);
		}

		public function selectRange(anchorIndex : int, activeIndex : int) : void {
			return;
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
