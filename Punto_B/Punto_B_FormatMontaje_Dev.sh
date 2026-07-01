#!/bin/bash

HOME_USER="/home/vagrant/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-"

echo "Configurando montaje persistente en /etc/fstab..."
# Usamos un bloque append para evitar modificar manualmente el archivo
sudo bash -c "cat << EOF >> /etc/fstab
/dev/sdc1  ${HOME_USER}/dev/Servicios       ext4  defaults  0  2
/dev/sdc2  ${HOME_USER}/dev/Monitoreo       ext4  defaults  0  2
/dev/sdc5  ${HOME_USER}/dev/Servicios/Web   ext4  defaults  0  2
/dev/sdc6  ${HOME_USER}/dev/Servicios/Cache ext4  defaults  0  2
/dev/sdc7  ${HOME_USER}/dev/Monitoreo/Logs  ext4  defaults  0  2
EOF"

echo "Aplicando montajes activos..."
sudo mount -a

echo "Generando archivo de validación requerido..."
df -h > ./df_output_dev.txt

echo "¡Proceso terminado! Archivo df_output_sysadmin.txt generado correctamente."
