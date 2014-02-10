#!/bin/bash

YEAR=$(date +%Y)
TIME=$(cat /home/$USER/scripts/last-time)

echo "Year of the system: $YEAR"

if [[ "$YEAR" = "1970" ]] ; then
  date  "$TIME"
fi

if [[ "$YEAR" -gt "1970" ]] ; then
  exit
fi

exit 0
