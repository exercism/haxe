package;

using buddy.Should;

class Test extends buddy.SingleSuite {
  public function new() {
    describe("Freelancer Rates", {
      describe("day rate", {
        it("at 16/hour", {
          FreelancerRates.dayRate(16).should.be(128);
        });

        it("at 25/hour", {
          FreelancerRates.dayRate(25).should.be(200);
        });

        it("at 31.40/hour", {
          FreelancerRates.dayRate(31.40).should.beCloseTo(251.2, 6);
        });

        it("at 89.89/hour", {
          FreelancerRates.dayRate(89.89).should.beCloseTo(719.12, 6);
        });

        it("at 97.654321/hour", {
          FreelancerRates.dayRate(97.654321).should.beCloseTo(781.234568, 6);
        });
      });

      describe("month rate", {
        it("at 16/hour", {
          FreelancerRates.monthRate(16, 0).should.be(2816);
        });

        it("at 25/hour", {
          FreelancerRates.monthRate(25, 0).should.be(4400);
        });

        it("at 25/hour with a 50% discount", {
          FreelancerRates.monthRate(25, 0.5).should.be(2200);
        });

        it("at 25/hour with a 1.23% discount", {
          FreelancerRates.monthRate(25, 0.0123).should.be(4346);
        });

        it("at 31.40/hour with a 5% discount", {
          FreelancerRates.monthRate(31.4, 0.05).should.be(5251);
        });

        it("at 89.89/hour with a 5% discount", {
          FreelancerRates.monthRate(89.89, 0.05).should.be(15030);
        });

        it("at 97.654321/hour with a 5% discount", {
          FreelancerRates.monthRate(97.654321, 0.05).should.be(16328);
        });
      });

      describe("days in budget", {
        describe("with a budget of 1280", {
          it("at 16/hour", {
            FreelancerRates.daysInBudget(1280, 16, 0).should.beCloseTo(10, 6);
          });

          it("at 25/hour", {
            FreelancerRates.daysInBudget(1280, 25, 0).should.beCloseTo(6, 6);
          });

          it("at 25/hour with a 30% discount", {
            FreelancerRates.daysInBudget(1280, 25, 0.3).should.beCloseTo(9, 6);
          });
        });

        describe("with a budget of 10.000", {
          it("at 25/hour with a 5% discount", {
            FreelancerRates.daysInBudget(10000, 25, 0.05).should.beCloseTo(52, 6);
          });

          it("at 31.40/hour with a 5% discount", {
            FreelancerRates.daysInBudget(10000, 31.4, 0.05).should.beCloseTo(41, 6);
          });

          it("at 89.89/hour with a 5% discount", {
            FreelancerRates.daysInBudget(10000, 89.89, 0.05).should.beCloseTo(14, 6);
          });

          it("at 97.654321/hour with a 5% discount", {
            FreelancerRates.daysInBudget(10000, 97.654321, 0.05).should.beCloseTo(13, 6);
          });
        });
      });
    });
  }
}