# Introduction

The rest operator `...` is used to control arguments of an indefinite number of elements. It is put as the last argument of a function:

```haxe
function f(...nums:Int) {
  for (num in nums) {
    trace(num);
  }
}

f(1, 2, 3, 4, 5); // Output is 1 2 3 4 5
```
