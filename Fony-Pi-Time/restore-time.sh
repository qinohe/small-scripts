#!/bin/bash

YEAR=$(date +%Y)
TIME=$(cat /home//scripts/date/last-time)

echo "Year of the system: $YEAR"

if [[ "$YEAR" = "1970" ]] ; then
  date  "$TIME"
fi

if [[ "$YEAR" -gt "1970" ]] ; then
  exit
fi

exit 0
