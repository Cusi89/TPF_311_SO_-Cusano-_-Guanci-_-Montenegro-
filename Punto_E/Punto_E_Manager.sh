#!/bin/bash
#Rol: Manager
echo "Filtrando información del sistema..."

# 1. Obtener el Total de Memoria RAM (desde /proc/meminfo usando awk)
echo "--- MEMORIA RAM ---" > ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Punto_E/Filtro_basico_Manager.txt
awk '/^MemTotal:/ {print $1, $2, $3}' /proc/meminfo >> ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Punto_E/Filtro_basico_Manager.txt

# 2. Obtener el Modelo del microprocesador y su frecuencia (desde /proc/cpuinfo)
echo -e "\n--- PROCESADOR ---" >> ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Punto_E/Filtro_basico_Manager.txt

# Usamos awk para filtrar 'model name' y 'cpu MHz'. 
# Con 'uniq' evitamos que se repita la info por cada núcleo del procesador.
awk -F: '/^model name/ || /^cpu MHz/ {print $1 ":" $2}' /proc/cpuinfo | uniq >> ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Punto_E/Filtro_basico_Manager.txt

echo "¡Punto E completado con éxito!"
