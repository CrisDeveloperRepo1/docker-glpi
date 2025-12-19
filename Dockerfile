# Uso la imagen oficial de GLPI que ya tiene Apache, PHP y todas las extensiones (GD, LDAP, etc.) instaladas.
FROM glpi/glpi:10.0

# 1. Copio los archivos de la aplicación GLPI (descargados previamente)
# Esto sobrescribe la versión de GLPI que viene en la imagen base con tus archivos.
COPY glpi/ /var/www/html/

# 2. Configuro los permisos para el servidor web (www-data)
# Esto asegura que GLPI pueda escribir en sus directorios de archivos y configuración.
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# Exponer el puerto 80 del contenedor (el mapeo al 8080 del VPS se define en docker-compose.yml)
EXPOSE 80

# El comando de inicio (CMD) de la imagen base ya es correcto y lanza Apache.
root@vps-ekoa1:/home/ekoaunlp/contenedor#
