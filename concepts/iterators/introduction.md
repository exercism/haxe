# Introduction

Iterators in Haxe are used to iterate over a value using a `for` loop. There are two types of iterators:

- `Iterator` which iterates over a value.
- `Iterable` data which makes it possible to iterate over a data type.

Both of these concepts are represented by `Iterator<T>` and `Iterable<T>`:

```haxe
typedef Iterator<T> = {
  function hasNext():Bool;
  function next():T;
}

typedef Iterable<T> = {
  function iterator():Iterator<T>;
}
```

Any class that unifies with one of these types can be iterated over using a `for` loop. If a class defines the methods `hasNext` and `next` it is considered an iterator, else if it defines an `iterator` methods it's considered an iterable type.
