#!/bin/bash

DATA=$(curl https://api.covidtracking.com/v1/us/current.json)

POSITIVE=$(echo $DATA | jq '.[0].positive')

DEATH=$(echo $DATA | jq '.[0].death')

NEGATIVE=$(echo $DATA | jq '.[0].negative')

CURNTHOSPITALIZED=$(echo $DATA | jq '.[0].hospitalizedCurrently')

#todays date
TODAY=$(date)
#data that is printed out
echo "On $TODAY, there were $POSITIVE positive COVID cases, $DEATH deaths, $NEGATIVE negative COVID tests, and $CURNTHOSPITALIZED currently hospitalized."

