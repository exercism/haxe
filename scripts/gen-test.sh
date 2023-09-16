#!/bin/bash

haxelib install formatter
haxe testgen.hxml $1

# haxe-formatter can't be run from Haxe files, so we have to use a shell script and run it directly
haxelib run formatter -s .