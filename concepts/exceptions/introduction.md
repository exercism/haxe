# Introduction

In Haxe, exceptions are a safe way to handle errors that occur when running the code. All exceptions should contain a message describing the error. We can _throw_ exceptions using the `throw` keyword:

```haxe
public function main(num:Int) {
  if (num < 10) {
    throw "Argument num cannot be greater than 10";
  }
  // ...
}
```

When an exception is thrown, the code looks for a piece that's assigned to handle the error. If it doesn't find one, it will display the error message while also stopping the execution of the program.

To handle excpetions in Haxe, we use the `try-catch` block. This block statement consists of one `try` block and one or more `catch` blocks. The `try` block _tries_ to execute a piece of code, while the `catch` block waits in case there's an exception thrown to _catch_ it, so that the execution is not stopped. When the `catch` blocks catches an excpetion, it also executes everything within the block:

```haxe
try {
  if (num < 10) {
    throw "Argument num cannot be greater than 10";
  }
} catch (e) {
  // All exceptions will be caught here
  trace(e.message); // Argument num cannot be greater than 10
}
```

The `catch` block argument's type should be omitted.
