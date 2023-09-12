package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Pangram", {
			it("empty sentence", {
				Pangram.isPangram("").should.be(false);
			});
			xit("perfect lower case", {
				Pangram.isPangram("abcdefghijklmnopqrstuvwxyz").should.be(true);
			});
			xit("only lower case", {
				Pangram.isPangram("the quick brown fox jumps over the lazy dog").should.be(true);
			});
			xit("missing the letter 'x'", {
				Pangram.isPangram("a quick movement of the enemy will jeopardize five gunboats").should.be(false);
			});
			xit("missing the letter 'h'", {
				Pangram.isPangram("five boxing wizards jump quickly at it").should.be(false);
			});
			xit("with underscores", {
				Pangram.isPangram("the_quick_brown_fox_jumps_over_the_lazy_dog").should.be(true);
			});
			xit("with numbers", {
				Pangram.isPangram("the 1 quick brown fox jumps over the 2 lazy dogs").should.be(true);
			});
			xit("missing letters replaced by numbers", {
				Pangram.isPangram("7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog").should.be(false);
			});
			xit("mixed case and punctuation", {
				Pangram.isPangram("\"Five quacking Zephyrs jolt my wax bed.\"").should.be(true);
			});
			xit("a-m and A-M are 26 different characters but not a pangram", {
				Pangram.isPangram("abcdefghijklm ABCDEFGHIJKLM").should.be(false);
			});
		});
	}
}
