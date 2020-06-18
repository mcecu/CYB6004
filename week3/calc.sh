#!/bin/bash

# asks for two numbers
echo "enter two numbers: "
read a
read b

# presents choices to user
echo "select an option and press enter"
echo "1. addition"
echo "2. subtraction"
echo "3. multiplication"
echo "4. division"
read -s ch 

# does the calculations
case $ch in 
    1)res=`echo $a + $b | bc` 
    ;;
    2)res=`echo $a - $b | bc`
    ;;
    3)res=`echo $a \* $b | bc`
    ;;
    4)res=`echo "scale=2; $a / $b" |bc`
esac 

# defines output colour based on process
if [ $ch -eq 1 ]
then 
echo -e "result : \e[34m$res" 

elif [ $ch -eq 2 ]
then
echo -e "result : \e[32m$res"

elif [ $ch -eq 3 ]
then 
echo -e " result : \e[31m$res"

elif [ $ch -eq 4 ]
then 
echo -e "result : \e[35m$res"

fi