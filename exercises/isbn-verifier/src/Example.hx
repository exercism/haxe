package;

using StringTools;
using Lambda;

class ISBN {
    public static function isValid(isbn: String): Bool {
        // dashes are allowed but ignored
        isbn = isbn.replace("-", "");    

        // a valid isbn consists of 9 digits followed
        // by a 10th digit or the letter X
        if (! ~/^[0-9]{9}([0-9]|X)$/.match(isbn))
            return false;

        // convert to digits, replacing X with 10
        function convert(x) return x == "X" ? 10 : Std.parseInt(x); 
        var digits = isbn.split("").map(convert);

        // validate using formula:
        // (x1 * 10 + x2 * 9 ... x10 * 1) mod 11 = 0
        function sum(a, b) return a + b;
        var digitSum = digits.mapi((i, x) -> x * (digits.length - i)).fold(sum, 0);
        
        return digitSum % 11 == 0;
    }
}
