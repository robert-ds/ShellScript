#!/bin/bash

read -p 'Introduce nota ISO: ' NOTAISO

read -p 'Introduce nota PARE: ' NOTAPARE

read -p 'Intruduce nota BD: ' NOTABD

suma=$[ $NOTAISO + $NOTAPARE + $NOTABD ]

let media=suma/3

echo "La media es $media" 


