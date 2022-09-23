#!/bin/bash

# Diseñar un programa para averiguar si el usuario del sistema es user1,
# si es así lista los procesos actuales, si no, muestra un mensaje donde
# indiques que no es un usuario autorizado.

usuario=`whoami` 

if [ $usuario == "javier" ];
then
	echo -e "Mostrando procesos actuales \n"
	ps -aux
else
	echo -e "Usuario no autorizado \n"
fi
