package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("space-age", {
			it("age on Earth", {
				SpaceAge.age(1000000000, "Earth").should.beCloseTo(31.69, 2);
			});
			xit("age on Mercury", {
				SpaceAge.age(2134835688, "Mercury").should.beCloseTo(280.88, 2);
			});
			xit("age on Venus", {
				SpaceAge.age(189839836, "Venus").should.beCloseTo(9.78, 2);
			});
			xit("age on Mars", {
				SpaceAge.age(2129871239, "Mars").should.beCloseTo(35.88, 2);
			});
			xit("age on Jupiter", {
				SpaceAge.age(901876382, "Jupiter").should.beCloseTo(2.41, 2);
			});
			xit("age on Saturn", {
				SpaceAge.age(2000000000, "Saturn").should.beCloseTo(2.15, 2);
			});
			xit("age on Uranus", {
				SpaceAge.age(1210123456, "Uranus").should.beCloseTo(0.46, 2);
			});
			xit("age on Neptune", {
				SpaceAge.age(1821023456, "Neptune").should.beCloseTo(0.35, 2);
			});
			xit("invalid planet causes error", {
				SpaceAge.age.bind(680804807, "Sun").should.throwValue("not a planet");		
			});
		});
	}
}
