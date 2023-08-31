# Introduction

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
