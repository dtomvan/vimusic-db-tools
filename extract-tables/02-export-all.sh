#!/usr/bin/env bash

set -eu

h=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "$h"/00-prelude.sh

mapfile tables < <(jq -r 'map(select(.type == "table")) | .[].tbl_name' "$index")

for table in ${tables[@]}; do
    sqlite3 "$db" <<EOF
.headers on
.mode json
.output $dir/$table.json
    select * from $table;
EOF
done
