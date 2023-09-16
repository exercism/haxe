# Exercism Haxe Track

[![Configlet](https://github.com/exercism/haxe/actions/workflows/configlet.yml/badge.svg)](https://github.com/exercism/haxe/actions/workflows/configlet.yml) [![Exercises Passing](https://github.com/exercism/haxe/actions/workflows/test.yml/badge.svg)](https://github.com/exercism/haxe/actions/workflows/test.yml)

Exercism problems in Haxe.

## Support

For support with Haxe in Exercism, please visit [the Haxe subcategory](https://forum.exercism.org/c/programming/haxe/) on the official [Exercism forum](https://forum.exercism.org).

## Contributing Guide

Please see [Exercism's contributing guide](https://exercism.org/docs/building).

## Track linting

[`configlet`](https://exercism.org/docs/building/configlet) is an Exercism-wide tool for working with tracks. You can download it by running:

```shell
./bin/fetch-configlet
```

Run its [`lint` command](https://exercism.org/docs/building/configlet/lint) to verify if all exercises have all the necessary files and if config files are correct:

```shell
$ ./bin/configlet lint

The lint command is under development.
Please re-run this command regularly to see if your track passes the latest linting rules.

Basic linting finished successfully:
- config.json exists and is valid JSON
- config.json has these valid fields:
    language, slug, active, blurb, version, status, online_editor, key_features, tags
- Every concept has the required .md files
- Every concept has a valid links.json file
- Every concept has a valid .meta/config.json file
- Every concept exercise has the required .md files
- Every concept exercise has a valid .meta/config.json file
- Every practice exercise has the required .md files
- Every practice exercise has a valid .meta/config.json file
- Required track docs are present
- Required shared exercise docs are present

### Haxe icon
The Haxe logo is assumed to be owned by the Haxe Foundation, but this is not made explicit. We have adapted it, changing the colours, for use on Exercism, which we believe to fall under fair use.
