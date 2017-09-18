Each exercise has its own dependencies, usually including the unit testing
framework munit.

Dependencies are kept in a `test.hxml` file. To install all of the dependencies for
an exercise, run:

```bash
haxelib install test.hxml
```

If you haven't already, you may need to configure munit by running:

```bash
haxelib run munit config
```

You can press "enter" to accept the defaults.

Then, to run the tests:

```bash
haxelib run munit test
```

