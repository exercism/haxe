# Introduction

Array comprehension in Haxe combines array decelartion and loops to allow array initialization. The keywords `for` and `while` are used:

```haxe
function main() {
    var a = [for (i in 0...10) i];
    trace(a); // [0,1,2,3,4,5,6,7,8,9]

    var i = 0;
    var b = [while(i < 10) i++];
    trace(b); // [0,1,2,3,4,5,6,7,8,9]
}
```

The loop expression can be anything, including conditions and nested loops, so the following works as expected:

```haxe
function main() {
    var a = [
        for (i in 0...10) 
            for (j in 2...4)
                i + "." + j
    ];
    trace(a); // [2,3,3,4,4,5,5,6,6,7]
}
```
