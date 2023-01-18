#!/bin/bash

DATA=$(curl https://api.covidtracking.com/v1/us/current.json)

POSITIVE=$(echo $DATA | jq '.[0].positive')

DEATH=$(echo $DATA | jq '.[0].death')

NEGATIVE=$(echo $DATA | jq '.[0].negative')

#todays date
TODAY=$(date)
#data that is printed out
echo "On $TODAY, there were $POSITIVE positive COVID cases, $DEATH deaths, and $NEGATIVE negative COVID tests. "

