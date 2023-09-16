package;

using buddy.Should;

class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Square the sum of the numbers up to the given number",
			{
				it("square of sum 1",
					{
						DifferenceOfSquares.squareOfSum(1).should().be(1);
					});
				xit("square of sum 5",
					{
						DifferenceOfSquares.squareOfSum(5).should().be(225);
					});
				xit("square of sum 100",
					{
						DifferenceOfSquares.squareOfSum(100).should().be(25502500);
					});
			});
		describe("Sum the squares of the numbers up to the given number",
			{
				xit("sum of squares 1",
					{
						DifferenceOfSquares.sumOfSquares(1).should().be(1);
					});
				xit("sum of squares 5",
					{
						DifferenceOfSquares.sumOfSquares(5).should().be(55);
					});
				xit("sum of squares 100",
					{
						DifferenceOfSquares.sumOfSquares(100).should().be(338350);
					});
			});
		describe("Subtract sum of squares from square of sums",
			{
				xit("difference of squares 1",
					{
						DifferenceOfSquares.differenceOfSquares(1).should().be(0);
					});
				xit("difference of squares 5",
					{
						DifferenceOfSquares.differenceOfSquares(5).should().be(170);
					});
				xit("difference of squares 100",
					{
						DifferenceOfSquares.differenceOfSquares(100).should().be(25164150);
					});
			});
	}
}
