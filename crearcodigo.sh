#!/bin/bash
echo "Nombre de Archivo:"
read nombre
if [ $nombre -z ]
then
	echo "No se pudo crear archivo sin nombre"
else
	if [ ${nombre:(-2)} == ".c" ]
	then
		echo "No es necesario terminar con .c"
	else
		touch $nombre.c
		x=$(hostname)
		touch versiongcc.txt
		echo "$(gcc --version)" > versiongcc.txt
		echo "
/* Autor: $x
Compilador: $(head -1 versiongcc.txt)
Compilado: gcc $nombre.c -o $nombre
Fecha: $(date)
Resumen:
Entrada:
Salida:
*/

//librerias
#include <stdio.h>
//numerar los pasos de pseudocodigo
		" > $nombre.c
		rm versiongcc.txt
	fi
fi
