#!/bin/bash
# Script para crear la estructura de directorios individual - Rol: Sysadmin

# 1. Crear la estructura principal
mkdir -p ~/sysadmin/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}

# 2. Crear archivos ocultos para que Git no ignore las carpetas vacías
touch ~/sysadmin/Servicios/Web/.gitkeep
touch ~/sysadmin/Servicios/Base_de_Datos/.gitkeep
touch ~/sysadmin/Servicios/Cache/.gitkeep
touch ~/sysadmin/Monitoreo/Logs/.gitkeep
touch ~/sysadmin/Monitoreo/Alertas/.gitkeep
touch ~/sysadmin/Monitoreo/Metricas/.gitkeep
