#!/bin/bash

#curling into cisco.com and downloading the output into output.txt
curl -o output.txt https://www.cisco.com/c/en_au/products/security/what-is-cybersecurity.html#~how-cybersecurity-works

#using grep to search for <p> (paragraph) HTML tags, then combining with sed to remove the unneeded HTML code blocks
#the output of this process it placed into a new file: temp.txt
cat output.txt | grep "<p>" | sed 's/<[^>]*>//g' > temp.txt

#this while loop presents the options for the user to select based on the four categories listed on the Cisco website
#the loop ensures that the script does not end when one choice is selected, as it is likely the user will select multiple options
    while true; do
    choice=
        while [[ -z $choice ]]; do
            echo "$(tput setaf 6)SELECT AN OPTION TO LEARN MORE ABOUT
            $(tput setaf 2)1. Phishing 
            2. Ransomware
            3. Malware
            4. Social Engineering
            $(tput setaf 1)5. Exit"

            read CHOICE

#the case statement produces different outcomes based on the user entry "CHOICE"
#concatenating temp.txt and stream editing the contents to only provide the relevant lines of text
#finally using | fmt to present the text in a more uniform format
#The case statement also provides an outcome if an invalid option is entered (e.g 0 or 6)
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
