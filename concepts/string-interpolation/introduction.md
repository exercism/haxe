# Introduction

String interpolation is supported in Haxe by enclosing a string with single-quote (`'`) characters and using the dollar-sign (`$`) to trigger interpolation.

It is also possible to include whole expressions by using `${expr}`, where `expr` is any valid Haxe expression.

```haxe
var x = 10;
trace('They have $x apples, of which ${x - 4} are red.');
// They have 10 apples of which 6 are red.
```
