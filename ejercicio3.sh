#!/bin/bash
#Leer por teclado y determinar si un valor es mayor o menor a 50

echo "Introducir valor por teclado"
read valor
if [ $valor -ge 50 ];
then
	echo "El valor es mayor o igual a 50"
else
	echo "El valor es menor a 50"
fi
