package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("rna-transcription", {
            it("Empty RNA sequence", {
               Rna.toRna("").should.be("");
            });
            xit("RNA complement of cytosine is guanine", {
               Rna.toRna("C").should.be("G");
            });
            xit("RNA complement of guanine is cytosine", {
               Rna.toRna("G").should.be("C");
            });
            xit("RNA complement of thymine is adenine", {
               Rna.toRna("T").should.be("A");
            });
            xit("RNA complement of adenine is uracil", {
               Rna.toRna("A").should.be("U");
            });
            xit("RNA complement", {
               Rna.toRna("ACGTGGTCTTAA").should.be("UGCACCAGAAUU");
            });
        });
    }
}
