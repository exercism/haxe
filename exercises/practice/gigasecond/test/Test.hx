package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("Add one gigasecond to the input.", {
			it("date only specification of time", {
				var moment = Date.fromString("2011-04-25");
				var expected = Date.fromString("2043-01-01 01:46:40");

				Gigasecond.add(moment).should.beOn(expected);
			});

			xit("second test for date only specification of time", {
				var moment = Date.fromString("1977-06-13");
				var expected = Date.fromString("2009-02-19 01:46:40");

				Gigasecond.add(moment).should.beOn(expected);
			});

			xit("third test for date only specification of time", {
				var moment = Date.fromString("1979-07-19");
				var expected = Date.fromString("2011-03-27 01:46:40");

				Gigasecond.add(moment).should.beOn(expected);
			});

			xit("full time specified", {
				var moment = Date.fromString("2015-01-24 22:00:00");
				var expected = Date.fromString("2046-10-02 23:46:40");

				Gigasecond.add(moment).should.beOn(expected);
			});

			xit("full time with day roll-over", {
				var moment = Date.fromString("2015-01-24 23:59:59");
				var expected = Date.fromString("2046-10-03 01:46:39");

				Gigasecond.add(moment).should.beOn(expected);
			});
		});
	}
}
