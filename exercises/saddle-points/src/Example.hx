package;

typedef Point = {
    column: Int, row: Int
}

typedef Matrix = Array<Array<Int>>;

class SaddlePoints {

    public static function saddlePoints(matrix: Matrix): Array<Point> {
        var saddlePoints = [];
        for (row in 0...matrix.length)
            for (col in 0...matrix[row].length) {
                var point = {column: col, row: row};
                if (isSaddlePoint(point, matrix))
                    // normalize
                    saddlePoints.push({column: point.column + 1, row: point.row + 1});
            }

        return saddlePoints;
    } 

    private static function isSaddlePoint(point: Point, matrix: Matrix): Bool {
        var val = matrix[point.row][point.column];

        // saddle point is >= all elements in its row
        for (i in matrix[point.row])
            if (val < i)
                return false;
        // saddle point is <= all elements in its column
        for (i in 0...matrix.length)
            if (val > matrix[i][point.column])
                return false;

        return true;
    }
}
