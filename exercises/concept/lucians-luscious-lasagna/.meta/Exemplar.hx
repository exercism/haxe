class Lasagna {
  static final EXPECTED_MINUTES_IN_OVEN = 40;

  public static function expectedMinutesInOven():Int {
      return EXPECTED_MINUTES_IN_OVEN;
  }

  public static function remainingMinutesInOven(minutes:Int):Int {
      return expectedMinutesInOven() - minutes;
  }

  public static function preparationTimeInMinutes(layers:Int):Int {
      return layers * 2;
  }

  public static function totalTimeInMinutes(layers:Int, minutesInOven:Int) {
      return preparationTimeInMinutes(layers) + minutesInOven;
  }
}
