package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("ay is added to words that start with vowels", {
			it("word beginning with a", {
				PigLatin.translate("apple").should.be("appleay");
			});
			xit("word beginning with e", {
				PigLatin.translate("ear").should.be("earay");
			});
			xit("word beginning with i", {
				PigLatin.translate("igloo").should.be("iglooay");
			});
			xit("word beginning with o", {
				PigLatin.translate("object").should.be("objectay");
			});
			xit("word beginning with u", {
				PigLatin.translate("under").should.be("underay");
			});
			xit("word beginning with a vowel and followed by a qu", {
				PigLatin.translate("equal").should.be("equalay");
			});
		});
		describe("first letter and ay are moved to the end of words that start with consonants", {
			it("word beginning with p", {
				PigLatin.translate("pig").should.be("igpay");
			});
			xit("word beginning with k", {
				PigLatin.translate("koala").should.be("oalakay");
			});
			xit("word beginning with x", {
				PigLatin.translate("xenon").should.be("enonxay");
			});
			xit("word beginning with q without a following u", {
				PigLatin.translate("qat").should.be("atqay");
			});
		});
		describe("some letter clusters are treated like a single consonant", {
			it("word beginning with ch", {
				PigLatin.translate("chair").should.be("airchay");
			});
			xit("word beginning with qu", {
				PigLatin.translate("queen").should.be("eenquay");
			});
			xit("word beginning with qu and a preceding consonant", {
				PigLatin.translate("square").should.be("aresquay");
			});
			xit("word beginning with th", {
				PigLatin.translate("therapy").should.be("erapythay");
			});
			xit("word beginning with thr", {
				PigLatin.translate("thrush").should.be("ushthray");
			});
			xit("word beginning with sch", {
				PigLatin.translate("school").should.be("oolschay");
			});
		});
		describe("some letter clusters are treated like a single vowel", {
			it("word beginning with yt", {
				PigLatin.translate("yttria").should.be("yttriaay");
			});
			xit("word beginning with xr", {
				PigLatin.translate("xray").should.be("xrayay");
			});
		});
		describe("position of y in a word determines if it is a consonant or a vowel", {
			it("y is treated like a consonant at the beginning of a word", {
				PigLatin.translate("yellow").should.be("ellowyay");
			});
			xit("y is treated like a vowel at the end of a consonant cluster", {
				PigLatin.translate("rhythm").should.be("ythmrhay");
			});
			xit("y as second letter in two letter word", {
				PigLatin.translate("my").should.be("ymay");
			});
		});
		describe("phrases are translated", {
			it("a whole phrase", {
				PigLatin.translate("quick fast run").should.be("ickquay astfay unray");
			});
		});
	}
}
