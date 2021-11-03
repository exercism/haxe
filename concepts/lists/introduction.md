# Introduction

A `List` is very similar to an `Array`. However, there are major differences that you don't wanna skip:

1. A list cannot be indexed using square brackets, i.e. `[0]`.
2. A list cannot be initialized.
3. There are no list comprehensions.
4. A list can freely modify elemts while iterating over them.

`List` is a member of the `haxe.ds` package, so everytime you want to use lists, you need to import its package:

```haxe
import haxe.ds.List;

class Main {
  static function main() {
    var myList = List<Int>();

    for (i in 0...5) {
      myList.add(i);
    }

    trace(myList); // {0, 1, 2, 3, 4}
  }
}
```
