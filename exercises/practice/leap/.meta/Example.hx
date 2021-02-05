package;

class Leap {
    public static function isLeapYear(year: Int): Bool {
        return ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0);
    }
}
