#!/bin/bash
touch climahoy.txt #climahoy.txt es el archivo de texto que se crea para luego eliminarse
echo "$(curl wttr.in)" > climahoy.txt # guardamos los datos del comando en el texto
head -7 climahoy.txt #corta texto a las primeras 5 lineas
rm climahoy.txt
