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

echo "Formateando particiones en ext4..."
sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc5
sudo mkfs.ext4 /dev/sdc6
sudo mkfs.ext4 /dev/sdc7

