# vimusic-db-tools

This is just an experiment to find out what can be done with just the
[ViMusic](https://github.com/25huizengek1/ViMusic) database file. It outputs
a JSON file with all artists listed along with their ID and total playtime. If a
song has multiple artists all artists get credited each the total playtime of
the song, so summing this all up again doesn't return your total playtime.

## How to run:

```bash
$ ./artist-freqtable/run.sh path/to/vimusic_YYYYMMDD.db
```

## Requirements
- awk
- bash
- jq
- sort
- sqlite3
- tee

## Modules

### `artist-freqtable`
Outputs a JSON file with all artists listed along with their ID and total
playtime. If a song has multiple artists all artists get credited each the total
playtime of the song, so summing this all up again doesn't return your total
playtime.

### `song-add-metadata`
Outputs a JSON file with all known metadata about a song together in one file.
