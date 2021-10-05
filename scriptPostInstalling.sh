# Hacer un script que permita seleccionar atravez de un menu en pantalla (1) Recursos esenciales del sistema, (2) un pack de tools y apps basicas para el sistema,
# (3) huevos de pascua, (4) salir. Además que muestre por pantalla el progreso de la acción elegida y que al finalizar vuelva a ejecutar el menu de seleccion.

#!/bin/bash

  #Primero limpia pantalla luego saluda y por ultimo actualiza el sistema
  clear;
  echo '.............:::::Primero se actualizara el Sistema:::::............'; sleep 3s;
  sudo apt-get update && sudo apt-get upgrade -y;
 
  #Comprobar si la actualización anterior fue ejecutada con exito
  if [$?]; then
    clear;
    echo 'EL SISTEMA HA SIDO ACTUALIZADO';
    sleep 4s; clear;
  else
    clear;
    echo 'Ha ocurrido un problema';
    echo 'Comprueba tu conexion a internet';
    sleep 4s; clear;
    #echo 'CHAO!';sleep 4s; exit;
  fi
  
  #Mensaje antesala para el menú de opciones
  echo '#######################################';
  echo '#                                     #';
  echo '#  Bienvenido Seleccione la opción    #';
  echo '#  Que más le convenga                #';
  echo '#                                     #';
  echo '#######################################';
  echo ''; sleep 5s; clear;

  #Menú de Opciones
  echo '1. Instalar paquetes esenciales del sistema, includo ubuntu-extras-restricted.';
  echo '2. Instalar pack de paquetes tools y apps básicas como: elinks, git, etc. ';
  echo '3. Instalar huevos de pascuas como: sl, cowsay, figlet, etc.  ';
  echo '4. Salir '; 
  read -p '' opc;

  echo '';

  case $opc in
    1)
      echo 'Selecionaste la opción 1. Se inatalarán los paquetes esenciales del sistema'; sleep 4s; clear;
      sudo apt-get install -y ubuntu-extras-restricted;;
      #incluir validaciones en caso de que algo suceda al instalar, por ejemplo con if[]
    2)
      echo 'Seleccionaste la opción 2. Se instalará elinks, git y otros.'; sleep 4s; clear;
      sudo apt-get install -y elinks git;;
      #incluir validaciones en caso de que algo suceda al instalar, por ejemplo con if[]
    3)
      echo 'Selecionaste la opción 3. Se instalarán huevos de Pascua como: sl, figlet, cowsay.'; sleep 4s; clear;
      sudo apt-get install -y sl figlet cowsay;;
      #incluir validaciones en caso de que algo suceda al instalar, por ejemplo con if[]
    4)
      echo 'Selecionaste salir.'; sleep 1s; clear; exit;;
    *)
      echo 'Porfavor Seleciona una opción valida'; sleep 2s;;
      #encontrar la forma de retornar al menu
  esac
  
  






