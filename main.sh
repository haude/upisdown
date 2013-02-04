#!/bin/bash

# TODO: Upper case letters
# TODO: symbols and punctuation
# TODO: read from pipe

PRG=$(basename $0)

function Usage {
    echo -e "Usage: \t$PRG [Option]";
    echo -e "\t-h | --help\tDisplay this message"
}

function map {
    case $flip in
	'a') echo -n "ɐ"; continue;;
	'b') echo -n "q"; continue;;
	'c') echo -n "ɔ"; continue;;
	'd') echo -n "p"; continue;;
	'e') echo -n "ǝ"; continue;;
	'f') echo -n "ɟ"; continue;;
	'g') echo -n "ƃ"; continue;;
	'h') echo -n "ɥ"; continue;;
	'i') echo -n "ı"; continue;;
	'j') echo -n "ɾ"; continue;;
	'k') echo -n "ʞ"; continue;;
	'l') echo -n "ן"; continue;;
	'm') echo -n "ɯ"; continue;;
	'n') echo -n "u"; continue;;
	#'o') echo -n "o"; continue;;
	'p') echo -n "d"; continue;;
	'q') echo -n "b"; continue;;
	'r') echo -n "ɹ"; continue;;
	#'s') echo -n "s"; continue;;
	't') echo -n "ʇ"; continue;;
	'u') echo -n "n"; continue;;
	'v') echo -n "ʌ"; continue;;
	'w') echo -n "ʍ"; continue;;
	#'x') echo -n "x"; continue;;
	'y') echo -n "ʎ"; continue;;
	#'z') echo -n "z"; continue;;

	'&')  echo -n "⅋"; continue;;
	'?') echo -n "¿"; continue;;
	'!') echo -n "¡"; continue;;
	'<') echo -n ">"; continue;;
	'>') echo -n "<"; continue;;
	*) echo -n $flip;;
    esac	
}

# checking arguments
if [ $# -eq 0 ]; then
    Usage;
    exit 1;
fi

text="$@" # $@ can't be used for counting

IFS="" #don't ignore spaces

for ((i=${#text}; i >= 0; i--)); do    
    flip=${text:$i:1}
    map
done
echo
