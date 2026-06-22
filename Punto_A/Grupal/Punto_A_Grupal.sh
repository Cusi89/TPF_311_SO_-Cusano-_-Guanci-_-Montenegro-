#!/bin/bash
# Script para crear la estructura de directorios grupal - Rol: Sysadmin (America)

# 1. Crear la estructura asimétrica de países y ciudades
sudo mkdir -p /Continentes/America/{Argentina/{Mendoza,Cordoba,Misiones},Brasil/{Rio_de_Janeiro,Bahia},Uruguay/Montevideo}

# 2. Crear archivos ocultos para evitar que Git ignore las carpetas vacías
sudo touch /Continentes/America/Argentina/Mendoza/.gitkeep
sudo touch /Continentes/America/Argentina/Cordoba/.gitkeep
sudo touch /Continentes/America/Argentina/Misiones/.gitkeep
sudo touch /Continentes/America/Brasil/Rio_de_Janeiro/.gitkeep
sudo touch /Continentes/America/Brasil/Bahia/.gitkeep
sudo touch /Continentes/America/Uruguay/Montevideo/.gitkeep
