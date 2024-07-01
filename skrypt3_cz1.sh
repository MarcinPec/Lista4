#!/bin/bash
arg=$1
num=${2:-100}

current_date=$(date +"%Y-%m-%d")

if [ $arg == "--date" ]; then
	echo "Dzisiejsza data: $current_date"
fi

if [ $arg == "--logs" ]; then
        for i in $(seq 1 $num)
        do
                file_name="log_$i.txt"
                echo "Nazwa skryptu to: skrypt3.sh, nr pliku: $i, dzisiejsza data: $current_date" > $file_name
        done
        echo "Utworzono $num plików logów w formacie txt"
fi
