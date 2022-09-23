#!/bin/bash

# Diseñar un programa para comprobar la primera columna de un archivo. Si el
# valor es “hola” el programa nos devolverá “hola hola

if [ $# -lt 1 ]; 
then
	echo " Uso: ejercicio4.sh [nombrefichero]"
	return -1
fi 

palabra=`cat $1 | head -n1 | awk '{print $1}'`

if [ $palabra == "hola" ]; 
then
	echo "Hola hola"
else
	echo "Hola"
fi

