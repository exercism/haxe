package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Yacht",
			{
				it("Yacht",
					{
						Yacht.score([5, 5, 5, 5, 5], "yacht").should.be(50);
					});

				xit("Not Yacht",
					{
						Yacht.score([1, 3, 3, 2, 5], "yacht").should.be(0);
					});

				xit("Ones",
					{
						Yacht.score([1, 1, 1, 3, 5], "ones").should.be(3);
					});

				xit("Ones, out of order",
					{
						Yacht.score([3, 1, 1, 5, 1], "ones").should.be(3);
					});

				xit("No ones",
					{
						Yacht.score([4, 3, 6, 5, 5], "ones").should.be(0);
					});

				xit("Twos",
					{
						Yacht.score([2, 3, 4, 5, 6], "twos").should.be(2);
					});

				xit("Fours",
					{
						Yacht.score([1, 4, 1, 4, 1], "fours").should.be(8);
					});

				xit("Yacht counted as threes",
					{
						Yacht.score([3, 3, 3, 3, 3], "threes").should.be(15);
					});

				xit("Yacht of 3s counted as fives",
					{
						Yacht.score([3, 3, 3, 3, 3], "fives").should.be(0);
					});

				xit("Sixes",
					{
						Yacht.score([2, 3, 4, 5, 6], "sixes").should.be(6);
					});

				xit("Full house two small, three big",
					{
						Yacht.score([2, 2, 4, 4, 4], "full house").should.be(16);
					});

				xit("Full house three small, two big",
					{
						Yacht.score([5, 3, 3, 5, 3], "full house").should.be(19);
					});

				xit("Two pair is not a full house",
					{
						Yacht.score([2, 2, 4, 4, 5], "full house").should.be(0);
					});

				xit("Four of a kind is not a full house",
					{
						Yacht.score([1, 4, 4, 4, 4], "full house").should.be(0);
					});

				xit("Yacht is not a full house",
					{
						Yacht.score([2, 2, 2, 2, 2], "full house").should.be(0);
					});

				xit("Four of a Kind",
					{
						Yacht.score([6, 6, 4, 6, 6], "four of a kind").should.be(24);
					});

				xit("Yacht can be scored as Four of a Kind",
					{
						Yacht.score([3, 3, 3, 3, 3], "four of a kind").should.be(12);
					});

				xit("Full house is not Four of a Kind",
					{
						Yacht.score([3, 3, 3, 5, 5], "four of a kind").should.be(0);
					});

				xit("Little Straight",
					{
						Yacht.score([3, 5, 4, 1, 2], "little straight").should.be(30);
					});

				xit("Little Straight as Big Straight",
					{
						Yacht.score([1, 2, 3, 4, 5], "big straight").should.be(0);
					});

				xit("Four in order but not a little straight",
					{
						Yacht.score([1, 1, 2, 3, 4], "little straight").should.be(0);
					});

				xit("No pairs but not a little straight",
					{
						Yacht.score([1, 2, 3, 4, 6], "little straight").should.be(0);
					});

				xit("Minimum is 1, maximum is 5, but not a little straight",
					{
						Yacht.score([1, 1, 3, 4, 5], "little straight").should.be(0);
					});

				xit("Big Straight",
					{
						Yacht.score([4, 6, 2, 5, 3], "big straight").should.be(30);
					});

				xit("Big Straight as little straight",
					{
						Yacht.score([6, 5, 4, 3, 2], "little straight").should.be(0);
					});

				xit("No pairs but not a big straight",
					{
						Yacht.score([6, 5, 4, 3, 1], "big straight").should.be(0);
					});

				xit("Choice",
					{
						Yacht.score([3, 3, 5, 6, 6], "choice").should.be(23);
					});

				xit("Yacht as choice",
					{
						Yacht.score([2, 2, 2, 2, 2], "choice").should.be(10);
					});
			});
	}
}
