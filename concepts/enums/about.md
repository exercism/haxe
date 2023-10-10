# About

Haxe provides enum types, which are used to describe a data structure:

```haxe
enum Color {
  Red;
  Green;
  Blue;
  Rgb(r:Int, g:Int, b:Int);
}
```

## Flag Enums

Normally, in Haxe, an `enum` member can only refer to exactly one of the constants defined in the `enum`. However, sometimes we need a member to refer to two or constants. To do so, we use the [`haxe.EnumFlags`][enumflags] package:

```haxe
import haxe.EnumFlags;

enum Phone {
  Call;
  Text;
}

public function main() {
  var flags = new EnumFlags<Phone>();
  flags.set(Call);
  flags.set(Text);

  if (flags.has(Call) && flags.has(Test)) {
    trace("Phone has both Call and Text active");
  }
}
```

[enumflags]: https://api.haxe.org/haxe/EnumFlags.html
