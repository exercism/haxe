package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("partial garden", {
			it("garden with single student", {
				KindergartenGarden.plants("RCGG", "Alice").should.containExactly(["radishes", "clover", "grass", "grass"]);
			});
			xit("different garden with single student", {
				KindergartenGarden.plants("VCRC", "Alice").should.containExactly(["violets", "clover", "radishes", "clover"]);
			});
			xit("garden with two students", {
				KindergartenGarden.plants("VVCGVVRC", "Bob").should.containExactly(["clover", "grass", "radishes", "clover"]);
			});
		});
		describe("multiple students for the same garden with three students", {
			it("second student's garden", {
				KindergartenGarden.plants("VVCCGGVVCCGG", "Bob").should.containExactly(["clover", "clover", "clover", "clover"]);
			});
			xit("third student's garden", {
				KindergartenGarden.plants("VVCCGGVVCCGG", "Charlie").should.containExactly(["grass", "grass", "grass", "grass"]);
			});
		});
		describe("full garden", {
			it("first student's garden", {
				KindergartenGarden.plants("VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV", "Alice")
					.should.containExactly(["violets", "radishes", "violets", "radishes"]);
			});
			xit("second student's garden", {
				KindergartenGarden.plants("VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV", "Bob")
					.should.containExactly(["clover", "grass", "clover", "clover"]);
			});
			xit("second to last student's garden", {
				KindergartenGarden.plants("VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV", "Kincaid")
					.should.containExactly(["grass", "clover", "clover", "grass"]);
			});
			xit("last student's garden", {
				KindergartenGarden.plants("VRCGVVRVCGGCCGVRGCVCGCGVVRCCCGCRRGVCGCRVVCVGCGCV", "Larry")
					.should.containExactly(["grass", "violets", "clover", "violets"]);
			});
		});
	}
}
