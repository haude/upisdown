#!/bin/bash

# TODO: read from pipe
# TODO: mirror

PRG=$(basename $0)

function Usage {
    echo -e "Usage: \t$PRG [Option]";
    echo -e "\t-h | --help\tDisplay this message"
}

function map {
    case $flip in
	# visit "http://unicode-table.com/en/" for more info3
	'a') echo -n "ɐ"; continue;; 'A') echo -n "∀"; continue;;
	'b') echo -n "q"; continue;; 'B') echo -n "q"; continue;; #
	'c') echo -n "ɔ"; continue;; 'C') echo -n "Ɔ"; continue;;
	'd') echo -n "p"; continue;; 'D') echo -n "Ɑ"; continue;; #
	'e') echo -n "ǝ"; continue;; 'E') echo -n "Ǝ"; continue;; #Ǝ∃
	'f') echo -n "ɟ"; continue;; 'F') echo -n "߃"; continue;;
	'g') echo -n "ƃ"; continue;; 'G') echo -n "⅁"; continue;;
	'h') echo -n "ɥ"; continue;;#'H') echo -n "H"; continue;;
	'i') echo -n "ı"; continue;;#'I') echo -n "I"; continue;;
	'j') echo -n "ɾ"; continue;; 'J') echo -n "ɾ"; continue;; #
	'k') echo -n "ʞ"; continue;; 'K') echo -n "ʞ"; continue;; #
	'l') echo -n "⅂"; continue;; 'L') echo -n "˥"; continue;; # Γ
	'm') echo -n "ɯ"; continue;; 'M') echo -n "W"; continue;;
	'n') echo -n "u"; continue;; 'N') echo -n "Ͷ"; continue;; # И
#	'o') echo -n "o"; continue;; 'O') echo -n "O"; continue;;
	'p') echo -n "d"; continue;; 'P') echo -n "d"; continue;; #
	'q') echo -n "b"; continue;; 'Q') echo -n "b"; continue;; #
	'r') echo -n "ɹ"; continue;; 'R') echo -n "ᴚ"; continue;; #ᴚ
#	's') echo -n "s"; continue;; 'S') echo -n "S"; continue;;
	't') echo -n "ʇ"; continue;; 'T') echo -n "⊥"; continue;;
	'u') echo -n "n"; continue;; 'U') echo -n "⋂"; continue;;
	'v') echo -n "ʌ"; continue;; 'V') echo -n "Λ"; continue;; #∧ʌ⋀Λ
	'w') echo -n "ʍ"; continue;; 'W') echo -n "M"; continue;;
#	'x') echo -n "x"; continue;; 'X') echo -n "X"; continue;;
	'y') echo -n "ʎ"; continue;; 'Y') echo -n "⅄"; continue;;
#	'z') echo -n "z"; continue;; 'Z') echo -n "Z"; continue;;

	'&')  echo -n "⅋"; continue;;
	'?') echo -n "¿"; continue;;
	'!') echo -n "¡"; continue;;
	'<') echo -n ">"; continue;; '>') echo -n "<"; continue;;
	'{') echo -n "}"; continue;; '}') echo -n "{"; continue;;
	'/') echo -n '\'; continue;; '\') echo -n '/'; continue;;

	'^') echo -n "ˬ"; continue;;
	',') echo -n "ˋ"; continue;;#ˊˋ̒

#	'0') echo -n "v"; continue;;
	'1') echo -n "⥝"; continue;;
	'2') echo -n "ⵒ"; continue;;
	'3') echo -n "ɛ"; continue;;
	#'4') echo -n "4"; continue;;
	#'5') echo -n "5"; continue;;
	'6') echo -n "9"; continue;;
	'7') echo -n "⦣"; continue;;
#	'8') echo -n "8"; continue;;
	'9') echo -n "6"; continue;;

	*) echo -n $flip;;
    esac
}


IFS="" #don't ignore spaces

# check pipe
if [ -t 0 ]; then
    if [ $# -eq 0 ]; then
	Usage
	exit 1;
    fi
    text="$@" # $@ can't be used for counting
else
    while read data; do
	text+="$data"
    done
fi

for ((i=${#text}; i >= 0; i--)); do
    flip=${text:$i:1}
    map
done
echo
