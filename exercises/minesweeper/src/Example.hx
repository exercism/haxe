package;

using Lambda;

typedef Cell = {
    row: Int, col: Int
}

class Minesweeper {
    static inline var MINE = "*";

    public static function annotate(minefield: Array<String>): Array<String> {
		if (minefield.empty())
			return [];

		var numRows = minefield.length;
		var numCols = minefield[0].length;
		var mineCells = getMineCells(minefield);

		function isMineCell(cell:Cell)
			return mineCells.exists(x -> x.row == cell.row && x.col == cell.col);

		for (cell in mineCells)
			for (neighbor in getNeighbors(cell, numRows, numCols))
				if (!isMineCell(neighbor))
					markAdjacentToMine(neighbor, minefield);

		return minefield;
    } 

    private static function getMineCells(minefield: Array<String>): Array<Cell> {
		var mines = [];
		for (rowIndex in 0...minefield.length) {
			var row = minefield[rowIndex];
			for (colIndex in 0...row.length)
				if (row.charAt(colIndex) == MINE)
					mines.push({row: rowIndex, col: colIndex});
		};

		return mines;
    }

    private static function getNeighbors(cell: Cell, maxRows: Int, maxCols: Int): Array<Cell> {
		var row = cell.row;
		var col = cell.col;
		var neighbors = [
			{row: row, col: col + 1}, // right
			{row: row, col: col - 1}, // left
			{row: row + 1, col: col}, // above
			{row: row - 1, col: col}, // below
			{row: row + 1, col: col + 1}, // above right
			{row: row - 1, col: col + 1}, // below right
			{row: row + 1, col: col - 1}, // above left
			{row: row - 1, col: col - 1} // below left
		];

		function isValidCell(cell:Cell)
			return cell.row >= 0 && cell.row < maxRows && cell.col >= 0 && cell.col < maxCols;

		return neighbors.filter(isValidCell);
    }

    private static function markAdjacentToMine(cell: Cell, minefield: Array<String>): Void {
		var row = minefield[cell.row];
		var char = row.charAt(cell.col);
		var newCell = char == " " ? 0 : Std.parseInt(row.charAt(cell.col));
		newCell++;
		var newRow = row.substring(0, cell.col) + newCell + row.substring(cell.col + 1);

		minefield[cell.row] = newRow;
    }
}
