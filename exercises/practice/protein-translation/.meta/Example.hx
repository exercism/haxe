package;

class ProteinTranslation {
    static inline var STOP = "STOP";

    static final _codon2protein = [
        ["AUG"]                         => "Methionine",
        ["UUU", "UUC"]                  => "Phenylalanine",
        ["UUA", "UUG"]                  => "Leucine",
        ["UCU", "UCC", "UCA", "UCG"]    => "Serine",
        ["UAU", "UAC"]                  => "Tyrosine",
        ["UGU", "UGC"]                  => "Cysteine",
        ["UGG"]                         => "Tryptophan",
        ["UAA", "UAG", "UGA"]           => STOP
    ];

    // transpose into per-codon map
    static final codon2protein = [
        for (kk => v in _codon2protein) 
            for (k in kk)
                k => v
    ];

    public static function proteins(strand: String): Array<String> {
        var proteins = [];
        
        for (codon in chunksOf(3, strand)) {
            var protein = codon2protein[codon];
            if (protein == STOP)
                break;
            else 
                proteins.push(protein);
        }

        return proteins;
    }

    private static function chunksOf(count: Int, str: String): Array<String> {
        return [
            for (i in 0...Std.int(str.length / count))
                str.substr(i * count, count)
        ];
    }
}
