package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Sublist",
			{
				it("empty lists",
					{
						Sublist.sublist([], []).should.be("equal");
					});
				xit("empty list within non empty list",
					{
						Sublist.sublist([], [1, 2, 3]).should.be("sublist");
					});
				xit("non empty list contains empty list",
					{
						Sublist.sublist([1, 2, 3], []).should.be("superlist");
					});
				xit("list equals itself",
					{
						Sublist.sublist([1, 2, 3], [1, 2, 3]).should.be("equal");
					});
				xit("different lists",
					{
						Sublist.sublist([1, 2, 3], [2, 3, 4]).should.be("unequal");
					});
				xit("false start",
					{
						Sublist.sublist([1, 2, 5], [0, 1, 2, 3, 1, 2, 5, 6]).should.be("sublist");
					});
				xit("consecutive",
					{
						Sublist.sublist([1, 1, 2], [0, 1, 1, 1, 2, 1, 2]).should.be("sublist");
					});
				xit("sublist at start",
					{
						Sublist.sublist([0, 1, 2], [0, 1, 2, 3, 4, 5]).should.be("sublist");
					});
				xit("sublist in middle",
					{
						Sublist.sublist([2, 3, 4], [0, 1, 2, 3, 4, 5]).should.be("sublist");
					});
				xit("sublist at end",
					{
						Sublist.sublist([3, 4, 5], [0, 1, 2, 3, 4, 5]).should.be("sublist");
					});
				xit("at start of superlist",
					{
						Sublist.sublist([0, 1, 2, 3, 4, 5], [0, 1, 2]).should.be("superlist");
					});
				xit("in middle of superlist",
					{
						Sublist.sublist([0, 1, 2, 3, 4, 5], [2, 3]).should.be("superlist");
					});
				xit("at end of superlist",
					{
						Sublist.sublist([0, 1, 2, 3, 4, 5], [3, 4, 5]).should.be("superlist");
					});
				xit("first list missing element from second list",
					{
						Sublist.sublist([1, 3], [1, 2, 3]).should.be("unequal");
					});
				xit("second list missing element from first list",
					{
						Sublist.sublist([1, 2, 3], [1, 3]).should.be("unequal");
					});
				xit("first list missing additional digits from second list",
					{
						Sublist.sublist([1, 2], [1, 22]).should.be("unequal");
					});
				xit("order matters to a list",
					{
						Sublist.sublist([1, 2, 3], [3, 2, 1]).should.be("unequal");
					});
				xit("same digits but different numbers",
					{
						Sublist.sublist([1, 0, 1], [10, 1]).should.be("unequal");
					});
			});
	}
}
