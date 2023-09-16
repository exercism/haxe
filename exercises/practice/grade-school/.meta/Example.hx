using Lambda;

typedef Name = String;
typedef Grade = Int;

typedef Student =
{
	name:Name,
	grade:Grade
};

class GradeSchool
{
	private final grades:Map<Grade, List<Name>> = [];

	public function new()
	{
	}

	public function add(students:Array<Student>):Array<Bool>
	{
		var results = [];
		var roster = [];
		for (student in students)
		{
			if (roster.contains(student.name))
			{
				results.push(false);
			} else
			{
				if (!grades.exists(student.grade))
					grades[student.grade] = new List();

				grades[student.grade].add(student.name);
				results.push(true);

				roster = this.roster();
			}
		}

		return results;
	}

	public function roster():Array<Name>
	{
		var sortedKeys = [for (n in grades.keys()) n];
		sortedKeys.sort(compareInt);

		return [
			for (key in sortedKeys)
				grade(key)
		].flatten();
	}

	public function grade(desiredGrade:Grade):Array<Name>
	{
		if (!grades.exists(desiredGrade))
			return [];

		var grade = grades[desiredGrade].array();
		grade.sort(compareString);

		return grade;
	}

	private function compareInt(a:Int, b:Int):Int
	{
		return a < b ? -1 : 1;
	}

	private function compareString(a:String, b:String):Int
	{
		return a < b ? -1 : 1;
	}
}
