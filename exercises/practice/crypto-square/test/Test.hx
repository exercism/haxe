package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Crypto Square", {
			it("empty plaintext results in an empty ciphertext", {
				CryptoSquare.ciphertext("").should.be("");
			});
			xit("Lowercase", {
				CryptoSquare.ciphertext("A").should.be("a");
			});
			xit("Remove spaces", {
				CryptoSquare.ciphertext("  b ").should.be("b");
			});
			xit("Remove punctuation", {
				CryptoSquare.ciphertext("@1,%!").should.be("1");
			});
			xit("9 character plaintext results in 3 chunks of 3 characters", {
				CryptoSquare.ciphertext("This is fun!").should.be("tsf hiu isn");
			});
			xit("8 character plaintext results in 3 chunks, the last one with a trailing space", {
				CryptoSquare.ciphertext("Chill out.").should.be("clu hlt io ");
			});
			xit("54 character plaintext results in 7 chunks, the last two with trailing spaces", {
				CryptoSquare.ciphertext("If man was meant to stay on the ground, god would have given us roots.")
					.should.be("imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn  sseoau ");
			});
		});
	}
}
