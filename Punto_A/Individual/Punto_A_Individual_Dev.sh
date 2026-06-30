#!/bin/bash
# Script para crear la estructura de directorios individual - Rol: Sysadmin

# 1. Crear la estructura principal
sudo mkdir -p ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/dev/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}

# 2. Crear archivos ocultos para que Git no ignore las carpetas vacías
sudo touch ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/dev/Servicios/Web/.gitkeep
sudo touch ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/dev/Servicios/Base_de_Datos/.gitkeep
sudo touch ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/dev/Servicios/Cache/.gitkeep
sudo touch ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/dev/Monitoreo/Logs/.gitkeep
sudo touch ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/dev/Monitoreo/Alertas/.gitkeep
sudo touch ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/dev/Monitoreo/Metricas/.gitkeep
