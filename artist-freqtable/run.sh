#!/usr/bin/env bash

set -euo pipefail

h=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

"$h"/../extract-tables/run.sh "$@"
"$h"/01-make-frequency-table.sh "$@"
