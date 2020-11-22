package;

using Lambda;

typedef Character = {
    dexterity: Int,
    wisdom: Int,
    intelligence: Int,
    hitpoints: Int,
    strength: Int,
    charisma: Int,
    constitution: Int
}

class DndCharacter {
    public static function modifier(score: Int): Int {
        return Math.floor((score - 10) / 2);
    }

	public static function ability(): Int {
		function getRnd() return Std.random(6) + 1;
		function sum(a, b) return a + b;

		var rolls = [getRnd(), getRnd(), getRnd(), getRnd()];
		rolls.sort((x, y) -> x > y ? -1 : 1);
		var best3 = rolls.slice(0, 3);

		return best3.fold(sum, 0);
    }

	public static function character(): Character {
        var char: Character = { 
            dexterity: ability(),
            wisdom: ability(),
            intelligence: ability(),
            charisma: ability(),
            constitution: ability(),
            strength: ability(),
            hitpoints: null
        };
        char.hitpoints = 10 + modifier(char.constitution);

        return char;
    }
}
