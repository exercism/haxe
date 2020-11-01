package;

using buddy.Should;


class Test extends buddy.SingleSuite {
    public function new() {
        describe("Leap", {
			it("year not divisible by 4 in common year", {
                Leap.isLeapYear(2015).should.be(false);
			});
			it("year divisible by 2, not divisible by 4 in common year", {
                pending("Skipping");
                Leap.isLeapYear(1970).should.be(false);
			});
			it("year divisible by 4, not divisible by 100 in leap year", {
                pending("Skipping");
                Leap.isLeapYear(1996).should.be(true);
			});
			it("year divisible by 4 and 5 is still a leap year", {
                pending("Skipping");
                Leap.isLeapYear(1960).should.be(true);
			});
			it("year divisible by 100, not divisible by 400 in common year", {
                pending("Skipping");
				Leap.isLeapYear(2100).should.be(false);
			});
			it("year divisible by 100 but not by 3 is still not a leap year", {
                pending("Skipping");
				Leap.isLeapYear(1900).should.be(false);
			});
			it("year divisible by 400 in leap year", {
                pending("Skipping");
				Leap.isLeapYear(2000).should.be(true);
			});
			it("year divisible by 400 but not by 125 is still a leap year", {
                pending("Skipping");
				Leap.isLeapYear(2400).should.be(true);
			});
			it("year divisible by 200, not divisible by 400 in common year", {
                pending("Skipping");
				Leap.isLeapYear(1800).should.be(false);
			});
        });
    }
}