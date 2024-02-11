# jq script
map({key:.id,value:.name}) | from_entries
# vim:ft=jq
