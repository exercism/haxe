package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("Square the sum of the numbers up to the given number", {
			it("square of sum 1", {
				DifferenceOfSquares.squareOfSum(1).should().be(1);
			});
			it("square of sum 5", {
				pending("Skipping");
				DifferenceOfSquares.squareOfSum(5).should().be(225);
			});
			it("square of sum 100", {
				pending("Skipping");
				DifferenceOfSquares.squareOfSum(100).should().be(25502500);
			});
		});
		describe("Sum the squares of the numbers up to the given number", {
			it("sum of squares 1", {
				pending("Skipping");
				DifferenceOfSquares.sumOfSquares(1).should().be(1);
			});
			it("sum of squares 5", {
				pending("Skipping");
				DifferenceOfSquares.sumOfSquares(5).should().be(55);
			});
			it("sum of squares 100", {
				pending("Skipping");
				DifferenceOfSquares.sumOfSquares(100).should().be(338350);
			});
		});
		describe("Subtract sum of squares from square of sums", {
			it("difference of squares 1", {
				pending("Skipping");
				DifferenceOfSquares.differenceOfSquares(1).should().be(0);
			});
			it("difference of squares 5", {
				pending("Skipping");
				DifferenceOfSquares.differenceOfSquares(5).should().be(170);
			});
			it("difference of squares 100", {
				pending("Skipping");
				DifferenceOfSquares.differenceOfSquares(100).should().be(25164150);
			});
		});
	}
}
