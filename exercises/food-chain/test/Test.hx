package;

using buddy.Should;

// Created by testgen.hx
class Test extends buddy.SingleSuite {
	public function new() {
		describe("Return specified verse or series of verses", {
			it("fly", {
				FoodChain.recite(1, 1).should.containExactly([
					"I know an old lady who swallowed a fly.",
					"I don't know why she swallowed the fly. Perhaps she'll die."
				]);
			});
			xit("spider", {
				FoodChain.recite(2, 2).should.containExactly([
					"I know an old lady who swallowed a spider.",
					"It wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.",
					"I don't know why she swallowed the fly. Perhaps she'll die."
				]);
			});
			xit("bird", {
				FoodChain.recite(3, 3).should.containExactly([
					"I know an old lady who swallowed a bird.",
					"How absurd to swallow a bird!",
					"She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.",
					"I don't know why she swallowed the fly. Perhaps she'll die."
				]);
			});
			xit("cat", {
				FoodChain.recite(4, 4).should.containExactly([
					"I know an old lady who swallowed a cat.",
					"Imagine that, to swallow a cat!",
					"She swallowed the cat to catch the bird.",
					"She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.",
					"I don't know why she swallowed the fly. Perhaps she'll die."
				]);
			});
			xit("dog", {
				FoodChain.recite(5, 5).should.containExactly([
					"I know an old lady who swallowed a dog.",
					"What a hog, to swallow a dog!",
					"She swallowed the dog to catch the cat.",
					"She swallowed the cat to catch the bird.",
					"She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.",
					"I don't know why she swallowed the fly. Perhaps she'll die."
				]);
			});
			xit("goat", {
				FoodChain.recite(6, 6).should.containExactly([
					"I know an old lady who swallowed a goat.",
					"Just opened her throat and swallowed a goat!",
					"She swallowed the goat to catch the dog.",
					"She swallowed the dog to catch the cat.",
					"She swallowed the cat to catch the bird.",
					"She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.",
					"I don't know why she swallowed the fly. Perhaps she'll die."
				]);
			});
			xit("cow", {
				FoodChain.recite(7, 7).should.containExactly([
					"I know an old lady who swallowed a cow.",
					"I don't know how she swallowed a cow!",
					"She swallowed the cow to catch the goat.",
					"She swallowed the goat to catch the dog.",
					"She swallowed the dog to catch the cat.",
					"She swallowed the cat to catch the bird.",
					"She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.",
					"I don't know why she swallowed the fly. Perhaps she'll die."
				]);
			});
			xit("horse", {
				FoodChain.recite(8, 8).should.containExactly(["I know an old lady who swallowed a horse.", "She's dead, of course!"]);
			});
			xit("multiple verses", {
				FoodChain.recite(1, 3).should.containExactly([
					"I know an old lady who swallowed a fly.", "I don't know why she swallowed the fly. Perhaps she'll die.",
					"I know an old lady who swallowed a spider.", "It wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.", "I don't know why she swallowed the fly. Perhaps she'll die.",
					"I know an old lady who swallowed a bird.", "How absurd to swallow a bird!",
					"She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.", "I don't know why she swallowed the fly. Perhaps she'll die."
				]);
			});
			xit("full song", {
				FoodChain.recite(1, 8).should.containExactly([
					"I know an old lady who swallowed a fly.", "I don't know why she swallowed the fly. Perhaps she'll die.",
					"I know an old lady who swallowed a spider.", "It wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.", "I don't know why she swallowed the fly. Perhaps she'll die.",
					"I know an old lady who swallowed a bird.", "How absurd to swallow a bird!",
					"She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.", "I don't know why she swallowed the fly. Perhaps she'll die.",
					"I know an old lady who swallowed a cat.", "Imagine that, to swallow a cat!", "She swallowed the cat to catch the bird.",
					"She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.", "I don't know why she swallowed the fly. Perhaps she'll die.",
					"I know an old lady who swallowed a dog.", "What a hog, to swallow a dog!", "She swallowed the dog to catch the cat.",
					"She swallowed the cat to catch the bird.",
					"She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.", "I don't know why she swallowed the fly. Perhaps she'll die.",
					"I know an old lady who swallowed a goat.", "Just opened her throat and swallowed a goat!", "She swallowed the goat to catch the dog.",
					"She swallowed the dog to catch the cat.", "She swallowed the cat to catch the bird.",
					"She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.", "I don't know why she swallowed the fly. Perhaps she'll die.",
					"I know an old lady who swallowed a cow.", "I don't know how she swallowed a cow!", "She swallowed the cow to catch the goat.",
					"She swallowed the goat to catch the dog.", "She swallowed the dog to catch the cat.", "She swallowed the cat to catch the bird.",
					"She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
					"She swallowed the spider to catch the fly.", "I don't know why she swallowed the fly. Perhaps she'll die.",
					"I know an old lady who swallowed a horse.", "She's dead, of course!"
				]);
			});
		});
	}
}
