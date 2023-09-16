package;

using buddy.Should;

class Test extends buddy.SingleSuite
{
	public function new()
	{
		describe("count all nucleotides in a strand",
			{
				it("empty strand",
					{
						var expected = ["A" => 0, "C" => 0, "G" => 0, "T" => 0,];
						NucleotideCount.nucleotideCounts("").should.containExactly(expected);
					});
				xit("can count one nucleotide in single-character input",
					{
						var expected = ["A" => 0, "C" => 0, "G" => 1, "T" => 0,];
						NucleotideCount.nucleotideCounts("G").should.containExactly(expected);
					});
				xit("strand with repeated nucleotide",
					{
						var expected = ["A" => 0, "C" => 0, "G" => 7, "T" => 0,];
						NucleotideCount.nucleotideCounts("GGGGGGG").should.containExactly(expected);
					});
				xit("strand with multiple nucleotides",
					{
						var strand = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC";
						var expected = ["A" => 20, "C" => 12, "G" => 17, "T" => 21,];
						NucleotideCount.nucleotideCounts(strand).should.containExactly(expected);
					});
				xit("strand with invalid nucleotides",
					{
						NucleotideCount.nucleotideCounts.bind("AGXXACT").should.throwValue("Invalid nucleotide in strand");
					});
			});
	}
}
