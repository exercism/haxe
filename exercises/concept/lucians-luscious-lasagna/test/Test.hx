package;

using buddy.Should;

class Test extends buddy.SingleSuite {
  public function new() {
    describe("Lucian's Luscious Lasagna", {
      it("expected minutes in oven", {
        Lasagna.expectedMinutesInOven().should.be(40);
        });

      xit("remaining minutes in oven", {
        Lasagna.remainingMinutesInOven(25).should.be(15);
        Lasagna.remainingMinutesInOven(5).should.be(35);
        Lasagna.remainingMinutesInOven(39).should.be(1);
				Lasagna.remainingMinutesInOven(40).should.be(0);
				Lasagna.remainingMinutesInOven(0).should.be(40);
      });

			xit("preparation time in minutes", {
				Lasagna.preparationTimeInMinutes(1).should.be(2);
				Lasagna.preparationTimeInMinutes(2).should.be(4);
				Lasagna.preparationTimeInMinutes(8).should.be(16);
			});

			xit("total time in minutes", {
				Lasagna.totalTimeInMinutes(1, 5).should.be(7);
				Lasagna.totalTimeInMinutes(4, 15).should.be(23);
				Lasagna.totalTimeInMinutes(1, 35).should.be(37);
			});
    });
  }
}