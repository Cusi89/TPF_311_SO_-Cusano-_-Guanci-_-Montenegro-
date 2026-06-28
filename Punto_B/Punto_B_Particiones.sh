#!/bin/bash
# TP Final - Arquitectura y Sistemas Operativos
# Rol: sysadmin - Punto B (Parte 1: Particionamiento)

DISCO="/dev/sdc"

echo "Iniciando particionamiento automatizado en $DISCO..."

sudo fdisk ${DISCO} << EOF
o
n
p
1

+1G
n
p
2

+1G
n
e
3


n
l

+2.6G
n
l

+2.6G
n
l


w
EOF

echo "¡Particionamiento completado con éxito!"
sudo fdisk -l ${DISCO}

sudo partprobe ${DISCO}

HOME_USER="/home/vagrant/TP_Final/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-"

echo "Formateando particiones en ext4..."
sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc5
sudo mkfs.ext4 /dev/sdc6
sudo mkfs.ext4 /dev/sdc7

echo "Configurando montaje persistente en /etc/fstab..."
# Usamos un bloque append para evitar modificar manualmente el archivo
sudo bash -c "cat << EOF >> /etc/fstab
/dev/sdc1  ${HOME_USER}/sysadmin/Servicios       ext4  defaults  0  2
/dev/sdc2  ${HOME_USER}/sysadmin/Monitoreo       ext4  defaults  0  2
/dev/sdc5  ${HOME_USER}/sysadmin/Servicios/Web   ext4  defaults  0  2
/dev/sdc6  ${HOME_USER}/sysadmin/Servicios/Cache ext4  defaults  0  2
/dev/sdc7  ${HOME_USER}/sysadmin/Monitoreo/Logs  ext4  defaults  0  2
EOF"

echo "Aplicando montajes activos..."
sudo mount -a

echo "Generando archivo de validación requerido..."
df -h > ./df_output_sysadmin.txt

echo "¡Proceso terminado! Archivo df_output_sysadmin.txt generado correctamente."
