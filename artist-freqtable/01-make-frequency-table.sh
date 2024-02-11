#!/usr/bin/env bash

set -euo pipefail

t=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "$t"/../extract-tables/00-prelude.sh

jq -s -f "$t/01d-produce-result.jq"                                \
    <(jq -f "$t/01c-map-artist-names.jq" "$dir/Artist.json")       \
    <(jq -s -f "$t/01b-sum-songs.jq" "$dir/Song.json"              \
    <(jq -f "$t/01a-map-artist-ids.jq" "$dir/SongArtistMap.json")) \
    | tee "$dir/ArtistPlayTime.json"
