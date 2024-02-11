yell () {
    printf "$0 Critical error: %s\n" $@ >&2
}

die() {
    code="$1"
    if [[ $code =~ '^[0-9]+$' ]]; then
        shift
    else
        code=1
    fi
    yell "$@"
    exit "$code"
}

if [ $# -ne 1 ]; then
    die "1 argument expected, got $#"
fi

db="$1"
dir="$db.d"
mkdir -p "$dir"
index="$dir/index.json"
