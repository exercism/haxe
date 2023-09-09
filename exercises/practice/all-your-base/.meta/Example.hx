using Lambda;

function rebase(inputBase:Int, digits:Array<Int>, outputBase:Int):Array<Int> {
	var number = fromBase(digits, inputBase);

	if (inputBase < 2)
		throw "input base must be >= 2";
	if (outputBase < 2)
		throw "output base must be >= 2";
	if (digits.exists(d -> d < 0 || d >= inputBase))
		throw "all digits must satisfy 0 <= d < input base";
	if (number == 0)
		return [0];

	return toBase(number, outputBase);
}

function fromBase(digits:Array<Int>, base:Int):Int {
	function sum(a:Float, b:Float)
		return a + b;

	var result = digits.mapi((i, x) -> x * Math.pow(base, digits.length - i - 1)).fold(sum, 0);

	return Std.int(result);
}

function toBase(number:Int, base:Int):Array<Int> {
	var result = [];
	while (number != 0) {
		result.unshift(number % base);
		number = Std.int(number / base);
	}

	return result;
}
