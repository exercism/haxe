package;

class Bob {
  private static inline var WHATEVER = "Whatever.";
  private static inline var SURE     = "Sure.";
  private static inline var CHILL    = "Whoa, chill out!";
  private static inline var FINE     = "Fine. Be that way!";

  public static function hey(sentence : String) : String {
    var trimmed : String = StringTools.trim(sentence);

    if (isQuestion(trimmed)) { return SURE;  }
    if (isShouting(trimmed)) { return CHILL; }
    if (isSilence(trimmed )) { return FINE;  }
    return WHATEVER;
  }

  private static function isShouting(sentence : String) : Bool {
    return sentence.toUpperCase() == sentence
        && sentence.toLowerCase() != sentence;
  }

  private static function isQuestion(sentence : String) : Bool {
    return StringTools.endsWith(sentence, "?")
        && !isShouting(sentence);
  }

  private static function isSilence(sentence : String) : Bool {
    return sentence == "";
  }
}
