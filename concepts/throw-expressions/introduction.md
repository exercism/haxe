# Introduction

`throw` **expressions** are an alternative to `throw` _statements_ and in particular can add to the power of ternary and other compound expressions.

```haxe
trace(true ? throw "This is an error" : "Everything is fine"); // ERROR: This is an error
```
