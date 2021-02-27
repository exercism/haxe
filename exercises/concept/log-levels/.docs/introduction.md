# Introduction

A `String` in Haxe is an object that represents immutable text as a sequence of Unicode characters (letters, digits, punctuation, etc.). Double quotes are used to define a `String` instance:

```haxe
var fruit:String = "Apple";
```

Strings are manipulated by calling the string's methods. Once a string has been constructed, its value can never change. Any methods that appear to modify a string will actually return a new string.

Multiple strings can be concatenated (added) together. The simplest way to achieve this is by using the `+` operator.

```haxe
var name:String = "Jane";
trace("Hello " + name + "!");
// => "Hello Jane!"
```

For any string formatting more complex than simple concatenation, string interpolation is preferred. To use interpolation in a string, enclose it with single-quote characters (`'`). Then you can use the dollar sign (`$`) to trigger interpolation:

```haxe
var name:String = "Jane";
trace('Hello $name!');
// => "Hello Jane!"
```
