package;

class CollatzConjecture {
    public static function steps(number: Int): Int {
        if (number <= 0)
            throw "Only positive integers are allowed";

        var steps = 0;
        while (number != 1) {
            steps++;
            number = number % 2 == 0 
                   ? Std.int(number / 2) 
                   : number * 3 + 1;
        }

        return steps;
    } 
}
