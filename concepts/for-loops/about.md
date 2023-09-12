# About

## Array iteration

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

## Range iteration

You can iterate over numbers by using the range operator. The operator takes two `Int` operands and is written as `min...max`. The `min` is inclusive and the `max` is exclusive (`min` <= i AND `max` > i)

```haxe
for (i in 0...10) {
  trace(i); // from 0 to 9
}
```

## Key-value iteration

It is possible to iterate over collections of key-value pairs. The only difference in syntax is that instead of a single variable, a key variable identifier is used, followed by `=>`, followed by the value variable identifier:

```haxe
var map = [1 => 101, 2 => 202, 3 => 303];

for (k => v in map) {
  trace(key, value);
}

// 1, 101
// 2, 202
// 3, 303
```
