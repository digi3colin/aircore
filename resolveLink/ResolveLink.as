package resolveLink {
	import com.fastframework.core.SingletonError;

	/**
	 * @author colin
	 */
	public class ResolveLink implements IResolveLink{
		private static var ins:ResolveLink;
		public static function instance():ResolveLink {
			return ins || new ResolveLink();
		}

		public function ResolveLink() {
			if(ins!=null)throw new SingletonError(this);
			ins = this;
		}

		private var imp:IResolveLink;

		public function setImplement(imp:IResolveLink):void{
			this.imp = imp;
		}

		public function create(fileName:String,isDynamicAsset:Boolean=false,isMultiLang:Boolean=true):String{
			//if load absolute path resource, no need to resolve link.
			if(fileName.match(/^http/i).length==1)return fileName;
			return imp.create(fileName, isDynamicAsset,isMultiLang);
		}
	}
}
