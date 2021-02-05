package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("hamming", {
			it("empty strands", {
				Hamming.distance("", "").should().be(0);
			});
			it("single letter identical strands", {
				pending("Skpping");
				Hamming.distance("A", "A").should().be(0);
			});
			it("single letter different strands", {
				pending("Skpping");
				Hamming.distance("G", "T").should().be(1);
			});
			it("long identical strands", {
				pending("Skpping");
				Hamming.distance("GGACTGAAATCTG", "GGACTGAAATCTG").should.be(0);
			});
			it("long different strands", {
				pending("Skpping");
				Hamming.distance("GGACGGATTCTG", "AGGACGGATTCT").should.be(9);
			});
			it("disallow first strand longer", {
				pending("Skpping");
				Hamming.distance.bind("AATG", "AAA").should().throwType(haxe.Exception);
			});
		});
	}
}
