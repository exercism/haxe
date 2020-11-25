package;

using StringTools;
using Lambda;

class Luhn {
    public static function valid(input: String): Bool {
        // spaces are allowed but stripped
        input = input.replace(" ", "");

        // single digit is not valid
        if (input.length <= 1)
            return false;

        // only digits are allowed
        if (~/[^0-9]/.match(input))
            return false;

        // double every 2nd digit, subtracting 9 if result > 9
        var digits = input.split("").map(Std.parseInt);
        for (i in 0...Std.int(digits.length / 2)) {
            var j = digits.length - (2 * i) - 2;
            digits[j] = (digits[j] * 2);
            if (digits[j] > 9)
                digits[j] -= 9;
        }

        function sum(a, b) return a + b;
        var digitSum = digits.fold(sum, 0);
        
        return digitSum % 10 == 0;
    } 
}
