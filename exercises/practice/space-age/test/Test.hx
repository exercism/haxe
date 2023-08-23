package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("space-age", {
			it("age on Earth", {
				SpaceAge.age(1000000000, "Earth").should.be(31.69);
			});
			xit("age on Mercury", {
				SpaceAge.age(2134835688, "Mercury").should.be(280.88);
			});
			xit("age on Venus", {
				SpaceAge.age(189839836, "Venus").should.be(9.78);
			});
			xit("age on Mars", {
				SpaceAge.age(2129871239, "Mars").should.be(35.88);
			});
			xit("age on Jupiter", {
				SpaceAge.age(901876382, "Jupiter").should.be(2.41);
			});
			xit("age on Saturn", {
				SpaceAge.age(2000000000, "Saturn").should.be(2.15);
			});
			xit("age on Uranus", {
				SpaceAge.age(1210123456, "Uranus").should.be(0.46);
			});
			xit("age on Neptune", {
				SpaceAge.age(1821023456, "Neptune").should.be(0.35);
			});
			xit("invalid planet causes error", {
				SpaceAge.age.bind(680804807, "Sun").should.throwValue("not a planet");		
			});
		});
	}
}
