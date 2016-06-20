#!/bin/bash

FILE=$1
filename=$(basename "$FILE")

sed "{ 
  s|\('[0-9][0-9][0-9][0-9]-[0-9][0-9]*-[0-9][0-9]*'\)\(\sAND\)|:startOfPeriod\2|
  s|\(AND\s\)\('[0-9][0-9][0-9][0-9]-[0-9][0-9]*-[0-9][0-9]*'\)|\1:endOfPeriod|
}" "$FILE"  > "compiled/$filename"

echo "$filename"
