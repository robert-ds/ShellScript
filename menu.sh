#!/bin/bash
opcion=$(zenity --list --column "Elige una opción " "1.Letra" "2.Número" )

function letra {
	local letra=$(zenity --entry --text "Introduce una letra" )
	if [ $letra = l ]; then 
		echo "has elegido la letra l"
	fi
}

if [ $opcion = 1.Letra ]; then 
	letra
fi



