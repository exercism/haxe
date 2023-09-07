# Introduction

In Haxe, an **array** is a collection of elements (usually) of the same type. There are three ways to create an array in Haxe; either by constructor or by a decleration syntax. In Haxe, the first element of an array has an index of zero:

```haxe
var a = [1, 2, 3];
trace(a); // [1,2,3]

// Here the second element is called by index
trace(a[1]); // 2

// The actual first element's index is 0
trace(a[0]); // 1
```

To create an array using a constructor, you need to pass the type of the elements that are going to be included in the array:

```haxe
var a:Array<Int> = [0, 1, 2, 3];
a[1] = "Hello"; // Error: the array a takes integers only
```

If we want an array to contain multiple types of elements, we add the `Dynamic` type to the type indicator:

```haxe
var a:Array<Dynamic> = [10, "Bob", true]
```
