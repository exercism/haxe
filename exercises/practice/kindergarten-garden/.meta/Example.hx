using StringTools;

private final plantsPerStudent = 4;
private final rowsInGarden = 2;
private var plantNames = ["G" => "grass", "C" => "clover", "R" => "radishes", "V" => "violets"];

private var students = [
	 "Alice",    "Bob", "Charlie",   "David",
	   "Eve",   "Fred",   "Ginny", "Harriet",
	"Ileana", "Joseph", "Kincaid",   "Larry"
];

function plants(diagram:String, student:String):Array<String>
{
	var garden = makeGarden(diagram);
	var studentPlants = garden[students.indexOf(student)];

	return studentPlants.split("").map(plantNames.get);
}

private function makeGarden(diagram:String):Array<String>
{
	var plantsPerRow = Std.int(diagram.length / rowsInGarden);
	var rows = [for (i in 0...rowsInGarden) diagram.substr(i * plantsPerRow, plantsPerRow)];
	var numStudents = Std.int(diagram.length / plantsPerStudent);
	var rowPlantsPerStudent = Std.int(plantsPerStudent / rowsInGarden);

	var garden = [];
	return [
		for (i in 0...numStudents)
			garden[i] = [
				for (row in rows)
					row.substr(i * rowPlantsPerStudent, rowPlantsPerStudent)
			].join("")
	];
}
