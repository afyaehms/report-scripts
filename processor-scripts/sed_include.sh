#!/bin/sh
# watch out for a '/' in the parameter
# use alternate search delimiter
filename=$(basename "$1")

sed -e '/#INCLUDE <'"$filename"'>/{
        r '"$1"'
        d
}'
