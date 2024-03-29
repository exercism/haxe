private inline var STOP = "STOP";

private final _codon2protein = [
	["AUG"] => "Methionine",
	["UUU", "UUC"] => "Phenylalanine",
	["UUA", "UUG"] => "Leucine",
	["UCU", "UCC", "UCA", "UCG"] => "Serine",
	["UAU", "UAC"] => "Tyrosine",
	["UGU", "UGC"] => "Cysteine",
	["UGG"] => "Tryptophan",
	["UAA", "UAG", "UGA"] => STOP
];

// transpose into per-codon map
private final codon2protein = [
	for (kk => v in _codon2protein)
		for (k in kk)
			k => v
];

function proteins(strand:String):Array<String> {
	var proteins = [];

	for (codon in chunksOf(3, strand)) {
		var protein = codon2protein[codon];
		if (protein == null)
			throw "Invalid codon";
		else if (protein == STOP)
			break;
		else
			proteins.push(protein);
	}

	return proteins;
}

private function chunksOf(count:Int, str:String):Array<String> {
	return [
		for (i in 0...Std.int((str.length + count - 1) / count))
			str.substr(i * count, count)
	];
}
