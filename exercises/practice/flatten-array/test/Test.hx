package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Flatten Array", {
			it("empty", {
				FlattenArray.flatten([]).should.containExactly([]);
			});
			xit("no nesting", {
				FlattenArray.flatten([0, 1, 2]).should.containExactly([0, 1, 2]);
			});
			xit("flattens a nested array", {
				FlattenArray.flatten([[]]).should.containExactly([]);
			});
			xit("flattens array with just integers present", {
				FlattenArray.flatten(
					[1, [2, 3, 4, 5, 6, 7], 8]).should.containExactly([1, 2, 3, 4, 5, 6, 7, 8]);
			});
			xit("5 level nesting", {
				FlattenArray.flatten(
					[0, 2, [[2, 3], 8, 100, 4, [[[50]]]], -2]).should.containExactly(
						[0, 2, 2, 3, 8, 100, 4, 50, -2]);
			});
			xit("6 level nesting", {
				FlattenArray.flatten(
					[1, [2, [[3]], [4, [[5]]], 6, 7], 8]).should.containExactly(
						[1, 2, 3, 4, 5, 6, 7, 8]);
			});
			xit("null values are omitted from the final result", {
				FlattenArray.flatten([1, 2, null]).should.containExactly([1, 2]);
			});
			xit("consecutive null values at the front of the list are omitted from the final result", {
				FlattenArray.flatten([null, null, 3]).should.containExactly([3]);
			});
			xit("consecutive null values in the middle of the list are omitted from the final result", {
				FlattenArray.flatten([1, null, null, 4]).should.containExactly([1, 4]);
			});
			xit("6 level nest list with null values", {
				FlattenArray.flatten(
					[0, 2, [[2, 3], 8, [[100]], null, [[null]]], -2]).should.containExactly(
						[0, 2, 2, 3, 8, 100, -2]);
			});
			xit("all values in nested list are null", {
				FlattenArray.flatten(
					[null,[[[null]]], null, null, [[null, null], null], null]).should.containExactly([]);
			});
		});}
}

