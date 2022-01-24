#hacer un script que calcule el factorial de cualquier número introducido por el usuario

#!/bin/bash

read -p 'Dígita el numero al cual desea saber su factorial: ' f

for f in $( seq $f ); do

let fac=f*(f-1)

done

echo "El factorial de su numero es: " $fac
