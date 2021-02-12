package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("hamming", {
			it("empty strands", {
				Hamming.distance("", "").should().be(0);
			});
			it("single letter identical strands", {
				pending("Skipping");
				Hamming.distance("A", "A").should().be(0);
			});
			it("single letter different strands", {
				pending("Skipping");
				Hamming.distance("G", "T").should().be(1);
			});
			it("long identical strands", {
				pending("Skipping");
				Hamming.distance("GGACTGAAATCTG", "GGACTGAAATCTG").should.be(0);
			});
			it("long different strands", {
				pending("Skipping");
				Hamming.distance("GGACGGATTCTG", "AGGACGGATTCT").should.be(9);
			});
			it("disallow first strand longer", {
				pending("Skipping");
				Hamming.distance.bind("AATG", "AAA").should().throwType(haxe.Exception);
			});
		});
	}
}
