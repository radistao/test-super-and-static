package
{
	public class ChatModel
	{
		
		public var someConst : String = getTrace("someConst");
		public var someVar : String = getTrace("someVar");
		
		public static const someStaticConst : String = getTrace("someStaticConst");
		public static var someStaticVar : String = getTrace("someStaticVar");
		
		public const menu : ChatMenuStructure = new ChatMenuStructure();
		
		private static var _instance : ChatModel;
		
		public static function get instance() : ChatModel {
			trace("Get instance start");
			if (!_instance) {
				_instance = new ChatModel(new T());
			}
			
			trace("Get instance end");
			
			return _instance;
		}
		
		public function ChatModel(t : T)
		{
			trace("ChatModel contructor before super()");
			super();
			trace("ChatModel contructor after super()");
		}
		
		private static var getTraceCount : GetTracesClass = new GetTracesClass();
		
		public static function getTrace(str : String) : String {
			trace("getTrace #\"" + getTraceCount + "\"", str);
			return str;
		}
	}
}

internal class T{
	
}