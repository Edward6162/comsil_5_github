#!/bin/sh

if [ $# -eq 0 ]
then
    echo "Usage: phone searchfor [...searchfor]"
    echo "(You didn't tell me what you want to search for.)"
    exit 1
else
    args=$1
    shift

    for arg in "$@"
    do
        args="${args}|${arg}"
    done

    egrep -i "$args" mydata.txt > tmp
    awk -f display.awk tmp
    rm -f tmp
fi
