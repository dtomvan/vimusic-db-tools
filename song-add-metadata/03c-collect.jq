.[0] as $s  |
.[1] as $am |
$s
    | map(.id as $id | .artists |= $am[$id])
