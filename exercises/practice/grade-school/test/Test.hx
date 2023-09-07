package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("grade-school", {
            // a3f0fb58-f240-4723-8ddc-e644666b85cc
            it("Roster is empty when no student is added", {
                var school = new GradeSchool();

                school.roster().should.containExactly([]);
            });

            // 9337267f-7793-4b90-9b4a-8e3978408824
            xit("Add a student", {
                var school = new GradeSchool();
                var students = [{name: "Aimee", grade: 2}];

                school.add(students).should.containExactly([true]);
            });          

            // 6d0a30e4-1b4e-472e-8e20-c41702125667
            xit("Student is added to the roster", {
                var school = new GradeSchool();
                school.add([{name: "Aimee", grade: 2}]);

                school.roster().should.containExactly(["Aimee"]);
            });

            // 73c3ca75-0c16-40d7-82f5-ed8fe17a8e4a
            xit("Adding multiple students in the same grade in the roster", {
                var school = new GradeSchool();
                var students = [
                    { name: "Blair", grade: 2 },
                    { name: "James", grade: 2 },
                    { name: "Paul",  grade: 2 }
                ];

                school.add(students).should.containExactly([true, true, true]);
            });

            // 233be705-dd58-4968-889d-fb3c7954c9cc
            xit("Multiple students in the same grade are added to the roster", {
                var school = new GradeSchool();
                school.add([
                    { name: "Blair", grade: 2 },
                    { name: "James", grade: 2 },
                    { name: "Paul",  grade: 2 }
                ]);

                school.roster().should.containExactly(["Blair", "James", "Paul"]);
            });

            // 87c871c1-6bde-4413-9c44-73d59a259d83
            xit("Cannot add student to same grade in the roster more than once", {
                var school = new GradeSchool();
                var students = [
                    { name: "Blair", grade: 2 },
                    { name: "James", grade: 2 },
                    { name: "James", grade: 2 },
                    { name: "Paul",  grade: 2 }
                ];

                school.add(students).should.containExactly([true, true, false, true]);
            });

            // d7982c4f-1602-49f6-a651-620f2614243a
            xit("Student not added to same grade in the roster more than once", {
                var school = new GradeSchool();
                school.add([
                    { name: "Blair", grade: 2 },
                    { name: "James", grade: 2 },
                    { name: "James", grade: 2 },
                    { name: "Paul",  grade: 2 }
                ]);

                school.roster().should.containExactly(["Blair", "James", "Paul"]);
            });

            // e70d5d8f-43a9-41fd-94a4-1ea0fa338056
            xit("Adding students in multiple grades", {
                var school = new GradeSchool();
                var students = [
                    { name: "Chelsea", grade: 3 },
                    { name: "Logan",   grade: 7 }
                ]);

                school.add(students).should.containExactly([true, true]);
            });

            // 75a51579-d1d7-407c-a2f8-2166e984e8ab
            xit("Students in multiple grades are added to the roster", {
                var school = new GradeSchool();
                var students = [
                    { name: "Chelsea", grade: 3 },
                    { name: "Logan",   grade: 7 }
                ]);

                school.add(students).should.containExactly(["Chelsea", "Logan"]);
            });

            // 7df542f1-57ce-433c-b249-ff77028ec479
            xit("Cannot add same student to multiple grades in the roster", {
                var school = new GradeSchool();
                var students = [
                    { name: "Blair", grade: 2 },
                    { name: "James", grade: 2 },
                    { name: "James", grade: 3 },
                    { name: "Paul",  grade: 2 }
                ]);

                school.add(students).should.containExactly([true, true, false, true]);
            });

            // c7ec1c5e-9ab7-4d3b-be5c-29f2f7a237c5
            xit("Student not added to multiple grades in the roster", {
                var school = new GradeSchool();
                school.add([
                    { name: "Blair", grade: 2 },
                    { name: "James", grade: 2 },
                    { name: "James", grade: 3 },
                    { name: "Paul",  grade: 2 }
                ]);

                school.roster().should.containExactly(["Blair", "James", "Paul"]);
            });

            // d9af4f19-1ba1-48e7-94d0-dabda4e5aba6
            xit("Students are sorted by grades in the roster", {
                var school = new GradeSchool();
                school.add([
                    { name: "Jim", grade: 3 },
                    { name: "Peter", grade: 2 },
                    { name: "Anna", grade: 1 }
                ]);

                school.roster().should.containExactly(["Anna", "Peter", "Jim"]);
            });

            // d9fb5bea-f5aa-4524-9d61-c158d8906807
            xit("Students are sorted by name in the roster", {
                var school = new GradeSchool();
                school.add([
                    { name: "Peter", grade: 2 },
                    { name: "Zoe", grade: 2 },
                    { name: "Alex", grade: 2 }
                ]);

                school.roster().should.containExactly(["Alex", "Peter", "Zoe"]);
            });

            // 180a8ff9-5b94-43fc-9db1-d46b4a8c93b6
            xit("Student names with grades are displayed in the same sorted roster", {
                var school = new GradeSchool();
                school.add([
                    { name: "Peter",   grade: 2 },
                    { name: "Anna",    grade: 1 },
                    { name: "Barb",    grade: 1 },
                    { name: "Zoe",     grade: 2 },
                    { name: "Alex",    grade: 2 },
                    { name: "Jim",     grade: 3 },
                    { name: "Charlie", grade: 1 }
                ]);

                var expected = ["Anna", "Barb", "Charlie", "Alex", "Peter", "Zoe", "Jim"];
                school.roster().should.containExactly(expected);
            });

            // 5e67aa3c-a3c6-4407-a183-d8fe59cd1630
            xit("Grade is empty if no students in the roster", {
                var school = new GradeSchool();

                school.grade(1).should.containExactly([]);
            });

            // 1e0cf06b-26e0-4526-af2d-a2e2df6a51d6
            xit("Grade is empty if no students in that grade", {
                var school = new GradeSchool();
                school.add([
                    {name: "Peter", grade: 2},
                    {name: "Zoe", grade: 2},
                    {name: "Alex", grade: 2},
                    {name: "Jim", grade: 2}
                ]);

                school.grade(1).should.containExactly([]);
            });

            // 2bfc697c-adf2-4b65-8d0f-c46e085f796e
            xit("Student not added to same grade more than once", {
                var school = new GradeSchool();
                school.add([
                    {name: "Blair", grade: 2},
                    {name: "James", grade: 2},
                    {name: "James", grade: 2},
                    {name: "Paul", grade: 2}
                ]);
                
                school.grade(2).should.containExactly(["Blair", "James", "Paul"]);
            });

            // 66c8e141-68ab-4a04-a15a-c28bc07fe6b9
            xit("Student not added to multiple grades", {
                var school = new GradeSchool();
                school.add([
                    {name: "Blair", grade: 2},
                    {name: "James", grade: 2},
                    {name: "James", grade: 3},
                    {name: "Paul", grade: 3}
                ]);
                
                school.grade(2).should.containExactly(["Blair", "James"]);
            });

            // 66c8e141-68ab-4a04-a15a-c28bc07fe6b9
            xit("Student not added to multiple grades", {
                var school = new GradeSchool();
                school.add([
                    {name: "Blair", grade: 2},
                    {name: "James", grade: 2},
                    {name: "James", grade: 3},
                    {name: "Paul", grade: 3}
                ]);
                
                school.grade(2).should.containExactly(["Blair", "James"]);
            });

            // c9c1fc2f-42e0-4d2c-b361-99271f03eda7
            xit("Student not added to other grade for multiple grades", {
                var school = new GradeSchool();
                school.add([
                    {name: "Blair", grade: 2},
                    {name: "James", grade: 2},
                    {name: "James", grade: 3},
                    {name: "Paul", grade: 3}
                ]);
                
                school.grade(3).should.containExactly(["Paul"]);
            });

            // 1bfbcef1-e4a3-49e8-8d22-f6f9f386187e
            xit("Students are sorted by name in a grade", {
                var school = new GradeSchool();
                school.add([
                    { name: "Franklin", grade: 5 },
                    { name: "Bradley",  grade: 5 },
                    { name: "Jeff",     grade: 1 }
                ]);

                school.grade(5).should.containExactly(["Bradley", "Franklin"]);
            });
        });
    }
}
