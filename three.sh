#!/bin/bash

read -p 'Digite el primer valor que desea multiplicar: ' A
read -p 'Digite el segundo valor que desea multiplicar: ' B
read -p 'Digite el tercer valor que desea multiplicar: ' C

resul=$[ A * B * C ]

let med=resul/2

echo "La mitad es $med"

