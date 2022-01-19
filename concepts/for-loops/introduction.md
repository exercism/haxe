# Introduction

A `for` loop allow to iterate over an array and repeat the code for each element:

```haxe
var fruitList = ["apple", "banana", "pear"];

for (fruit in fruitList) {
  trace(fruit);
}

// apple
// banana
// pear
```

In the above example, `fruit` is the variable that holds the value of an individual element of the array `fruitList`. The compiler ensures that `fruitList` can be iterated over, else it will stop the execution.

You can iterate over numbers by using the range operator. The operator takes two `Int` operands and is written as `min...max`:

```haxe
for (i in 0...10) {
  trace(i); // from 0 to 9
}
```
