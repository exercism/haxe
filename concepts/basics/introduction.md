# Introduction

Haxe is a strongly typed, but the typing system can be subverted where required. Assigning a value to a name is referred to as defining a variable. A variable can be defined either by explicitly specifying its type, or by letting the Haxe compiler infer the type. Therefore, the following two variable definitions are equal:

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

A function that's inside a class is called a _method_. Methods can have zero or more parameters. All parameters must be explicitly typed. Just like the parameters, the return type of a method can't be inferred and must be typed. Values are returned from methods using the `return` keyword:

```haxe
function add(x:Int, y:Int):Int {
  return x + y;
}
```

Invoking a method is done by specifying its class and method name and passing arguments:

```haxe
var sum = add(1, 2) // sum = 3
```

Scope in Haxe is defined between the `{` and `}` characters.

Haxe supports two types of comments. Single line are preceded by `//` and multiline comments are inserted between `/*` and `*/`.
