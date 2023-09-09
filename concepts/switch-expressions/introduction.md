# Introduction

Besides the `if` statement, there is also a `switch` statement to conditionally execute logic. It is used when a single variable needs to be compared to multiple variants. For some variable x, the switch statement in Haxe has the following syntax.

```haxe
var a = 2;

switch (a) {
  case 0:
    trace("a is 0");
  case 1:
    trace("a is 1");
  case 2:
    trace("a is 2");
  default:
    trace("a is something else");
}

// a is 2
```

The `default` case executes when no other cases match.
