#Script para instalar el software necesario luego de instalar algun OS basado en debian.
#!/bin/bash

# Robert Vásquez 2021
# Versión 1.0

#Opciones
cases(){
    case $opc in
    1)
      echo 'Selecionaste la opción 1. Se inatalarán los paquetes esenciales del sistema'; sleep 4s; clear;
      sudo apt-get install software-properties-common build-essential ubuntu-restricted-extras gnome-tweak-tool net-tools -y;
      installing_state;
      main_menu;;
    2)
      echo 'Seleccionaste la opción 2. Se instalará elinks, git y otros.'; sleep 4s; clear;
      sudo apt-get install -y elinks lynx git ssh vlc vim plank tilda classicmenu-indicator chrome-gnome-shell gnome-shell-extensions mpv;
      installing_state;
      main_menu;;
    3)
      echo 'Selecionaste la opción 3. Se instalarán huevos de Pascua como: sl, figlet, cowsay.'; sleep 4s; clear;
      sudo apt-get install -y sl figlet cowsay;
      installing_state;
      main_menu;;
    4)
      echo 'Selecionaste salir.'; sleep 1s; clear;
      echo 'Hasta Luego!';sleep 3s; exit;;
    *)
      echo 'Porfavor Seleciona una opción valida'; sleep 2s; clear;
      main_menu;
  esac
}

#Menú de Opciones
main_menu(){
  echo '1. Instalar paquetes esenciales del sistema, includo ubuntu-restricted-extras.';
  echo '2. Instalar pack de paquetes tools y apps básicas como: elinks, git, etc. ';
  echo '3. Instalar huevos de pascuas como: sl, cowsay, figlet, etc.  ';
  echo '4. Salir ';
  read -p '' opc;
  echo '';

  cases;

}

installing_state(){
  if [echo $? -eq 0]; then
    echo 'Todo se Instalo Satisfactoriamente';
    sleep 3s; clear;
  else
    clear;
    echo '¡Ha ocurrido un problema!';
    echo 'No se Pudo Instalar Nada';
    sleep 3s; clear;
  fi
}

  #Primero limpia pantalla luego saluda y por ultimo actualiza el sistema
  clear;
  echo '.............:::::Autor: Robert Vásquez. 2021::::::::::::............'; sleep 3s;
  echo '.............:::::Primero se actualizara el Sistema:::::............'; sleep 3s;
  sudo apt-get update && sudo apt-get upgrade -y;

  #Comprobar si la actualización anterior fue ejecutada con exito
  if [echo $? -eq 0]; then
    clear;
    echo 'EL SISTEMA HA SIDO ACTUALIZADO';
    sleep 4s; clear;
  else
    clear;
    echo 'Ha ocurrido un problema';
    echo 'Comprueba tu conexion a internet';
    sleep 4s; clear;
    echo 'Hasta Luego';sleep 4s; exit;
  fi

  #Mensaje antesala para el menú de opciones
  echo '#######################################';
  echo '#                                     #';
  echo '#  Bienvenido Seleccione la opción    #';
  echo '#  Que más le convenga                #';
  echo '#                                     #';
  echo '#######################################';
  echo ''; sleep 5s; clear;

  main_menu;

#instalar opcional, GNOME Shell integration
