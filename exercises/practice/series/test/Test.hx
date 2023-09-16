package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Series",
			{
				it("slices of one from one",
					{
						Series.slices(1, "1").should.containExactly(["1"]);
					});

				xit("slices of one from two",
					{
						Series.slices(1, "12").should.containExactly(["1", "2"]);
					});

				xit("slices of two",
					{
						Series.slices(2, "35").should.containExactly(["35"]);
					});

				xit("slices of two overlap",
					{
						Series.slices(2, "9142").should.containExactly(["91", "14", "42"]);
					});

				xit("slices can include duplicates",
					{
						Series.slices(3, "777777").should.containExactly(["777", "777", "777", "777"]);
					});

				xit("slices of a long series",
					{
						Series.slices(5, "918493904243").should.containExactly(["91849", "18493", "84939", "49390", "93904", "39042", "90424", "04243"]);
					});

				xit("slice length is too large",
					{
						Series.slices.bind(6, "12345").should.throwValue("slice length cannot be greater than series length");
					});

				xit("slice length cannot be zero",
					{
						Series.slices.bind(0, "12345").should.throwValue("slice length cannot be zero");
					});

				xit("slice length cannot be negative",
					{
						Series.slices.bind(-1, "123").should.throwValue("slice length cannot be negative");
					});

				xit("empty series is invalid",
					{
						Series.slices.bind(1, "").should.throwValue("series cannot be empty");
					});
			});
	}
}
