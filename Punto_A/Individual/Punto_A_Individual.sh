#!/bin/bash
# Script para crear la estructura de directorios individual - Rol: Sysadmin

# 1. Crear la estructura principal
mkdir -p ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}

# 2. Crear archivos ocultos para que Git no ignore las carpetas vacías
touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Servicios/Web/.gitkeep
touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Servicios/Base_de_Datos/.gitkeep
touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Servicios/Cache/.gitkeep
touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Monitoreo/Logs/.gitkeep
touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Monitoreo/Alertas/.gitkeep
touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Monitoreo/Metricas/.gitkeep
