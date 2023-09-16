package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("append entries to a list and return the new list",
			{
				it("empty lists",
					{
						ListOps.append([], []).should.containExactly([]);
					});

				xit("list to empty list",
					{
						ListOps.append([], [1, 2, 3, 4]).should.containExactly([1, 2, 3, 4]);
					});

				xit("empty list to list",
					{
						ListOps.append([1, 2, 3, 4], []).should.containExactly([1, 2, 3, 4]);
					});

				xit("non-empty lists",
					{
						ListOps.append([1, 2], [2, 3, 4, 5]).should.containExactly([1, 2, 2, 3, 4, 5]);
					});
			});
		describe("concatenate a list of lists",
			{
				xit("empty list",
					{
						ListOps.concat([]).should.containExactly([]);
					});

				xit("list of lists",
					{
						ListOps.concat([[1, 2], [3], [], [4, 5, 6]]).should.containExactly([1, 2, 3, 4, 5, 6]);
					});

				xit("list of nested lists",
					{
						var result = ListOps.concat([[[1], [2]], [[3]], [[]], [[4, 5, 6]]]);
						var expected = [[1], [2], [3], [], [4, 5, 6]];

						result.length.should.be(expected.length);
						for (i in 0...expected.length)
							expected[i].should.containExactly(result[i]);
					});
			});
		describe("filter list returning only values that satisfy the filter function",
			{
				xit("empty list",
					{
						ListOps.filter([], (x) -> x % 2 == 1).should.containExactly([]);
					});

				xit("non-empty list",
					{
						ListOps.filter([1, 2, 3, 5], (x) -> x % 2 == 1).should.containExactly([1, 3, 5]);
					});
			});
		describe("returns the length of a list",
			{
				xit("empty list",
					{
						ListOps.length([]).should.be(0);
					});

				xit("non-empty list",
					{
						ListOps.length([1, 2, 3, 4]).should.be(4);
					});
			});
		describe("return a list of elements whose values equal the list value transformed by the mapping function", {
			xit("empty list",
				{
					ListOps.map([], (x) -> x + 1).should.containExactly([]);
				});

			xit("non-empty list",
				{
					ListOps.map([1, 3, 5, 7], (x) -> x + 1).should.containExactly([2, 4, 6, 8]);
				});
		});
		describe("folds (reduces) the given list from the left with a function",
			{
				xit("empty list",
					{
						ListOps.foldl([], 2, (acc, el) -> el * acc).should.be(2);
					});

				xit("direction independent function applied to non-empty list",
					{
						ListOps.foldl([1, 2, 3, 4], 5, (acc, el) -> el + acc).should.be(15);
					});

				xit("direction dependent function applied to non-empty list",
					{
						ListOps.foldl([2, 5], 5, (acc, el) -> Std.int(acc / el)).should.be(0);
					});
			});
		describe("folds (reduces) the given list from the right with a function",
			{
				xit("empty list",
					{
						ListOps.foldr([], 2, (x, y) -> x * y).should.be(2);
					});
				xit("direction independent function applied to non-empty list",
					{
						ListOps.foldr([1, 2, 3, 4], 5, (acc, el) -> el + acc).should.be(15);
					});
				xit("direction dependent function applied to non-empty list",
					{
						ListOps.foldr([2, 5], 5, (acc, el) -> Std.int(acc / el)).should.be(2);
					});
			});
		describe("reverse the elements of the list",
			{
				xit("empty list",
					{
						ListOps.reverse([]).should.containExactly([]);
					});

				xit("non-empty list",
					{
						ListOps.reverse([1, 3, 5, 7]).should.containExactly([7, 5, 3, 1]);
					});

				xit("list of lists is not flattened",
					{
						var result = ListOps.reverse([[1, 2], [3], [], [4, 5, 6]]);
						var expected = [[4, 5, 6], [], [3], [1, 2]];
						result.length.should.be(expected.length);
						for (i in 0...expected.length)
							expected[i].should.containExactly(result[i]);
					});
			});
	}
}
