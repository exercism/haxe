package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("grade-school", {
			var school:GradeSchool;

			beforeEach({
				school = new GradeSchool();
			});

			it("Roster is empty when no student is added", {
				school.roster().should.containExactly([]);
			});

			xit("Add a student", {
				var students = [{name: "Aimee", grade: 2}];

				school.add(students).should.containExactly([true]);
			});

			xit("Student is added to the roster", {
				school.add([{name: "Aimee", grade: 2}]);

				school.roster().should.containExactly(["Aimee"]);
			});

			xit("Adding multiple students in the same grade in the roster", {
				var students = [{name: "Blair", grade: 2}, {name: "James", grade: 2}, {name: "Paul", grade: 2}];

				school.add(students).should.containExactly([true, true, true]);
			});

			xit("Multiple students in the same grade are added to the roster", {
				school.add([{name: "Blair", grade: 2}, {name: "James", grade: 2}, {name: "Paul", grade: 2}]);

				school.roster().should.containExactly(["Blair", "James", "Paul"]);
			});

			xit("Cannot add student to same grade in the roster more than once", {
				var students = [
					{name: "Blair", grade: 2},
					{name: "James", grade: 2},
					{name: "James", grade: 2},
					{name: "Paul", grade: 2}
				];

				school.add(students).should.containExactly([true, true, false, true]);
			});

			xit("Student not added to same grade in the roster more than once", {
				school.add([
					{name: "Blair", grade: 2},
					{name: "James", grade: 2},
					{name: "James", grade: 2},
					{name: "Paul", grade: 2}
				]);

				school.roster().should.containExactly(["Blair", "James", "Paul"]);
			});

			xit("Adding students in multiple grades", {
				var students = [{name: "Chelsea", grade: 3}, {name: "Logan", grade: 7}];

				school.add(students).should.containExactly([true, true]);
			});

			xit("Students in multiple grades are added to the roster", {
				school.add([{name: "Chelsea", grade: 3}, {name: "Logan", grade: 7}]);

				school.roster().should.containExactly(["Chelsea", "Logan"]);
			});

			xit("Cannot add same student to multiple grades in the roster", {
				var students = [
					{name: "Blair", grade: 2},
					{name: "James", grade: 2},
					{name: "James", grade: 3},
					{name: "Paul", grade: 2}
				];

				school.add(students).should.containExactly([true, true, false, true]);
			});

			xit("Student not added to multiple grades in the roster", {
				school.add([
					{name: "Blair", grade: 2},
					{name: "James", grade: 2},
					{name: "James", grade: 3},
					{name: "Paul", grade: 3}
				]);

				school.roster().should.containExactly(["Blair", "James", "Paul"]);
			});

			xit("Students are sorted by grades in the roster", {
				school.add([{name: "Jim", grade: 3}, {name: "Peter", grade: 2}, {name: "Anna", grade: 1}]);

				school.roster().should.containExactly(["Anna", "Peter", "Jim"]);
			});

			xit("Students are sorted by name in the roster", {
				school.add([{name: "Peter", grade: 2}, {name: "Zoe", grade: 2}, {name: "Alex", grade: 2}]);

				school.roster().should.containExactly(["Alex", "Peter", "Zoe"]);
			});

			xit("Student names with grades are displayed in the same sorted roster", {
				school.add([
					{name: "Peter", grade: 2},
					{name: "Anna", grade: 1},
					{name: "Barb", grade: 1},
					{name: "Zoe", grade: 2},
					{name: "Alex", grade: 2},
					{name: "Jim", grade: 3},
					{name: "Charlie", grade: 1}
				]);

				var expected = ["Anna", "Barb", "Charlie", "Alex", "Peter", "Zoe", "Jim"];
				school.roster().should.containExactly(expected);
			});

			xit("Grade is empty if no students in the roster", {
				school.grade(1).should.containExactly([]);
			});

			xit("Grade is empty if no students in that grade", {
				school.add([
					{name: "Peter", grade: 2},
					{name: "Zoe", grade: 2},
					{name: "Alex", grade: 2},
					{name: "Jim", grade: 3}
				]);

				school.grade(1).should.containExactly([]);
			});

			xit("Student not added to same grade more than once", {
				school.add([
					{name: "Blair", grade: 2},
					{name: "James", grade: 2},
					{name: "James", grade: 2},
					{name: "Paul", grade: 2}
				]);

				school.grade(2).should.containExactly(["Blair", "James", "Paul"]);
			});

			xit("Student not added to multiple grades", {
				school.add([
					{name: "Blair", grade: 2},
					{name: "James", grade: 2},
					{name: "James", grade: 3},
					{name: "Paul", grade: 3}
				]);

				school.grade(2).should.containExactly(["Blair", "James"]);
			});

			xit("Student not added to other grade for multiple grades", {
				school.add([
					{name: "Blair", grade: 2},
					{name: "James", grade: 2},
					{name: "James", grade: 3},
					{name: "Paul", grade: 3}
				]);

				school.grade(3).should.containExactly(["Paul"]);
			});

			xit("Students are sorted by name in a grade", {
				school.add([
					{name: "Franklin", grade: 5},
					{name: "Bradley", grade: 5},
					{name: "Jeff", grade: 1}
				]);

				school.grade(5).should.containExactly(["Bradley", "Franklin"]);
			});
		});
	}
}
