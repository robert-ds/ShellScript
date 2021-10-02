#!/bin/bash
clear

echo " Los Siguientes Ordenadores estan conectados: "

cont=1
total=0

while [ $cont = 20 ]; do

	ping  10.42.0.$cont -c2>/dev/null
	if [ $0 -eq 0 ]; then
	echo
	echo "Ordenador 10.42.0.$cont esta conectado "
	total=$[$total+1]
	fi

	cont=$[$cont+1]
done
echo "-----------------------------------------------------"
echo -e "\tSe encuentran conectados $total equipos "
echo "-----------------------------------------------------"
