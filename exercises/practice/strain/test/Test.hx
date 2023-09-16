package;

using buddy.Should;
using Strain.ArrayExt;

class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Strain",
			{
				it("keep on empty list returns empty list",
					{
						[].keep(x -> true).should.containExactly([]);
					});

				xit("keeps everything",
					{
						[1, 3, 5].keep(x -> true).should.containExactly([1, 3, 5]);
					});

				xit("keeps nothing",
					{
						[1, 3, 5].keep(x -> false).should.containExactly([]);
					});

				xit("keeps first and last",
					{
						[1, 2, 3].keep(x -> x % 2 == 1).should.containExactly([1, 3]);
					});

				xit("keeps neither first nor last",
					{
						[1, 2, 3].keep(x -> x % 2 == 0).should.containExactly([2]);
					});

				xit("keeps strings",
					{
						var words = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"];

						words.keep(x -> x.charAt(0) == "z").should.containExactly(["zebra", "zombies", "zealot"]);
					});

				xit("keeps arrays",
					{
						var actual = [[1, 2, 3], [5, 5, 5], [5, 1, 2], [2, 1, 2], [1, 5, 2], [2, 2, 1], [1, 2, 5]];
						var expected = [[5, 5, 5], [5, 1, 2], [1, 5, 2], [1, 2, 5]];

						var result = actual.keep(x -> x.contains(5));

						result.length.should.be(expected.length);
						for (i in 0...expected.length)
							expected[i].should.containExactly(result[i]);
					});

				xit("discard on empty list returns empty list",
					{
						[].discard(x -> true).should.containExactly([]);
					});

				xit("discards everything",
					{
						[1, 3, 5].discard(x -> true).should.containExactly([]);
					});

				xit("discards nothing",
					{
						[1, 3, 5].discard(x -> false).should.containExactly([1, 3, 5]);
					});

				xit("discards first and last",
					{
						[1, 2, 3].discard(x -> x % 2 == 1).should.containExactly([2]);
					});

				xit("discards neither first nor last",
					{
						[1, 2, 3].discard(x -> x % 2 == 0).should.containExactly([1, 3]);
					});

				xit("discard strings",
					{
						var words = ["apple", "zebra", "banana", "zombies", "cherimoya", "zealot"];
						words.discard(x -> x.charAt(0) == "z").should.containExactly(["apple", "banana", "cherimoya"]);
					});

				xit("discard arrays",
					{
						var actual = [[1, 2, 3], [5, 5, 5], [5, 1, 2], [2, 1, 2], [1, 5, 2], [2, 2, 1], [1, 2, 5]];
						var expected = [[1, 2, 3], [2, 1, 2], [2, 2, 1]];

						var result = actual.discard(x -> x.contains(5));

						result.length.should.be(expected.length);
						for (i in 0...expected.length)
							expected[i].should.containExactly(result[i]);
					});
			});
	}
}
