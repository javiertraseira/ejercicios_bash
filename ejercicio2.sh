#!/bin/bash

#Diseñar un programa que nos devuelva un menú como el siguiente y realiza
#las operaciones pedidas:
#1 Mostrar la configuración de red
#2 Mostrar el uso del disco
#3 Mostrar el uso de la RAM
#4 Salir

echo "Seleccione la opcion deseada:"
echo "1 Mostrar la configuración de red"
echo "2 Mostrar el uso del disco"
echo "3 Mostrar el uso de RAM"
echo "4 Salir"

while read opcion
do

case $opcion in

1)
	echo "Configuracion de red:"
	ifconfig | head -n8
	;;
2)
	echo "Uso del disco:"
	df | grep sda1 | awk '{print $1 , $5}'
	;;

3)	echo "Memoria RAM disponible:"
	free | grep Memoria | tr -s ' ' | cut -d ' ' -f 2
	#otra forma: 
	#free | grep Memoria | awk '{print $2}
	;;
4)	break
	;;
*)	echo "Opción incorrecta"
	;;
esac
done

