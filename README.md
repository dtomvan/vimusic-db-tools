# vimusic-db-tools

This is just an experiment to find out what can be done with just the
[ViMusic](https://github.com/25huizengek1/ViMusic) database file. It consists of
several modules, where `extract-tables` is a special one. This gets all of the
JSON from the sqlite file for further processing. You can use it on its own, or
together with some other module.

## How to run:

All modules as of now are run with `run.sh` as follows:

```bash
$ ./artist-freqtable/run.sh path/to/vimusic_YYYYMMDD.db
```

NOTE: I am not planning on keeping track of breaking changes as of now. Please
don't rely on this, this is more of a research project than anything else. Maybe
in the future I'll do a tagged release, but until then please **DO NOT** use
this in your own project.

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
