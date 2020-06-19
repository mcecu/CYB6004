#!/bin/bash

until [ "$RESPONSE" != "exit" ]
do
  echo -n "Please enter the URL of a file to download, or type exit to quit: "
  read RESPONSE
  if [ "$RESPONSE" != "exit" ]; then

cp "$RESPONSE" output.txt 

fi
done

