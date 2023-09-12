# About

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

Any class that unifies with one of these types can be iterated over using a `for` loop. If a class defines the methods `hasNext` and `next` it is considered an iterator, else if it defines an `iterator` methods it's considered an iterable type:

```haxe
class MyStringIterator {
  var str:String;
  var i:Int;

  public function new(str:String) {
    this.str = str;
    i = 0;
  }

  public function hasNext():Bool {
    return i < str.length;
  }

  public function next():String {
    return str.charAt(i++);
  }
}
```

In the above example, the class `MyStringIterator` is considered an iterator since it implements both `hasNext` and `next` methods, making it compatible with `Iterator<String>`.

```haxe
class MyArrayWrap<T> {
  var arr:Array<T>;

  public function new(a:Array<T>) {
    this.a = a;
  }

  public function iterator() {
    return a.iterator();
  }
}
```

Here, class `MyArrayWrap` is considered an iterable data type since it's compatible with `Iterable<Array<T>>`.
