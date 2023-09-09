# About

A template is a string or a file that is used to produce any kind of string output depending on the input.

```haxe
var sample = "My name is ::name::";
var template = new haxe.Template(sample);
var myName = {name: "Joe"};
var output = template.execute(myName);

trace(output); // My name is Joe
```

Among other things, you can also use conditions to check inside the templates:

```haxe
var sample = "::if isAwake:: I'm awake ::else:: Zzzzz ::end::";
var template = new haxe.Template(sample);
var awake = {isAwake: false};
var output = template.execute(awake);

trace(output); // Zzzzz
```
