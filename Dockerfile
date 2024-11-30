# Usar la imagen oficial de PHP (en este caso PHP 8.2)
FROM php:8.2-cli

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /var/www/html

# Copiar todo el contenido de tu proyecto al contenedor
COPY . .

# Exponer el puerto 8000 (el mismo que usas en tu máquina local)
EXPOSE 8000

# Iniciar el servidor PHP en el puerto 8000
CMD ["php", "-S", "0.0.0.0:8000"]
