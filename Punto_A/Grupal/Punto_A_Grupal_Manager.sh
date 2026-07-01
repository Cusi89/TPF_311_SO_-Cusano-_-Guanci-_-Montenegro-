#!/bin/bash
# Script para crear la estructura de directorios grupal - Rol: Manager (Europa)

# 1. Crear la estructura asimétrica de países y ciudades
sudo mkdir -p ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Continentes/Europa/{Francia/{Paris,Lyon,Marsella},Italia/{Roma,Milan},España/Madrid}

# 2. Crear archivos ocultos para evitar que Git ignore las carpetas vacías
sudo touch ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Continentes/Europa/{Francia/{Paris,Lyon,Marsella},Italia/{Roma,Milan},España/Madrid}/.gitkeep
