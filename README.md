# TPF_311_SO_-Cusano-_-Guanci-_-Montenegro-
Repositorio para TP de Arquitectura y Sistemas Operativos


## Alumnos

| Nombre | Rol |
|--------|-----|
| Cusano, Ivan | Sysadmin/Dev/Manager |


## Metodología de trabajo
Este trabajo fue realizado de forma individual.
Cada perfil realizó sus commits desde su propia VM, identificando
el rol en cada mensaje de commit con el prefijo correspondiente
("Sysadmin:", "Manager:", "Dev:").

## Resumen de Consignas por Punto

### PUNTO A — Estructura de Directorios
* **Parte Individual:** Cada integrante debe crear en su `$HOME` una estructura jerárquica (`Servicios/Web, Base_de_Datos, Cache` y `Monitoreo/Logs, Alertas, Metricas`) usando un único comando con llaves. El directorio raíz se llamará según su rol. 
  * *Script:* `Punto_A/Individual/Punto_A_Individual.sh`
* **Parte Grupal:** Creación colaborativa y asimétrica de la estructura `/Continentes/` (América, Europa, Asia según el rol), respetando el flujo de trabajo Git (Pull -> Commit -> Push). Cada continente tendrá 3 países y cantidad variable de ciudades.
  * *Script:* `Punto_A/Grupal/Punto_A_Grupal.sh`

### PUNTO B — Particionamiento y Montaje
* **Parte 1 (Particionamiento):** Utilizar el disco de 10GB provisto en la VM para crear 2 particiones primarias de 1GB y 3 particiones lógicas con el espacio restante dividido en partes iguales. Formatear todo en `ext4`.
  * *Script:* `Punto_B/Punto_B_Particiones.sh`
* **Parte 2 (Montaje Persistente):** Montar las particiones de forma persistente (`/etc/fstab`) en la estructura del Punto A según el rol asignado.
  * *Script:* `Punto_B/Punto_B_FormatMontaje.sh`
  * *Validación:* Archivo `Punto_B/df_output_<rol>.txt` con la salida de `df -h`.

### PUNTO C — Usuarios y Grupos
* Creación de los grupos (`g_sysadmin`, `g_manager`, `g_dev`, `g_infra`) y los usuarios correspondientes (`u_sysadmin`, `u_manager`, `u_dev`).
* Configurar las claves utilizando hashes (`openssl passwd -6`) y asignar la shell `/bin/bash`.
  * *Script:* `Punto_C/Punto_C.sh`
  * *Validación:* Archivo `Punto_C/id_output.txt` con la salida de los comandos `id`.

### PUNTO D — Permisos
* Ajustar los accesos de los subdirectorios creados en el Punto A según el rol del integrante:
  * **Servicios:** Notación octal (Web: `755`, Base_de_Datos: `700`, Cache: `644`).
  * **Monitoreo:** Notación simbólica (Logs: `u=rwx,g=rx,o=r`, Alertas: `u=rwx,g=,o=`, Metricas: `u=rwx,g=rx,o=rx`).
  * *Script:* `Punto_D/Punto_D.sh`
  * *Validación:* Archivo `Punto_D/permisos_output.txt` mediante `ls -la`.

### PUNTO E — Filtros Básicos
* Generar un script que extraiga información específica del sistema utilizando exclusivamente `awk` y los archivos virtuales correspondientes:
  * Total de memoria RAM desde `/proc/meminfo`.
  * Modelo del microprocesador y su frecuencia desde `/proc/cpuinfo`.
  * *Script:* `Punto_E/Punto_E.sh`
  * *Salida requerida:* `Punto_E/Filtro_basico.txt`

### PUNTO F — Docker Compose (Opcional)
* Desplegar un sitio de WordPress reproducible mediante contenedores.
* Definir un servicio `wordpress` (Puerto 8080) y un servicio `db` (MariaDB, con volumen persistente). Ambos conectados de forma aislada a la red interna `red_utn`.
  * *Archivo:* `Punto_F/docker-compose.yml`
  * *Validación:* Archivo `Punto_F/docker_output.txt` (`docker compose ps`) y captura de pantalla `Punto_F/wordpress.png` del sitio corriendo en el navegador.
