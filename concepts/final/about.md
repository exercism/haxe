# About

Variables that are declared with the keyword `final` instead of `var` can only be assigned a value once.

```haxe
final a = "hello";
var b = "world";
trace(a, b); // hello, world
b = "haxe";
trace(a, b); // hello, haxe

// The following line would cause a compilation error:
// a = "bye";
```

It is important to note that `final` may not have the intended effect with types that are not immutable, such as arrays or objects:

```haxe
final a = [0, 1, 2];
trace(a); // [0,1,2]

// this would cause a compilation error:
// a = [0, 1, 2, 3];

// but the following line works:
a.push(3);
trace(a); // [0,1,2,3]
```
