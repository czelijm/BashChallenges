#!/bin/bash

initial="$(echo $1 | head -c 1)"
# echo $initial

if [[ "$initial" =~ ^[0-9]+$ ]]; then
        echo "Nazwa folderu musi zaczynać się od litery"
        exit 1
fi

ls $1 -l | grep -v "d" | grep -e "-" | wc -l
