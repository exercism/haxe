package;

class Acronym {
    public static function abbreviate(input: String): String {
        return ~/[-,_]/.replace(input, " ")                 // remove punctuation
                       .split(" ")                          // split words
                       .map(w -> w.charAt(0).toUpperCase()) // take first letter
                       .join("");                           // join as acronym
    }
}