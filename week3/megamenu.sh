#!/bin/bash

~/student/scripts/portfolio/week2/passwordcheck.sh

#if statement which presents the options with different colours
if [ $? -eq 0 ]
then
echo "$(tput setaf 3)SELECT AN OPTION
$(tput setaf 4)1. Create a folder
2. Copy a folder
3. Set a password
4. Calculator
5. Create week folders
6. Check filenames
7. Download a file
$(tput setaf 5)8. Exit"
else
echo "access denied"
exit 1
fi

#user interaction determines which case will execute
read CHOICE

case $CHOICE in

1) 
~/student/scripts/portfolio/week2/foldermaker.sh
;;

2)
~/student/scripts/folderCopier.sh
;;

3) 
~/student/scripts/portfolio/week2/setPassword.sh
;;

4)
~/student/scripts/portfolio/week3/calc.sh
;;

5)
~/student/scripts/portfolio/megafoldermaker.sh
;;

6)
~/student/scripts/portfolio/week3/filenames.sh
;;

7)
~/student/scripts/portfolio/week3/filedownloader.sh
;;

8)
exit 0
;;

esac
