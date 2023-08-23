# About

A `Map` is used to store pairs of **key** and **value**. `Maps` are initialized just like an array, but use the map literal operator `=>`. They can also have their key-value types defined explicitly, or the types can be inferred. Keys must be unique, or else an error is thrown.

```haxe
var map1:Map<Int, String> = [1 => "one", 2 => "two", 3 => "three"];

var map2 = ["one" => 1, "two" => 2, "three" => 3];

var map3 = [1 => "cat", 1 => "dog"]; // Error: Duplicate Key

var map4 = ["h" => "Hello", "b" => "Bye"];
trace(map4["h"]); // Hello
```

A `Map` can be iterated using a `for` loop. You can either iterate over the values or the keys:

```haxe
for (value in map) {
  // ...
}

for (key in map.keys()) {
  // ...
}
```

Under the hood, a `Map` is an abstract type. At compile time, it gets converted to one of several specialized types depending on the key type:

- `String`: `haxe.ds.StringMap`
- `Int`: `haxe.ds.IntMap`
- `EnumValue`: `haxe.ds.EnumValueMap`
- `{}`: `haxe.ds.ObjectMap`

The `Map` type does not exist at runtime and has been replaced with one of the above objects.
