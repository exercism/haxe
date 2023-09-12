package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Minesweeper", {
			it("no rows", {
				Minesweeper.annotate([]).should.containExactly([]);
			});

			xit("no columns", {
				Minesweeper.annotate([""]).should.containExactly([""]);
			});

			xit("no mines", {
				Minesweeper.annotate(["   ", "   ", "   "]).should.containExactly(["   ", "   ", "   "]);
			});

			xit("minefield with only mines", {
				Minesweeper.annotate(["***", "***", "***"]).should.containExactly(["***", "***", "***"]);
			});

			xit("mine surrounded by spaces", {
				Minesweeper.annotate(["   ", " * ", "   "]).should.containExactly(["111", "1*1", "111"]);
			});

			xit("space surrounded by mines", {
				Minesweeper.annotate(["***", "* *", "***"]).should.containExactly(["***", "*8*", "***"]);
			});
			
			xit("horizontal line", {
				Minesweeper.annotate([" * * "]).should.containExactly(["1*2*1"]);
			});

			xit("horizontal line, mines at edges", {
				Minesweeper.annotate(["*   *"]).should.containExactly(["*1 1*"]);
			});

			xit("vertical line", {
				Minesweeper.annotate([" ", "*", " ", "*", " "]).should.containExactly(["1", "*", "2", "*", "1"]);
			});

			xit("vertical line, mines at edges", {
				Minesweeper.annotate(["*", " ", " ", " ", "*"]).should.containExactly(["*", "1", " ", "1", "*"]);
			});

			xit("cross", {
				Minesweeper.annotate(["  *  ", "  *  ", "*****", "  *  ", "  *  "]).should.containExactly([" 2*2 ", "25*52", "*****", "25*52", " 2*2 "]);
			});

			xit("large minefield", {
				Minesweeper.annotate([" *  * ", "  *   ", "    * ", "   * *", " *  * ", "      "])
					.should.containExactly(["1*22*1", "12*322", " 123*2", "112*4*", "1*22*2", "111111"]);
			});
		});
	}
}
