package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Create a new clock with an initial time", {
			it("on the hour", {
				Std.string(new Clock(8, 0)).should.be("08:00");
			});

			it("past the hour", {
				Std.string(new Clock(11, 9)).should.be("11:09");
			});

			it("midnight is zero hours", {
				Std.string(new Clock(24, 0)).should.be("00:00");
			});

			it("hour rolls over", {
				Std.string(new Clock(25, 0)).should.be("01:00");
			});

			it("hour rolls over continuously", {
				Std.string(new Clock(100, 0)).should.be("04:00");
			});

			it("sixty minutes is next hour", {
				Std.string(new Clock(1, 60)).should.be("02:00");
			});

			it("minutes roll over", {
				Std.string(new Clock(0, 160)).should.be("02:40");
			});

			it("minutes roll over continuously", {
				Std.string(new Clock(0, 1723)).should.be("04:43");
			});

			it("hour and minutes roll over", {
				Std.string(new Clock(25, 160)).should.be("03:40");
			});

			it("hour and minutes roll over continuously", {
				Std.string(new Clock(201, 3001)).should.be("11:01");
			});

			it("hour and minutes roll over to exactly midnight", {
				Std.string(new Clock(72, 8640)).should.be("00:00");
			});

			it("negative hour", {
				Std.string(new Clock(-1, 15)).should.be("23:15");
			});

			it("negative hour rolls over", {
				Std.string(new Clock(-25, 0)).should.be("23:00");
			});

			it("negative hour rolls over continuously", {
				Std.string(new Clock(-91, 0)).should.be("05:00");
			});

			it("negative minutes", {
				Std.string(new Clock(1, -40)).should.be("00:20");
			});

			it("negative minutes roll over", {
				Std.string(new Clock(1, -160)).should.be("22:20");
			});

			it("negative minutes roll over continuously", {
				Std.string(new Clock(1, -4820)).should.be("16:40");
			});

			it("negative sixty minutes is previous hour", {
				Std.string(new Clock(2, -60)).should.be("01:00");
			});

			it("negative hour and minutes both roll over", {
				Std.string(new Clock(-25, -160)).should.be("20:20");
			});

			it("negative hour and minutes both roll over continuously", {
				Std.string(new Clock(-121, -5810)).should.be("22:10");
			});
		});

		describe("Add minutes", {
			it("add minutes", {
				Std.string(new Clock(10, 0).add(3)).should.be("10:03");
			});

			it("add no minutes", {
				Std.string(new Clock(6, 41).add(0)).should.be("06:41");
			});

			it("add to next hour", {
				Std.string(new Clock(0, 45).add(40)).should.be("01:25");
			});

			it("add more than one hour", {
				Std.string(new Clock(10, 0).add(61)).should.be("11:01");
			});

			it("add more than two hours with carry", {
				Std.string(new Clock(0, 45).add(160)).should.be("03:25");
			});

			it("add across midnight", {
				Std.string(new Clock(23, 59).add(2)).should.be("00:01");
			});

			it("add more than one day (1500 min = 25 hrs)", {
				Std.string(new Clock(5, 32).add(1500)).should.be("06:32");
			});

			it("add more than two days", {
				Std.string(new Clock(1, 1).add(3500)).should.be("11:21");
			});
		});

		describe("Subtract minutes", {
			it("subtract minutes", {
				Std.string(new Clock(10, 3).subtract(3)).should.be("10:00");
			});

			it("subtract to previous hour", {
				Std.string(new Clock(10, 3).subtract(30)).should.be("09:33");
			});

			it("subtract more than an hour", {
				Std.string(new Clock(10, 3).subtract(70)).should.be("08:53");
			});

			it("subtract across midnight", {
				Std.string(new Clock(0, 3).subtract(4)).should.be("23:59");
			});
			it("subtract more than two hours", {
				Std.string(new Clock(0, 0).subtract(160)).should.be("21:20");
			});

			it("subtract more than two hours with borrow", {
				Std.string(new Clock(6, 15).subtract(160)).should.be("03:35");
			});

			it("subtract more than one day (1500 min = 25 hrs)", {
				Std.string(new Clock(5, 32).subtract(1500)).should.be("04:32");
			});

			it("subtract more than two days", {
				Std.string(new Clock(2, 20).subtract(3000)).should.be("00:20");
			});
		});

		describe("Compare two clocks for equality", {
			it("clocks with same time", {
				new Clock(15, 37).hashCode().should.be(new Clock(15, 37).hashCode());
			});

			it("clocks a minute apart", {
				new Clock(15, 36).hashCode().should.not.be(new Clock(15, 37).hashCode());
			});

			it("clocks an hour apart", {
				new Clock(14, 37).hashCode().should.not.be(new Clock(15, 37).hashCode());
			});

			it("clocks with hour overflow", {
				new Clock(10, 37).hashCode().should.be(new Clock(34, 37).hashCode());
			});

			it("clocks with hour overflow by several days", {
				new Clock(3, 11).hashCode().should.be(new Clock(99, 11).hashCode());
			});

			it("clocks with negative hour", {
				new Clock(22, 40).hashCode().should.be(new Clock(-2, 40).hashCode());
			});

			it("clocks with negative hour that wraps", {
				new Clock(17, 3).hashCode().should.be(new Clock(-31, 3).hashCode());
			});

			it("clocks with negative hour that wraps multiple times", {
				new Clock(13, 49).hashCode().should.be(new Clock(-83, 49).hashCode());
			});

			it("clocks with minute overflow", {
				new Clock(0, 1).hashCode().should.be(new Clock(0, 1441).hashCode());
			});

			it("clocks with minute overflow by several days", {
				new Clock(2, 2).hashCode().should.be(new Clock(2, 4322).hashCode());
			});

			it("clocks with negative minute", {
				new Clock(2, 40).hashCode().should.be(new Clock(3, -20).hashCode());
			});

			it("clocks with negative minute that wraps", {
				new Clock(4, 10).hashCode().should.be(new Clock(5, -1490).hashCode());
			});

			it("clocks with negative minute that wraps multiple times", {
				new Clock(6, 15).hashCode().should.be(new Clock(6, -4305).hashCode());
			});

			it("clocks with negative hours and minutes", {
				new Clock(7, 32).hashCode().should.be(new Clock(-12, -268).hashCode());
			});

			it("clocks with negative hours and minutes that wrap", {
				new Clock(18, 7).hashCode().should.be(new Clock(-54, -11513).hashCode());
			});

			it("full clock and zeroed clock", {
				new Clock(24, 0).hashCode().should.be(new Clock(0, 0).hashCode());
			});
		});
	}
}
