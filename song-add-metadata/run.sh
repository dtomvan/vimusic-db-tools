#!/usr/bin/env bash

set -euo pipefail

t=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [[ ! $1 =~ .*\.json ]]; then
    "$t"/../extract-tables/run.sh "$@"
else
    d="$(dirname $1)"
    set -- "${d%.*}"
fi

source "$t"/../extract-tables/00-prelude.sh

"$t"/01-get-input.sh "$@"             \
    | "$t"/02-add-album.sh "$dir"     \
    | "$t"/03-add-artist.sh "$dir"    \
    | "$t"/04-add-playlist.sh "$dir"  \
    | "$t"/05-add-lyrics.sh "$dir"
