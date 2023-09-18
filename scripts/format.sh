#!/usr/bin/env bash

set -euo pipefail

FORMATTER_INSTALLED=$(haxelib list formatter)
if [[ -z "$FORMATTER_INSTALLED" ]]; then
	haxelib install formatter
fi

haxelib run formatter -s .
