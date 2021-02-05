package;

using Lambda;
using StringTools;

enum StackError {
	EmptyStack;
	OneValue;
	IllegalOperation;
	UndefinedOperation;
	DivideByZero;
}

typedef Stack       = Array<Int>;
typedef Define      = String -> String;
typedef Instruction = String;

class Forth {
	public static function evaluate(instructions: Array<Instruction>): Stack {
		function isDefine(ins)
			return ~/^:.*;$/.match(ins);

		var stack = [];
		var defines = [];
		for (instruction in instructions) {
			// instructions are case-insensitive
			instruction = instruction.toLowerCase();

			// stack defines and apply recursively
			if (isDefine(instruction)) {
				defines.push(makeDefine(instruction));
				continue;
			}
			instruction = applyDefines(instruction, defines);

			for (token in instruction.split(" ")) {
				switch (token) {
					case "+":       add(stack);
					case "-":       subtract(stack);
					case "*":       multiply(stack);
					case "/":       divide(stack);
					case "dup":     dup(stack);
					case "drop":    drop(stack);
					case "swap":    swap(stack);
					case "over":    over(stack);
					case n if (Std.parseInt(n) != null):
						stack.push(Std.parseInt(n));
					case _:
						throw StackError.UndefinedOperation;
				}
			}
		}
		return stack;
	}

	private static function applyDefines(instruction: Instruction, defines: Array<Define>): Instruction {
		if (defines.empty())
			return instruction;

		return applyDefines(defines.pop()(instruction), defines);
	}

	private static function makeDefine(instruction: String): Define {
		var pattern = ~/^: (\S+) (.+) ;$/;
		pattern.match(instruction);
		var word = pattern.matched(1);
		var replacement = pattern.matched(2);
		if (~/[1-9]/.match(word))
			throw StackError.IllegalOperation;

		return (ins:String) -> return ins.replace(word, replacement);
	}

	private static function validateBinaryOp(a: Int, b: Int): Void {
		if (a == null && b == null)
			throw StackError.EmptyStack;
		if (a == null || b == null)
			throw StackError.OneValue;
	}

	private static function add(stack: Stack): Void {
		var b = stack.pop(), a = stack.pop();
		validateBinaryOp(a, b);

		stack.push(a + b);
	}

	private static function subtract(stack: Stack): Void {
		var b = stack.pop(), a = stack.pop();
		validateBinaryOp(a, b);

		stack.push(a - b);
	}

	private static function multiply(stack: Stack): Void {
		var b = stack.pop(), a = stack.pop();
		validateBinaryOp(a, b);

		stack.push(a * b);
	}

	private static function divide(stack: Stack): Void {
		var b = stack.pop(), a = stack.pop();
		validateBinaryOp(a, b);

		if (b == 0)
			throw StackError.DivideByZero;

		stack.push(Std.int(a / b));
	}

	private static function dup(stack: Stack): Void {
		var b = stack.pop();

		if (b == null)
			throw StackError.EmptyStack;

		stack.push(b);
		stack.push(b);
	}

	private static function drop(stack: Stack): Void {
		var b = stack.pop();

		if (b == null)
			throw StackError.EmptyStack;
	}

	private static function swap(stack: Stack): Void {
		var b = stack.pop(), a = stack.pop();
		validateBinaryOp(a, b);

		stack.push(b);
		stack.push(a);
	}

	private static function over(stack: Stack): Void {
		var b = stack.pop(), a = stack.pop();
		validateBinaryOp(a, b);

		stack.push(a);
		stack.push(b);
		stack.push(a);
	}
}
