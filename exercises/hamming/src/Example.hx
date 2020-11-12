package;

import haxe.Exception;
using Lambda;

class Hamming {
    public static function distance(strand1: String, strand2: String): Int {
        if (strand1.length != strand2.length) {
            throw new Exception("strand lengths must be equal");
        }

        return [
            for (i in 0...strand1.length)
            strand1.charAt(i) != strand2.charAt(i)
        ].count(p -> p);
    }
}