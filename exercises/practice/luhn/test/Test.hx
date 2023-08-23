package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Luhn", {
			it("single digit strings can not be valid", {
				Luhn.valid("1").should.be(false);
			});
			xit("a single zero is invalid", {
				Luhn.valid("0").should.be(false);
			});
			xit("a simple valid SIN that remains valid if reversed", {
				Luhn.valid("059").should.be(true);
			});
			xit("a simple valid SIN that becomes invalid if reversed", {
				Luhn.valid("59").should.be(true);
			});
			xit("a valid Canadian SIN", {
				Luhn.valid("055 444 285").should.be(true);
			});
			xit("invalid Canadian SIN", {
				Luhn.valid("055 444 286").should.be(false);
			});
			xit("invalid credit card", {
				Luhn.valid("8273 1232 7352 0569").should.be(false);
			});
			xit("invalid long number with an even remainder", {
				Luhn.valid("1 2345 6789 1234 5678 9012").should.be(false);
			});
			xit("valid number with an even number of digits", {
				Luhn.valid("095 245 88").should.be(true);
			});
			xit("valid number with an odd number of spaces", {
				Luhn.valid("234 567 891 234").should.be(true);
			});
			xit("valid strings with a non-digit added at the end become invalid", {
				Luhn.valid("059a").should.be(false);
			});
			xit("valid strings with punctuation included become invalid", {
				Luhn.valid("055-444-285").should.be(false);
			});
			xit("valid strings with symbols included become invalid", {
				Luhn.valid("055# 444$ 285").should.be(false);
			});
			xit("single zero with space is invalid", {
				Luhn.valid(" 0").should.be(false);
			});
			xit("more than a single zero is valid", {
				Luhn.valid("0000 0").should.be(true);
			});
			xit("input digit 9 is correctly converted to output digit 9", {
				Luhn.valid("091").should.be(true);
			});
			xit("using ascii value for non-doubled non-digit isn't allowed", {
				Luhn.valid("055b 444 285").should.be(false);
			});
			xit("using ascii value for doubled non-digit isn't allowed", {
				Luhn.valid(":9").should.be(false);
			});
		});
	}
}
