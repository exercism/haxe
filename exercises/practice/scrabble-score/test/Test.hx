package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("scrabble-score", {
			it("lowercase letter", {
				ScrabbleScore.score("a").should.be(1);
			});
			xit("uppercase letter", {
				ScrabbleScore.score("A").should.be(1);
			});
			xit("valuable letter", {
				ScrabbleScore.score("f").should.be(4);
			});
			xit("short word", {
				ScrabbleScore.score("at").should.be(2);
			});
			xit("short, valuable word", {
				ScrabbleScore.score("zoo").should.be(12);
			});
			xit("medium word", {
				ScrabbleScore.score("street").should.be(6);
			});
			xit("medium, valuable word", {
				ScrabbleScore.score("quirky").should.be(22);
			});
			xit("long, mixed-case word", {
				ScrabbleScore.score("OxyphenButazone").should.be(41);
			});
			xit("english-like word", {
				ScrabbleScore.score("pinata").should.be(8);
			});
			xit("empty input", {
				ScrabbleScore.score("").should.be(0);
			});
			xit("entire alphabet available", {
				ScrabbleScore.score("abcdefghijklmnopqrstuvwxyz").should.be(87);
			});
		});
	}
}
