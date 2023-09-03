# Introduction

A method parameter can be made optional by assigning it a default value. When calling a method with optional parameters, the caller is not required to pass a value for them. If no value is passed for an optional parameter, its default value will be used.

Optional parameters must be at the end of the parameter list; they cannot be followed by non-optional parameters.

```haxe
class Card {
  static function newYear(year = 2021):String {
    return "Happy " + year;
  }
}

Card.newYear(); // Happy 2020
Card.newYear(1990); // Happy 1990
```

The optional parameter can be set to `null` by using the `?` operator before the variable name:

```haxe
function newYear(?year:Int) {
  if (year != null)
    return "It's " + year;
  return "Year is null";
}

newYear(); // Year is null
```
