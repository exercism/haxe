package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("returns the number of grains on the square", {
			it("grains on square 1", {
				Grains.square(1).should.be(1);
			});
			xit("grains on square 2", {
				Grains.square(2).should.be(2);
			});
			xit("grains on square 3", {
				Grains.square(3).should.be(4);
			});
			xit("grains on square 4", {
				Grains.square(4).should.be(8);
			});
			xit("grains on square 16", {
				Grains.square(16).should.be(32768);
			});
			xit("grains on square 32", {
				Grains.square(32).should.be(2147483648);
			});
			xit("grains on square 64", {
				Grains.square(64).should.be(9223372036854775808);
			});
			xit("square 0 raises an exception", {
				Grains.square.bind(0).should.throwValue("square must be between 1 and 64");
			});
			xit("negative square raises an exception", {
				Grains.square.bind(-1).should.throwValue("square must be between 1 and 64");
			});
			xit("square greater than 64 raises an exception", {
				Grains.square.bind(65).should.throwValue("square must be between 1 and 64");
			});
		});
		describe("Total", {
			xit("returns the total number of grains on the board", {
				Grains.total().should.be(18446744073709551615);
			});
		});
	}
}
