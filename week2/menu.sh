#!/bin/bash

./passwordcheck.sh

if [ $? -eq 0 ]
then
echo "1. Create a folder
2. Copy a folder
3. Set a password
4. Calculator
5. Create week folders
6. Check filenames
7. Download a file
8. Exit"
else
echo "access denied"
exit 1
fi

read CHOICE

case $CHOICE in

1) 
./foldermaker.sh
;;

2)
~/student/scripts/folderCopier.sh
;;

3) 
./setPassword.sh
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