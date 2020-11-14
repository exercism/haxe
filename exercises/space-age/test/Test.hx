package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("space-age", {
			it("age on Earth", {
				SpaceAge.age(1000000000, "Earth").should.be(31.69);
			});
			it("age on Mercury", {
				pending("Skipping");
				SpaceAge.age(2134835688, "Mercury").should.be(280.88);
			});
			it("age on Venus", {
				pending("Skipping");
				SpaceAge.age(189839836, "Venus").should.be(9.78);
			});
			it("age on Mars", {
				pending("Skipping");
				SpaceAge.age(2129871239, "Mars").should.be(35.88);
			});
			it("age on Jupiter", {
				pending("Skipping");
				SpaceAge.age(901876382, "Jupiter").should.be(2.41);
			});
			it("age on Saturn", {
				pending("Skipping");
				SpaceAge.age(2000000000, "Saturn").should.be(2.15);
			});
			it("age on Uranus", {
				pending("Skipping");
				SpaceAge.age(1210123456, "Uranus").should.be(0.46);
			});
			it("age on Neptune", {
				pending("Skipping");
				SpaceAge.age(1821023456, "Neptune").should.be(0.35);
			});
		});
	}
}
