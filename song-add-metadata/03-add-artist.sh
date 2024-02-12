#!/usr/bin/env bash

set -euo pipefail

h=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

jq -s -f "$h"/03c-collect.jq                                                        \
    -                                                                               \
    <(jq -s -f "$h"/03b-lookup-artists.jq                                           \
    <(jq -f "$h"/../artist-freqtable/01a-map-artist-ids.jq "$1/SongArtistMap.json") \
    <(jq -f "$h"/03a-make-artist-map.jq "$1/Artist.json"))
