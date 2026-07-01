#!/bin/bash
#Rol: manager
# 1. Creación de los grupos secundarios y principales necesarios
echo "Creando grupos..."
sudo groupadd g_infra
sudo groupadd g_sysadmin
sudo groupadd g_manager
sudo groupadd g_dev

# 2. Generación de los hashes de las claves y creación de usuarios
echo "Creando usuarios con sus respectivas configuraciones..."

# Usuario: u_sysadmin
# Clave hasheada con openssl (algoritmo SHA512)
PASS_SYSADMIN=$(openssl passwd -6 "u_sysadmin")
sudo useradd -m -s /bin/bash -g g_sysadmin -G g_infra -p "$PASS_SYSADMIN" u_sysadmin

# Usuario: u_manager
PASS_MANAGER=$(openssl passwd -6 "u_manager")
sudo useradd -m -s /bin/bash -g g_manager -G g_infra -p "$PASS_MANAGER" u_manager

# Usuario: u_dev
PASS_DEV=$(openssl passwd -6 "u_dev")
sudo useradd -m -s /bin/bash -g g_dev -G g_infra -p "$PASS_DEV" u_dev

echo "Validando usuarios..."
id u_sysadmin
id u_manager
id u_dev

echo "Generando archivo de validacion requerido..."

id u_sysadmin > ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Punto_C/id_output.txt
id u_manager >> ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Punto_C/id_output.txt
id u_dev >> ~/TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-/Punto_C/id_output.txt

echo "¡Punto C completado con éxito!"
