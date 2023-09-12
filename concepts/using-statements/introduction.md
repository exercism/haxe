# Introduction

A static extension allows pseudo-extending existing types without modifying their source. This is achieved by using the `using` statement. Static extensions can be a powerful tool which allows augmenting types without actually changing them.

```haxe
using Main.IntExtender;

class Main {
  public static function main() {
    trace(2.triple()); // 6
  }
}

class IntExtender {
  public static function triple(i:Int):Int {
    return i * 3;
  }
}
```
