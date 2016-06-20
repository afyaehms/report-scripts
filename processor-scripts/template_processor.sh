#!/bin/bash
mkdir compiled-template
SCRIPTS="compiled/*"
templatelocations="../Templates/*"

for template in $templatelocations
do
  echo "$template"
  templatename=$(basename "$template")
  SEDCOM=""
  for script in $SCRIPTS
  do
    if [[ -z "$SEDCOM" ]]; then
      SEDCOM="./sed_include.sh \"$script\"<$template|"
    else
      SEDCOM="$SEDCOM./sed_include.sh \"$script\"|"
    fi
  done
  # echo $SEDCOM
  SEDCOMLENGTH="${#SEDCOM}"
  SUBSTRINGLENGTH=$(expr $SEDCOMLENGTH - 1)
  echo "command length $SUBSTRINGLENGTH"
  SEDCOM="${SEDCOM:0:$SUBSTRINGLENGTH}|sed '/^\s*--/
  d'>compiled-template/$templatename"
  eval $SEDCOM
  SEDCOM=""
done
