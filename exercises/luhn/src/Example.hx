package;

using StringTools;
using Lambda;

class Luhn {
	public static function valid(input:String):Bool {
		// spaces are allowed but stripped
		input = input.replace(" ", "");

		// single digit is not valid
		if (input.length <= 1)
			return false;

		// only digits are allowed
		if (~/[^0-9]/.match(input))
			return false;

		var sum = 0;
		var second = false; // tracks every other digit

		for (i in 0...input.length) {
			// loop in reverse order
			var j = input.length - i - 1;

			// convert char code to digit value
			var temp = input.charCodeAt(j) - '0'.code;

			// double every other number
			if (second)
				temp *= 2;

			// subtract 9 if > 9
			sum += temp > 9 ? temp - 9 : temp;
			second = !second;
		}

		return sum % 10 == 0;
	}
}
