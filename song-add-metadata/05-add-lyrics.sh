#!/usr/bin/env bash

set -euo pipefail

h=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

jq -s \
    '.[0] as $s                                                                 |
    (reduce .[1][] as $it ({}; .[$it.songId] += [($it | del(.songId))])) as $ly |
    $s | map_values(.id as $id | .lyrics |= $ly[$id])' \
    - "$1"/Lyrics.json
