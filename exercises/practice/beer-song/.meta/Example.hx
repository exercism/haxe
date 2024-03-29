var specialCases = [
	[
		"No more bottles of beer on the wall, no more bottles of beer.",
		"Go to the store and buy some more, 99 bottles of beer on the wall."
	],
	[
		"1 bottle of beer on the wall, 1 bottle of beer.",
		"Take it down and pass it around, no more bottles of beer on the wall."
	],
	[
		"2 bottles of beer on the wall, 2 bottles of beer.",
		"Take one down and pass it around, 1 bottle of beer on the wall."
	]
];
function recite(startBottles:Int,takeDown:Int):Array<String> {
	return reciteRec(takeDown, startBottles);
}

function reciteRec(count:Int, currBottle:Int) {
	return if (count == 0) []; 
	else if (currBottle < 3)
		specialCases[currBottle].concat(recite(--currBottle, --count));
	else
		verse(currBottle).concat(recite(--currBottle, --count));
}

function verse(n:Int):Array<String> {
	return [
		'$n bottles of beer on the wall, $n bottles of beer.',
		'Take one down and pass it around, ${n - 1} bottles of beer on the wall.'
	];
}
