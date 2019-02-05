#!bin/bash

#Edad para votar

read -p 'Dígite su Edad para comprobar si puede o no votar: ' EDAD

if [ $EDAD -lt 18 ]; then

	echo "NO Puedes VOTAR"

else

	echo "Puedes VOTAR"
fi
