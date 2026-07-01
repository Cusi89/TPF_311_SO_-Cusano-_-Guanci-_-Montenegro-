#!/bin/bash
# Script para crear la estructura de directorios grupal - Rol: Dev (Asia)

# 1. Crear la estructura asimétrica de países y ciudades
sudo mkdir -p ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Continentes/Asia/{Japon/{Tokio,Kioto,Osaka},China/{Pekin,Shanghai},India/Nueva_Delhi}

# 2. Crear archivos ocultos para evitar que Git ignore las carpetas vacías
sudo touch ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Continentes/Asia/{Japon/{Tokio,Kioto,Osaka},China/{Pekin,Shanghai},India/Nueva_Delhi}/.gitkeep
