# jq script
.[0] as $as | .[1] | to_entries | map({name: $as.[.key], id: .key, playtime: .value})
# vim:ft=jq
