# Introduction

Haxe has two number types - integers and floats:

- `Int`: Represents an integral number.
- `Float`: Represents a double-precision 64-bit floating point number.

```haxe
var integer:Int = 10;
var floating:Float = 5.4;
```

While every `Int` can be used where a `Float` is expected (that is, `Int` **is assignable to** or **unifies with** `Float`), the reverse is not true: Assigning a `Float` to an `Int` might cause loss of precision and is therefore not allowed implicitly.
