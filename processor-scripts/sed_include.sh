#!/bin/sh
# watch out for a '/' in the parameter
# use alternate search delimiter
filename=$(basename "$1")

sed -e '\_#INCLUDE <'"$filename"'>_{
        r '"$1"'
        d
}'
