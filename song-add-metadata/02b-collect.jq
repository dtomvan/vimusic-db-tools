.[0] as $songs    |
.[1] as $albummap |
.[2] as $albums   |
$songs
    | map(
        .id as $id                   |
        $albummap[$id] as $amapped   |
        select($amapped.id != null)  |
        .album |= $albums[$amapped.id] + $amapped
      )
