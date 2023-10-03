# Tests

## Running Tests
The Haxe track relies on the testing framework [Buddy](https://github.com/ciscoheat/buddy).
You can install it with the following:

```bash
haxelib install buddy
```

To run the tests, execute the following command:

```bash
haxe test.hxml
```

In the test file, each describe block marks a section of exercise tests, and each test is an `it` or `xit` block.
`it` blocks will execute when you run the tests, but `xit` blocks are tests that are pending.
When you submit a solution, the Exercism test runner will run all `it` or `xit` blocks.
When working locally, only the first test will be run by default.
To run other tests, change the corresponding `xit` blocks to `it` blocks and rerun `haxe test.hxml`.


Additionally, some exercises may require additional libraries to be installed by haxelib.
When that occurs, there'll be a note in the exercise instructions.

## Solving the exercise

Solving an exercise means making all of its tests pass.
To help you get started, each exercise comes with a stub implementation file.
You can use this file as a starting point for building your solution.
Feel free to remove or change this file if you think it is the right thing to do.
Try focusing on a single test at a time as you work towards the solution.  

