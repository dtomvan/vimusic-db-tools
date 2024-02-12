#!/usr/bin/env bash

set -euo pipefail

h=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

source "$h"/../extract-tables/00-prelude.sh

if [[ ! $1 =~ .*\.json ]]; then
    cat "$dir"/Song.json
else
    cat "$1"
fi
