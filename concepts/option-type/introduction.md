# Introduction

An `Option` is an enum that is used to check the validity of function returns. It is defined as so:

```haxe
enum Option<T> {
  Some(v:T);
  None;
}
```

It is a part of the `haxe.ds` package:

```haxe
import haxe.ds.Option;

class Main {
  static public function main() {
    var result = trySomething();

    switch (result) {
      case None:
        trace("Nothing");
      case Some(s):
        trace("Got: " + s);
    }
  }

  static public function trySomething():Option<String> {
    if (Math.random() > 0.5) {
      return None;
    } else {
      return Some("Success");
    }
  }
}
```
