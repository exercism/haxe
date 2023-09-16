package;

using buddy.Should;
using Accumulate.ArrayExtender;

class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Accumulate",
			{
				it("accumulate empty",
					{
						[].accumulate(x -> x * x).should.containExactly([]);
					});

				xit("accumulate squares",
					{
						[1, 2, 3].accumulate(x -> x * x).should.containExactly([1, 4, 9]);
					});

				xit("accumulate upcases",
					{
						["hello", "world"].accumulate(x -> x.toUpperCase()).should.containExactly(["HELLO", "WORLD"]);
					});

				xit("accumulate reversed strings",
					{
						function reverseString(str:String)
							return [
								for (i in 0...str.length + 1)
									str.charAt(str.length - i)
							].join("");

						"the quick brown fox etc".split(" ").accumulate(reverseString).should.containExactly("eht kciuq nworb xof cte".split(" "));
					});

				xit("accumulate within accumulate",
					{
						var result = ["a", "b", "c"].accumulate(x -> ["1", "2", "3"].accumulate(y -> x + y));
						var expected = [["a1", "a2", "a3"], ["b1", "b2", "b3"], ["c1", "c2", "c3"]];

						result.length.should.be(expected.length);
						for (i in 0...expected.length)
							expected[i].should.containExactly(result[i]);
					});

				xit("accumulate allows different return types",
					{
						[1, 2, 3].accumulate(Std.string).should.containExactly(["1", "2", "3"]);
					});
			});
	}
}
