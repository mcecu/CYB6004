#!/bin/bash

curl -o output.txt https://www.cisco.com/c/en_au/products/security/what-is-cybersecurity.html#~how-cybersecurity-works

cat output.txt | grep "<p>" | sed 's/<[^>]*>//g' > temp.txt

while true; do
   choice=
   while [[ -z $choice ]]; do
    echo "$(tput setaf 6)SELECT AN OPTION
    $(tput setaf 2)1. Phishing 
    2. Ransomware
    3. Malware
    4. Social Engineering
    $(tput setaf 1)5. Exit"

read CHOICE

case $CHOICE in

1) 
cat temp.txt | sed -n -e 12p | fmt
;;

2)
cat temp.txt | sed -n -e 14p | fmt
;;

3) 
cat temp.txt | sed -n -e 16p | sed 's/&nbsp;//g' | fmt
;;

4)
cat temp.txt | sed -n -e 18p | fmt
;;

5)
 echo "Quitting ..."
 exit 0
;;

*)
echo "Please enter a valid option"

esac
done
done