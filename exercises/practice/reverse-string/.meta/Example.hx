package;

class ReverseString
{
	public static function reverse(value:String):String
	{
		return [
			for (i in 0...value.length + 1)
				value.charAt(value.length - i)
		].join("");
	}
}
