#!/bin/bash
mkdir compiled
SEARCHLOC=$1
FILEPATTERN="*.sql"
SEDCOM=""

find "$SEARCHLOC" -name "$FILEPATTERN" -exec ./clean_up.sh '{}' \;

./template_processor.sh
rm -r compiled
