enum CreateResult
{
	Success;
	Fail(reason:String);
}

typedef Position =
{
	column:Int,
	row:Int
}

function create(queen:Position):CreateResult
{
	throw "Not Implemented"; // Delete this statement and write your own implementation.
}

function canAttack(white_queen:Position, black_queen:Position):Bool
{
	throw "Not Implemented"; // Delete this statement and write your own implementation.
}
