#!/bin/bash
# TP Final - Arquitectura y Sistemas Operativos
# Rol: sysadmin - Punto B (Parte 1: Particionamiento)

DISCO="/dev/sdc"

echo "Iniciando particionamiento automatizado en $DISCO..."

sudo fdisk $DISCO << EOF
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

+2.6G
n

+2.6G
n


w
EOF

echo "¡Particionamiento completado con éxito!"
sudo fdisk -l $DISCO

HOME_USER="/home/vagrant"

echo "Formateando particiones en ext4..."
sudo mkfs.ext4 /dev/sdb1
sudo mkfs.ext4 /dev/sdb2
sudo mkfs.ext4 /dev/sdb5
sudo mkfs.ext4 /dev/sdb6
sudo mkfs.ext4 /dev/sdb7

echo "Configurando montaje persistente en /etc/fstab..."
# Usamos un bloque append para evitar modificar manualmente el archivo
sudo bash -c "cat << EOF >> /etc/fstab
/dev/sdb1  $HOME_USER/sysadmin/Servicios       ext4  defaults  0  2
/dev/sdb2  $HOME_USER/sysadmin/Monitoreo       ext4  defaults  0  2
/dev/sdb5  $HOME_USER/sysadmin/Servicios/Web   ext4  defaults  0  2
/dev/sdb6  $HOME_USER/sysadmin/Servicios/Cache ext4  defaults  0  2
/dev/sdb7  $HOME_USER/sysadmin/Monitoreo/Logs  ext4  defaults  0  2
EOF"

echo "Aplicando montajes activos..."
sudo mount -a

echo "Generando archivo de validación requerido..."
df -h > ./df_output_sysadmin.txt

echo "¡Proceso terminado! Archivo df_output_sysadmin.txt generado correctamente."
