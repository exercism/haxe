package;

class ResistorColorTrio {
    private static final allColors = [
		"black", "brown",    "red", "orange", "yellow",
		"green",  "blue", "violet",   "grey",  "white"
    ];

    public static function label(colors: Array<String>): String { 
        var val1  = allColors.indexOf(colors[0]);
        var val2  = allColors.indexOf(colors[1]);
        var exp   = allColors.indexOf(colors[2]);
        var value = ((val1 * 10) + val2) * Math.pow(10, exp);

        var unit = "";
        var label = Std.string(value);

        if (label.length < 4)
            unit = 'ohms';
        else if (label.length < 7) {
            label = Std.string(value/1000);
            unit = 'kiloohms';
        }
        else if (label.length <= 8) {
            label = Std.string(value/1000000);
            unit = 'megaohms';
        }
        else if (label.length >= 9) {
            label = Std.string(value/1000000000);
            unit = 'gigaohms';
        }
        return (value < 1000) ? '$value $unit' : '$label $unit';
    }
} 
