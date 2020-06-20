#!/bin/bash

curl -o output.txt https://www.cisco.com/c/en_au/products/security/what-is-cybersecurity.html#~how-cybersecurity-works

cat output.txt | grep "<p>" | sed 's/<[^>]*>//g' > temp.txt

echo "$(tput setaf 3)SELECT AN OPTION
$(tput setaf 4)1. Phishing 
2. Ransomware
3. Malware
4. Social Engineering
5. Exit"

read CHOICE

case $CHOICE in

1) 
cat temp.txt | sed -n -e 12p 
;;

2)
cat temp.txt | sed -n -e 14p 
;;

3) 
cat temp.txt | sed -n -e 16p | sed 's/&nbsp;//g'
;;

4)
cat temp.txt | sed -n -e 18p 
;;

5)
exit 0
;;

esac

