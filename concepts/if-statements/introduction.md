# Introduction

Conditional expressions are used to execute code based on **if** a condition is **true** or **false**. These expressions are written as:

```haxe
if (condition) {
  expressions
};
```

The condition's output is of `Bool` type, so when the output is `true` the expressions are executed.

Sometimes, when the condition is actually `false`, we want another bit of code to be executed. That's where the `else` expression comes in. `else` executes expressions when the initial condition is `false`. But what if we want to check the condition for multiple possibilities? We then use `else if (condition)`. Here is a full example:

```haxe
var a = 10;

if (a == 2) {
  trace("a is 2");
} else if (a == 5) {
  trace("a is 5");
} else {
  trace("a is 10");
}

// a is 10
```
