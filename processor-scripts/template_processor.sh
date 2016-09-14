#!/bin/bash
mkdir compiled-template
SCRIPTS="compiled/*"
templatelocations="../Templates/*"

for template in $templatelocations
do
  echo "Making a copy of $template"
  templateName=$(basename "$template")
  cp $template "compiled-template/$templateName"
  for script in $SCRIPTS
  do
    echo "Filtering $script in $templateName"
    scriptName=$(basename "$script")
    sed -i -e '/#INCLUDE <'"$scriptName"'>/{
      r '"$script"'
      d
    }' "compiled-template/$templateName"
  done
done
