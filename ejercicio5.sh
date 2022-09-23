#!/bin/bash

#Diseñar un programa que imprima todos los números enteros anteriores al
#introducido por teclado, el último valor debe ser el introducido por pantalla.

read -p "Introducir valor:" valor

i=1
while [ $i -le $valor ];
do
 echo $i
 let i+=1
done


#forma que no funciona
<<!
for (( i=1; i < $valor; i++ ))
do
 echo $i
 valor=+
done
!


