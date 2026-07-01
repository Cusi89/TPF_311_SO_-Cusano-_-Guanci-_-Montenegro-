#!/bin/bash
# Script para crear la estructura de directorios individual - Rol: Sysadmin

# 1. Crear la estructura principal
sudo mkdir -p ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Dev/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}

# 2. Crear archivos ocultos para que Git no ignore las carpetas vacías
sudo touch ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Dev/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}/.gitkeep
