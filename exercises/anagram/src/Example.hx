package;

class Anagram {
    public static function findAnagrams(subject: String, candidates: Array<String>): Array<String> {
        var anagrams = [for (val in candidates) 
                        if (subject.toLowerCase() != val.toLowerCase())
                        if (sort_string(subject.toLowerCase()) == sort_string(val.toLowerCase()))
                        val];
        return anagrams;
    }
    
    private static function sort_string(string:String): String {
        var _string = string.split("");
        _string.sort((s1, s2) -> s1 < s2 ? 1 : -1);
        return _string.join("");
    }
}