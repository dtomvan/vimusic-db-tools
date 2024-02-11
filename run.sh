#!/usr/bin/env bash

set -euo pipefail

./01-get-index.sh "$@"
./02-export-all.sh "$@"
./03-make-frequency-table.sh "$@"
