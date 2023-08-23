# About

In Haxe, a class hierarchy can be defined using _inheritance_, which allows a derived class (`Car`) to inherit the behavior and data of its parent class (`Vehicle`).

In the parent class, you can:

- Methods that can be overriden
- Abstract methods that must be implemented by the derived classes

```haxe
abstract class Vehicle {
  public function new() {}

  // Can be overridden
  public function drive() {
    // ...
  }

  // Must be implemented
  public abstract function getSpeed():Int;
}

class Car extends Vehicle {
  public function new() {
    super(); // Runs the parent class' constructor
  }

  public override function drive() {
    // ...
  }

  public function getSpeed():Int {
    // ...
  }
}
```

If the parent class has a constructor, we use `super()` to call it:

```haxe
abstract class Vehicle {
  var wheels:Int;

  public function new(wheels:Int) {
    this.wheels = wheels
  }
}

class Car extends Vehicle {
  var color:String;

  public function new(wheels:Int, color:String) {
    super(wheels);
    this.color = color;
  }
}

```
