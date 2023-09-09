package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("All Your Base", {
			it("single bit one to decimal", {
				AllYourBase.rebase(2, [1], 10).should.containExactly([1]);
			});

			xit("binary to single decimal", {
				AllYourBase.rebase(2, [1, 0, 1], 10).should.containExactly([5]);
			});

			xit("single decimal to binary", {
				AllYourBase.rebase(10, [5], 2).should.containExactly([1, 0, 1]);
			});

			xit("binary to multiple decimal", {
				AllYourBase.rebase(2, [1, 0, 1, 0, 1, 0], 10).should.containExactly([4, 2]);
			});

			xit("decimal to binary", {
				AllYourBase.rebase(10, [4, 2], 2).should.containExactly([1, 0, 1, 0, 1, 0]);
			});

			xit("trinary to hexadecimal", {
				AllYourBase.rebase(3, [1, 1, 2, 0], 16).should.containExactly([2, 10]);
			});

			xit("hexadecimal to trinary", {
				AllYourBase.rebase(16, [2, 10], 3).should.containExactly([1, 1, 2, 0]);
			});

			xit("15-bit integer", {
				AllYourBase.rebase(97, [3, 46, 60], 73).should.containExactly([6, 10, 45]);
			});

			xit("empty list", {
				AllYourBase.rebase(2, [], 10).should.containExactly([0]);
			});

			xit("single zero", {
				AllYourBase.rebase(10, [0], 2).should.containExactly([0]);
			});

			xit("multiple zeros", {
				AllYourBase.rebase(10, [0, 0, 0], 2).should.containExactly([0]);
			});

			xit("leading zeros", {
				AllYourBase.rebase(7, [0, 6, 0], 10).should.containExactly([4, 2]);
			});

			xit("input base is one", {
				AllYourBase.rebase.bind(1, [0], 10).should.throwValue("input base must be >= 2");
			});

			xit("input base is zero", {
				AllYourBase.rebase.bind(0, [], 10).should.throwValue("input base must be >= 2");
			});

			xit("input base is negative", {
				AllYourBase.rebase.bind(-2, [1], 10).should.throwValue("input base must be >= 2");
			});

			xit("negative digit", {
				AllYourBase.rebase.bind(2, [1, -1, 1, 0, 1, 0], 10).should.throwValue("all digits must satisfy 0 <= d < input base");
			});

			xit("invalid positive digit", {
				AllYourBase.rebase.bind(2, [1, 2, 1, 0, 1, 0], 10).should.throwValue("all digits must satisfy 0 <= d < input base");
			});

			xit("output base is one", {
				AllYourBase.rebase.bind(2, [1, 0, 1, 0, 1, 0], 1).should.throwValue("output base must be >= 2");
			});

			xit("output base is zero", {
				AllYourBase.rebase.bind(10, [7], 0).should.throwValue("output base must be >= 2");
			});

			xit("output base is negative", {
				AllYourBase.rebase.bind(2, [1], -7).should.throwValue("output base must be >= 2");
			});

			xit("both bases are negative", {
				AllYourBase.rebase.bind(-2, [1], -7).should.throwValue("input base must be >= 2");
			});
		});
	}
}
