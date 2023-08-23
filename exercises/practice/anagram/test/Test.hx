package;

using buddy.Should;

class Test extends buddy.SingleSuite {
	public function new() {
		describe("Anagram", {
			it("no matches", {
				Anagram.findAnagrams("diaper", ["hello", "world", "zombies", "pants"]).should.containExactly([]);
			});
			xit("detects two anagrams", {
				Anagram.findAnagrams("master", ["stream", "pigeon", "maters"]).should.containExactly(["stream", "maters"]);
			});
			xit("does not detect anagram subsets", {
				Anagram.findAnagrams("good", ["dog", "goody"]).should.containExactly([]);
			});
			xit("detects anagram", {
				Anagram.findAnagrams("listen", ["enlists", "google", "inlets", "banana"]).should.containExactly(["inlets"]);
			});
			xit("detects three anagrams", {
				Anagram.findAnagrams("allergy", ["gallery", "ballerina", "regally", "clergy", "largely", "leading"])
					.should.containExactly(["gallery", "regally", "largely"]);
			});
			xit("detects multiple anagrams with different case", {
				Anagram.findAnagrams("nose", ["Eons", "ONES"]).should.containExactly(["Eons", "ONES"]);
			});
			xit("does not detect non-anagrams with identical checksum", {
				Anagram.findAnagrams("mass", ["last"]).should.containExactly([]);
			});
			xit("detects anagrams case-insensitively", {
				Anagram.findAnagrams("Orchestra", ["cashregister", "Carthorse", "radishes"]).should.containExactly(["Carthorse"]);
			});
			xit("detects anagrams using case-insensitive possible matches", {
				Anagram.findAnagrams("Orchestra", ["cashregister", "carthorse", "radishes"]).should.containExactly(["carthorse"]);
			});
			xit("detects anagrams using case-insensitive possible matches", {
				Anagram.findAnagrams("orchestra", ["cashregister", "Carthorse", "radishes"]).should.containExactly(["Carthorse"]);
			});
			xit("does not detect an anagram if the original word is repeated", {
				Anagram.findAnagrams("go", ["go Go GO"]).should.containExactly([]);
			});
			xit("anagrams must use all letters exactly once", {
				Anagram.findAnagrams("tapper", ["patter"]).should.containExactly([]);
			});
			xit("words are not anagrams of themselves (case-insensitive)", {
				Anagram.findAnagrams("BANANA", ["BANANA", "Banana", "banana"]).should.containExactly([]);
			});
			xit("words other than themselves can be anagrams", {
				Anagram.findAnagrams("LISTEN", ["Listen", "Silent", "LISTEN"]).should.containExactly(["Silent"]);
			});
		});
	}
}
