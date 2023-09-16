typedef Point =
{
	x:Float,
	y:Float
}

function score(point:Point):Int
{
	var distanceToCenter = Math.sqrt(Math.pow(point.x, 2) + Math.pow(point.y, 2));

	// landed in inner circle
	if (distanceToCenter <= 1)
		return 10;
	// landed in middle circle
	if (distanceToCenter <= 5)
		return 5;
	// landed in outer circle
	if (distanceToCenter > 5 && distanceToCenter <= 10)
		return 1;
	// landed outside target
	return 0;
}
