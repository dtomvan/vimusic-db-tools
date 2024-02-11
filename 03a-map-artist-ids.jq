# jq script
reduce .[] as $i ({}; .[$i.songId] += [$i.artistId])
# vim:ft=jq
