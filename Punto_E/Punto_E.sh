#!/bin/bash

echo "Filtrando información del sistema..."

# 1. Obtener el Total de Memoria RAM (desde /proc/meminfo usando awk)
echo "--- MEMORIA RAM ---" > ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Punto_E/Filtro_basico.txt
awk '/^MemTotal:/ {print $1, $2, $3}' /proc/meminfo >> ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Punto_E/Filtro_basico.txt

# 2. Obtener el Modelo del microprocesador y su frecuencia (desde /proc/cpuinfo)
echo -e "\n--- PROCESADOR ---" >> ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Punto_E/Filtro_basico.txt

# Usamos awk para filtrar 'model name' y 'cpu MHz'. 
# Con 'uniq' evitamos que se repita la info por cada núcleo del procesador.
awk -F: '/^model name/ || /^cpu MHz/ {print $1 ":" $2}' /proc/cpuinfo | uniq >> ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Punto_E/Filtro_basico.txt

echo "¡Punto E completado con éxito!"
