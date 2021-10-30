# Introduction

## Numbers

Haxe has two number types - integers and floats:

- `Int`: Represents an integral number.
  
- `Float`: Represents a double-precision 64-bit floating point number.
  

```haxe
var integer:Int = 10;
var floating:Float = 5.4;
```

While every `Int` can be used where a `Float` is expected (that is, `Int` **is assignable to** or **unifies with** `Float`), the reverse is not true: Assigning a `Float` to an `Int` might cause loss of precision and is therefore not allowed implicitly.

## Arithmetic operators

Haxe has 5 operators to perform basic arithmetic operations on numbers.

- `+`: The addition operator is used to find the sum of numbers.
  
- `-`: The subtraction operator is used to find the difference between numbers.
  
- `*`: The multiplication operator is used to find the product of numbers.
  
- `/`: The division operator is used to divide numbers.
  
- `%`: The modulo operator is used to find the remainder of a division
  

```haxe
var sum = 1 + 10; // sum = 11
var division = 15 / 2; // division = 7.5
var modulo = 3 % 2; // modulo = 1
```

## Order of operations

In a single line, arithmetic operations are performed in a specific order (precedence) shown [here][precedence]. First of all, everything that's inside parentheses is performed first, then the **module** operations are performed, followed by the **multiplications** and the **divisions**, and lastly **additions** and **subtractions**.

```haxe
var result = 3 + 2 * 4 / (3 - 1);
// 3 + 2 * 4 / 2
// 3 + 8 / 2
// 3 + 4
// 7
```

## Shorthand Assignment Operations

Shorthand assignment operators are a faster way for performing simple arithmetic operations on a variable and assigning the new value to that variable at the same time. For example, consider `x` and `y` two variables, then `x += y` is the same as `x = x + y`. All 5 operations can be used in a similar style.

```haxe
var sum = 5;
sum += 5; // sum is now 10

var product = 2;
product *= 2; // product is now 4
```

## Rounding numbers

To round numbers, we can use [`Math`][math] fucntions. To round a number, simply use `Math.round(number)`. To round down, use `Math.floor(number)` and to round up, use `Math.ceil(number)`:

```haxe
Math.round(3.4); // 3
Math.floor(5.9); // 5
Math.ceil(1.1); // 2
```

[precedence]: https://haxe.org/manual/expression-operators-precedence.html
[math]: https://api.haxe.org/Math.html