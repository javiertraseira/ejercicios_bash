#!/bin/bash

# Diseñar un programa que nos pida por teclado valores y vaya realizando la
# suma de los mismos. Esta operación debe ir realizándose hasta que se introduce
# el valor 0

read -p "Introducir valor:" valor

suma=0
while [ $valor -ne 0 ];
do
let suma=suma+valor
read -p "Introducir valor:" valor
done

if [ $valor -eq 0 ]; then
	echo "El valor de la suma es $suma"
fi
