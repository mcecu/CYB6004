#!/bin/bash

#this first section collects the user input for the destination folder. and privately collects the password variable too
read -p "Please type the name of a folder to save your password to: " folder
read -sp "Please assign a secret password: " password

#this section creates secret.txt and echos the output of $password through the sha256 algorithm, then dumps it into secret.txt
touch secret.txt 
echo "$password" |sha256sum > secret.txt

#finally, secret.txt is moved to the folder chosen by the user
mv secret.txt "$folder"
exit 0

#this script is flawed, as there is a moment where secret.txt is saved to the local directory and not the directory chosen by the user.
#it is foreseeable that this is a vulnerability since the chosen destination may be encrypted, whereas the local directory is not.

#additionally, if there is no match to the variable "$folder", the script will still create secret.txt and dump it into the local directory.
#This is another security concern, however it could be mitigated with an if statement. 
#I have decided to leave it to illustrate the risks of poorly designed password scripts.