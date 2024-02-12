#!/usr/bin/env bash

set -euo pipefail

h=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

jq -s -f "$h"/02b-collect.jq \
    -                                                                        \
    <(jq -f "$h"/02a-album-map.jq "$1/SongAlbumMap.json") \
    <(jq 'reduce .[] as $i ({}; .[$i.id] |= $i)' "$1/Album.json")
