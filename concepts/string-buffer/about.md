# About

A String buffer is an efficient way to build a big string by appending small elements together. Unlike String, an instance of StringBuf is not immutable in the sense that it can be passed as argument to functions which modify it by appending more values.

```haxe
var a = new StringBuf();
a.add("Hello");
trace(a.toString()); // Hello
a.add("Haxe!");
trace(a.toString()); // HelloHaxe
```
