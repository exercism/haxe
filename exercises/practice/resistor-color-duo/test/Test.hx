package;

using buddy.Should;

class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("resistor-color-duo",
			{
				it("Brown and black",
					{
						ResistorColorDuo.value(["brown", "black"]).should.be(10);
					});
				xit("Blue and grey",
					{
						ResistorColorDuo.value(["blue", "grey"]).should.be(68);
					});
				xit("Yellow and violet",
					{
						ResistorColorDuo.value(["yellow", "violet"]).should.be(47);
					});
				xit("White and red",
					{
						ResistorColorDuo.value(["white", "red"]).should.be(92);
					});
				xit("Orange and orange",
					{
						ResistorColorDuo.value(["orange", "orange"]).should.be(33);
					});
				xit("Ignore additional colors",
					{
						ResistorColorDuo.value(["green", "brown", "orange"]).should.be(51);
					});
				xit("Black and brown, one-digit",
					{
						ResistorColorDuo.value(["black", "brown"]).should.be(1);
					});
			});
	}
}
