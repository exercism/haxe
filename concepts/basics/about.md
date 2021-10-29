# Introduction

Haxe is a strongly typed, but the typing system can be subverted where required. Assigning a value to a name is referred to as defining a variable. A variable can be defined either by explicitly specifying its type, or by letting the Haxe compiler infer the type using the [`var` keyword](var). Therefore, the following two variable definitions are equal:

```haxe
var explicitVariable:Int = 10; // Explicitly typed
var implicitVariable = 10; // Implicit typed
```

Updating a variable can be done using the `=` operator:

```haxe
var number = 0; // Initial value
number = 1; // Updated value
```

The compiler will throw an error when trying to assign a value that's type is different from the variable:

```haxe
var number = 1; // Variable number is of integer type
number = "Hello" // Error trying to assign a string to an integer variable
```

In Haxe, code is usually written inside a _function_, also called [_method_](method). These functions can take parameters (arguments), and return values using the `return` keyword. Functions are invoked using `()` syntax. All functions must have a return type.

```haxe
function add(x:Int, y:Int):Int {
  return x + y;
}
```

Scope in Haxe is defined between the `{` and `}` characters.

Haxe supports two types of comments. Single line are preceded by `//` and multiline comments are inserted between `/*` and `*/`.

[var]: https://haxe.org/manual/expression-var.html
[oop]: https://en.wikipedia.org/wiki/Object-oriented_programming
[method]: https://haxe.org/manual/class-field-method.html
