package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Proverb", {
			it("zero pieces", {
				Proverb.recite([]).should.containExactly([]);
			});

			xit("one piece", {
				Proverb.recite(["nail"]).should.containExactly(["And all for the want of a nail."]);
			});

			xit("two pieces", {
				Proverb.recite(["nail", "shoe"]).should.containExactly(["For want of a nail the shoe was lost.", "And all for the want of a nail."]);
			});

			xit("three pieces", {
				Proverb.recite(["nail", "shoe", "horse"]).should.containExactly([
					"For want of a nail the shoe was lost.",
					"For want of a shoe the horse was lost.",
					"And all for the want of a nail."
				]);
			});

			xit("full proverb", {
				Proverb.recite(["nail", "shoe", "horse", "rider", "message", "battle", "kingdom"]).should.containExactly([
					"For want of a nail the shoe was lost.",
					"For want of a shoe the horse was lost.",
					"For want of a horse the rider was lost.",
					"For want of a rider the message was lost.",
					"For want of a message the battle was lost.",
					"For want of a battle the kingdom was lost.",
					"And all for the want of a nail."
				]);
			});

			xit("four pieces modernized", {
				Proverb.recite(["pin", "gun", "soldier", "battle"]).should.containExactly([
					"For want of a pin the gun was lost.",
					"For want of a gun the soldier was lost.",
					"For want of a soldier the battle was lost.",
					"And all for the want of a pin."
				]);
			});
		});
	}
}
