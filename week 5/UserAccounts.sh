#!/bin/bash
#using awk to format the output of cat /etc/passwd
#the arguments in line 11 show only the specific information required
cat /etc/passwd | awk 'BEGIN {
    FS=":";
    print "___________________________________________________________________________________________________________________";
    print "| \033[34mUsername\033[0m                 | \033[34mUserID\033[0m         | \033[34mGroupID\033[0m        | \033[34mHome\033[0m                     | \033[34mShell\033[0m                   |";
    print "|                          |                |                |                          |                         |";
}
{
    printf("| \033[33m%-16s\033[0m         | \033[35m%-14s\033[0m | \033[35m%-14s\033[0m | \033[35m%-24s\033[0m | \033[35m%-24s\033[0m|\n", $1, $3, $4, $6, $7);
}
END {
    print("___________________________________________________________________________________________________________________");
}'