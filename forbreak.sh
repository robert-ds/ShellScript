#!/bin/bash

for (( ; ; )); do
	read -p "Dime un número (Introduce 0 para salir): " n

if [ $n -eq 0 ]; then
	break
else
	echo "....El doble es $[ $n * 2 ]"
fi
done

echo "Hemos salido del bucle y se acabo el programa"
	
