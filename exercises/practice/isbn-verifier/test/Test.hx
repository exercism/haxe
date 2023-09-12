package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("isbn-verifier", {
			it("valid isbn", {
				IsbnVerifier.isValid("3-598-21508-8").should.be(true);
			});
			xit("invalid isbn check digit", {
				IsbnVerifier.isValid("3-598-21508-9").should.be(false);
			});
			xit("valid isbn with a check digit of 10", {
				IsbnVerifier.isValid("3-598-21507-X").should.be(true);
			});
			xit("check digit is a character other than X", {
				IsbnVerifier.isValid("3-598-21507-A").should.be(false);
			});
			xit("invalid character in isbn", {
				IsbnVerifier.isValid("3-598-P1581-X").should.be(false);
			});
			xit("X is only valid as a check digit", {
				IsbnVerifier.isValid("3-598-2X507-9").should.be(false);
			});
			xit("valid isbn without separating dashes", {
				IsbnVerifier.isValid("3598215088").should.be(true);
			});
			xit("isbn without separating dashes and X as check digit", {
				IsbnVerifier.isValid("359821507X").should.be(true);
			});
			xit("isbn without check digit and dashes", {
				IsbnVerifier.isValid("359821507").should.be(false);
			});
			xit("too long isbn and no dashes", {
				IsbnVerifier.isValid("3598215078X").should.be(false);
			});
			xit("too short isbn", {
				IsbnVerifier.isValid("00").should.be(false);
			});
			xit("isbn without check digit", {
				IsbnVerifier.isValid("3-598-21507").should.be(false);
			});
			xit("check digit of X should not be used for 0", {
				IsbnVerifier.isValid("3-598-21515-X").should.be(false);
			});
			xit("empty isbn", {
				IsbnVerifier.isValid("").should.be(false);
			});
			xit("input is 9 characters", {
				IsbnVerifier.isValid("134456729").should.be(false);
			});
			xit("invalid characters are not ignored", {
				IsbnVerifier.isValid("3132P34035").should.be(false);
			});
			xit("input is too long but contains a valid isbn", {
				IsbnVerifier.isValid("98245726788").should.be(false);
			});
		});
	}
}
