package;

using buddy.Should;
using SpaceAge.Planet;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("space-age", {
			it("age on Earth", {
				new SpaceAge(1000000000).onEarth().should().be(31.69);
			});
			it("age on Mercury", {
				new SpaceAge(2134835688).onMercury().should().be(280.88);
			});
			it("age on Venus", {
				new SpaceAge(189839836).onVenus().should().be(9.78);
			});
			it("age on Mars", {
				new SpaceAge(2129871239).onMars().should().be(35.88);
			});
			it("age on Jupiter", {
				new SpaceAge(901876382).onJupiter().should().be(2.41);
			});
			it("age on Saturn", {
				new SpaceAge(2000000000).onSaturn().should().be(2.15);
			});
			it("age on Uranus", {
				new SpaceAge(1210123456).onUranus().should().be(0.46);
			});
			it("age on Neptune", {
				new SpaceAge(1821023456).onNeptune().should().be(0.35);
			});
		});
	}
}
