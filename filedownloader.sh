#!/bin/bash

#this loop ensures that the script will conitnue to run until the user types 'exit'
#the until loop made the most sense to me in the context of this script.
until [ "$RESPONSE" = "exit" ]
do
  echo -n "Please enter the URL of a file to download, or type exit to quit: "
  read RESPONSE
  if [ "$RESPONSE" != "exit" ]; then
#an if statement nested inside the loop tells the script to run the consequent command
#IF the user response was NOT 'exit'  
    echo "Please enter the location to save the download: "
    read DESTINATION
#I had considerable difficulty and confusion using the wget function,
#as it would keep saving in the local directory regardless of what I entered.
#using wget in a subshell seemed to mitigate this problem.
#I also used Print Working Directory to improve the UI by telling the user 
#where the download would be saved to.      
  ( cd "${DESTINATION}" || exit
    echo 1>&2 "Running wget in ${pwd}"
    wget "$RESPONSE"
)
 
  fi 

done