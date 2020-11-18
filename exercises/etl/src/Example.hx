package;

typedef LegacyData = Map<String, Array<String>>;
typedef NewData    = Map<String, Int>;

class ETL {
	public static function transform(input: LegacyData): NewData {
		var result: NewData = [];
		for (k => v in input)
			for (i in v)
				result.set(i.toLowerCase(), Std.parseInt(k));

		return result;
	}
}
