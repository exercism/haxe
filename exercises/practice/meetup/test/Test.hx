package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Meetup", {
			it("when teenth Monday is the 13th, the first day of the teenth week", {
				Meetup.meetup(2013, 5, "teenth", "Monday").should.be("2013-05-13");
			});

			it("when teenth Monday is the 19th, the last day of the teenth week", {
				Meetup.meetup(2013, 8, "teenth", "Monday").should.be("2013-08-19");
			});

			it("when teenth Monday is some day in the middle of the teenth week", {
				Meetup.meetup(2013, 9, "teenth", "Monday").should.be("2013-09-16");
			});

			it("when teenth Tuesday is the 19th, the last day of the teenth week", {
				Meetup.meetup(2013, 3,"teenth", "Tuesday").should.be("2013-03-19");
			});

			it("when teenth Tuesday is some day in the middle of the teenth week", {
				Meetup.meetup(2013, 4, "teenth", "Tuesday").should.be("2013-04-16");
			});

			it("when teenth Tuesday is the 13th, the first day of the teenth week", {
				Meetup.meetup(2013, 8, "teenth", "Tuesday").should.be("2013-08-13");
			});

			it("when teenth Wednesday is some day in the middle of the teenth week", {
				Meetup.meetup(2013, 1, "teenth", "Wednesday").should.be("2013-01-16");
			});

			it("when teenth Wednesday is the 13th, the first day of the teenth week", {
				Meetup.meetup(2013, 2, "teenth", "Wednesday").should.be("2013-02-13");
			});

			it("when teenth Wednesday is the 19th, the last day of the teenth week", {
				Meetup.meetup(2013, 6, "teenth", "Wednesday").should.be("2013-06-19");
			});

			it("when teenth Thursday is some day in the middle of the teenth week", {
				Meetup.meetup(2013, 5, "teenth", "Thursday").should.be("2013-05-16");
			});

			it("when teenth Thursday is the 13th, the first day of the teenth week", {
				Meetup.meetup(2013, 6, "teenth", "Thursday").should.be("2013-06-13");
			});

			it("when teenth Thursday is the 19th, the last day of the teenth week", {
				Meetup.meetup(2013, 9, "teenth", "Thursday").should.be("2013-09-19");
			});

			it("when teenth Friday is the 19th, the last day of the teenth week", {
				Meetup.meetup(2013, 4, "teenth", "Friday").should.be("2013-04-19");
			});

			it("when teenth Friday is some day in the middle of the teenth week", {
				Meetup.meetup(2013, 8, "teenth", "Friday").should.be("2013-08-16");
			});

			it("when teenth Friday is the 13th, the first day of the teenth week", {
				Meetup.meetup(2013, 9, "teenth", "Friday").should.be("2013-09-13");
			});

			it("when teenth Saturday is some day in the middle of the teenth week", {
				Meetup.meetup(2013, 2, "teenth", "Saturday").should.be("2013-02-16");
			});

			it("when teenth Saturday is the 13th, the first day of the teenth week", {
				Meetup.meetup(2013, 4, "teenth", "Saturday").should.be("2013-04-13");
			});

			it("when teenth Saturday is the 19th, the last day of the teenth week", {
				Meetup.meetup(2013, 10, "teenth", "Saturday").should.be("2013-10-19");
			});

			it("when teenth Sunday is the 19th, the last day of the teenth week", {
				Meetup.meetup(2013, 5, "teenth", "Sunday").should.be("2013-05-19");
			});

			it("when teenth Sunday is some day in the middle of the teenth week", {
				Meetup.meetup(2013, 6, "teenth", "Sunday").should.be("2013-06-16");
			});
			
			it("when teenth Sunday is the 13th, the first day of the teenth week", {
				Meetup.meetup(2013, 10, "teenth", "Sunday").should.be("2013-10-13");
			});

			it("when first Monday is some day in the middle of the first week", {
				Meetup.meetup(2013, 3, "first", "Monday").should.be("2013-03-04");
			});

			it("when first Monday is the 1st, the first day of the first week", {
				Meetup.meetup(2013, 4, "first", "Monday").should.be("2013-04-01");
			});

			it("when first Tuesday is the 7th, the last day of the first week", {
				Meetup.meetup(2013, 5, "first", "Tuesday").should.be("2013-05-07");
			});

			it("when first Tuesday is some day in the middle of the first week", {
				Meetup.meetup(2013, 6, "first", "Tuesday").should.be("2013-06-04");
			});

			it("when first Wednesday is some day in the middle of the first week", {
				Meetup.meetup(2013, 7, "first", "Wednesday").should.be("2013-07-03");
			});

			it("when first Wednesday is the 7th, the last day of the first week", {
				Meetup.meetup(2013, 8, "first", "Wednesday").should.be("2013-08-07");
			});

			it("when first Thursday is some day in the middle of the first week", {
				Meetup.meetup(2013, 9, "first", "Thursday").should.be("2013-09-05");
			});

			it("when first Thursday is another day in the middle of the first week", {
				Meetup.meetup(2013, 10, "first", "Thursday").should.be("2013-10-03");
			});

			it("when first Friday is the 1st, the first day of the first week", {
				Meetup.meetup(2013, 11, "first", "Friday").should.be("2013-11-01");
			});

			it("when first Friday is some day in the middle of the first week", {
				Meetup.meetup(2013, 12, "first", "Friday").should.be("2013-12-06");
			});

			it("when first Saturday is some day in the middle of the first week", {
				Meetup.meetup(2013, 1, "first", "Saturday").should.be("2013-01-05");
			});

			it("when first Saturday is another day in the middle of the first week", {
				Meetup.meetup(2013, 2, "first", "Saturday").should.be("2013-02-02");
			});

			it("when first Sunday is some day in the middle of the first week", {
				Meetup.meetup(2013, 3, "first", "Sunday").should.be("2013-03-03");
			});

			it("when first Sunday is the 7th, the last day of the first week", {
				Meetup.meetup(2013, 4, "first", "Sunday").should.be("2013-04-07");
			});

			it("when second Monday is some day in the middle of the second week", {
				Meetup.meetup(2013, 3, "second", "Monday").should.be("2013-03-11");
			});

			it("when second Monday is the 8th, the first day of the second week", {
				Meetup.meetup(2013, "second", 2013, 4, "Monday").should.be("2013-04-08");
			});

			it("when second Tuesday is the 14th, the last day of the second week", {
				Meetup.meetup(2013, "second", 2013, 5, "Tuesday").should.be("2013-05-14");
			});

			it("when second Tuesday is some day in the middle of the second week", {
				Meetup.meetup(2013, "second", 2013, 6, "Tuesday").should.be("2013-06-11");
			});

			it("when second Wednesday is some day in the middle of the second week", {
				Meetup.meetup(2013, "second", 2013, 7, "Wednesday").should.be("2013-07-10");
			});

			it("when second Wednesday is the 14th, the last day of the second week", {
				Meetup.meetup(2013, "second", 2013, 8, "Wednesday").should.be("2013-08-14");
			});

			it("when second Thursday is some day in the middle of the second week", {
				Meetup.meetup(2013, "second", 2013, 9, "Thursday").should.be("2013-09-12");
			});

			it("when second Thursday is another day in the middle of the second week", {
				Meetup.meetup(2013, "second", 2013, 10, "Thursday").should.be("2013-10-10");
			});

			it("when second Friday is the 8th, the first day of the second week", {
				Meetup.meetup(2013, "second", 2013, 11, "Friday").should.be("2013-11-08");
			});

			it("when second Friday is some day in the middle of the second week", {
				Meetup.meetup(2013, "second", 2013, 12, "Friday").should.be("2013-12-13");
			});

			it("when second Saturday is some day in the middle of the second week", {
				Meetup.meetup(2013, "second", 2013, 1, "Saturday").should.be("2013-01-12");
			});

			it("when second Saturday is another day in the middle of the second week", {
				Meetup.meetup(2013, "second", 2013, 2, "Saturday").should.be("2013-02-09");
			});

			it("second Sunday of March 2013", {
				Meetup.meetup(2013, "second", 2013, 3, "Sunday").should.be("2013-03-10");
			});

			it("second Sunday of April 2013", {
				Meetup.meetup(2013, "second", 2013, 4, "Sunday").should.be("2013-04-14");
			});

			it("third Monday of March 2013", {
				Meetup.meetup(2013, "third", 2013, 3, "Monday").should.be("2013-03-18");
			});

			it("third Monday of April 2013", {
				Meetup.meetup(2013, "third", 2013, 4, "Monday").should.be("2013-04-15");
			});

			it("third Tuesday of May 2013", {
				Meetup.meetup(2013, "third", 2013, 5, "Tuesday").should.be("2013-05-21");
			});

			it("third Tuesday of June 2013", {
				Meetup.meetup(2013, "third", 2013, 6, "Tuesday").should.be("2013-06-18");
			});

			it("third Wednesday of July 2013", {
				Meetup.meetup(2013, "third", 2013, 7, "Wednesday").should.be("2013-07-17");
			});

			it("third Wednesday of August 2013", {
				Meetup.meetup(2013, "third", 2013, 8, "Wednesday").should.be("2013-08-21");
			});

			it("third Thursday of September 2013", {
				Meetup.meetup(2013, "third", 2013, 9, "Thursday").should.be("2013-09-19");
			});

			it("third Thursday of October 2013", {
				Meetup.meetup(2013, "third", 2013, 10, "Thursday").should.be("2013-10-17");
			});

			it("third Friday of November 2013", {
				Meetup.meetup(2013, "third", 2013, 11, "Friday").should.be("2013-11-15");
			});

			it("third Friday of December 2013", {
				Meetup.meetup(2013, "third", 2013, 12, "Friday").should.be("2013-12-20");
			});

			it("third Saturday of January 2013", {
				Meetup.meetup(2013, "third", 2013, 1, "Saturday").should.be("2013-01-19");
			});

			it("third Saturday of February 2013", {
				Meetup.meetup(2013, "third", 2013, 2, "Saturday").should.be("2013-02-16");
			});

			it("third Sunday of March 2013", {
				Meetup.meetup(2013, "third", 2013, 3, "Sunday").should.be("2013-03-17");
			});

			it("third Sunday of April 2013", {
				Meetup.meetup(2013, "third", 2013, 4, "Sunday").should.be("2013-04-21");
			});

			it("fourth Monday of March 2013", {
				Meetup.meetup(2013, "fourth", 2013, 3, "Monday").should.be("2013-03-25");
			});

			it("fourth Monday of April 2013", {
				Meetup.meetup(2013, "fourth", 2013, 4, "Monday").should.be("2013-04-22");
			});
			
			it("fourth Tuesday of May 2013", {
				Meetup.meetup(2013, "fourth", 2013, 5, "Tuesday").should.be("2013-05-28");
			});

			it("fourth Tuesday of June 2013", {
				Meetup.meetup(2013, "fourth", 2013, 6, "Tuesday").should.be("2013-06-25");
			});

			it("fourth Wednesday of July 2013", {
				Meetup.meetup(2013, "fourth", 2013, 7, "Wednesday").should.be("2013-07-24");
			});

			it("fourth Wednesday of August 2013", {
				Meetup.meetup(2013, "fourth", 2013, 8, "Wednesday").should.be("2013-08-28");
			});

			it("fourth Thursday of September 2013", {
				Meetup.meetup(2013, "fourth", 2013, 9, "Thursday").should.be("2013-09-26");
			});

			it("fourth Thursday of October 2013", {
				Meetup.meetup(2013, "fourth", 2013, 10, "Thursday").should.be("2013-10-24");
			});

			it("fourth Friday of November 2013", {
				Meetup.meetup(2013, "fourth", 2013, 11, "Friday").should.be("2013-11-22");
			});

			it("fourth Friday of December 2013", {
				Meetup.meetup(2013, "fourth", 2013, 12, "Friday").should.be("2013-12-27");
			});

			it("fourth Saturday of January 2013", {
				Meetup.meetup(2013, "fourth", 2013, 1, "Saturday").should.be("2013-01-26");
			});

			it("fourth Saturday of February 2013", {
				Meetup.meetup(2013, "fourth", 2013, 2, "Saturday").should.be("2013-02-23");
			});

			it("fourth Sunday of March 2013", {
				Meetup.meetup(2013, "fourth", 2013, 3, "Sunday").should.be("2013-03-24");
			});

			it("fourth Sunday of April 2013", {
				Meetup.meetup(2013, "fourth", 2013, 4, "Sunday").should.be("2013-04-28");
			});

			it("last Monday of March 2013", {
				Meetup.meetup(2013, "last", 2013, 3, "Monday").should.be("2013-03-25");
			});

			it("last Monday of April 2013", {
				Meetup.meetup(2013, "last", 2013, 4, "Monday").should.be("2013-04-29");
			});

			it("last Tuesday of May 2013", {
				Meetup.meetup(2013, "last", 2013, 5, "Tuesday").should.be("2013-05-28");
			});

			it("last Tuesday of June 2013", {
				Meetup.meetup(2013, "last", 2013, 6, "Tuesday").should.be("2013-06-25");
			});

			it("last Wednesday of July 2013", {
				Meetup.meetup(2013, "last", 2013, 7, "Wednesday").should.be("2013-07-31");
			});

			it("last Wednesday of August 2013", {
				Meetup.meetup(2013, "last", 2013, 8, "Wednesday").should.be("2013-08-28");
			});

			it("last Thursday of September 2013", {
				Meetup.meetup(2013, "last", 2013, 9, "Thursday").should.be("2013-09-26");
			});

			it("last Thursday of October 2013", {
				Meetup.meetup(2013, "last", 2013, 10, "Thursday").should.be("2013-10-31");
			});

			it("last Friday of November 2013", {
				Meetup.meetup(2013, "last", 2013, 11, "Friday").should.be("2013-11-29");
			});

			it("last Friday of December 2013", {
				Meetup.meetup(2013, "last", 2013, 12, "Friday").should.be("2013-12-27");
			});

			it("last Saturday of January 2013", {
				Meetup.meetup(2013, "last", 2013, 1, "Saturday").should.be("2013-01-26");
			});

			it("last Saturday of February 2013", {
				Meetup.meetup(2013, "last", 2013, 2, "Saturday").should.be("2013-02-23");
			});

			it("last Sunday in a month with five Sundays", {
				Meetup.meetup(2013, "last", 2013, 3, "Sunday").should.be("2013-03-31");
			});

			it("last Sunday in a month with four Sundays", {
				Meetup.meetup(2013, "last", 2013, 4, "Sunday").should.be("2013-04-28");
			});

			it("when last Wednesday in February in a leap year is the 29th", {
				Meetup.meetup(2013, "last", 2012, 2, "Wednesday").should.be("2012-02-29");
			});

			it("last Wednesday in December that is also the last day of the year", {
				Meetup.meetup(2013, "last", 2014, 12, "Wednesday").should.be("2014-12-31");
			});

			it("when last Sunday in February in a non-leap year is not the 29th", {
				Meetup.meetup(2013, "last", 2015, 2, "Sunday").should.be("2015-02-22");
			});

			it("when first Friday is the 7th, the last day of the first week", {
				Meetup.meetup(2013, "first", 2012, 12, "Friday").should.be("2012-12-07");
			});
		});
	}
}
