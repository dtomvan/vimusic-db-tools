.[0] as $s  |
.[1] as $sa |
$s
    | map(.id as $id | .artist |= ($sa | .[$id]))
    | map(select(.artist != null))
    | reduce .[] as $i ([]; . += [
        foreach $i.artist[] as $artist ({}; .[$artist] += $i.totalPlayTimeMs)
    ]) | add | to_entries | map(select(.value > 0)) | from_entries
