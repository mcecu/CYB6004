#!/bin/bash

#requests user to enter the password using the private -sp prompt.
read -sp "$(tput setaf 1)Enter a secret password: " secretpassword

#declaring variable "hash" as equal to the output of the user entry piped through sha256 algorithm. 
hash=`echo "$secretpassword" | sha256sum`

#if statement using grep with the -c extension, which will check the secret.txt file for a match with the user entry.
#the -gt 0 component ensures that the output of the grep command will result in the correct exit sequence.
if [ `grep -c "${hash}" ~/student/scripts/portfolio/week2/passwordstorage/secret.txt` -gt 0 ]
then
    echo "$(tput setaf 2)password accepted"
    exit 0
else
    echo "$(tput setaf 1)password denied"
    exit 1
fi
#initially the script would not recognise secret.txt as a file/directory, 
#since it does not exist within the local directory which the passwordcheck.sh script resides in.
#I amended this by providing the complete path to secret.txt, however I am interested to know if there
#is a more efficient way of doing this.
