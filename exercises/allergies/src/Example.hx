package;

import haxe.EnumFlags;

using Lambda;

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
        var allergen  = parseAllergen(item);
        var allergies = new EnumFlags<Allergen>(score);

        return allergies.has(allergen);
    }

    public static function list(score: Int): Array<String> {
        var allergies = new EnumFlags<Allergen>(score);

        return [
            for (allergen in Allergen.createAll())
            if (allergies.has(allergen))
            '$allergen'.toLowerCase()
        ];
    }

    private static inline function parseAllergen(input: String): Allergen {
        return Allergen.createAll().find(val ->
             new EReg(val.getName(), "i").match(input)
        );
    }
}
