#!/bin/bash

# Check if the script is called with the "--date" argument
if [ "$1" == "--date" ]; then
    date +"%d-%m-%Y %H:%M:%S"
else
    echo "przyjmowane flagi:"
    echo "$0 --date"
fi

