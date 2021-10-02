#!/bin/bash
#Determina si un programa es par o impar

read -sp  'Digite el numero que desea saber si es par: ' N

let resto=N%2

if [ $resto -eq 0 ]; then

clear
echo "El número" $N "es par"

else

clear
echo "El número" $N "es impar"

fi
