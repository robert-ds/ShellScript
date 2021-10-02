#!/bin/bash
#Script que pide números y muestra el doble de dichos números, el script se ejecuta mientras no se introduzca el 0.

read -p "Dime un número (0 para salir): " N

while [ $N -ne 0 ]; do
	echo "El doble de $N es: " $(($N*2))
	read -p "Dime un número (0 para salir): " N
done
