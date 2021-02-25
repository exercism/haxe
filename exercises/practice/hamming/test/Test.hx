package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("hamming", {
			it("empty strands", {
				Hamming.distance("", "").should().be(0);
			});
			xit("single letter identical strands", {
				Hamming.distance("A", "A").should().be(0);
			});
			xit("single letter different strands", {
				Hamming.distance("G", "T").should().be(1);
			});
			xit("long identical strands", {
				Hamming.distance("GGACTGAAATCTG", "GGACTGAAATCTG").should.be(0);
			});
			xit("long different strands", {
				Hamming.distance("GGACGGATTCTG", "AGGACGGATTCT").should.be(9);
			});
			xit("disallow first strand longer", {
				Hamming.distance.bind("AATG", "AAA").should().throwType(haxe.Exception);
			});
		});
	}
}
