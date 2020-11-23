package;

using Lambda;

class BinarySearch {
    public static function find(array: Array<Int>, value: Int): Int {
        if (array.empty())
            throw "value not in array";

        var midIndex = Std.int(array.length / 2);
        var midItem = array[midIndex]; 

        if (midItem == value)
            // found
            return midIndex;
        if (value < midItem)
            // search lhs
            return find(array.slice(0, midIndex), value);
        else
            // search rhs, adding offset
            return find(array.slice(midIndex + 1), value) + midIndex + 1;
    } 
}
