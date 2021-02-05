package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("isbn-verifier", {
            it("valid isbn", {
                ISBN.isValid("3-598-21508-8").should.be(true);
            });
            xit("invalid isbn check digit", {
                ISBN.isValid("3-598-21508-9").should.be(false);
            });
            xit("valid isbn with a check digit of 10", {
                ISBN.isValid("3-598-21507-X").should.be(true);
            });
            xit("check digit is a character other than X", {
                ISBN.isValid("3-598-21507-A").should.be(false);
            });
            xit("invalid character in isbn", {
                ISBN.isValid("3-598-P1581-X").should.be(false);
            });
            xit("X is only valid as a check digit", {
                ISBN.isValid("3-598-2X507-9").should.be(false);
            });
            xit("valid isbn without separating dashes", {
                ISBN.isValid("3598215088").should.be(true);
            });
            xit("isbn without separating dashes and X as check digit", {
                ISBN.isValid("359821507X").should.be(true);
            });
            xit("isbn without check digit and dashes", {
                ISBN.isValid("359821507").should.be(false);
            });
            xit("too long isbn and no dashes", {
                ISBN.isValid("3598215078X").should.be(false);
            });
            xit("too short isbn", {
                ISBN.isValid("00").should.be(false);
            });
            xit("isbn without check digit", {
                ISBN.isValid("3-598-21507").should.be(false);
            });
            xit("check digit of X should not be used for 0", {
                ISBN.isValid("3-598-21515-X").should.be(false);
            });
            xit("empty isbn", {
                ISBN.isValid("").should.be(false);
            });
            xit("input is 9 characters", {
                ISBN.isValid("134456729").should.be(false);
            });
            xit("invalid characters are not ignored", {
                ISBN.isValid("3132P34035").should.be(false);
            });
            xit("input is too long but contains a valid isbn", {
                ISBN.isValid("98245726788").should.be(false);
            });
        });
    }
}
