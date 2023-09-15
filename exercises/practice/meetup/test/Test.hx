package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("meetup", {
			describe("teenth", {
				it("when teenth Monday is the 13th, the first day of the teenth week", {
					Meetup.meetup(2013, 5, "teenth", "Monday").should.be("2013-05-13");
				});

				xit("when teenth Monday is the 19th, the last day of the teenth week", {
					Meetup.meetup(2013, 8, "teenth", "Monday").should.be("2013-08-19");
				});

				xit("when teenth Monday is some day in the middle of the teenth week", {
					Meetup.meetup(2013, 9, "teenth", "Monday").should.be("2013-09-16");
				});

				xit("when teenth Tuesday is the 19th, the last day of the teenth week", {
					Meetup.meetup(2013, 3, "teenth", "Tuesday").should.be("2013-03-19");
				});

				xit("when teenth Tuesday is some day in the middle of the teenth week", {
					Meetup.meetup(2013, 4, "teenth", "Tuesday").should.be("2013-04-16");
				});

				xit("when teenth Tuesday is the 13th, the first day of the teenth week", {
					Meetup.meetup(2013, 8, "teenth", "Tuesday").should.be("2013-08-13");
				});

				xit("when teenth Wednesday is some day in the middle of the teenth week", {
					Meetup.meetup(2013, 1, "teenth", "Wednesday").should.be("2013-01-16");
				});

				xit("when teenth Wednesday is the 13th, the first day of the teenth week", {
					Meetup.meetup(2013, 2, "teenth", "Wednesday").should.be("2013-02-13");
				});

				xit("when teenth Wednesday is the 19th, the last day of the teenth week", {
					Meetup.meetup(2013, 6, "teenth", "Wednesday").should.be("2013-06-19");
				});

				xit("when teenth Thursday is some day in the middle of the teenth week", {
					Meetup.meetup(2013, 5, "teenth", "Thursday").should.be("2013-05-16");
				});

				xit("when teenth Thursday is the 13th, the first day of the teenth week", {
					Meetup.meetup(2013, 6, "teenth", "Thursday").should.be("2013-06-13");
				});

				xit("when teenth Thursday is the 19th, the last day of the teenth week", {
					Meetup.meetup(2013, 9, "teenth", "Thursday").should.be("2013-09-19");
				});

				xit("when teenth Friday is the 19th, the last day of the teenth week", {
					Meetup.meetup(2013, 4, "teenth", "Friday").should.be("2013-04-19");
				});

				xit("when teenth Friday is some day in the middle of the teenth week", {
					Meetup.meetup(2013, 8, "teenth", "Friday").should.be("2013-08-16");
				});

				xit("when teenth Friday is the 13th, the first day of the teenth week", {
					Meetup.meetup(2013, 9, "teenth", "Friday").should.be("2013-09-13");
				});

				xit("when teenth Saturday is some day in the middle of the teenth week", {
					Meetup.meetup(2013, 2, "teenth", "Saturday").should.be("2013-02-16");
				});

				xit("when teenth Saturday is the 13th, the first day of the teenth week", {
					Meetup.meetup(2013, 4, "teenth", "Saturday").should.be("2013-04-13");
				});

				xit("when teenth Saturday is the 19th, the last day of the teenth week", {
					Meetup.meetup(2013, 10, "teenth", "Saturday").should.be("2013-10-19");
				});

				xit("when teenth Sunday is the 19th, the last day of the teenth week", {
					Meetup.meetup(2013, 5, "teenth", "Sunday").should.be("2013-05-19");
				});

				xit("when teenth Sunday is some day in the middle of the teenth week", {
					Meetup.meetup(2013, 6, "teenth", "Sunday").should.be("2013-06-16");
				});

				xit("when teenth Sunday is the 13th, the first day of the teenth week", {
					Meetup.meetup(2013, 10, "teenth", "Sunday").should.be("2013-10-13");
				});
			});

			describe("first", {
				xit("when first Monday is some day in the middle of the first week", {
					Meetup.meetup(2013, 3, "first", "Monday").should.be("2013-03-04");
				});

				xit("when first Monday is the 1st, the first day of the first week", {
					Meetup.meetup(2013, 4, "first", "Monday").should.be("2013-04-01");
				});

				xit("when first Tuesday is the 7th, the last day of the first week", {
					Meetup.meetup(2013, 5, "first", "Tuesday").should.be("2013-05-07");
				});

				xit("when first Tuesday is some day in the middle of the first week", {
					Meetup.meetup(2013, 6, "first", "Tuesday").should.be("2013-06-04");
				});

				xit("when first Wednesday is some day in the middle of the first week", {
					Meetup.meetup(2013, 7, "first", "Wednesday").should.be("2013-07-03");
				});

				xit("when first Wednesday is the 7th, the last day of the first week", {
					Meetup.meetup(2013, 8, "first", "Wednesday").should.be("2013-08-07");
				});

				xit("when first Thursday is some day in the middle of the first week", {
					Meetup.meetup(2013, 9, "first", "Thursday").should.be("2013-09-05");
				});

				xit("when first Thursday is another day in the middle of the first week", {
					Meetup.meetup(2013, 10, "first", "Thursday").should.be("2013-10-03");
				});

				xit("when first Friday is the 1st, the first day of the first week", {
					Meetup.meetup(2013, 11, "first", "Friday").should.be("2013-11-01");
				});

				xit("when first Friday is some day in the middle of the first week", {
					Meetup.meetup(2013, 12, "first", "Friday").should.be("2013-12-06");
				});

				xit("when first Saturday is some day in the middle of the first week", {
					Meetup.meetup(2013, 1, "first", "Saturday").should.be("2013-01-05");
				});

				xit("when first Saturday is another day in the middle of the first week", {
					Meetup.meetup(2013, 2, "first", "Saturday").should.be("2013-02-02");
				});

				xit("when first Sunday is some day in the middle of the first week", {
					Meetup.meetup(2013, 3, "first", "Sunday").should.be("2013-03-03");
				});

				xit("when first Sunday is the 7th, the last day of the first week", {
					Meetup.meetup(2013, 4, "first", "Sunday").should.be("2013-04-07");
				});

				xit("when first Friday is the 7th, the last day of the first week", {
					Meetup.meetup(2012, 12, "first", "Friday").should.be("2012-12-07");
				});
			});

			describe("second", {
				xit("when second Monday is some day in the middle of the second week", {
					Meetup.meetup(2013, 3, "second", "Monday").should.be("2013-03-11");
				});

				xit("when second Monday is the 8th, the first day of the second week", {
					Meetup.meetup(2013, 4, "second", "Monday").should.be("2013-04-08");
				});

				xit("when second Tuesday is the 14th, the last day of the second week", {
					Meetup.meetup(2013, 5, "second", "Tuesday").should.be("2013-05-14");
				});

				xit("when second Tuesday is some day in the middle of the second week", {
					Meetup.meetup(2013, 6, "second", "Tuesday").should.be("2013-06-11");
				});

				xit("when second Wednesday is some day in the middle of the second week", {
					Meetup.meetup(2013, 7, "second", "Wednesday").should.be("2013-07-10");
				});

				xit("when second Wednesday is the 14th, the last day of the second week", {
					Meetup.meetup(2013, 8, "second", "Wednesday").should.be("2013-08-14");
				});

				xit("when second Thursday is some day in the middle of the second week", {
					Meetup.meetup(2013, 9, "second", "Thursday").should.be("2013-09-12");
				});

				xit("when second Thursday is another day in the middle of the second week", {
					Meetup.meetup(2013, 10, "second", "Thursday").should.be("2013-10-10");
				});

				xit("when second Friday is the 8th, the first day of the second week", {
					Meetup.meetup(2013, 11, "second", "Friday").should.be("2013-11-08");
				});

				xit("when second Friday is some day in the middle of the second week", {
					Meetup.meetup(2013, 12, "second", "Friday").should.be("2013-12-13");
				});

				xit("when second Saturday is some day in the middle of the second week", {
					Meetup.meetup(2013, 1, "second", "Saturday").should.be("2013-01-12");
				});

				xit("when second Saturday is another day in the middle of the second week", {
					Meetup.meetup(2013, 2, "second", "Saturday").should.be("2013-02-09");
				});

				xit("when second Sunday is some day in the middle of the second week", {
					Meetup.meetup(2013, 3, "second", "Sunday").should.be("2013-03-10");
				});

				xit("when second Sunday is the 14th, the last day of the second week", {
					Meetup.meetup(2013, 4, "second", "Sunday").should.be("2013-04-14");
				});
			});

			describe("third", {
				xit("when third Monday is some day in the middle of the third week", {
					Meetup.meetup(2013, 3, "third", "Monday").should.be("2013-03-18");
				});

				xit("when third Monday is the 15th, the first day of the third week", {
					Meetup.meetup(2013, 4, "third", "Monday").should.be("2013-04-15");
				});

				xit("when third Tuesday is the 21st, the last day of the third week", {
					Meetup.meetup(2013, 5, "third", "Tuesday").should.be("2013-05-21");
				});

				xit("when third Tuesday is some day in the middle of the third week", {
					Meetup.meetup(2013, 6, "third", "Tuesday").should.be("2013-06-18");
				});

				xit("when third Wednesday is some day in the middle of the third week", {
					Meetup.meetup(2013, 7, "third", "Wednesday").should.be("2013-07-17");
				});

				xit("when third Wednesday is the 21st, the last day of the third week", {
					Meetup.meetup(2013, 8, "third", "Wednesday").should.be("2013-08-21");
				});

				xit("when third Thursday is some day in the middle of the third week", {
					Meetup.meetup(2013, 9, "third", "Thursday").should.be("2013-09-19");
				});

				xit("when third Thursday is another day in the middle of the third week", {
					Meetup.meetup(2013, 10, "third", "Thursday").should.be("2013-10-17");
				});

				xit("when third Friday is the 15th, the first day of the third week", {
					Meetup.meetup(2013, 11, "third", "Friday").should.be("2013-11-15");
				});

				xit("when third Friday is some day in the middle of the third week", {
					Meetup.meetup(2013, 12, "third", "Friday").should.be("2013-12-20");
				});

				xit("when third Saturday is some day in the middle of the third week", {
					Meetup.meetup(2013, 1, "third", "Saturday").should.be("2013-01-19");
				});

				xit("when third Saturday is another day in the middle of the third week", {
					Meetup.meetup(2013, 2, "third", "Saturday").should.be("2013-02-16");
				});

				xit("when third Sunday is some day in the middle of the third week", {
					Meetup.meetup(2013, 3, "third", "Sunday").should.be("2013-03-17");
				});

				xit("when third Sunday is the 21st, the last day of the third week", {
					Meetup.meetup(2013, 4, "third", "Sunday").should.be("2013-04-21");
				});
			});

			describe("fourth", {
				xit("when fourth Monday is some day in the middle of the fourth week", {
					Meetup.meetup(2013, 3, "fourth", "Monday").should.be("2013-03-25");
				});

				xit("when fourth Monday is the 22nd, the first day of the fourth week", {
					Meetup.meetup(2013, 4, "fourth", "Monday").should.be("2013-04-22");
				});

				xit("when fourth Tuesday is the 28th, the last day of the fourth week", {
					Meetup.meetup(2013, 5, "fourth", "Tuesday").should.be("2013-05-28");
				});

				xit("when fourth Tuesday is some day in the middle of the fourth week", {
					Meetup.meetup(2013, 6, "fourth", "Tuesday").should.be("2013-06-25");
				});

				xit("when fourth Wednesday is some day in the middle of the fourth week", {
					Meetup.meetup(2013, 7, "fourth", "Wednesday").should.be("2013-07-24");
				});

				xit("when fourth Wednesday is the 28th, the last day of the fourth week", {
					Meetup.meetup(2013, 8, "fourth", "Wednesday").should.be("2013-08-28");
				});

				xit("when fourth Thursday is some day in the middle of the fourth week", {
					Meetup.meetup(2013, 9, "fourth", "Thursday").should.be("2013-09-26");
				});

				xit("when fourth Thursday is another day in the middle of the fourth week", {
					Meetup.meetup(2013, 10, "fourth", "Thursday").should.be("2013-10-24");
				});

				xit("when fourth Friday is the 22nd, the first day of the fourth week", {
					Meetup.meetup(2013, 11, "fourth", "Friday").should.be("2013-11-22");
				});

				xit("when fourth Friday is some day in the middle of the fourth week", {
					Meetup.meetup(2013, 12, "fourth", "Friday").should.be("2013-12-27");
				});

				xit("when fourth Saturday is some day in the middle of the fourth week", {
					Meetup.meetup(2013, 1, "fourth", "Saturday").should.be("2013-01-26");
				});

				xit("when fourth Saturday is another day in the middle of the fourth week", {
					Meetup.meetup(2013, 2, "fourth", "Saturday").should.be("2013-02-23");
				});

				xit("when fourth Sunday is some day in the middle of the fourth week", {
					Meetup.meetup(2013, 3, "fourth", "Sunday").should.be("2013-03-24");
				});

				xit("when fourth Sunday is the 28th, the last day of the fourth week", {
					Meetup.meetup(2013, 4, "fourth", "Sunday").should.be("2013-04-28");
				});
			});

			describe("last", {
				xit("last Monday in a month with four Mondays", {
					Meetup.meetup(2013, 3, "last", "Monday").should.be("2013-03-25");
				});

				xit("last Monday in a month with five Mondays", {
					Meetup.meetup(2013, 4, "last", "Monday").should.be("2013-04-29");
				});

				xit("last Tuesday in a month with four Tuesdays", {
					Meetup.meetup(2013, 5, "last", "Tuesday").should.be("2013-05-28");
				});

				xit("last Tuesday in another month with four Tuesdays", {
					Meetup.meetup(2013, 6, "last", "Tuesday").should.be("2013-06-25");
				});

				xit("last Wednesday in a month with five Wednesdays", {
					Meetup.meetup(2013, 7, "last", "Wednesday").should.be("2013-07-31");
				});

				xit("last Wednesday in a month with four Wednesdays", {
					Meetup.meetup(2013, 8, "last", "Wednesday").should.be("2013-08-28");
				});

				xit("last Thursday in a month with four Thursdays", {
					Meetup.meetup(2013, 9, "last", "Thursday").should.be("2013-09-26");
				});

				xit("last Thursday in a month with five Thursdays", {
					Meetup.meetup(2013, 10, "last", "Thursday").should.be("2013-10-31");
				});

				xit("last Friday in a month with five Fridays", {
					Meetup.meetup(2013, 11, "last", "Friday").should.be("2013-11-29");
				});

				xit("last Friday in a month with four Fridays", {
					Meetup.meetup(2013, 12, "last", "Friday").should.be("2013-12-27");
				});

				xit("last Saturday in a month with four Saturdays", {
					Meetup.meetup(2013, 1, "last", "Saturday").should.be("2013-01-26");
				});

				xit("last Saturday in another month with four Saturdays", {
					Meetup.meetup(2013, 2, "last", "Saturday").should.be("2013-02-23");
				});

				xit("last Sunday in a month with five Sundays", {
					Meetup.meetup(2013, 3, "last", "Sunday").should.be("2013-03-31");
				});

				xit("last Sunday in a month with four Sundays", {
					Meetup.meetup(2013, 4, "last", "Sunday").should.be("2013-04-28");
				});

				xit("when last Wednesday in February in a leap year is the 29th", {
					Meetup.meetup(2012, 2, "last", "Wednesday").should.be("2012-02-29");
				});

				xit("last Wednesday in December that is also the last day of the year", {
					Meetup.meetup(2014, 12, "last", "Wednesday").should.be("2014-12-31");
				});

				xit("when last Sunday in February in a non-leap year is not the 29th", {
					Meetup.meetup(2015, 2, "last", "Sunday").should.be("2015-02-22");
				});
			});
		});
	}
}
