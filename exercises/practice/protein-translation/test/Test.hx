package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("Translate input RNA sequences into proteins", {
            it("Methionine RNA sequence", {
                ProteinTranslation.proteins("AUG").should.containExactly(["Methionine"]);
            });
            xit("Phenylalanine RNA sequence 1", {
                ProteinTranslation.proteins("UUU").should.containExactly(["Phenylalanine"]);
            });
            xit("Phenylalanine RNA sequence 2", {
                ProteinTranslation.proteins("UUC").should.containExactly(["Phenylalanine"]);
            });
            xit("Leucine RNA sequence 1", {
                ProteinTranslation.proteins("UUA").should.containExactly(["Leucine"]);
            });
            xit("Leucine RNA sequence 2", {
                ProteinTranslation.proteins("UUG").should.containExactly(["Leucine"]);
            });
            xit("Serine RNA sequence 1", {
                ProteinTranslation.proteins("UCU").should.containExactly(["Serine"]);
            });
            xit("Serine RNA sequence 2", {
                ProteinTranslation.proteins("UCC").should.containExactly(["Serine"]);
            });
            xit("Serine RNA sequence 3", {
                ProteinTranslation.proteins("UCA").should.containExactly(["Serine"]);
            });
            xit("Serine RNA sequence 4", {
                ProteinTranslation.proteins("UCG").should.containExactly(["Serine"]);
            });
            xit("Tyrosine RNA sequence 1", {
                ProteinTranslation.proteins("UAU").should.containExactly(["Tyrosine"]);
            });
            xit("Tyrosine RNA sequence 2", {
                ProteinTranslation.proteins("UAC").should.containExactly(["Tyrosine"]);
            });
            xit("Cysteine RNA sequence 1", {
                ProteinTranslation.proteins("UGU").should.containExactly(["Cysteine"]);
            });
            xit("Cysteine RNA sequence 2", {
                ProteinTranslation.proteins("UGC").should.containExactly(["Cysteine"]);
            });
            xit("Tryptophan RNA sequence", {
                ProteinTranslation.proteins("UGG").should.containExactly(["Tryptophan"]);
            });
            xit("STOP codon RNA sequence 1", {
                ProteinTranslation.proteins("UAA").should.containExactly([]);
            });
            xit("STOP codon RNA sequence 2", {
                ProteinTranslation.proteins("UAG").should.containExactly([]);
            });
            xit("STOP codon RNA sequence 2", {
                ProteinTranslation.proteins("UGA").should.containExactly([]);
            });
            xit("Translate RNA strand into correct protein list", {
                ProteinTranslation.proteins("AUGUUUUGG").should.containExactly(["Methionine","Phenylalanine","Tryptophan"]);
            });
            xit("Translation stops if STOP codon at containExactlyginning of sequence", {
                ProteinTranslation.proteins("UAGUGG").should.containExactly([]);
            });
            xit("Translation stops if STOP codon at end of two-codon sequence", {
                ProteinTranslation.proteins("UGGUAG").should.containExactly(["Tryptophan"]);
            });
            xit("Translation stops if STOP codon at end of three-codon sequence", {
                ProteinTranslation.proteins("AUGUUUUAA").should.containExactly(["Methionine","Phenylalanine"]);
            });
            xit("Translation stops if STOP codon in middle of three-codon sequence", {
                ProteinTranslation.proteins("UGGUAGUGG").should.containExactly(["Tryptophan"]);
            });
            xit("Translation stops if STOP codon in middle of six-codon sequence", {
                ProteinTranslation.proteins("UGGUGUUAUUAAUGGUUU").should.containExactly(["Tryptophan","Cysteine","Tyrosine"]);
            });
        });
    }
}
