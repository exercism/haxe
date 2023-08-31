using Lambda;

function squareOfSum(number:Int):Int {
	var sum = [for (n in 0...number + 1) n].fold((val, acc) -> val + acc, 0);
	return sum * sum;
}

function sumOfSquares(number:Int):Int {
	return [for (n in 0...number + 1) n * n].fold((val, acc) -> val + acc, 0);
}

function differenceOfSquares(number:Int):Int {
	return squareOfSum(number) - sumOfSquares(number);
}
