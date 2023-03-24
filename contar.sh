#!/bin/bash

# Buscar todos los archivos que comiencen con "loremipsum-" y tengan extensión ".txt" 
archivos=$(find . -name "loremipsum-*.txt" | sort)

# Recorrer cada archivo:
# | cut -d' ' -f1 para no mostrar el nombre del archivo
for archivo in $archivos
do
    lineas=$(wc -l "$archivo" | cut -d' ' -f1)
    nombredelarchivo=$(basename "$archivo") #para quitar el prefijo ./ del archivo
     echo "$nombredelarchivo tiene $lineas líneas"
done
