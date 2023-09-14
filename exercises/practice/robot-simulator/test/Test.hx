package;

using buddy.Should;
using RobotSimulator.Robot;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("robot-simulator", {
			describe("Create robot", {
				it("at origin facing north", {
					final robot = new Robot(0, 0, "north");
					final expected = new Robot(0, 0, "north");

					robot.equals(expected).should.be(true);
				});

				it("at negative position facing south", {
					final robot = new Robot(-1, -1, "south");
					final expected = new Robot(-1, -1, "south");

					robot.equals(expected).should.be(true);
				});
			});

			describe("Rotating clockwise", {
				it("changes north to east", {
					final robot = new Robot(0, 0, "north");
					final expected = new Robot(0, 0, "east");

					robot.move("R").equals(expected).should.be(true);
				});

				it("changes east to south", {
					final robot = new Robot(0, 0, "east");
					final expected = new Robot(0, 0, "south");

					robot.move("R").equals(expected).should.be(true);
				});

				it("changes south to west", {
					final robot = new Robot(0, 0, "south");
					final expected = new Robot(0, 0, "west");

					robot.move("R").equals(expected).should.be(true);
				});

				it("changes west to north", {
					final robot = new Robot(0, 0, "west");
					final expected = new Robot(0, 0, "north");

					robot.move("R").equals(expected).should.be(true);
				});
			});

			describe("Rotating counter-clockwise", {
				it("changes north to west", {
					final robot = new Robot(0, 0, "north");
					final expected = new Robot(0, 0, "west");

					robot.move("L").equals(expected).should.be(true);
				});

				it("changes west to south", {
					final robot = new Robot(0, 0, "west");
					final expected = new Robot(0, 0, "south");

					robot.move("L").equals(expected).should.be(true);
				});

				it("changes south to east", {
					final robot = new Robot(0, 0, "south");
					final expected = new Robot(0, 0, "east");

					robot.move("L").equals(expected).should.be(true);
				});

				it("changes east to north", {
					final robot = new Robot(0, 0, "east");
					final expected = new Robot(0, 0, "north");

					robot.move("L").equals(expected).should.be(true);
				});
			});

			describe("Moving forward one", {
				it("facing north increments Y", {
					final robot = new Robot(0, 0, "north");
					final expected = new Robot(0, 1, "north");

					robot.move("A").equals(expected).should.be(true);
				});

				it("facing south decrements Y", {
					final robot = new Robot(0, 0, "south");
					final expected = new Robot(0, -1, "south");

					robot.move("A").equals(expected).should.be(true);
				});

				it("facing east increments X", {
					final robot = new Robot(0, 0, "east");
					final expected = new Robot(1, 0, "east");

					robot.move("A").equals(expected).should.be(true);
				});

				it("facing west decrements X", {
					final robot = new Robot(0, 0, "west");
					final expected = new Robot(-1, 0, "west");

					robot.move("A").equals(expected).should.be(true);
				});
			});

			describe("Follow series of instructions", {
				it("moving east and north from README", {
					final robot = new Robot(7, 3, "north");
					final expected = new Robot(9, 4, "west");

					robot.move("RAALAL").equals(expected).should.be(true);
				});

				it("moving west and north", {
					final robot = new Robot(0, 0, "north");
					final expected = new Robot(-4, 1, "west");

					robot.move("LAAARALA").equals(expected).should.be(true);
				});

				it("moving west and south", {
					final robot = new Robot(2, -7, "east");
					final expected = new Robot(-3, -8, "south");

					robot.move("RRAAAAALA").equals(expected).should.be(true);
				});

				it("moving east and north", {
					final robot = new Robot(8, 4, "south");
					final expected = new Robot(11, 5, "north");

					robot.move("LAAARRRALLLL").equals(expected).should.be(true);
				});
			});
		});
	}
}
