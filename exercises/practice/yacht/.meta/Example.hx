using Lambda;

function score(dice:Array<Int>, category:String):Int {
	function count(n)
		return dice.count(x -> x == n);

	var sum = // sum of the dice
		dice.fold((x, acc) -> x + acc, 0);
	var yachtScore = // 50 if all dices showing the same face
		dice.exists(x -> x != dice[0]) ? 0 : 50;
	var fullHouseScore = // total of the dice
		dice.exists(x -> count(x) == 2) && dice.exists(x -> count(x) == 3) ? sum : 0;
	var fourOfKindScore = // total of the four dice
		4 * switch (dice.find(x -> count(x) >= 4)) {
			case null: 0;
			case n: n;
		};
	var lStraightScore = // 30 points
		[1, 2, 3, 4, 5].foreach(dice.contains) ? 30 : 0;
	var bStraightScore = // 30 points
		[2, 3, 4, 5, 6].foreach(dice.contains) ? 30 : 0;

	return switch (category) {
		case "ones": 1 * count(1);
		case "twos": 2 * count(2);
		case "threes": 3 * count(3);
		case "fours": 4 * count(4);
		case "fives": 5 * count(5);
		case "sixes": 6 * count(6);
		case "yacht": yachtScore;
		case "full house": fullHouseScore;
		case "four of a kind": fourOfKindScore;
		case "little straight": lStraightScore;
		case "big straight": bStraightScore;
		case "choice": sum;
		case _: throw "invalid category";
	}
}
