#!/bin/bash

cadena="Canal CucoPC"

long=${#cadena}

echo -e "\n La variable Cadena Contiene $cadena \n"

echo -e "\n El numero de caracteres de la cadena es:  $long \n"

for (( i=0 ; i < $long ; i++ )); do

	echo -en "[${cadena:$i:1}]"

done

echo -e "\n Fin de Programa \n"
