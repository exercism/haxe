package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("rna-transcription", {
            it("Empty RNA sequence", {
               RnaTranscription.toRna("").should.be("");
            });
            xit("RNA complement of cytosine is guanine", {
               RnaTranscription.toRna("C").should.be("G");
            });
            xit("RNA complement of guanine is cytosine", {
               RnaTranscription.toRna("G").should.be("C");
            });
            xit("RNA complement of thymine is adenine", {
               RnaTranscription.toRna("T").should.be("A");
            });
            xit("RNA complement of adenine is uracil", {
               RnaTranscription.toRna("A").should.be("U");
            });
            xit("RNA complement", {
               RnaTranscription.toRna("ACGTGGTCTTAA").should.be("UGCACCAGAAUU");
            });
        });
    }
}
