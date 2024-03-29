function append<T>(list1:Array<T>, list2:Array<T>):Array<T> {
	var accumulator = [];
	for (item in list1)
		accumulator.push(item);
	for (item in list2)
		accumulator.push(item);

	return accumulator;
}

function concat<T>(lists:Array<Array<T>>):Array<T> {
	var accumulator = [];
	for (list in lists)
		accumulator = append(accumulator, list);

	return accumulator;
}

function filter<T>(list:Array<T>, fun:T->Bool):Array<T> {
	return [
		for (item in list)
			if (fun(item)) item
	];
}

function length<T>(list:Array<T>):Int {
	var result = 0;
	var iterator = list.iterator();
	while (iterator.hasNext()) {
		result++;
		iterator.next();
	}

	return result;
}

function map<T, U>(list:Array<T>, fun:T->U):Array<U> {
	return [
		for (item in list)
			fun(item)
	];
}

function foldl<T, U>(list:Array<T>, initial:U, fun:(U, T) -> U):U {
	var accumulator = initial;
	for (item in list)
		accumulator = fun(accumulator, item);

	return accumulator;
}

function foldr<T, U>(list:Array<T>, initial:U, fun:(T, U) -> U):U {
	var accumulator = initial;
	for (item in reverse(list))
		accumulator = fun(item, accumulator);

	return accumulator;
}

function reverse<T>(list:Array<T>):Array<T> {
	var listLength = length(list);

	return [
		for (i in 0...listLength)
			list[listLength - i - 1]
	];
}
