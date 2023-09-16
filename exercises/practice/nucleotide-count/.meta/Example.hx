package;

var nucleotides = ["A", "T", "C", "G"];

function nucleotideCounts(strand:String):Map<String, Int>
{
	var count = [
		for (n in nucleotides)
			n => 0
	];

	for (char in strand.split(""))
	{
		if (!nucleotides.contains(char))
			throw "Invalid nucleotide in strand";

		count[char] += 1;
	}

	return count;
}
