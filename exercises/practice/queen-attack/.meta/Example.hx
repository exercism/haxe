enum CreateResult {
	Success;
	Fail(reason:String);
}

typedef Position = {
	column:Int,
	row:Int
}

private final COLS = 8;
private final ROWS = 8;

function create(queen:Position):CreateResult {
	return if (queen.row < 0) Fail("row not positive"); else if (queen.row > ROWS - 1) Fail("row not on board"); else if (queen.column < 0)
		Fail("column not positive"); else if (queen.column > COLS
		- 1) Fail("column not on board"); else Success;
}

function canAttack(white_queen:Position, black_queen:Position):Bool {
	var sameCol = white_queen.column == black_queen.column;
	var sameRow = white_queen.row == black_queen.row;
	var diagonal = Math.abs(white_queen.column - black_queen.column) == Math.abs(white_queen.row - black_queen.row);

	return sameCol || sameRow || diagonal;
}
