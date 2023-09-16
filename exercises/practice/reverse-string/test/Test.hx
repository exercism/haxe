package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Reverse String",
			{
				it("an empty string",
					{
						ReverseString.reverse("").should.be("");
					});
				xit("a word",
					{
						ReverseString.reverse("robot").should.be("tobor");
					});
				xit("a capitalized word",
					{
						ReverseString.reverse("Ramen").should.be("nemaR");
					});
				xit("a sentence with punctuation",
					{
						ReverseString.reverse("I'm hungry!").should.be("!yrgnuh m'I");
					});
				xit("a palindrome",
					{
						ReverseString.reverse("racecar").should.be("racecar");
					});
				xit("an even-sized word",
					{
						ReverseString.reverse("drawer").should.be("reward");
					});
			});
	}
}
