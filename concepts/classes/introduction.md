# Introduction

In Haxe, a `class` is the primary data structure, which encapsulates data (fields) and behavior (methods). The fields and methods are also called members of a class.

Access to the members can be restricted using access modifiers, which are:

- `public`: the member can be accessed from anywhere.
- `private`: the member can only be accessed by the same class.

Classes can be thought of as templates for creating instances. To create an instance, simply use the `new` keyword:

```haxe
class Car {
  public function new() {}
}

var myCar = new Car();
var yourCar = new Car();
```

To define a field, use an access modifier followed by the variable name and type:

```haxe
class Car {
  public var weight:Int; // Accessable by anyone

  private var color:String; // Accessable only within this class
}
```

You can also set an initial value when defining a field. If a field does not specify an initial value, it will take the value of `null`. You can access a field using the dot notation:

```haxe
class Car {
  public var weight:Int = 2500; // Weight will be set to 2500
  public var year:Int; // year will be null

  public function new() {}
}

var newCar = new Car();
newCar.weight; // 2500
newCar.year; // null

// Update value of field
newCar.year = 2020;
```
