#!/bin/bash

for filetype in megafoldermaker.sh doginasuit.jpg ../week1 . filenames.sh

do

if 
[ -f  "$filetype" ]; 
then
echo "That file exists"
elif
[ -d "$filetype" ]; 
then 
echo "That's a directory"
else
[ ! -f "$filetype" -a ! -d "$filetype" ]; 
echo "I don't know what that is"
fi

done 