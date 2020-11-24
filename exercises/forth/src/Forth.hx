package;

enum StackError {
	EmptyStack;
	OneValue;
	IllegalOperation;
	UndefinedOperation;
	DivideByZero;
}

class Forth {
    public static function evaluate(instructions: Array<String>): Array<Int> {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    } 
}
