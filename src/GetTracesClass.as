package
{
	public class GetTracesClass
	{
		private static const constructorCalls : int = 1;
		
		private var instanceNumber : int;
		
		public function GetTracesClass()
		{
			trace("GetTracesClass constructor called " + String(constructorCalls) + " time(s)");
			instanceNumber = constructorCalls;
			constructorCalls++;
		}
		
		public function toString() : String {
			return "GetTracesClass instance #" + String(instanceNumber);
		}
	}
}