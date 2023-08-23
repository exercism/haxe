package;

import Forth.StackError;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("parsing and numbers", {
			it("numbers just get pushed onto the stack", {
				Forth.evaluate(["1 2 3 4 5"]).should.containExactly([1, 2, 3, 4, 5]);
			});
		});
		describe("addition", {
			it("can add two numbers", {
				Forth.evaluate(["1 2 +"]).should.containExactly([3]);
			});
			xit("errors if there is nothing on the stack", {
				Forth.evaluate.bind(["+"]).should.throwValue(StackError.EmptyStack);
			});
			xit("errors if there is only one value on the stack", {
				Forth.evaluate.bind(["1 +"]).should.throwValue(StackError.OneValue);
			});
		});
		describe("subtraction", {
			it("can subtract two numbers", {
				Forth.evaluate(["3 4 -"]).should.containExactly([-1]);
			});
			xit("errors if there is nothing on the stack", {
				Forth.evaluate.bind(["-"]).should.throwValue(StackError.EmptyStack);
			});
			xit("errors if there is only one value on the stack", {
				Forth.evaluate.bind(["1 -"]).should.throwValue(StackError.OneValue);
			});
		});
		describe("multiplication", {
			it("can multiply two numbers", {
				Forth.evaluate(["2 4 *"]).should.containExactly([8]);
			});
			xit("errors if there is nothing on the stack", {
				Forth.evaluate.bind(["*"]).should.throwValue(StackError.EmptyStack);
			});
			xit("errors if there is only one value on the stack", {
				Forth.evaluate.bind(["1 *"]).should.throwValue(StackError.OneValue);
			});
		});
		describe("division", {
			it("can divide two numbers", {
				Forth.evaluate(["12 3 /"]).should.containExactly([4]);
			});
			xit("performs integer division", {
				Forth.evaluate(["8 3 /"]).should.containExactly([2]);
			});
			xit("errors if dividing by zero", {
				Forth.evaluate.bind(["4 0 /"]).should.throwValue(StackError.DivideByZero);
			});
			xit("errors if there is nothing on the stack", {
				Forth.evaluate.bind(["/"]).should.throwValue(StackError.EmptyStack);
			});
			xit("errors if there is only one value on the stack", {
				Forth.evaluate.bind(["1 /"]).should.throwValue(StackError.OneValue);
			});
		});
		describe("combined arithmetic", {
			it("addition and subtraction", {
				Forth.evaluate(["1 2 + 4 -"]).should.containExactly([-1]);
			});
			xit("multiplication and division", {
				Forth.evaluate(["2 4 * 3 /"]).should.containExactly([2]);
			});
		});
		describe("dup", {
			it("copies a value on the stack", {
				Forth.evaluate(["1 dup"]).should.containExactly([1, 1]);
			});
			xit("copies the top value on the stack", {
				Forth.evaluate(["1 2 dup"]).should.containExactly([1, 2, 2]);
			});
			xit("errors if there is nothing on the stack", {
				Forth.evaluate.bind(["dup"]).should.throwValue(StackError.EmptyStack);
			});
		});
		describe("drop", {
			it("removes the top value on the stack if it is the only one", {
				Forth.evaluate(["1 drop"]).should.containExactly([]);
			});
			xit("removes the top value on the stack if it is not the only one", {
				Forth.evaluate(["1 2 drop"]).should.containExactly([1]);
			});
			xit("errors if there is nothing on the stack", {
				Forth.evaluate.bind(["drop"]).should.throwValue(StackError.EmptyStack);
			});
		});
		describe("swap", {
			it("swaps the top two values on the stack if they are the only ones", {
				Forth.evaluate(["1 2 swap"]).should.containExactly([2, 1]);
			});
			xit("swaps the top two values on the stack if they are not the only ones", {
				Forth.evaluate(["1 2 3 swap"]).should.containExactly([1, 3, 2]);
			});
			xit("errors if there is nothing on the stack", {
				Forth.evaluate.bind(["swap"]).should.throwValue(StackError.EmptyStack);
			});
			xit("errors if there is only one value on the stack", {
				Forth.evaluate.bind(["1 swap"]).should.throwValue(StackError.OneValue);
			});
		});
		describe("over", {
			it("copies the second element if there are only two", {
				Forth.evaluate(["1 2 over"]).should.containExactly([1, 2, 1]);
			});
			xit("copies the second element if there are more than two", {
				Forth.evaluate(["1 2 3 over"]).should.containExactly([1, 2, 3, 2]);
			});
			xit("errors if there is nothing on the stack", {
				Forth.evaluate.bind(["over"]).should.throwValue(StackError.EmptyStack);
			});
			xit("errors if there is only one value on the stack", {
				Forth.evaluate.bind(["1 over"]).should.throwValue(StackError.OneValue);
			});
		});
		describe("user-defined words", {
			it("can consist of built-in words", {
				Forth.evaluate([": dup-twice dup dup ;", "1 dup-twice"]).should.containExactly([1, 1, 1]);
			});
			xit("execute in the right order", {
				Forth.evaluate([": countup 1 2 3 ;", "countup"]).should.containExactly([1, 2, 3]);
			});
			xit("can override other user-defined words", {
				Forth.evaluate([": foo dup ;", ": foo dup dup ;", "1 foo"]).should.containExactly([1, 1, 1]);
			});
			xit("can override built-in words", {
				Forth.evaluate([": swap dup ;", "1 swap"]).should.containExactly([1, 1]);
			});
			xit("can override built-in operators", {
				Forth.evaluate([": + * ;", "3 4 +"]).should.containExactly([12]);
			});
			xit("can use different words with the same name", {
				Forth.evaluate([": foo 5 ;", ": bar foo ;", ": foo 6 ;", "bar foo"]).should.containExactly([5, 6]);
			});
			xit("can define word that uses word with the same name", {
				Forth.evaluate([": foo 10 ;", ": foo foo 1 + ;", "foo"]).should.containExactly([11]);
			});
			xit("cannot redefine numbers", {
				Forth.evaluate.bind([": 1 2 ;"]).should.throwValue(StackError.IllegalOperation);
			});
			xit("errors if executing a non-existent word", {
				Forth.evaluate.bind(["foo"]).should.throwValue(StackError.UndefinedOperation);
			});
		});
		describe("case-insensitivity", {
			it("DUP is case-insensitive", {
				Forth.evaluate(["1 DUP Dup dup"]).should.containExactly([1, 1, 1, 1]);
			});
			xit("DROP is case-insensitive", {
				Forth.evaluate(["1 2 3 4 DROP Drop drop"]).should.containExactly([1]);
			});
			xit("SWAP is case-insensitive", {
				Forth.evaluate(["1 2 SWAP 3 Swap 4 swap"]).should.containExactly([2, 3, 4, 1]);
			});
			xit("OVER is case-insensitive", {
				Forth.evaluate(["1 2 OVER Over over"]).should.containExactly([1, 2, 1, 2, 1]);
			});
			xit("user-defined words are case-insensitive", {
				Forth.evaluate([": foo dup ;", "1 FOO Foo foo"]).should.containExactly([1, 1, 1, 1]);
			});
			xit("definitions are case-insensitive", {
				Forth.evaluate([": SWAP DUP Dup dup ;", "1 swap"]).should.containExactly([1, 1, 1, 1]);
			});
		});
	}
}
