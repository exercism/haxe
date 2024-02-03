function eggCount(num:Int):Int {
	var count = 0;

	while (num != 0) {
		if (num % 2 != 0) {
			count += 1;
		}

		num = Std.int(num / 2);
	}

	return count;
}
