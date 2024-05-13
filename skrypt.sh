#!/bin/bash

if [ "$1" == "--date" ]; then
    date +"%d-%m-%Y %H:%M:%S"
elif [ "$1" == "--logs" ]; then
    if [[ "$2" > 0 ]]; then
        for ((i = 1; i <= $2; i++)); do
        	touch "log$i.txt"
    	done
    else
	    for ((i = 1; i < 101; i++)); do
		touch "log$i.txt"
	    done
    fi
elif ["$1" == "--help"]; then
    echo "przyjmowane flagi:"
    echo "$0 --date"
    echo "$0 --logs"
    echo "$0 --logs x (gdzie x to dodatnia liczba calowita)"
fi

