package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("returns prime factors for the given input number", {
			it("no factors", {
				PrimeFactors.factors(1).should.containExactly([]);
			});

			xit("prime number", {
				PrimeFactors.factors(2).should.containExactly([2]);
			});

			xit("another prime number", {
				PrimeFactors.factors(3).should.containExactly([3]);
			});

			xit("square of a prime", {
				PrimeFactors.factors(9).should.containExactly([3, 3]);
			});

			xit("product of first prime", {
				PrimeFactors.factors(4).should.containExactly([2, 2]);
			});

			xit("cube of a prime", {
				PrimeFactors.factors(8).should.containExactly([2, 2, 2]);
			});

			xit("product of second prime", {
				PrimeFactors.factors(27).should.containExactly([3, 3, 3]);
			});

			xit("product of third prime", {
				PrimeFactors.factors(625).should.containExactly([5, 5, 5, 5]);
			});

			xit("product of first and second prime", {
				PrimeFactors.factors(6).should.containExactly([2, 3]);
			});

			xit("product of primes and non-primes", {
				PrimeFactors.factors(12).should.containExactly([2, 2, 3]);
			});

			xit("product of primes", {
				PrimeFactors.factors(901255).should.containExactly([5, 17, 23, 461]);
			});

			xit("factors include a large prime", {
				PrimeFactors.factors(93819012551).should.containExactly([11, 9539, 894119]);
			});
		});
	}
}
