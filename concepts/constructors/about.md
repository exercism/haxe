# Introduction

Creating an instance of a class is done by calling its [_constructor_][constructor] through the `new` operator. A constructor is a special method within a class whose goal is to initialize the class. In Haxe, the constructor method has the name of `new()`.

```haxe
class Library {
  private var books:Int;

  public function new() {
    this.books = 10; // Initialize the books field
  }
}

var library = new Library(); // This calls the constructor
```

Just like normal methods, constructors can have parameters. These parameters are (usually) stored in private fields and accessed later.

```haxe
class Building {
  private var numberOfStories:Int;
  private var totalHeight: Float;

  public function new(numberOfStories:Int, storyHeight:Float) {
    this.numberOfStories = numberOfStories;
    this.totalHeight = storyHeight * numberOfStories;
  }
}

var largeBuilding = new Building(55, 6.2);
```

You **cannot** create a new instance of a class if it doesn't have a constructor. Thus, using an empty constructor is the only way.

```haxe
class Car {
  public var weight:Int = 1000;

  public function new() {}
}

var myCar = new Car();
```

[constructor]: https://haxe.org/manual/types-class-constructor.html