package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("clock", {
			describe("Create a new clock with an initial time", {
				it("on the hour", {
					new Clock(8, 0).toString().should.be("08:00");
				});

				xit("past the hour", {
					new Clock(11, 9).toString().should.be("11:09");
				});

				xit("midnight is zero hours", {
					new Clock(24, 0).toString().should.be("00:00");
				});

				xit("hour rolls over", {
					new Clock(25, 0).toString().should.be("01:00");
				});

				xit("hour rolls over continuously", {
					new Clock(100, 0).toString().should.be("04:00");
				});

				xit("sixty minutes is next hour", {
					new Clock(1, 60).toString().should.be("02:00");
				});

				xit("minutes roll over", {
					new Clock(0, 160).toString().should.be("02:40");
				});

				xit("minutes roll over continuously", {
					new Clock(0, 1723).toString().should.be("04:43");
				});

				xit("hour and minutes roll over", {
					new Clock(25, 160).toString().should.be("03:40");
				});

				xit("hour and minutes roll over continuously", {
					new Clock(201, 3001).toString().should.be("11:01");
				});

				xit("hour and minutes roll over to exactly midnight", {
					new Clock(72, 8640).toString().should.be("00:00");
				});

				xit("negative hour", {
					new Clock(-1, 15).toString().should.be("23:15");
				});

				xit("negative hour rolls over", {
					new Clock(-25, 0).toString().should.be("23:00");
				});

				xit("negative hour rolls over continuously", {
					new Clock(-91, 0).toString().should.be("05:00");
				});

				xit("negative minutes", {
					new Clock(1, -40).toString().should.be("00:20");
				});

				xit("negative minutes roll over", {
					new Clock(1, -160).toString().should.be("22:20");
				});

				xit("negative minutes roll over continuously", {
					new Clock(1, -4820).toString().should.be("16:40");
				});

				xit("negative sixty minutes is previous hour", {
					new Clock(2, -60).toString().should.be("01:00");
				});

				xit("negative hour and minutes both roll over", {
					new Clock(-25, -160).toString().should.be("20:20");
				});

				xit("negative hour and minutes both roll over continuously", {
					new Clock(-121, -5810).toString().should.be("22:10");
				});
			});

			describe("Add minutes", {
				xit("add minutes", {
					new Clock(10, 0).add(3).toString().should.be("10:03");
				});

				xit("add no minutes", {
					new Clock(6, 41).add(0).toString().should.be("06:41");
				});

				xit("add to next hour", {
					new Clock(0, 45).add(40).toString().should.be("01:25");
				});

				xit("add more than one hour", {
					new Clock(10, 0).add(61).toString().should.be("11:01");
				});

				xit("add more than two hours with carry", {
					new Clock(0, 45).add(160).toString().should.be("03:25");
				});

				xit("add across midnight", {
					new Clock(23, 59).add(2).toString().should.be("00:01");
				});

				xit("add more than one day (1500 min = 25 hrs)", {
					new Clock(5, 32).add(1500).toString().should.be("06:32");
				});

				xit("add more than two days", {
					new Clock(1, 1).add(3500).toString().should.be("11:21");
				});
			});

			describe("Subtract minutes", {
				xit("subtract minutes", {
					new Clock(10, 3).subtract(3).toString().should.be("10:00");
				});

				xit("subtract to previous hour", {
					new Clock(10, 3).subtract(30).toString().should.be("09:33");
				});

				xit("subtract more than an hour", {
					new Clock(10, 3).subtract(70).toString().should.be("08:53");
				});

				xit("subtract across midnight", {
					new Clock(0, 3).subtract(4).toString().should.be("23:59");
				});

				xit("subtract more than two hours", {
					new Clock(0, 0).subtract(160).toString().should.be("21:20");
				});

				xit("subtract more than two hours with borrow", {
					new Clock(6, 15).subtract(160).toString().should.be("03:35");
				});

				xit("subtract more than one day (1500 min = 25 hrs)", {
					new Clock(5, 32).subtract(1500).toString().should.be("04:32");
				});

				xit("subtract more than two days", {
					new Clock(2, 20).subtract(3000).toString().should.be("00:20");
				});
			});

			describe("Compare two clocks for equality", {
				xit("clocks with same time", {
					final clock = new Clock(15, 37);
					final expected = new Clock(15, 37);

					clock.equals(expected).should.be(true);
				});

				xit("clocks a minute apart", {
					final clock = new Clock(15, 36);
					final expected = new Clock(15, 37);

					clock.equals(expected).should.be(false);
				});

				xit("clocks an hour apart", {
					final clock = new Clock(14, 37);
					final expected = new Clock(15, 37);

					clock.equals(expected).should.be(false);
				});

				xit("clocks with hour overflow", {
					final clock = new Clock(10, 37);
					final expected = new Clock(34, 37);

					clock.equals(expected).should.be(true);
				});

				xit("clocks with hour overflow by several days", {
					final clock = new Clock(3, 11);
					final expected = new Clock(99, 11);

					clock.equals(expected).should.be(true);
				});

				xit("clocks with negative hour", {
					final clock = new Clock(22, 40);
					final expected = new Clock(-2, 40);

					clock.equals(expected).should.be(true);
				});

				xit("clocks with negative hour that wraps", {
					final clock = new Clock(17, 3);
					final expected = new Clock(-31, 3);

					clock.equals(expected).should.be(true);
				});

				xit("clocks with negative hour that wraps multiple times", {
					final clock = new Clock(13, 49);
					final expected = new Clock(-83, 49);

					clock.equals(expected).should.be(true);
				});

				xit("clocks with minute overflow", {
					final clock = new Clock(0, 1);
					final expected = new Clock(0, 1441);

					clock.equals(expected).should.be(true);
				});

				xit("clocks with minute overflow by several days", {
					final clock = new Clock(2, 2);
					final expected = new Clock(2, 4322);

					clock.equals(expected).should.be(true);
				});

				xit("clocks with negative minute", {
					final clock = new Clock(2, 40);
					final expected = new Clock(3, -20);

					clock.equals(expected).should.be(true);
				});

				xit("clocks with negative minute that wraps", {
					final clock = new Clock(4, 10);
					final expected = new Clock(5, -1490);

					clock.equals(expected).should.be(true);
				});

				xit("clocks with negative minute that wraps multiple times", {
					final clock = new Clock(6, 15);
					final expected = new Clock(6, -4305);

					clock.equals(expected).should.be(true);
				});

				xit("clocks with negative hours and minutes", {
					final clock = new Clock(7, 32);
					final expected = new Clock(-12, -268);

					clock.equals(expected).should.be(true);
				});

				xit("clocks with negative hours and minutes that wrap", {
					final clock = new Clock(18, 7);
					final expected = new Clock(-54, -11513);

					clock.equals(expected).should.be(true);
				});

				xit("full clock and zeroed clock", {
					final clock = new Clock(24, 0);
					final expected = new Clock(0, 0);

					clock.equals(expected).should.be(true);
				});
			});
		});
	}
}
