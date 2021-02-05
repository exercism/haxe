package;

using buddy.Should;

class Test extends buddy.SingleSuite {
    public function new() {
        describe("Anagram", {
            it("no matches", {
                Anagram.findAnagrams("diaper", ["hello", "world", "zombies", "pants"]).should.containExactly([]);
            });
            it("detects two anagrams", {
                pending("Skipping");
                Anagram.findAnagrams("master", ["stream", "pigeon", "maters"]).should.containExactly(["stream", "maters"]);
            });
            it("does not detect anagram subsets", {
                pending("Skipping");
                Anagram.findAnagrams("good", ["dog", "goody"]).should.containExactly([]);
            });
            it("detects anagram", {
                pending("Skipping");
                Anagram.findAnagrams("listen", ["enlists", "google", "inlets", "banana"]).should.containExactly(["inlets"]);
            });
            it("detects three anagrams", {
                pending("Skipping");
                Anagram.findAnagrams("allergy", ["gallery", "ballerina", "regally", "clergy", "largely", "leading"])
                    .should.containExactly(["gallery", "regally", "largely"]);
            });
            it("detects multiple anagrams with different case", {
                pending("Skipping");
                Anagram.findAnagrams("nose", ["Eons", "ONES"]).should.containExactly(["Eons", "ONES"]);
            });
            it("does not detect non-anagrams with identical checksum", {
                pending("Skipping");
                Anagram.findAnagrams("mass", ["last"]).should.containExactly([]);
            });
            it("detects anagrams case-insensitively", {
                pending("Skipping");
                Anagram.findAnagrams("Orchestra", ["cashregister", "Carthorse", "radishes"]).should.containExactly(["Carthorse"]);
            });
            it("detects anagrams using case-insensitive possible matches", {
                pending("Skipping");
                Anagram.findAnagrams("Orchestra", ["cashregister", "carthorse", "radishes"]).should.containExactly(["carthorse"]);
            });
            it("detects anagrams using case-insensitive possible matches", {
                pending("Skipping");
                Anagram.findAnagrams("orchestra", ["cashregister", "Carthorse", "radishes"]).should.containExactly(["Carthorse"]);
            });
            it("does not detect an anagram if the original word is repeated", {
                pending("Skipping");
                Anagram.findAnagrams("go", ["go Go GO"]).should.containExactly([]);
            });
            it("anagrams must use all letters exactly once", {
                pending("Skipping");
                Anagram.findAnagrams("tapper", ["patter"]).should.containExactly([]);
            });
            it("words are not anagrams of themselves (case-insensitive)", {
                pending("Skipping");
                Anagram.findAnagrams("BANANA", ["BANANA", "Banana", "banana"]).should.containExactly([]);
            });
            it("words other than themselves can be anagrams", {
                pending("Skipping");
                Anagram.findAnagrams("LISTEN", ["Listen", "Silent", "LISTEN"]).should.containExactly(["Silent"]);
            });
        });
    }
}