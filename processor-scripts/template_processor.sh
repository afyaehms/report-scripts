#!/bin/bash

usage="$(basename "$0") [-h] [OPTIONS]

where:
  -h shows this help text

  OPTIONS:
  NOTE: All options are mandatory for this script to work
  and must be provided in the order listed.

  The list of options are:
    script location: this specifies the location to look for scripts
    template location: this specifies the template to be used
    output: the name of the output file

EXAMPLE:
  ./template_processor.sh scripts template output.xml

  This will look for all files in the scripts folder with the extension 
  '.sql' and apply them to the template called 'template' and the output
  will be saved to a file called 'output.xml'.

  Please note that the 'scripts' and 'template' folder and file should 
  exist within the same location as this script file.

"
while getopts 'h' option; do
  case "$option" in
    h) echo "$usage"
      exit
      ;;
    \?)
      ;;
  esac
done

SCRIPTLOC="$1"
TEMPLATE="$2"
OUTPUT="$3"
SCRIPTS="$SCRIPTLOC/*"
SEDCOM=""

for script in $SCRIPTS
do
  if [[ -z "$SEDCOM" ]]; then
    SEDCOM="./sed_include.sh \"$script\"<$TEMPLATE|"
  else
    SEDCOM="$SEDCOM./sed_include.sh \"$script\"|"
  fi
done
echo $SEDCOM
SEDCOMLENGTH="${#SEDCOM}"
SUBSTRINGLENGTH=$(expr $SEDCOMLENGTH - 1)
echo "command length $SUBSTRINGLENGTH"
SEDCOM="${SEDCOM:0:$SUBSTRINGLENGTH}|sed '/^\s*--/ d'>$OUTPUT"
eval $SEDCOM
