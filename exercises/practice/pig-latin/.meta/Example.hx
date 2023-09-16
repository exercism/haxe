private final vowel = "aeiou".split("").join("|");
private final consonant = '[^$vowel]';
private final consonantCluster = "rh ch qu thr th sch".split(" ").join("|");
private final consonants = '($consonantCluster|$consonant)';

function translate(phrase:String):String
	return phrase.split(" ").map(translate1).join(" ");

private function translate1(word:String):String
{
	var startsWithVowel = new EReg('^($vowel|xr|yt)', "i").match(word);
	var startsWithConsonant = new EReg('(^${consonants}qu|$consonants)', "i");

	if (startsWithVowel)
		return '${word}ay';

	if (startsWithConsonant.match(word))
	{
		var consonant = startsWithConsonant.matched(0);
		return '${word.substr(consonant.length)}${consonant}ay';
	}

	throw "word was not matched";
}
