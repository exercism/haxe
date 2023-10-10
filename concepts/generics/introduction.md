# Introduction

A collection definition typically includes a place holder in angle brackets, often T by convention. Such a collection is referred to as a generic type. This allows the collection user to specify what type of items to store in the collection. In the above example code we are instantiating a list of strings.

A class or a function is made **generic** is by using the `@:generic` attribute. This causes the compiler to identify the class or function as generic:

```haxe
@:generic
class MyValue<T> {
  public var value:T;

  public function new(value:T) {
    this.value = value;
  }
}

var a = MyValue<String>("Hello");
trace(a.value); // Hello
```
