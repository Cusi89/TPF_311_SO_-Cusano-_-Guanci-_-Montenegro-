#!/bin/bash
# Punto D - Permisos
# Rol: sysadmin

BASE="~/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/sysadmin"

echo "Aplicando permisos en Servicios (notacion octal)..."
sudo chmod 755 ${BASE}/Servicios/Web
sudo chmod 700 ${BASE}/Servicios/Base_de_Datos
sudo chmod 644 ${BASE}/Servicios/Cache

echo "Aplicando permisos en Monitoreo (notacion simbolica)..."
sudo chmod u=rwx,g=rx,o=r ${BASE}/Monitoreo/Logs
sudo chmod u=rwx,g=,o= ${BASE}/Monitoreo/Alertas
sudo chmod u=rwx,g=rx,o=rx ${BASE}/Monitoreo/Metricas

echo "Listo! Verificando permisos:"
ls -la ${BASE}/Servicios/ > Punto_D/permisos_output.txt
ls -la ${BASE}/Monitoreo/ >> Punto_D/permisos_output.txt
