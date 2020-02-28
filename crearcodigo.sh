#!/bin/bash
#Script creado por Mario Guerra
#Pregunar por nombre del archivo
echo "Nombre de Archivo:"
read nombre
if [ $nombre -z ]
then
	#si no se escribio nada no se crea archivo
	echo "No se pudo crear archivo sin nombre"
else
	if [ ${nombre:(-2)} == ".c" ]
	then
		#Si el usuario ternimo el nombre de su codigo con .c es ignorado
		echo "No es necesario terminar con .c"
	else
		#Se utiliza lo pueso por el usuario para modificar el texto al
		#inicio del documento
		echo "Resumen:"
	        read resumen
		echo "Entradas:"
		read entrada
		echo "Salidas:"
		read salida	
		touch $nombre.c
		x=$(hostname)
		#gcc -version tiene mucha informacion entonces se crea un
		#documento de texto con el proposio de usar la primera linea
		touch versiongcc.txt
		echo "$(gcc --version)" > versiongcc.txt
		echo "
/* Autor: $x
Compilador: $(head -1 versiongcc.txt)
Compilado: gcc $nombre.c -o $nombre
Fecha: $(date)
Resumen: $resumen
Entrada: $entrada
Salida:  $salida
*/

//librerias
#include <stdio.h>
//numerar los pasos de pseudocodigo
		" > $nombre.c
		rm versiongcc.txt
		vim $nombre.c
	fi
fi
