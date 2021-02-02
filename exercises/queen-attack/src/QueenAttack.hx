package;

enum CreateResult {
    Success;
    Fail(reason: String);
}

typedef Position = {
    column: Int,
    row:    Int
}

class QueenAttack {
    public static function create(queen: Position): CreateResult {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

	public static function canAttack(white_queen: Position, black_queen: Position): Bool {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    } 
}
