package;

using StringTools;

class CryptoSquare {
    public static function ciphertext(plaintext: String): String {
        return encode(normalize(plaintext));
    } 

    private static function normalize(str: String): String {
        // downcase and remove spaces + punctuation
        return ~/[^a-z1-9]/gi.replace(str.toLowerCase(), "");
    }

    private static function encode(str: String): String {
        // convert to rectangle (row[])
        var recSize = getRecSize(str.length);
        var numRows = recSize[0];
        var numCols = recSize[1];
        var rows = [];
        for (i in 0...numRows) 
            rows.push(str.substr(i * numCols, numCols));

        // encode by reading down columns, left to right
        var encoded = new StringBuf();
        for (i in 0...numCols) {
            var chunk = "";
            for (j in 0...numRows) {
                var char = rows[j].charAt(i);
                // pad short chunks with spaces
                char = char == "" ? " " : char;
                chunk += char;
            }
            // separate chunks with space except last one
            var sep = i == numCols - 1 ? "" : " ";
            encoded.add(chunk + sep);
        }

        return encoded.toString();
    }

    // return [nRows, nCols] where c >= r and c - r <= 1
    private static function getRecSize(count: Int): Array<Int> {
        var square = Math.ceil(Math.sqrt(count));

        return if ((square - 1) * square < count) 
            [square, square];
        else
            [square - 1, square];
    }
}
