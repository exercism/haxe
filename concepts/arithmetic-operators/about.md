# About

## Arithmetic operators

Haxe has 5 operators to perform basic arithmetic operations on numbers.

- `+`: The addition operator is used to find the sum of numbers.
  
  ```haxe
  1 + 1; // 2
  10.2 + 4.4; // 14.6
  ```
  
- `-`: The subtraction operator is used to find the difference between numbers.
  
  ```haxe
  5 - 2; // 3
  7.4 - 1.2; // 1.5
  ```
  
- `*`: The multiplication operator is used to find the product of numbers.
  
  ```haxe
  2 * 8; // 16
  10 * 4; // 40
  ```
  
- `/`: The division operator is used to divide numbers.
  
  ```haxe
  15 / 3; // 5
  10 / 3; // 3.333333334
  ```
  
- `%`: The modulo operator is used to find the remainder of a division.
  
  ```haxe
  40 % 4; // 0
  11 % 4; // 3
  -11 % 4; // -3
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

[precedence]: https://haxe.org/manual/expression-operators-precedence.html