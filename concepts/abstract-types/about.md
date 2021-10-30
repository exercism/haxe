# About

In Haxe, an abstract type is a type which is a different type at run-time. It is a compile-time feature which defines types "over" concrete types in order to modify or augment their behavior:

```haxe
abstract AbstractInt(Int) {
    inline public function new(i:Int) {
        this = i;
    }
}
```

Here we are declaring the `AbstractInt` type using the `abstract` keyword. Its syntax is very similar that of `class`. And just like classes, abstarct types can have methods. They can also be instantiated and used just like classes:

```haxe
class Main {
    static public function main() {
        var a = new AbstractInt(12);
        trace(a); // 12
    }
}
```

As mentioned above, abstracts are a compile-time feature. Compiling the above example to JavaScript gives the following:

```javascript
var a = 12;
console.log(a)
```

The abstract type `AbstractInt` completely disappears from the output. That's because the constructor of `Abstract` is [inlined][inline], which we'll see later.

[inline]: https://haxe.org/manual/class-field-inline.html