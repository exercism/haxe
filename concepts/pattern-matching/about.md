# About

Pattern matching is the process of branching depending on a value matching given, possibly deep patterns. In Haxe, **pattern matching** is done using `switch` expression and individual `case` expressions.

Consider this data structre:

```haxe
enum Tree<T> {
  Leaf(v:T);
  Node(l:Tree<T>, r:Tree<T>);
}
```

- Patterns will always be matched from top to bottom.
- The topmost pattern that matches the input value has its expression executed.
- A `_` pattern matches anything, so `case _:` is equal to `default:`

## Enum matching

Enums can be matched by their constructor naturaly:

```haxe
var myTree = Node(Leaf("foo"), Node(Leaf("bar"), Leaf("foobar")));

var match = switch (myTree) {
  // Matches any Leaf
  case Leaf(_):
    "0";

  // Matches any Node that has r = Leaf
  case Node(_, Leaf(_)):
    "1";

  // Matches any Node that has
  // r = another Node which has
  // l = Leaf("bar")
  case Node(_, Node(Leaf("bar", _))):
    "2";

  // Matches anything
  case _:
    "3";
}

trace(match); // 2
```
