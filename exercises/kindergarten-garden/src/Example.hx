package;

using StringTools;

class KindergartenGarden {
	static var plantNames = [
        "G" => "grass", "C" => "clover", "R" => "radishes", "V" => "violets"
    ];

	static var students = [
		 "Alice",    "Bob", "Charlie",   "David",
		   "Eve",   "Fred",   "Ginny", "Harriet",
		"Ileana", "Joseph", "Kincaid",   "Larry"
	];

	public static function plants(diagram: String, student: String): Array<String> {
		var garden = makeGarden(diagram);
		var studentPlants = garden[students.indexOf(student)];

		return studentPlants.split("").map(plantNames.get);
	}

	private static function makeGarden(diagram: String): Array<String> {
		var middle = Std.int(diagram.length / 2);
		var row1 = diagram.substring(0, middle);
		var row2 = diagram.substr(middle);
		var numStudents = Std.int(diagram.length / 4);

		var garden = [];
		return [
			for (i in 0...numStudents)
				garden[i] = row1.substr(i * 2, 2) + row2.substr(i * 2, 2)
		];
	}
}
