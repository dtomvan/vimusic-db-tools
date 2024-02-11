#!/usr/bin/env bash

set -euo pipefail

source 00-prelude.sh

jq -s -f 03d-produce-result.jq                                \
    <(jq -f 03c-map-artist-names.jq "$dir/Artist.json")       \
    <(jq -s -f 03b-sum-songs.jq "$dir/Song.json"              \
    <(jq -f 03a-map-artist-ids.jq "$dir/SongArtistMap.json")) \
    | tee "$dir/ArtistPlayTime.json"
