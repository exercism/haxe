package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("testing isArmstrongNumber", {
			it("Zero is an Armstrong number", {
				ArmstrongNumbers.isArmstrongNumber(0).should.be(true);
			});
			xit("Single-digit numbers are Armstrong numbers", {
				ArmstrongNumbers.isArmstrongNumber(5).should.be(true);
			});
			xit("There are no two-digit Armstrong numbers", {
				ArmstrongNumbers.isArmstrongNumber(10).should.be(false);
			});
			xit("Three-digit number that is an Armstrong number", {
				ArmstrongNumbers.isArmstrongNumber(153).should.be(true);
			});
			xit("Three-digit number that is not an Armstrong number", {
				ArmstrongNumbers.isArmstrongNumber(100).should.be(false);
			});
			xit("Four-digit number that is an Armstrong number", {
				ArmstrongNumbers.isArmstrongNumber(9474).should.be(true);
			});
			xit("Four-digit number that is not an Armstrong number", {
				ArmstrongNumbers.isArmstrongNumber(9475).should.be(false);
			});
			xit("Seven-digit number that is an Armstrong number", {
				ArmstrongNumbers.isArmstrongNumber(9926315).should.be(true);
			});
			xit("Seven-digit number that is not an Armstrong number", {
				ArmstrongNumbers.isArmstrongNumber(9926314).should.be(false);
			});
		});
	}
}
