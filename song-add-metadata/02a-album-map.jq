reduce .[] as $it ({}; .[$it.songId] += {id: $it.albumId, position: $it.position})
