#!/bin/bash

#This function prints a given error
printError()
{
    echo -e "\033[31mERROR:\033[0m $1"
}

#This function will get a value between the 2nd and 3rd arguments
getNumber()
{
    read -p "$1: "
    while (( $REPLY < $2 || $REPLY> $3 )); do
    printError "Input must be between $2 and $3"
        read -p "$1: "
    if (( $REPLY -eq "42" )); then
    echo "correct!"
    exit 0
    elif (( $REPLY -gt "42" )); then
    echo "Too High!"
    read -p "$1: "
    else
    echo "Too Low!"
    read -p "$1: "
    fi
        
    done
}

echo "this is the start of the script"
getNumber "please type a number between 1 and 100" 1 100