package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Binary Search", {
			it("finds a value in an array with one element", {
				BinarySearch.find([6], 6).should.be(0);
			});
			xit("finds a value in the middle of an array", {
				BinarySearch.find([1, 3, 4, 6, 8, 9, 11], 6).should.be(3);
			});
			xit("finds a value at the beginning of an array", {
				BinarySearch.find([1, 3, 4, 6, 8, 9, 11], 1).should.be(0);
			});
			xit("finds a value at the end of an array", {
				BinarySearch.find([1, 3, 4, 6, 8, 9, 11], 11).should.be(6);
			});
			xit("finds a value in an array of odd length", {
				BinarySearch.find([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 634], 144).should.be(9);
			});
			xit("finds a value in an array of even length", {
				BinarySearch.find([1, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377], 21).should.be(5);
			});
			xit("identifies that a value is not included in the array", {
				BinarySearch.find.bind([1, 3, 4, 6, 8, 9, 11], 7).should.throwValue("value not in array");
			});
			xit("a value smaller than the array's smallest value is not found", {
				BinarySearch.find.bind([1, 3, 4, 6, 8, 9, 11], 0).should.throwValue("value not in array");
			});
			xit("a value larger than the array's largest value is not found", {
				BinarySearch.find.bind([1, 3, 4, 6, 8, 9, 11], 13).should.throwValue("value not in array");
			});
			xit("nothing is found in an empty array", {
				BinarySearch.find.bind([], 1).should.throwValue("value not in array");
			});
			xit("nothing is found when the left and right bounds cross", {
				BinarySearch.find.bind([1, 2], 0).should.throwValue("value not in array");
			});
		});
	}
}
