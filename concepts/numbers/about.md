# About

Haxe has two number types - integers and floats:

- `Int`: Represents an integral number.
- `Float`: Represents a double-precision 64-bit floating point number.

```haxe
var integer:Int = 10;
var floating:Float = 5.4;
```

While every `Int` can be used where a `Float` is expected (that is, `Int` **is assignable to** or **unifies with** `Float`), the reverse is not true: Assigning a `Float` to an `Int` might cause loss of precision and is therefore not allowed implicitly.

## Comparison

Numbers are equal if they have the same value.

```haxe
1 == 1; // true

1.2 == 1.2; // true

1 == 1.0; // true

0.2 + 0.1 == 0.3 // false
```

For the last case, see [0.30000000000000004.com][0.30000000000000004.com] for a brief explanation.

[0.30000000000000004.com]: https://0.30000000000000004.com/
