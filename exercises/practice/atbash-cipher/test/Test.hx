package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("encode", {
			it("encode yes", {
				AtbashCipher.encode("yes").should.be("bvh");
			});
			xit("encode no", {
				AtbashCipher.encode("no").should.be("ml");
			});
			xit("encode OMG", {
				AtbashCipher.encode("OMG").should.be("lnt");
			});
			xit("encode spaces", {
				AtbashCipher.encode("O M G").should.be("lnt");
			});
			xit("encode mindblowingly", {
				AtbashCipher.encode("mindblowingly").should.be("nrmwy oldrm tob");
			});
			xit("encode numbers", {
				AtbashCipher.encode("Testing,1 2 3, testing.").should.be("gvhgr mt123 gvhgr mt");
			});
			xit("encode deep thought", {
				AtbashCipher.encode("Truth is fiction.").should.be("gifgs rhurx grlm");
			});
			xit("encode all the letters", {
				AtbashCipher.encode("The quick brown fox jumps over the lazy dog.").should.be("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt");
			});
		});
		describe("decode", {
			xit("decode exercism", {
				AtbashCipher.decode("vcvix rhn").should.be("exercism");
			});
			xit("decode a sentence", {
				AtbashCipher.decode("zmlyh gzxov rhlug vmzhg vkkrm thglm v").should.be("anobstacleisoftenasteppingstone");
			});
			xit("decode numbers", {
				AtbashCipher.decode("gvhgr mt123 gvhgr mt").should.be("testing123testing");
			});
			xit("decode all the letters", {
				AtbashCipher.decode("gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt").should.be("thequickbrownfoxjumpsoverthelazydog");
			});
			xit("decode with too many spaces", {
				AtbashCipher.decode("vc vix    r hn").should.be("exercism");
			});
			xit("decode with no spaces", {
				AtbashCipher.decode("zmlyhgzxovrhlugvmzhgvkkrmthglmv").should.be("anobstacleisoftenasteppingstone");
			});
		});
	}
}
