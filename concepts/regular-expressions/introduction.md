# Introduction

Haxe has built-in support for regular expressions. They can be used to verify the format of a string, transform a string or extract some regular data from a given text.

To create a regular expression, type between `~/` and `/`:

```haxe
var r = ~/haxe/i;
```

A different way to do this is by using the `EReg()` instance:

```haxe
var r = new EReg("haxe", "i");
```

Here the `i` is a flag that makes the pattern case insensitive. There are other flags including:

- `g`: global replace.
- `m`: multiline matching

Between `~/` and `/`, you type the regular expression patterns. For example, you want to look for a string that contains letters from A to Z. Here we can use the range pattern `[A-Z]`. There are many expression patterns including:

- `.`: any character
- `*`: repeat zero or more
- `+`: repeat one or more
- `[A-Z0-9]`: character ranges
