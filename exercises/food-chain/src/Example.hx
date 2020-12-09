package;

typedef Verses = Array<String>

class FoodChain {
	static var pairs = [
		["fly", "I don't know why she swallowed the fly. Perhaps she'll die."],
		["spider", "It wriggled and jiggled and tickled inside her."],
		["bird", "How absurd to swallow a bird!"],
		["cat", "Imagine that, to swallow a cat!"],
		["dog", "What a hog, to swallow a dog!"],
		["goat", "Just opened her throat and swallowed a goat!"],
		["cow", "I don't know how she swallowed a cow!"],
		["horse", "She's dead, of course!"]
	];

	public static function recite(startVerse:Int, endVerse:Int):Verses {
		var result = [];

		for (i in startVerse - 1...endVerse)
			result = result.concat(reciteOne(i));

		return result;
	}

	public static function reciteOne(index:Int):Verses {
		var object = pairs[index][0];
		var exclamation1 = pairs[index][1];
		var exclamation2 = pairs[0][1];

		var first = 'I know an old lady who swallowed a $object.';
		var result = [first, exclamation1];

		// skip fly and horse special cases
		if (index > 0 && index < 7) {
			for (i in reciteRec(index, []))
				result.push(i);
			result.push(exclamation2);
		}

		return result;
	}

	private static function reciteRec(currIndex:Int, acc:Verses):Verses {
		if (currIndex <= 0)
			return acc;

		var object1 = pairs[currIndex][0];
		var object2 = pairs[currIndex - 1][0];
		var verse = 'She swallowed the $object1 to catch the $object2';

		// handle spider special case
		if (currIndex == 2)
			verse += " that wriggled and jiggled and tickled inside her";

		acc.push('$verse.');
		return reciteRec(--currIndex, acc);
	}
}
