package
{
	public class ChatMenuStructure
	{
		
		public const chatMenuStructureConst : String = getTrace("chatMenuStructureConst");
		
		public var chatMenuStructureVar : String = getTrace("chatMenuStructureVar"); 
		
		public function ChatMenuStructure()
		{
			trace("ChatMenuStructure constructor");
		}
		
		public static function getTrace(str : String) : String {
			trace("ChatMenuStructure getTrace", str);
			return str;
		}
		
		public function toString() : String {
			return "ChatMenuStructure instance";
		}
			
	}
}