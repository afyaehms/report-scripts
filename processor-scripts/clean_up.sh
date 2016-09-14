#!/bin/bash

FILE=$1
filename=$(basename "$FILE")

echo "Replacing date with placeholders in $filename"
echo "Removing comments from $filename script"

sed "{ 
  s|\('[0-9][0-9][0-9][0-9]-[0-9][0-9]*-[0-9][0-9]*'\)\(\sAND\)|:startOfPeriod\2|I
  s|\(AND\s\)\('[0-9][0-9][0-9][0-9]-[0-9][0-9]*-[0-9][0-9]*'\)|\1:endOfPeriod|I
  s|\(\&lt;\s\)\('[0-9][0-9][0-9][0-9]-[0-9][0-9]*-[0-9][0-9]*'\)|\1:startOfPeriod|I
  s|\(\&gt;\s\)\('[0-9][0-9][0-9][0-9]-[0-9][0-9]*-[0-9][0-9]*'\)|\1:endOfPeriod|I
  /^\s*--/d
}" "$FILE"  > "compiled/$filename"


