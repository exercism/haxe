package;

class Bob {
  public static function hey(sentence: String): String {
    final SURE     = "Sure.";
    final CHILL    = "Whoa, chill out!";
    final CALM     = "Calm down, I know what I'm doing!"; 
    final FINE     = "Fine. Be that way!";
    final WHATEVER = "Whatever.";

    if (isQuestion(sentence) && 
        isShouting(sentence))     { return CALM;  }
    if (isQuestion(sentence))     { return SURE;  }
    if (isShouting(sentence))     { return CHILL; }
    if (isSilence(sentence))      { return FINE;  }
    return WHATEVER;
  }

  private static function isShouting(sentence : String) : Bool {
    return sentence.toUpperCase() == sentence
        && sentence.toLowerCase() != sentence;
  }

  private static function isQuestion(sentence : String) : Bool {
    return StringTools.endsWith(StringTools.trim(sentence), "?");
  }

  private static function isSilence(sentence : String) : Bool {
    return StringTools.trim(sentence) == "";
  }
}
