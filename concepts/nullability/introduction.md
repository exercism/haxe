# Introduction

The `null` value is used to denote the _absence_ of a value. A **nullable** type is a type that allows a variable to take the `null` value. To make any type nullable, we wrap it with `Null<T>`:

```haxe
var a:Int = null; // Error
var b:Null<Int> = null; // Allowed
```

To check if a value is currently `null`, simply use an `if` expression:

```haxe
var a:Null<Int> = 10;

if (a != null) {
  trace("a is not null"); // a is not null
}
```
