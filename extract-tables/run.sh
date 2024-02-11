#!/usr/bin/env bash

set -euo pipefail

h=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

"$h"/01-get-index.sh "$@"
"$h"/02-export-all.sh "$@"
