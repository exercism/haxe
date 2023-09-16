function row(string:String, index:Int):Array<Int>
{
	var rows = string.split("\n");
	var nums = rows.map(x -> x.split(" ").map(Std.parseInt));

	return nums[index - 1];
}

function column(string:String, index:Int):Array<Int>
{
	var rows = string.split("\n");
	var nums = rows.map(x -> x.split(" ").map(Std.parseInt));

	return [
		for (i in 0...rows.length)
			nums[i][index - 1]
	];
}
