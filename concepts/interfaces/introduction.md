# Introduction

An interface can be understood as the signature of a class because it describes the public fields of a class. A class _implements_ an `interface` with the `implments` keyword.

Its syntax is very similar to that of a class except that the methods appear as signatures without bodies:

```haxe
interface Language {
  private var languageName:String;

  public function speak():String;
}

class FrenchSpeaker implements Language {
  var languageName = "French";

  public function speak():String {
    return "Bonjour!";
  }
}
```

Fields that are implemented from an interface **must** always use the same visibility modifier. For example, if variable `a` is `public` in an interface, its implementation must also be `public`.
