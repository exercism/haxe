package;

using Lambda;

class SecretHandshake {
	static final cmds = [
        1 => "wink", 
        2 => "double blink", 
        4 => "close your eyes", 
        8 => "jump"
    ];

	public static function commands(number:Int):Array<String> {
		function ascending(a, b) return a > b ? 1 : -1;
		var sortedKeys = [for (k in cmds.keys()) k];
		sortedKeys.sort(ascending);

		var result = [];
		for (key in sortedKeys)
			if ((number & key) != 0)
				result.push(cmds[key]);

		var hasReverseCmd = (number & 16) != 0;
		if (hasReverseCmd)
			result.reverse();

		return result;
	}
}
