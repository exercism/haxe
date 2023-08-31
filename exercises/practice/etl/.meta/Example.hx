typedef LegacyData = Map<String, Array<String>>;
typedef NewData    = Map<String, Int>;

function transform(input: LegacyData): NewData {
	return [
		for (k => v in input)
			for (i in v)
				i.toLowerCase() => Std.parseInt(k)
	];
}