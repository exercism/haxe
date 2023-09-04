package;

var dna2rna = [
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
];

function toRna(dna: String): String {
    return dna.split("")
              .map(dna2rna.get)
              .join("");
}
