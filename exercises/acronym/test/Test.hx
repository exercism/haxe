package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("Abbreviate a phrase", {
			it("basic", {
				Acronym.abbreviate("Portable Network Graphics").should.be("PNG");
			});
			it("lowercase words", {
				pending("Skipping");
				Acronym.abbreviate("Ruby on Rails").should.be("ROR");
			});
			it("punctuation", {
				pending("Skipping");
				Acronym.abbreviate("First In, First Out").should.be("FIFO");
			});
			it("all caps word", {
				pending("Skipping");
				Acronym.abbreviate("GNU Image Manipulation Program").should.be("GIMP");
			});
			it("punctuation without whitespace", {
				pending("Skipping");
				Acronym.abbreviate("Complementary metal-oxide semiconductor").should.be("CMOS");
			});
			it("very long abbreviation", {
				pending("Skipping");
				Acronym.abbreviate("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me").should.be("ROTFLSHTMDCOALM");
			});
			it("consecutive delimiters", {
				pending("Skipping");
				Acronym.abbreviate("Something - I made up from thin air").should.be("SIMUFTA");
			});
			it("apostrophes", {
				pending("Skipping");
				Acronym.abbreviate("Halley's Comet").should.be("HC");
			});
			it("underscore emphasis", {
				pending("Skipping");
				Acronym.abbreviate("The Road _Not_ Taken").should.be("TRNT");
			});
		});
	}
}
