#!/bin/bash

FILE=$1
filename=$(basename "$FILE")

sed "{ 
  s|\('[0-9][0-9][0-9][0-9]-[0-9][0-9]*-[0-9][0-9]*'\)\(\sAND\)|:startOfPeriod\2|I
  s|\(AND\s\)\('[0-9][0-9][0-9][0-9]-[0-9][0-9]*-[0-9][0-9]*'\)|\1:endOfPeriod|I
}" "$FILE"  > "compiled/$filename"

echo "$filename"
