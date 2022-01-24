#!/bin/bash

cat suscriptores.txt | \

while IFS=";" read sus tiem
do

if [ $tiem -lt 5 ]; then

echo "$sus $tiem" >> susmenos5.txt

else

echo "$sus $tiem" >> susmas5.txt

fi

done
