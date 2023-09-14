package;

using buddy.Should;
using RobotSimulator.RobotStateExt;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("robot-simulator", {
			describe("Create robot", {
				it("at origin facing north", {
					RobotSimulator.create({
						x: 0,
						y: 0
					}, "north").equals({
						position: {
							x: 0,
							y: 0
						},
						direction: "north"
					}).should.be(true);
				});

				xit("at negative position facing south", {
					RobotSimulator.create({
						x: -1,
						y: -1
					}, "south").equals({
						position: {
							x: -1,
							y: -1
						},
						direction: "south"
					}).should.be(true);
				});
			});
			
			describe("Rotating clockwise", {
				xit("changes north to east", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "R", "north").equals({
						position: {
							x: 0,
							y: 0
						},
						direction: "east"
					}).should.be(true);
				});

				xit("changes east to south", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "R", "east").equals({
						position: {
							x: 0,
							y: 0
						},
						direction: "south"
					}).should.be(true);
				});

				xit("changes south to west", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "R", "south").equals({
						position: {
							x: 0,
							y: 0
						},
						direction: "west"
					}).should.be(true);
				});

				xit("changes west to north", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "R", "west").equals({
						position: {
							x: 0,
							y: 0
						},
						direction: "north"
					}).should.be(true);
				});
			});

			describe("Rotating counter-clockwise", {
				xit("changes north to west", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "L", "north").equals({
						position: {
							x: 0,
							y: 0
						},
						direction: "west"
					}).should.be(true);
				});

				xit("changes west to south", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "L", "west").equals({
						position: {
							x: 0,
							y: 0
						},
						direction: "south"
					}).should.be(true);
				});

				xit("changes south to east", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "L", "south").equals({
						position: {
							x: 0,
							y: 0
						},
						direction: "east"
					}).should.be(true);
				});

				xit("changes east to north", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "L", "east").equals({
						position: {
							x: 0,
							y: 0
						},
						direction: "north"
					}).should.be(true);
				});
			});

			describe("Moving forward one", {
				xit("facing north increments Y", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "A", "north").equals({
						position: {
							x: 0,
							y: 1
						},
						direction: "north"
					}).should.be(true);
				});

				xit("facing south decrements Y", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "A", "south").equals({
						position: {
							x: 0,
							y: -1
						},
						direction: "south"
					}).should.be(true);
				});

				xit("facing east increments X", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "A", "east").equals({
						position: {
							x: 1,
							y: 0
						},
						direction: "east"
					}).should.be(true);
				});

				xit("facing west decrements X", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "A", "west").equals({
						position: {
							x: -1,
							y: 0
						},
						direction: "west"
					}).should.be(true);
				});
			});

			describe("Follow series of instructions", {
				xit("moving east and north from README", {
					RobotSimulator.move({
						x: 7,
						y: 3
					}, "RAALAL", "north").equals({
						position: {
							x: 9,
							y: 4
						},
						direction: "west"
					}).should.be(true);
				});

				xit("moving west and north", {
					RobotSimulator.move({
						x: 0,
						y: 0
					}, "LAAARALA", "north").equals({
						position: {
							x: -4,
							y: 1
						},
						direction: "west"
					}).should.be(true);
				});

				xit("moving west and south", {
					RobotSimulator.move({
						x: 2,
						y: -7
					}, "RRAAAAALA", "east").equals({
						position: {
							x: -3,
							y: -8
						},
						direction: "south"
					}).should.be(true);
				});

				xit("moving east and north", {
					RobotSimulator.move({
						x: 8,
						y: 4
					}, "LAAARRRALLLL", "south").equals({
						position: {
							x: 11,
							y: 5
						},
						direction: "north"
					}).should.be(true);
				});
			});
		}
	}
}
