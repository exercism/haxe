package;

import haxe.Exception;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Collatz Conjecture", {
			it("zero steps for one", {
				CollatzConjecture.steps(1).should.be(0);
			});
			xit("divide if even", {
				CollatzConjecture.steps(16).should.be(4);
			});
			xit("even and odd steps", {
				CollatzConjecture.steps(12).should.be(9);
			});
			xit("large number of even and odd steps", {
				CollatzConjecture.steps(1000000).should.be(152);
			});
			xit("zero is an error", {
				CollatzConjecture.steps.bind(0).should.throwValue("Only positive integers are allowed");
			});
			xit("negative value is an error", {
				CollatzConjecture.steps.bind(-15).should.throwValue("Only positive integers are allowed");
			});
		});
	}
}
