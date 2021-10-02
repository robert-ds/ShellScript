#!/bin/bash

function doble {
	echo "Vamos a doblar un Número"
	let numero=numero*2
}

numero=3

echo "Numero vale : " $numero

doble

echo "Numero vale : " $numero
