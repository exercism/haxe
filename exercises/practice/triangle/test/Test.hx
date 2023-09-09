package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("equilateral triangle", {
			it("all sides are equal", {
				Triangle.equilateral([2, 2, 2]).should.be(true);
			});
			xit("any side is unequal", {
				Triangle.equilateral([2, 3, 2]).should.be(false);
			});
			xit("no sides are equal", {
				Triangle.equilateral([5, 4, 6]).should.be(false);
			});
			xit("all zero sides is not a triangle", {
				Triangle.equilateral([0, 0, 0]).should.be(false);
			});
			xit("sides may be floats", {
				Triangle.equilateral([0.5, 0.5, 0.5]).should.be(true);
			});
		});
		describe("isosceles triangle", {
			xit("last two sides are equal", {
				Triangle.isosceles([3, 4, 4]).should.be(true);
			});
			xit("first two sides are equal", {
				Triangle.isosceles([4, 4, 3]).should.be(true);
			});
			xit("first and last sides are equal", {
				Triangle.isosceles([4, 3, 4]).should.be(true);
			});
			xit("equilateral triangles are also isosceles", {
				Triangle.isosceles([4, 4, 4]).should.be(true);
			});
			xit("no sides are equal", {
				Triangle.isosceles([2, 3, 4]).should.be(false);
			});
			xit("first triangle inequality violation", {
				Triangle.isosceles([1, 1, 3]).should.be(false);
			});
			xit("second triangle inequality violation", {
				Triangle.isosceles([1, 3, 1]).should.be(false);
			});
			xit("third triangle inequality violation", {
				Triangle.isosceles([3, 1, 1]).should.be(false);
			});
			xit("sides may be floats", {
				Triangle.isosceles([0.5, 0.4, 0.5]).should.be(true);
			});
		});
		describe("scalene triangle", {
			xit("no sides are equal", {
				Triangle.scalene([5, 4, 6]).should.be(true);
			});
			xit("all sides are equal", {
				Triangle.scalene([4, 4, 4]).should.be(false);
			});
			xit("first and second sides are equal", {
				Triangle.scalene([4, 4, 3]).should.be(false);
			});
			xit("first and third sides are equal", {
				Triangle.scalene([3, 4, 3]).should.be(false);
			});
			xit("second and third sides are equal", {
				Triangle.scalene([4, 3, 3]).should.be(false);
			});
			xit("may not violate triangle inequality", {
				Triangle.scalene([7, 3, 2]).should.be(false);
			});
			xit("sides may be floats", {
				Triangle.scalene([0.5, 0.4, 0.6]).should.be(true);
			});
		});
	}
}
