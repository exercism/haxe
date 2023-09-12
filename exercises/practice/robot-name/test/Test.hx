package;

using buddy.Should;
using Lambda;
using StringTools;
using Test.IteratorTools;

class IteratorTools {
    public static function toIterable<T>(f:Void->Iterator<T>):Iterable<T>
    {
        return { iterator : f };
    }
}

class Test extends buddy.SingleSuite {
	public function new() {
		describe("robot-name", {
			var robot = new RobotName();

			it("robot has a name", {
				robot.name.should.match(~/^[A-Z]{2}\d{3}$/);
			});

			xit("name is the same each time", {
				robot.name.should.be(robot.name);
			});

			xit("different robots have different names", {
				var robot2 = new RobotName();
				robot2.name.should.not.be(robot.name);
			});

			xit("can reset robot name", {
				var originalName = robot.name;
				robot.reset();
				robot.name.should.not.be(originalName);
			});

			xit("after reset the name is valid", {
				robot.reset();
				robot.name.should.match(~/^[A-Z]{2}\d{3}$/);
			});

			xit("robot names are unique", {
				var names = new Map<String, Bool>();
				for (i in 0...10000) {
					var robot = new RobotName();
					names.exists(robot.name).should.be(false);
					robot.name.should.match(~/^[A-Z]{2}\d{3}$/);
					names[robot.name] = true;
				}
			});

			xit("robot names should generate edge case 'A'", {
				var names = new Map<String, Bool>();
				for (i in 0...10000) {
					var robot = new RobotName();
					names[robot.name] = true;
				}

				names.keys.toIterable().exists( (k) -> StringTools.contains(k, 'A')).should.be(true);
			});

			xit("robot names should generate edge case 'Z'", {
				var names = new Map<String, Bool>();
				for (i in 0...10000) {
					var robot = new RobotName();
					names[robot.name] = true;
				}

				names.keys.toIterable().exists( (k) -> StringTools.contains(k, 'Z')).should.be(true);
			});
		});
	}
}
