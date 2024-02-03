package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("Eliud's Eggs tests", {
			it("no factors", {
				EliudsEggs.eggCount(0).should.be(0);
			});

			xit("one egg", {
				EliudsEggs.eggCount(16).should.be(1);
			});

			xit("four eggs", {
				EliudsEggs.eggCount(89).should.be(4);
			});

			xit("Thirteen eggs", {
				EliudsEggs.eggCount(2000000000).should.be(13);
			});
		});
	}
}
