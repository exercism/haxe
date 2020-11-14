package;

enum Allergen {
    Eggs;
    Peanuts;
    Shellfish;
    Strawberries;
    Tomatoes;
    Chocolate;
    Pollen;
    Cats;
}

class Allergies {
    public static function allergicTo(item: String, score: Int): Bool {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }

    public static function list(score: Int): Array<String> {
        throw "Not Implemented"; // Delete this statement and write your own implementation.
    }
}
