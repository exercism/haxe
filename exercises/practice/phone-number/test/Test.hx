package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Cleanup user-entered phone numbers",
			{
				it("cleans the number",
					{
						PhoneNumber.clean("(223) 456-7890").should.be("2234567890");
					});

				xit("cleans numbers with dots",
					{
						PhoneNumber.clean("223.456.7890").should.be("2234567890");
					});

				xit("cleans numbers with multiple spaces",
					{
						PhoneNumber.clean("223 456   7890   ").should.be("2234567890");
					});

				xit("invalid when 9 digits",
					{
						PhoneNumber.clean.bind("123456789").should.throwValue("must not be fewer than 10 digits");
					});

				xit("invalid when 11 digits does not start with a 1",
					{
						PhoneNumber.clean.bind("22234567890").should.throwValue("11 digits must start with 1");
					});

				xit("valid when 11 digits and starting with 1",
					{
						PhoneNumber.clean("12234567890").should.be("2234567890");
					});

				xit("valid when 11 digits and starting with 1 even with punctuation",
					{
						PhoneNumber.clean("+1 (223) 456-7890").should.be("2234567890");
					});

				xit("invalid when more than 11 digits",
					{
						PhoneNumber.clean.bind("321234567890").should.throwValue("must not be greater than 11 digits");
					});

				xit("invalid with letters",
					{
						PhoneNumber.clean.bind("523-abc-7890").should.throwValue("letters not permitted");
					});

				xit("invalid with punctuations",
					{
						PhoneNumber.clean.bind("523-@:!-7890").should.throwValue("punctuations not permitted");
					});

				xit("invalid if area code starts with 0",
					{
						PhoneNumber.clean.bind("(023) 456-7890").should.throwValue("area code cannot start with zero");
					});

				xit("invalid if area code starts with 1",
					{
						PhoneNumber.clean.bind("(123) 456-7890").should.throwValue("area code cannot start with one");
					});

				xit("invalid if exchange code starts with 0",
					{
						PhoneNumber.clean.bind("(223) 056-7890").should.throwValue("exchange code cannot start with zero");
					});

				xit("invalid if exchange code starts with 1",
					{
						PhoneNumber.clean.bind("(223) 156-7890").should.throwValue("exchange code cannot start with one");
					});

				xit("invalid if area code starts with 0 on valid 11-digit number",
					{
						PhoneNumber.clean.bind("1 (023) 456-7890").should.throwValue("area code cannot start with zero");
					});

				xit("invalid if area code starts with 1 on valid 11-digit number",
					{
						PhoneNumber.clean.bind("1 (123) 456-7890").should.throwValue("area code cannot start with one");
					});

				xit("invalid if exchange code starts with 0 on valid 11-digit number",
					{
						PhoneNumber.clean.bind("1 (223) 056-7890").should.throwValue("exchange code cannot start with zero");
					});

				xit("invalid if exchange code starts with 1 on valid 11-digit number",
					{
						PhoneNumber.clean.bind("1 (223) 156-7890").should.throwValue("exchange code cannot start with one");
					});
			});
	}
}
