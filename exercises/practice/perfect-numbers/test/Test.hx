package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Perfect numbers",
			{
				it("Smallest perfect number is classified correctly",
					{
						PerfectNumbers.classify(6).should.be("perfect");
					});
				xit("Medium perfect number is classified correctly",
					{
						PerfectNumbers.classify(28).should.be("perfect");
					});
				xit("Large perfect number is classified correctly",
					{
						PerfectNumbers.classify(33550336).should.be("perfect");
					});
			});
		describe("Abundant numbers",
			{
				xit("Smallest abundant number is classified correctly",
					{
						PerfectNumbers.classify(12).should.be("abundant");
					});
				xit("Medium abundant number is classified correctly",
					{
						PerfectNumbers.classify(30).should.be("abundant");
					});
				xit("Large abundant number is classified correctly",
					{
						PerfectNumbers.classify(33550335).should.be("abundant");
					});
			});
		describe("Deficient numbers",
			{
				xit("Smallest prime deficient number is classified correctly",
					{
						PerfectNumbers.classify(2).should.be("deficient");
					});
				xit("Smallest non-prime deficient number is classified correctly",
					{
						PerfectNumbers.classify(4).should.be("deficient");
					});
				xit("Medium deficient number is classified correctly",
					{
						PerfectNumbers.classify(32).should.be("deficient");
					});
				xit("Large deficient number is classified correctly",
					{
						PerfectNumbers.classify(33550337).should.be("deficient");
					});
				xit("Edge case (no factors other than itself) is classified correctly",
					{
						PerfectNumbers.classify(1).should.be("deficient");
					});
			});
		describe("Invalid inputs",
			{
				xit("Zero is rejected (as it is not a positive integer)",
					{
						PerfectNumbers.classify.bind(0).should.throwValue("Classification is only possible for positive integers.");
					});
				xit("Negative integer is rejected (as it is not a positive integer)",
					{
						PerfectNumbers.classify.bind(-1).should.throwValue("Classification is only possible for positive integers.");
					});
			});
	}
}
