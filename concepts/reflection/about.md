# About

Haxe supports runtime reflection of types and fields. In order to use reflection correctly, it is necessary to understand what kind of operations are supported and what is not. Given the dynamic nature of reflection, this can not always be determined at compile-time.

The reflection API consists of two classes:

- `Reflect`: A lightweight API which work best on anonymous structures, with limited support for classes.
- `Type`: A more robust API for working with classes and enums.

The available methods are detailed in the API for [Reflect][reflect] and [Type][type].

For the following example, we are using the JavaScript target:

```haxe
class Main {
  public static function main() {
    trace(Type.resolveClass("Main"));
  }
}

// This outputs
// class Test { static main() { console.log("Test.hx:3:",$hxClasses["Test"]); } }
```

[reflect]: https://api.haxe.org/Reflect.html
[type]: https://api.haxe.org/Type.html
