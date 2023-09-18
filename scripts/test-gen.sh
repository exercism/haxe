#!/usr/bin/env bash

set -euo pipefail

haxe testgen.hxml $1

. format.sh
