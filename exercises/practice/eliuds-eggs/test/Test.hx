package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("Pop count tests", {
			it("no factors", {
				PopCount.eggCount(0).should.be(0);
			});

			xit("one egg", {
				PopCount.eggCount(16).should.be(1);
			});

			xit("four eggs", {
				PopCount.eggCount(89).should.be(4);
			});

			xit("Thirteen eggs", {
				PopCount.eggCount(2000000000).should.be(13);
			});
		});
	}
}
