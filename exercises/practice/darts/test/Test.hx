package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("darts", {
			it("Missed target", {
				Darts.score({x: -9, y: 9}).should.be(0);
			});
			xit("On the outer circle", {
				Darts.score({x: 0, y: 10}).should.be(1);
			});
			xit("On the middle circle", {
				Darts.score({x: -5, y: 0}).should.be(5);
			});
			xit("On the inner circle", {
				Darts.score({x: 0, y: -1}).should.be(10);
			});
			xit("Exactly on centre", {
				Darts.score({x: 0, y: 0}).should.be(10);
			});
			xit("Near the centre", {
				Darts.score({x: -0.1, y: -0.1}).should.be(10);
			});
			xit("Just within the inner circle", {
				Darts.score({x: 0.7, y: 0.7}).should.be(10);
			});
			xit("Just outside the inner circle", {
				Darts.score({x: 0.8, y: -0.8}).should.be(5);
			});
			xit("Just outside the inner circle", {
				Darts.score({x: 0.8, y: -0.8}).should.be(5);
			});
			xit("Just within the middle circle", {
				Darts.score({x: -3.5, y: 3.5}).should.be(5);
			});
			xit("Just outside the middle circle", {
				Darts.score({x: -3.6, y: -3.6}).should.be(1);
			});
			xit("Just outside the middle circle", {
				Darts.score({x: -3.6, y: -3.6}).should.be(1);
			});
			xit("Just within the outer circle", {
				Darts.score({x: -7.0, y: -7.0}).should.be(1);
			});
			xit("Just outside the outer circle", {
				Darts.score({x: 7.1, y: -7.1}).should.be(0);
			});
			xit("Asymmetric position between the inner and middle circles", {
				Darts.score({x: 0.5, y: 4}).should.be(5);
			});
		});
	}
}
