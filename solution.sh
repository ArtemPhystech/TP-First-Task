#!/usr/bin/bash

mkdir $3

for file in $(find "$1" -type f -name "*.$2")
do
    tmp=$(echo "$file" | sed 's|/|-|g')
    cp "$file" "$3/$tmp"
done

tar -zcf "$4" "$3"