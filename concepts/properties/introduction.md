# Introduction

A property in Haxe is a member of a class that provides access to data within that class. Callers can set or retrieve (get) the data. They comprise a set accessor and/or a get accessor.

Properties have access modifiers (public, private etc.) in the same way as other class members but the set accessor may have an access level independent of the retrieve (get) accessor and vice versa. A property doesn't have to have both accessors, it can have just one (either get or set).

Read access and write access are directly reflected in the syntax, as the following example shows:

```haxe
class Main {
  public var x(default, null):Int;
}
```

Both `default` and `null` are special **access identifiers**. The access identifiers set the behavior for when the field is read (first identifier) and for when the field is written (second identifer). The accepted values are:

- `default`: Allows normal field access if the field is public.
- `null`: Allows access only from within the defining class.
- `get/set`: Access is generated as a call to an accessor method (`get_x()`).
- `dynamic`: Same as `get/set` but the existance of an accessor method cannot be verified.
- `never`: Allows no access whatsoever.

Here is a full example:

```haxe
class Main {
  public var x(default, set):Int;

  public function set_x(x:Int):Int {
    return this.x = x + 2;
  }

  public function main() {
    trace(x); // null
    x = 2;
    trace(x); // 4
  }
}
```
