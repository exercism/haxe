package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("Resistor Color Trio", {
			it("Orange and orange and black", {
				ResistorColorTrio.label(["orange", "orange", "black"]).should.be("33 ohms");
			});
			xit("Blue and grey and brown", {
				ResistorColorTrio.label(["blue", "grey", "brown"]).should.be("680 ohms");
			});
			xit("Red and black and red", {
				ResistorColorTrio.label(["red", "black", "red"]).should.be("2 kiloohms");
			});
			xit("Green and brown and orange", {
				ResistorColorTrio.label(["green", "brown", "orange"]).should.be("51 kiloohms");
			});
			xit("Yellow and violet and yellow", {
				ResistorColorTrio.label(["yellow", "violet", "yellow"]).should.be("470 kiloohms");
			});
			xit("Blue and violet and blue", {
				ResistorColorTrio.label(["blue", "violet", "blue"]).should.be("67 megaohms");
			});
			xit("Minimum possible value", {
				ResistorColorTrio.label(["black", "black", "black"]).should.be("0 ohms");
			});
			xit("Maximum possible value", {
				ResistorColorTrio.label(["white", "white", "white"]).should.be("99 gigaohms");
			});
			xit("First two colors make an invalid octal number", {
				ResistorColorTrio.label(["black", "grey", "black"]).should.be("8 ohms");
			});
			xit("Ignore extra colors", {
				ResistorColorTrio.label(["blue", "green", "yellow", "orange"]).should.be("650 kiloohms");
			});
		});
	}
}
