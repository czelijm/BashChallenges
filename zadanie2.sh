#!/bin/bash

for var in "$@"
do
    #isZreo=`ls -l "$var" | grep -v "d" | grep -e "-"`
    isZreo=`echo "$var" | head -c 1`

    echo "$isZreo"

    if [ "$isZreo" == "0" ]
    then
        continue
    fi

    ls | find . -maxdepth 1 -type f | while read i ; 
    do 
        if cmp -s "$var" "$i"
        then
            echo "$i"
        fi
        echo "$var"
    done
done


# ls | find . -maxdepth 1 -type f | while read i ; 
# do 
#     if cmp -s "$" "$file2"
#     then
#     fi
#     echo "$i"
# done
