package;

class Anagram {
    public static function findAnagrams(subject: String, candidates: Array<String>): Array<String> {
        var anagrams = [for (val in candidates) 
                        if (subject.toLowerCase() != val.toLowerCase())
                        if (sortString(subject.toLowerCase()) == sortString(val.toLowerCase()))
                        val];
        return anagrams;
    }
    
    private static function sortString(string: String): String {
        var chars = string.split("");
        chars.sort((c1, c2) -> c1 < c2 ? 1 : -1);
        return chars.join("");
    }
}