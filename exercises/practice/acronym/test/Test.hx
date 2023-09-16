package;

using buddy.Should;

class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("Abbreviate a phrase",
			{
				it("basic",
					{
						Acronym.abbreviate("Portable Network Graphics").should.be("PNG");
					});
				xit("lowercase words",
					{
						Acronym.abbreviate("Ruby on Rails").should.be("ROR");
					});
				xit("punctuation",
					{
						Acronym.abbreviate("First In, First Out").should.be("FIFO");
					});
				xit("all caps word",
					{
						Acronym.abbreviate("GNU Image Manipulation Program").should.be("GIMP");
					});
				xit("punctuation without whitespace",
					{
						Acronym.abbreviate("Complementary metal-oxide semiconductor").should.be("CMOS");
					});
				xit("very long abbreviation",
					{
						Acronym.abbreviate("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me").should.be("ROTFLSHTMDCOALM");
					});
				xit("consecutive delimiters",
					{
						Acronym.abbreviate("Something - I made up from thin air").should.be("SIMUFTA");
					});
				xit("apostrophes",
					{
						Acronym.abbreviate("Halley's Comet").should.be("HC");
					});
				xit("underscore emphasis",
					{
						Acronym.abbreviate("The Road _Not_ Taken").should.be("TRNT");
					});
			});
	}
}
