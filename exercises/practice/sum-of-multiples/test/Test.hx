package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Sum Of Multiples",
			{
				it("no multiples within limit",
					{
						SumOfMultiples.sum(1, [3, 5]).should.be(0);
					});
				xit("one factor has multiples within limit",
					{
						SumOfMultiples.sum(4, [3, 5]).should.be(3);
					});
				xit("more than one multiple within limit",
					{
						SumOfMultiples.sum(7, [3]).should.be(9);
					});
				xit("more than one factor with multiples within limit",
					{
						SumOfMultiples.sum(10, [3, 5]).should.be(23);
					});
				xit("each multiple is only counted once",
					{
						SumOfMultiples.sum(100, [3, 5]).should.be(2318);
					});
				xit("a much larger limit",
					{
						SumOfMultiples.sum(1000, [3, 5]).should.be(233168);
					});
				xit("three factors",
					{
						SumOfMultiples.sum(20, [7, 13, 17]).should.be(51);
					});
				xit("factors not relatively prime",
					{
						SumOfMultiples.sum(15, [4, 6]).should.be(30);
					});
				xit("some pairs of factors relatively prime and some not",
					{
						SumOfMultiples.sum(150, [5, 6, 8]).should.be(4419);
					});
				xit("one factor is a multiple of another",
					{
						SumOfMultiples.sum(51, [5, 25]).should.be(275);
					});
				xit("much larger factors",
					{
						SumOfMultiples.sum(10000, [43, 47]).should.be(2203160);
					});
				xit("all numbers are multiples of 1",
					{
						SumOfMultiples.sum(100, [1]).should.be(4950);
					});
				xit("no factors means an empty sum",
					{
						SumOfMultiples.sum(10000, []).should.be(0);
					});
				xit("the only multiple of 0 is 0",
					{
						SumOfMultiples.sum(1, [0]).should.be(0);
					});
				xit("the factor 0 does not affect the sum of multiples of other factors",
					{
						SumOfMultiples.sum(4, [3, 0]).should.be(3);
					});
				xit("solutions using include-exclude must extend to cardinality greater than 3",
					{
						SumOfMultiples.sum(10000, [2, 3, 5, 7, 11]).should.be(39614537);
					});
			});
	}
}
