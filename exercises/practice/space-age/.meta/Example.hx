package;

class SpaceAge {
    private static inline var earthOrbitInSeconds = 31557600;
    private static final earthYearToPlanetPeriod = [
        "Earth"   => 1,
        "Mercury" => 0.2408467,
        "Venus"   => 0.61519726,
        "Mars"    => 1.8808158,
        "Jupiter" => 11.862615,
        "Saturn"  => 29.447498,
        "Uranus"  => 84.016846,
        "Neptune" => 164.79132
    ];

     public static function age(seconds: Int, planet: String): Float {
        if (!earthYearToPlanetPeriod.exists(planet)) {
            throw "not a planet";
        }

        var periodInEarthYears = earthYearToPlanetPeriod[planet]; 
        return round(seconds / (earthOrbitInSeconds * periodInEarthYears), 2);
    } 

    /**
        Uses Math.round to fix a floating point number to a set precision.
        Taken from Franco Ponticelli's THX library: 
        https://github.com/fponticelli/thx/blob/master/src/Floats.hx#L206
    **/
    public static function round(number:Float, ?precision=2): Float
    {
        number *= Math.pow(10, precision);
        return Math.round(number) / Math.pow(10, precision);
    }
}
