package;

using buddy.Should;

class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("TwoFer",
			{
				it("no name given",
					{
						TwoFer.twoFer(null).should().be("One for you, one for me.");
					});
				xit("a name given",
					{
						TwoFer.twoFer("Alice").should().be("One for Alice, one for me.");
					});
				xit("another name given",
					{
						TwoFer.twoFer("Bob").should().be("One for Bob, one for me.");
					});
			});
	}
}
