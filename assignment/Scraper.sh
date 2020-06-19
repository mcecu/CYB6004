#!/bin/bash

while [ "$RESPONSE" != "exit" ]
do
  echo -n "Please enter the URL of a file to download, or type exit to quit: "
  read RESPONSE
  if [ "$RESPONSE" != "exit" ]; then

curl -o output.txt "$RESPONSE"

cat output.txt | grep "<p>" | sed 's/<[^>]*>//g'

fi
done

