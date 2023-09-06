package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Create a new clock with an initial time", {
			it("on the hour", {
				Clock.create(8, 0).should.be("08:00");
			});

			xit("past the hour", {
				Clock.create(11, 9).should.be("11:09");
			});

			xit("midnight is zero hours", {
				Clock.create(24, 0).should.be("00:00");
			});

			xit("hour rolls over", {
				Clock.create(25, 0).should.be("01:00");
			});

			xit("hour rolls over continuously", {
				Clock.create(100, 0).should.be("04:00");
			});

			xit("sixty minutes is next hour", {
				Clock.create(1, 60).should.be("02:00");
			});

			xit("minutes roll over", {
				Clock.create(0, 160).should.be("02:40");
			});

			xit("minutes roll over continuously", {
				Clock.create(0, 1723).should.be("04:43");
			});

			xit("hour and minutes roll over", {
				Clock.create(25, 160).should.be("03:40");
			});

			xit("hour and minutes roll over continuously", {
				Clock.create(201, 3001).should.be("11:01");
			});

			xit("hour and minutes roll over to exactly midnight", {
				Clock.create(72, 8640).should.be("00:00");
			});

			xit("negative hour", {
				Clock.create(-1, 15).should.be("23:15");
			});

			xit("negative hour rolls over", {
				Clock.create(-25, 0).should.be("23:00");
			});

			xit("negative hour rolls over continuously", {
				Clock.create(-91, 0).should.be("05:00");
			});

			xit("negative minutes", {
				Clock.create(1, -40).should.be("00:20");
			});

			xit("negative minutes roll over", {
				Clock.create(1, -160).should.be("22:20");
			});

			xit("negative minutes roll over continuously", {
				Clock.create(1, -4820).should.be("16:40");
			});

			xit("negative sixty minutes is previous hour", {
				Clock.create(2, -60).should.be("01:00");
			});

			xit("negative hour and minutes both roll over", {
				Clock.create(-25, -160).should.be("20:20");
			});

			xit("negative hour and minutes both roll over continuously", {
				Clock.create(-121, -5810).should.be("22:10");
			});
		});
		describe("Add minutes", {
			xit("add minutes", {
				Clock.add(10, 0, 3).should.be("10:03");
			});

			xit("add no minutes", {
				Clock.add(6, 41, 0).should.be("06:41");
			});

			xit("add to next hour", {
				Clock.add(0, 45, 40).should.be("01:25");
			});

			xit("add more than one hour", {
				Clock.add(10, 0, 61).should.be("11:01");
			});

			xit("add more than two hours with carry", {
				Clock.add(0, 45, 160).should.be("03:25");
			});

			xit("add across midnight", {
				Clock.add(23, 59, 2).should.be("00:01");
			});

			xit("add more than one day (1500 min = 25 hrs)", {
				Clock.add(5, 32, 1500).should.be("06:32");
			});

			xit("add more than two days", {
				Clock.add(1, 1, 3500).should.be("11:21");
			});
		});
		describe("Subtract minutes", {
			xit("subtract minutes", {
				Clock.subtract(10, 3, 3).should.be("10:00");
			});

			xit("subtract to previous hour", {
				Clock.subtract(10, 3, 30).should.be("09:33");
			});

			xit("subtract more than an hour", {
				Clock.subtract(10, 3, 70).should.be("08:53");
			});

			xit("subtract across midnight", {
				Clock.subtract(0, 3, 4).should.be("23:59");
			});
			xit("subtract more than two hours", {
				Clock.subtract(0, 0, 160).should.be("21:20");
			});

			xit("subtract more than two hours with borrow", {
				Clock.subtract(6, 15, 160).should.be("03:35");
			});

			xit("subtract more than one day (1500 min = 25 hrs)", {
				Clock.subtract(5, 32, 1500).should.be("04:32");
			});

			xit("subtract more than two days", {
				Clock.subtract(2, 20, 3000).should.be("00:20");
			});
		});
		describe("Compare two clocks for equality", {
			xit("clocks with same time", {
				Clock.equal({
					hour: 15,
					minute: 37
				}, {
					hour: 15,
					minute: 37
				}).should.be(true);
			});

			xit("clocks a minute apart", {
				Clock.equal({
					hour: 15,
					minute: 36
				}, {
					hour: 15,
					minute: 37
				}).should.be(false);
			});

			xit("clocks an hour apart", {
				Clock.equal({
					hour: 14,
					minute: 37
				}, {
					hour: 15,
					minute: 37
				}).should.be(false);
			});

			xit("clocks with hour overflow", {
				Clock.equal({
					hour: 10,
					minute: 37
				}, {
					hour: 34,
					minute: 37
				}).should.be(true);
			});

			xit("clocks with hour overflow by several days", {
				Clock.equal({
					hour: 3,
					minute: 11
				}, {
					hour: 99,
					minute: 11
				}).should.be(true);
			});

			xit("clocks with negative hour", {
				Clock.equal({
					hour: 22,
					minute: 40
				}, {
					hour: -2,
					minute: 40
				}).should.be(true);
			});

			xit("clocks with negative hour that wraps", {
				Clock.equal({
					hour: 17,
					minute: 3
				}, {
					hour: -31,
					minute: 3
				}).should.be(true);
			});

			xit("clocks with negative hour that wraps multiple times", {
				Clock.equal({
					hour: 13,
					minute: 49
				}, {
					hour: -83,
					minute: 49
				}).should.be(true);
			});

			xit("clocks with minute overflow", {
				Clock.equal({
					hour: 0,
					minute: 1
				}, {
					hour: 0,
					minute: 1441
				}).should.be(true);
			});

			xit("clocks with minute overflow by several days", {
				Clock.equal({
					hour: 2,
					minute: 2
				}, {
					hour: 2,
					minute: 4322
				}).should.be(true);
			});

			xit("clocks with negative minute", {
				Clock.equal({
					hour: 2,
					minute: 40
				}, {
					hour: 3,
					minute: -20
				}).should.be(true);
			});

			xit("clocks with negative minute that wraps", {
				Clock.equal({
					hour: 4,
					minute: 10
				}, {
					hour: 5,
					minute: -1490
				}).should.be(true);
			});

			xit("clocks with negative minute that wraps multiple times", {
				Clock.equal({
					hour: 6,
					minute: 15
				}, {
					hour: 6,
					minute: -4305
				}).should.be(true);
			});

			xit("clocks with negative hours and minutes", {
				Clock.equal({
					hour: 7,
					minute: 32
				}, {
					hour: -12,
					minute: -268
				}).should.be(true);
			});

			xit("clocks with negative hours and minutes that wrap", {
				Clock.equal({
					hour: 18,
					minute: 7
				}, {
					hour: -54,
					minute: -11513
				}).should.be(true);
			});

			xit("full clock and zeroed clock", {
				Clock.equal({
					hour: 24,
					minute: 0
				}, {
					hour: 0,
					minute: 0
				}).should.be(true);
			});
		});
	}
}
