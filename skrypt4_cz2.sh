#!/bin/bash
arg=$1
num=${2:-100}

current_date=$(date +"%Y-%m-%d")

if [ $arg == "--date" ] || [  $arg == "-d" ]; then
	echo "Dzisiejsza data: $current_date"
fi

if [ $arg == "--logs" ] || [  $arg == "-l" ]; then
        for i in $(seq 1 $num)
        do
                file_name="log_$i.txt"
                echo "Nazwa skryptu to: skrypt3.sh, nr pliku: $i, dzisiejsza data: $current_date" > $file_name
        done
        echo "Utworzono $num plików logów w formacie txt"
fi


if [ $arg == "--help" ] || [ $arg == "-h" ]; then
        echo "Pomoc do pliku skrypt.sh: "
	echo "--date albo -d                   wyswielta dzisiejszą datę"
	echo "--logs albo -l                   generuje 100 plików txt z logami zawierającymi nazwe skryptu generującego, nr plik oraz datę dzisiejszą"
	echo "--logs [liczba] albo -l [liczba] generuje pliki txt z logami ale w liczbie zdefiniowanej przez użytkownika w zmiennej [liczba]"
fi
