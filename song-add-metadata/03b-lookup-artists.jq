.[0] as $ids |
.[1] as $map |
$ids
    | map_values(map($map[.]))
