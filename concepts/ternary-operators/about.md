# About

Ternary operators allow `if` conditions to be defined in expressions rather than statement blocks. This echoes functional programming approaches and can often make code more expressive and less error-prone.

The ternary operator combines 3 expressions: a condition followed by an expression to be evaluated and returned if the condition is true (the `if` part, introduced by `?`) and an expression to be evaluated and returned if the condition is false (the `else` part, introduced by `:`).

```haxe
trace(true ? "Haxe" : "Not Haxe"); // Haxe
trace(1 == 2 ? "Something is wrong" : "That's obvious"); // That's obvious
```
