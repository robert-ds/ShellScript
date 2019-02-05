#!/bin/bash

read -n 3 -p "Introduzca los tres primeros digitos del codigo postal: " CP

echo
case $CP in

	110)
		echo "Capital Cadiz " ;;
	112)
		echo "Algeciraz " ;;
	114)
		echo "Jerez de la Frontera " ;;
	  *)
		echo "Ese código no está contemplado"

esac
