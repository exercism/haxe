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
        return seconds / (earthOrbitInSeconds * periodInEarthYears);
    } 
}
