#!/bin/bash

if [ "$1" == "--date" || "$1" == "-d" ]; then
    date +"%d-%m-%Y %H:%M:%S"
elif [ "$1" == "--logs" || "$1" == "-l" ]; then
    if [ "$2" > 0 ]; then
        for ((i = 1; i <= $2; i++)); do
        	touch "log$i.txt"
    	done
    else
	    for ((i = 1; i < 101; i++)); do
		touch "log$i.txt"
	    done
    fi
elif [ "$1" == "--help" || "$1" == "-h" ]; then
    echo "przyjmowane flagi:"
    echo "$0 --date or -d"
    echo "$0 --logs or -l"
    echo "$0 --logs x (gdzie x to dodatnia liczba calowita) -l x"
elif [ "$1" == "--init" ]; then
	git clone https://github.com/CezarySosialuk/Lab4.git cloned_one
elif [ "$1" == "--error" || "$1" == "-e"]; then
	if [ "$2" > 0 ]; then
		for ((i = 1; i<= $2; i++)); do
			mkdir "error$i"
			touch "error$i.txt"
			mv "error$i.txt" "error$i"
		done
	else
		for ((i = 1; i == 101; i++)); do
			touch "./error$i/error$i.exe"
		done
	fi
fi

