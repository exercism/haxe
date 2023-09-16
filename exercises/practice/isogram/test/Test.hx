package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Check if the given string is an isogram",
			{
				it("empty string",
					{
						Isogram.isIsogram("").should.be(true);
					});
				xit("isogram with only lower case characters",
					{
						Isogram.isIsogram("isogram").should.be(true);
					});
				xit("word with one duplicated character",
					{
						Isogram.isIsogram("eleven").should.be(false);
					});
				xit("word with one duplicated character from the end of the alphabet",
					{
						Isogram.isIsogram("zzyzx").should.be(false);
					});
				xit("longest reported english isogram",
					{
						Isogram.isIsogram("subdermatoglyphic").should.be(true);
					});
				xit("word with duplicated character in mixed case",
					{
						Isogram.isIsogram("Alphabet").should.be(false);
					});
				xit("word with duplicated character in mixed case, lowercase first",
					{
						Isogram.isIsogram("alphAbet").should.be(false);
					});
				xit("hypothetical isogrammic word with hyphen",
					{
						Isogram.isIsogram("thumbscrew-japingly").should.be(true);
					});
				xit("hypothetical word with duplicated character following hyphen",
					{
						Isogram.isIsogram("thumbscrew-jappingly").should.be(false);
					});
				xit("isogram with duplicated hyphen",
					{
						Isogram.isIsogram("six-year-old").should.be(true);
					});
				xit("made-up name that is an isogram",
					{
						Isogram.isIsogram("Emily Jung Schwartzkopf").should.be(true);
					});
				xit("duplicated character in the middle",
					{
						Isogram.isIsogram("accentor").should.be(false);
					});
				xit("same first and last characters",
					{
						Isogram.isIsogram("angola").should.be(false);
					});
				xit("word with duplicated character and with two hyphens",
					{
						Isogram.isIsogram("up-to-date").should.be(false);
					});
			});
	}
}
