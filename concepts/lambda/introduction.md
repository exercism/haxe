# Introduction

The Lambda class is a collection of functional methods in order to use functional-style programming with Haxe. It allows us to operate on an entire Iterable at once. This is often preferable to looping routines since it is less error-prone and easier to read. For convenience, the Array and List class contains some of the frequently used methods from the Lambda class.

Some of the `Lambda` class functions include:

- `Lambda.array`, `Lambda.list` Convert Iterable to Array or List. It always returns a new instance.
- `Lambda.count` Count the number of elements. If the Iterable is a Array or List it is faster to use its length property.
- `Lambda.has` Determine if the specified element is in the Iterable.
- `Lambda.indexOf` Find out the index of the specified element.
- `Lambda.find` Find first element of given search function.
- `Lambda.concat` Merge two Iterables, returning a new List.
- `Lambda.filter` Find the elements that satisfy a criteria, returning a new List.

An example demonstrating som functions:

```haxe
using Lambda;

class Main {
  static function main() {
    var words = ["boat", "dog", "phone", "cat", "food"];

    var isThreeLetters = function(word) return word.length == 3;

    trace(words.filter(isThreeLetters)); // [dog,cat]
  }
}
```
