#!/bin/bash
arg=$1

current_date=$(date +"%Y-%m-%d")

if [ $1 == "--date" ]; then
	echo "Dzisiejsza data: $current_date"
fi

if [ $1 == "--logs" ]; then
	for i in {1..100}
	do
		file_name="log_$i.txt"
		echo "Nazwa skryptu to: skrypt2.sh, nr pliku: $i, dzisiejsza data: $current_date" > $file_name
	done
	echo "Utworzono 100 plików logów w formacie txt"
fi
