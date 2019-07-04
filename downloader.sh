#!/bin/bash
num1=$1
link=$2
link2=".mp4"  
str="0"

for (( counter=1; counter<=num1; counter++ ))
do
    if (( counter <= 10)); 
    then
        string3="$link$str$counter$link2"
        wget $string3
        #echo -n "$string3 "
        string3=""
    else
        string3="$link$counter$link2"
        wget $string3
        #echo -n "$string3 "
        string3=""
    fi

done
printf "\n"
