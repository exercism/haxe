Booleans in Haxe are represented by the `Bool` type, whose values can be either `true` or `false`.

Haxe supports three [boolean operators](https://haxe.org/manual/expression-operators.html): `!` (unary NOT), `&&` (binary AND), and `||` (binary OR)

Compound boolean expressions (`&&` and `||`) use *short-circuit* evaluation, where expressions are evaluated from left to right but only as far as necessary. This is significant in cases such as the following:

```haxe
if (object != null && object.field == x) {}
```

The first boolean check ensures that `object.field` is only accessed if `object` is not `null`, guarding against a runtime error.

The three boolean operators have different [precedence](https://haxe.org/manual/expression-operators-precedence.html) and are evaluated in this order: `!` -> `&&` -> `||`.

Enclosing expressions in parantheses `()` allows overriding these precedence rules, as the parantheses have a higher precedence.

```haxe
!true && false   // => false
!(true && false) // => true
```