#!/bin/bash
mkdir compiled
SEARCHLOC=$1
FILEPATTERN="*.sql"
SEDCOM=""

find "$SEARCHLOC" -name "$FILEPATTERN" -exec ./date_to_placeholders.sh '{}' \;

./template_processor.sh
rm -r compiled
