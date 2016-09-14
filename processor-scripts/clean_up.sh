#!/bin/bash

FILE=$1
filename=$(basename "$FILE")

echo "Cleaning up $filename. Removing comments, dates, encoding characters"

sed "{ 
  s|\('[0-9][0-9][0-9][0-9]-[0-9][0-9]*-[0-9][0-9]*'\)\(\sAND\)|:startOfPeriod\2|I
  s|\(AND\s\)\('[0-9][0-9][0-9][0-9]-[0-9][0-9]*-[0-9][0-9]*'\)|\1:endOfPeriod|I
  s|\(\&lt;\s\)\('[0-9][0-9][0-9][0-9]-[0-9][0-9]*-[0-9][0-9]*'\)|\1:startOfPeriod|I
  s|\(\&gt;\s\)\('[0-9][0-9][0-9][0-9]-[0-9][0-9]*-[0-9][0-9]*'\)|\1:endOfPeriod|I
  s|>|\&gt;|I
  s|<|\&lt;|I
  /^\s*--/d
}" "$FILE"  > "compiled/$filename"


