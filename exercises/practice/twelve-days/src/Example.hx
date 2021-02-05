package;

class TwelveDays {
	static var count = [
		    "a",   "two", "three", "four",   "five",  "six",
		"seven", "eight",  "nine",  "ten", "eleven", "twelve"
	];
	static var counth = [
		  "first", "second", "third", "fourth",    "fifth", "sixth",
		"seventh", "eighth", "ninth",  "tenth", "eleventh", "twelfth"
	];
	static var item = [
		"Partridge in a Pear Tree",    "Turtle Doves",      "French Hens",   "Calling Birds",
		              "Gold Rings",  "Geese-a-Laying", "Swans-a-Swimming", "Maids-a-Milking",
		          "Ladies Dancing", "Lords-a-Leaping",    "Pipers Piping", "Drummers Drumming"
	];

	public static function recite(startVerse: Int, endVerse: Int): Array<String> {
		return [
			for (i in startVerse - 1...endVerse) {
				var start = 'On the ${counth[i]} day of Christmas my true love gave to me: ${count[i]} ${item[i]}';
				var buf = new StringBuf();
				buf.add(start);
				reciteOne(i - 1, buf);
			}
		];
	}

	private static function reciteOne(index: Int, acc: StringBuf): String {
		if (index < 0)
			return acc.toString() + ".";

		var verse:String;
		if (index == 0)
			verse = ', and ${count[index]} ${item[index]}';
		else
			verse = ', ${count[index]} ${item[index]}';

		acc.add(verse);
		return reciteOne(--index, acc);
	}
}
