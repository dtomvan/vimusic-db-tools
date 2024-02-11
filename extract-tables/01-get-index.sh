#!/usr/bin/env bash

set -eu

h=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "$h"/00-prelude.sh

sqlite3 "$db" <<EOF
.headers on
.mode json
.output $index
    SELECT *
        FROM sqlite_master
        WHERE type='table' and tbl_name not like 'sqlite_%';
EOF
