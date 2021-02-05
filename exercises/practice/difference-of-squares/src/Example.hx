package;

using Lambda;

class DifferenceOfSquares {
    public static function squareOfSum(number: Int): Int {
        var sum = [for (n in 0...number+1) n].fold((val, acc) -> val + acc, 0);
        return sum * sum;
    }

    public static function sumOfSquares(number: Int): Int {
        return [for (n in 0...number+1) n * n].fold((val, acc) -> val + acc, 0);
    }

    public static function differenceOfSquares(number: Int): Int {
        return squareOfSum(number) - sumOfSquares(number);
    }
}