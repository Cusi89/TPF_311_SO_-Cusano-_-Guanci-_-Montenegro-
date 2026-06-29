#!/bin/bash
# Script para crear la estructura de directorios individual - Rol: Sysadmin

# 1. Crear la estructura principal
sudo mkdir -p ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/{Servicios/{Web,Base_de_Datos,Cache},Monitoreo/{Logs,Alertas,Metricas}}

# 2. Crear archivos ocultos para que Git no ignore las carpetas vacías
sudo touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Servicios/Web/.gitkeep
sudo touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Servicios/Base_de_Datos/.gitkeep
sudo touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Servicios/Cache/.gitkeep
sudo touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Monitoreo/Logs/.gitkeep
sudo touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Monitoreo/Alertas/.gitkeep
sudo touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Monitoreo/Metricas/.gitkeep

# 3. Crear archivos txt
sudo touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Servicios/Web/1.txt
sudo touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Servicios/Base_de_Datos/1.txt
sudo touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Servicios/Cache/1.txt
sudo touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Monitoreo/Logs/1.txt
sudo touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Monitoreo/Alertas/1.txt
sudo touch ~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin/Monitoreo/Metricas/1.txt
