using Lambda;

function largestProduct(span:Int, digits:String):Int {
	if (span < 0)
		throw "span must not be negative";
	if (span > digits.length)
		throw "span must be smaller than string length";
	if (~/[^0-9]/.match(digits))
		throw "digits input must only contain digits";

	function multiply(a, b)
		return a * b;

	var _digits = digits.split("").map(Std.parseInt);
	var products = chunksOf(span, _digits).map(xs -> xs.fold(multiply, 1));

	return maxOf(products);
}

private function chunksOf<T>(length:Int, collection:Array<T>):Array<Array<T>> {
	return [
		for (i in 0...collection.length - length + 1)
			collection.slice(i, i + length)
	];
}

private function maxOf(collection:Array<Int>) {
	var max = -1;
	for (item in collection)
		max = item > max ? item : max;

	return max;
}
