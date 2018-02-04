package;

class Leap {
  public static function isLeap(Year : Int) : Bool {
    return ( (Year % 4 === 0 && Year % 100 !== 0) || Year % 400 === 0 );
  }
}